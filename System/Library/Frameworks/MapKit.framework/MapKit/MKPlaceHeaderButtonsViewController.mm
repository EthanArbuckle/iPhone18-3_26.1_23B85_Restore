@interface MKPlaceHeaderButtonsViewController
- (BOOL)shouldStackForButtons:(id)buttons;
- (MKPlaceHeaderButtonsViewController)init;
- (MKPlaceHeaderButtonsViewControllerDelegate)delegate;
- (id)attributedStringWith:(id)with;
- (id)directionAttributedStringWithETAString;
- (id)etaStringFor:(unint64_t)for travelTime:(double)time;
- (id)infoCardChildPossibleActions;
- (id)primaryAttributedString;
- (id)rerouteAttributedString;
- (id)updateButton:(id)button withController:(id)controller;
- (void)ETAProviderUpdated:(id)updated;
- (void)_commonInit;
- (void)_contentSizeDidChange;
- (void)primaryButtonSelected:(id)selected;
- (void)setAlternatePrimaryButtonController:(id)controller;
- (void)setConstraints;
- (void)setLineItem:(id)item;
- (void)setPlaceItem:(id)item;
- (void)setPrimaryButtonType:(unint64_t)type;
- (void)setSecondaryButtonController:(id)controller;
- (void)setupPrimaryButton;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MKPlaceHeaderButtonsViewController

- (MKPlaceHeaderButtonsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)infoCardChildPossibleActions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  v5 = self->_primaryButtonType - 1;
  if (v5 <= 2)
  {
    [array addObject:qword_1E76CCDA8[v5]];
  }

  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  _hasFlyover = [mapItem _hasFlyover];

  if (_hasFlyover)
  {
    v8 = &unk_1F1611C50;
  }

  else if (([(_MKPlaceItem *)self->_placeItem options]& 1) != 0)
  {
    v8 = &unk_1F1611C68;
  }

  else
  {
    if (([(_MKPlaceItem *)self->_placeItem options]& 2) == 0)
    {
      goto LABEL_10;
    }

    v8 = &unk_1F1611C80;
  }

  [v4 addObject:v8];
LABEL_10:
  secondaryButtonController = [(MKPlaceHeaderButtonsViewController *)self secondaryButtonController];
  v10 = [secondaryButtonController conformsToProtocol:&unk_1F1642C28];

  if (v10)
  {
    secondaryButtonController2 = [(MKPlaceHeaderButtonsViewController *)self secondaryButtonController];
    if (objc_opt_respondsToSelector())
    {
      infoCardChildPossibleActions = [secondaryButtonController2 infoCardChildPossibleActions];
      if ([infoCardChildPossibleActions count])
      {
        [v4 addObjectsFromArray:infoCardChildPossibleActions];
      }
    }
  }

  return v4;
}

- (void)setAlternatePrimaryButtonController:(id)controller
{
  controllerCopy = controller;
  if (self->_alternatePrimaryButtonController != controllerCopy)
  {
    [(_MKPlaceActionControlledButton *)self->_alternatePrimaryButton removeFromSuperview];
    alternatePrimaryButton = self->_alternatePrimaryButton;
    self->_alternatePrimaryButton = 0;

    objc_storeStrong(&self->_alternatePrimaryButtonController, controller);
    v6 = [(MKPlaceHeaderButtonsViewController *)self updateButton:self->_alternatePrimaryButton withController:self->_alternatePrimaryButtonController];
    v7 = self->_alternatePrimaryButton;
    self->_alternatePrimaryButton = v6;

    if (self->_buttonsContainerView)
    {
      [(MKPlaceHeaderButtonsViewController *)self setConstraints];
    }
  }
}

- (void)setSecondaryButtonController:(id)controller
{
  controllerCopy = controller;
  if (self->_secondaryButtonController != controllerCopy)
  {
    [(_MKPlaceActionControlledButton *)self->_secondaryButton removeFromSuperview];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = 0;

    objc_storeStrong(&self->_secondaryButtonController, controller);
    v6 = [(MKPlaceHeaderButtonsViewController *)self updateButton:self->_secondaryButton withController:self->_secondaryButtonController];
    v7 = self->_secondaryButton;
    self->_secondaryButton = v6;

    if (self->_buttonsContainerView)
    {
      [(MKPlaceHeaderButtonsViewController *)self setConstraints];
    }
  }
}

- (id)updateButton:(id)button withController:(id)controller
{
  buttonCopy = button;
  controllerCopy = controller;
  viewIfLoaded = [(MKPlaceHeaderButtonsViewController *)self viewIfLoaded];

  if (!viewIfLoaded)
  {
    goto LABEL_4;
  }

  traitCollection = [(MKPlaceHeaderButtonsViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    primaryButtonType = self->_primaryButtonType;

    if (primaryButtonType == 3)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  buttonTitle = [controllerCopy buttonTitle];
  v13 = [buttonTitle length];
  if (!buttonCopy && v13)
  {
    buttonCopy = objc_alloc_init(MKPlaceHeaderButton);
    [(MKPlaceSectionRowView *)self->_buttonsContainerView addSubview:buttonCopy];
LABEL_13:
    [(MKPlaceHeaderButton *)buttonCopy setButtonController:controllerCopy];
    goto LABEL_14;
  }

  if (!buttonCopy || v13)
  {
    if (v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [(MKPlaceHeaderButton *)buttonCopy removeFromSuperview];

    buttonCopy = 0;
  }

LABEL_14:
  buttonCopy = buttonCopy;

  v11 = buttonCopy;
LABEL_15:

  return v11;
}

- (void)primaryButtonSelected:(id)selected
{
  selectedCopy = selected;
  delegate = [(MKPlaceHeaderButtonsViewController *)self delegate];
  [delegate placeHeaderButtonsViewController:self didSelectPrimaryType:self->_primaryButtonType withView:selectedCopy];
}

- (void)setupPrimaryButton
{
  viewIfLoaded = [(MKPlaceHeaderButtonsViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    traitCollection = [(MKPlaceHeaderButtonsViewController *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] == 5)
    {
      primaryButtonType = self->_primaryButtonType;

      if (primaryButtonType == 3)
      {
        return;
      }
    }

    else
    {
    }

    primaryButton = self->_primaryButton;
    if (self->_primaryButtonType)
    {
      if (!primaryButton)
      {
        v7 = [[MKPlaceHeaderButton alloc] initWithPrimaryType:self->_primaryButtonType];
        v8 = self->_primaryButton;
        self->_primaryButton = v7;

        [(_MKPlaceActionControlledButton *)self->_primaryButton _mapkit_setTarget:self action:sel_primaryButtonSelected_];
        [(MKPlaceSectionRowView *)self->_buttonsContainerView addSubview:self->_primaryButton];
      }
    }

    else
    {
      [(_MKPlaceActionControlledButton *)primaryButton removeFromSuperview];
      v9 = self->_primaryButton;
      self->_primaryButton = 0;
    }

    v10 = self->_primaryButton;
    primaryAttributedString = [(MKPlaceHeaderButtonsViewController *)self primaryAttributedString];
    [(_MKPlaceActionControlledButton *)v10 setPrimaryTitle:primaryAttributedString];
  }
}

- (void)setPrimaryButtonType:(unint64_t)type
{
  if (self->_primaryButtonType != type)
  {
    self->_primaryButtonType = type;
    currentETAString = self->_currentETAString;
    self->_currentETAString = 0;

    [(MKPlaceHeaderButtonsViewController *)self setupPrimaryButton];

    [(MKPlaceHeaderButtonsViewController *)self setConstraints];
  }
}

- (void)setConstraints
{
  selfCopy = self;
  v155[6] = *MEMORY[0x1E69E9840];
  viewIfLoaded = [(MKPlaceHeaderButtonsViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:selfCopy->_constraints];
    v4 = MEMORY[0x1E695E0F0];
    v139 = [MEMORY[0x1E695E0F0] mutableCopy];
    v5 = [v4 mutableCopy];
    v6 = v5;
    if (selfCopy->_primaryButton)
    {
      [v5 addObject:?];
    }

    if (selfCopy->_secondaryButton)
    {
      [v6 addObject:?];
    }

    v7 = [(MKPlaceHeaderButtonsViewController *)selfCopy shouldStackForButtons:v6];
    if (selfCopy->_primaryButton || selfCopy->_secondaryButton)
    {
      superview = [(_MKPlaceActionControlledButton *)selfCopy->_alternatePrimaryButton superview];

      if (!superview)
      {
        [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView addSubview:selfCopy->_alternatePrimaryButton];
      }
    }

    else
    {
      [(_MKPlaceActionControlledButton *)selfCopy->_alternatePrimaryButton removeFromSuperview];
    }

    alternatePrimaryButton = selfCopy->_alternatePrimaryButton;
    if (alternatePrimaryButton)
    {
      superview2 = [(_MKPlaceActionControlledButton *)alternatePrimaryButton superview];
      buttonsContainerView = selfCopy->_buttonsContainerView;

      if (superview2 != buttonsContainerView)
      {
        [(_MKPlaceActionControlledButton *)selfCopy->_alternatePrimaryButton removeFromSuperview];
        [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView addSubview:selfCopy->_alternatePrimaryButton];
      }
    }

    primaryButton = selfCopy->_primaryButton;
    if (primaryButton && selfCopy->_alternatePrimaryButton)
    {
      v113 = v6;
      topAnchor = [(_MKPlaceActionControlledButton *)primaryButton topAnchor];
      topAnchor2 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView topAnchor];
      v120 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v155[0] = v120;
      leadingAnchor = [(_MKPlaceActionControlledButton *)selfCopy->_primaryButton leadingAnchor];
      obja = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView layoutMarginsGuide];
      leadingAnchor2 = [obja leadingAnchor];
      v104 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v155[1] = v104;
      topAnchor3 = [(_MKPlaceActionControlledButton *)selfCopy->_alternatePrimaryButton topAnchor];
      topAnchor4 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView topAnchor];
      v98 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v155[2] = v98;
      leadingAnchor3 = [(_MKPlaceActionControlledButton *)selfCopy->_alternatePrimaryButton leadingAnchor];
      trailingAnchor = [(_MKPlaceActionControlledButton *)selfCopy->_primaryButton trailingAnchor];
      v92 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:6.0];
      v155[3] = v92;
      trailingAnchor2 = [(_MKPlaceActionControlledButton *)selfCopy->_alternatePrimaryButton trailingAnchor];
      layoutMarginsGuide = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView layoutMarginsGuide];
      trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
      v16 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
      v155[4] = v16;
      widthAnchor = [(_MKPlaceActionControlledButton *)selfCopy->_primaryButton widthAnchor];
      widthAnchor2 = [(_MKPlaceActionControlledButton *)selfCopy->_alternatePrimaryButton widthAnchor];
      v19 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v155[5] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:6];
      [v139 addObjectsFromArray:v20];

      secondaryButton = selfCopy->_secondaryButton;
      if (secondaryButton)
      {
        leadingAnchor4 = [(_MKPlaceActionControlledButton *)secondaryButton leadingAnchor];
        layoutMarginsGuide2 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView layoutMarginsGuide];
        leadingAnchor5 = [layoutMarginsGuide2 leadingAnchor];
        v121 = leadingAnchor4;
        v130 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
        v154[0] = v130;
        trailingAnchor4 = [(_MKPlaceActionControlledButton *)selfCopy->_secondaryButton trailingAnchor];
        objb = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView layoutMarginsGuide];
        trailingAnchor5 = [objb trailingAnchor];
        v105 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
        v154[1] = v105;
        topAnchor5 = [(_MKPlaceActionControlledButton *)selfCopy->_secondaryButton topAnchor];
        bottomAnchor = [(_MKPlaceActionControlledButton *)selfCopy->_primaryButton bottomAnchor];
        v26 = topAnchor5;
        v27 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:10.0];
        v154[2] = v27;
        bottomAnchor2 = [(_MKPlaceActionControlledButton *)selfCopy->_secondaryButton bottomAnchor];
        bottomAnchor3 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView bottomAnchor];
        v30 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-0.0];
        v154[3] = v30;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:4];
        v32 = v31 = selfCopy;
        v33 = v139;
        [v139 addObjectsFromArray:v32];

        selfCopy = v31;
        bottomAnchor9 = leadingAnchor5;

        layoutMarginsGuide7 = v130;
      }

      else
      {
        bottomAnchor4 = [(_MKPlaceActionControlledButton *)selfCopy->_primaryButton bottomAnchor];
        layoutMarginsGuide2 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView bottomAnchor];
        v121 = bottomAnchor4;
        bottomAnchor9 = [bottomAnchor4 constraintEqualToAnchor:layoutMarginsGuide2 constant:-0.0];
        v153 = bottomAnchor9;
        layoutMarginsGuide7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
        v33 = v139;
        [v139 addObjectsFromArray:layoutMarginsGuide7];
      }

LABEL_47:
      v6 = v113;
      goto LABEL_48;
    }

    v36 = selfCopy->_secondaryButton;
    if (v36 && selfCopy->_alternatePrimaryButton)
    {
      topAnchor6 = [(_MKPlaceActionControlledButton *)v36 topAnchor];
      layoutMarginsGuide2 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView topAnchor];
      v121 = topAnchor6;
      v134 = [topAnchor6 constraintEqualToAnchor:layoutMarginsGuide2];
      v152[0] = v134;
      leadingAnchor6 = [(_MKPlaceActionControlledButton *)selfCopy->_secondaryButton leadingAnchor];
      layoutMarginsGuide3 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView layoutMarginsGuide];
      leadingAnchor7 = [layoutMarginsGuide3 leadingAnchor];
      objc = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
      v152[1] = objc;
      topAnchor7 = [(_MKPlaceActionControlledButton *)selfCopy->_alternatePrimaryButton topAnchor];
      topAnchor8 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView topAnchor];
      v106 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
      v152[2] = v106;
      leadingAnchor8 = [(_MKPlaceActionControlledButton *)selfCopy->_alternatePrimaryButton leadingAnchor];
      trailingAnchor6 = [(_MKPlaceActionControlledButton *)selfCopy->_secondaryButton trailingAnchor];
      v99 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor6 constant:6.0];
      v152[3] = v99;
      trailingAnchor7 = [(_MKPlaceActionControlledButton *)selfCopy->_alternatePrimaryButton trailingAnchor];
      layoutMarginsGuide4 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView layoutMarginsGuide];
      trailingAnchor8 = [layoutMarginsGuide4 trailingAnchor];
      v91 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
      v152[4] = v91;
      bottomAnchor5 = [(_MKPlaceActionControlledButton *)selfCopy->_alternatePrimaryButton bottomAnchor];
      bottomAnchor6 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView bottomAnchor];
      v88 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-0.0];
      v152[5] = v88;
      widthAnchor3 = [(_MKPlaceActionControlledButton *)selfCopy->_secondaryButton widthAnchor];
      widthAnchor4 = [(_MKPlaceActionControlledButton *)selfCopy->_alternatePrimaryButton widthAnchor];
      v39 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
      v152[6] = v39;
      [(_MKPlaceActionControlledButton *)selfCopy->_secondaryButton bottomAnchor];
      v40 = v114 = v6;
      bottomAnchor7 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView bottomAnchor];
      v42 = [v40 constraintEqualToAnchor:bottomAnchor7 constant:-0.0];
      v152[7] = v42;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:8];
      v33 = v139;
      [v139 addObjectsFromArray:v43];

      bottomAnchor9 = v134;
      v6 = v114;

      layoutMarginsGuide7 = leadingAnchor6;
LABEL_48:
      v60 = 0x1E696A000uLL;
LABEL_49:

LABEL_50:
      reverseObjectEnumerator = v121;
LABEL_51:

LABEL_52:
      v82 = [v6 copy];
      buttons = selfCopy->_buttons;
      selfCopy->_buttons = v82;

      v84 = [v33 copy];
      constraints = selfCopy->_constraints;
      selfCopy->_constraints = v84;

      [*(v60 + 3288) activateConstraints:selfCopy->_constraints];
      view = [(MKPlaceHeaderButtonsViewController *)selfCopy view];
      [view _mapkit_setNeedsLayout];

      return;
    }

    if (v7)
    {
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v44 = [v6 copy];
      v124 = [v44 countByEnumeratingWithState:&v144 objects:v151 count:16];
      if (v124)
      {
        v115 = v6;
        v45 = 0;
        obj = v44;
        v122 = *v145;
        v137 = selfCopy;
        do
        {
          v46 = 0;
          v47 = v45;
          do
          {
            v135 = v47;
            if (*v145 != v122)
            {
              objc_enumerationMutation(obj);
            }

            v48 = *(*(&v144 + 1) + 8 * v46);
            leadingAnchor9 = [v48 leadingAnchor];
            layoutMarginsGuide5 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView layoutMarginsGuide];
            leadingAnchor10 = [layoutMarginsGuide5 leadingAnchor];
            v51 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
            v150[0] = v51;
            trailingAnchor9 = [v48 trailingAnchor];
            layoutMarginsGuide6 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView layoutMarginsGuide];
            trailingAnchor10 = [layoutMarginsGuide6 trailingAnchor];
            v55 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
            v150[1] = v55;
            v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:2];
            [v139 addObjectsFromArray:v56];

            topAnchor9 = [v48 topAnchor];
            if (v135)
            {
              bottomAnchor8 = [v135 bottomAnchor];
              v59 = [topAnchor9 constraintEqualToAnchor:bottomAnchor8 constant:10.0];
              selfCopy = v137;
            }

            else
            {
              selfCopy = v137;
              bottomAnchor8 = [(MKPlaceSectionRowView *)v137->_buttonsContainerView topAnchor];
              v59 = [topAnchor9 constraintEqualToAnchor:bottomAnchor8];
            }

            [v139 addObject:v59];

            v45 = v48;
            ++v46;
            v47 = v45;
          }

          while (v124 != v46);
          v124 = [obj countByEnumeratingWithState:&v144 objects:v151 count:16];
        }

        while (v124);

        v33 = v139;
        v6 = v115;
        v60 = 0x1E696A000;
        if (!v45)
        {
          goto LABEL_52;
        }

        v121 = v45;
        layoutMarginsGuide2 = [v45 bottomAnchor];
        bottomAnchor9 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView bottomAnchor];
        layoutMarginsGuide7 = [layoutMarginsGuide2 constraintEqualToAnchor:bottomAnchor9 constant:-0.0];
        [v139 addObject:layoutMarginsGuide7];
        goto LABEL_49;
      }

      reverseObjectEnumerator = v44;
    }

    else
    {
      reverseObjectEnumerator = [v6 reverseObjectEnumerator];
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v128 = [reverseObjectEnumerator countByEnumeratingWithState:&v140 objects:v149 count:16];
      if (v128)
      {
        v113 = v6;
        layoutMarginsGuide2 = 0;
        v121 = reverseObjectEnumerator;
        v125 = *v141;
        v138 = selfCopy;
        do
        {
          v62 = 0;
          v63 = layoutMarginsGuide2;
          do
          {
            v136 = v63;
            if (*v141 != v125)
            {
              objc_enumerationMutation(v121);
            }

            v64 = *(*(&v140 + 1) + 8 * v62);
            topAnchor10 = [v64 topAnchor];
            topAnchor11 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView topAnchor];
            v67 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
            v148[0] = v67;
            bottomAnchor10 = [v64 bottomAnchor];
            bottomAnchor11 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView bottomAnchor];
            v70 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11 constant:-0.0];
            v148[1] = v70;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:2];
            [v139 addObjectsFromArray:v71];

            if (v136)
            {
              widthAnchor5 = [v64 widthAnchor];
              widthAnchor6 = [v136 widthAnchor];
              v74 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
              [v139 addObject:v74];

              leadingAnchor11 = [v64 leadingAnchor];
              trailingAnchor11 = [v136 trailingAnchor];
              leadingAnchor12 = [leadingAnchor11 constraintEqualToAnchor:trailingAnchor11 constant:10.0];
              [v139 addObject:leadingAnchor12];
              selfCopy = v138;
            }

            else
            {
              leadingAnchor11 = [v64 leadingAnchor];
              selfCopy = v138;
              trailingAnchor11 = [(MKPlaceSectionRowView *)v138->_buttonsContainerView layoutMarginsGuide];
              leadingAnchor12 = [trailingAnchor11 leadingAnchor];
              v78 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
              [v139 addObject:v78];
            }

            layoutMarginsGuide2 = v64;
            ++v62;
            v63 = layoutMarginsGuide2;
          }

          while (v128 != v62);
          v128 = [v121 countByEnumeratingWithState:&v140 objects:v149 count:16];
        }

        while (v128);
        if (!layoutMarginsGuide2)
        {
          v33 = v139;
          v6 = v113;
          v60 = 0x1E696A000;
          goto LABEL_50;
        }

        bottomAnchor9 = [layoutMarginsGuide2 trailingAnchor];
        layoutMarginsGuide7 = [(MKPlaceSectionRowView *)selfCopy->_buttonsContainerView layoutMarginsGuide];
        trailingAnchor12 = [layoutMarginsGuide7 trailingAnchor];
        v80 = [bottomAnchor9 constraintEqualToAnchor:trailingAnchor12];
        v33 = v139;
        [v139 addObject:v80];

        goto LABEL_47;
      }
    }

    v33 = v139;
    v60 = 0x1E696A000;
    goto LABEL_51;
  }
}

- (BOOL)shouldStackForButtons:(id)buttons
{
  if ([buttons count] > 2)
  {
    return 1;
  }

  view = [(MKPlaceHeaderButtonsViewController *)self view];
  [view frame];
  Width = CGRectGetWidth(v18);

  if (Width <= 320.0)
  {
    return 1;
  }

  v6 = MEMORY[0x1E69DB878];
  v7 = MEMORY[0x1E69DB880];
  if (_MKPlaceCardUseSmallerFont_onceToken != -1)
  {
    v16 = MEMORY[0x1E69DB880];
    dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
    v7 = v16;
  }

  v8 = MEMORY[0x1E69DDD28];
  if (!_MKPlaceCardUseSmallerFont_smallerFont)
  {
    v8 = MEMORY[0x1E69DDD78];
  }

  v9 = [v7 preferredFontDescriptorWithTextStyle:*v8 addingSymbolicTraits:2 options:0];
  v10 = [v6 fontWithDescriptor:v9 size:0.0];

  [v10 pointSize];
  if (_MKPlaceCardUseSmallerFont_onceToken != -1)
  {
    v17 = v11;
    dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
    v11 = v17;
  }

  v12 = 15.0;
  if (_MKPlaceCardUseSmallerFont_smallerFont)
  {
    v12 = 13.0;
  }

  if (v11 <= v12)
  {
    view2 = [(MKPlaceHeaderButtonsViewController *)self view];
    [view2 frame];
    v13 = CGRectGetWidth(v19) <= 320.0;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)_contentSizeDidChange
{
  [(MKPlaceHeaderButtonsViewController *)self setupPrimaryButton];

  [(MKPlaceHeaderButtonsViewController *)self setConstraints];
}

- (void)ETAProviderUpdated:(id)updated
{
  updatedCopy = updated;
  etaTransportType = [updatedCopy etaTransportType];
  [updatedCopy etaTravelTime];
  v7 = v6;

  v8 = [(MKPlaceHeaderButtonsViewController *)self etaStringFor:etaTransportType travelTime:v7];
  currentETAString = self->_currentETAString;
  self->_currentETAString = v8;

  [(MKPlaceHeaderButtonsViewController *)self setupPrimaryButton];
}

- (id)primaryAttributedString
{
  v3 = 0;
  primaryButtonType = self->_primaryButtonType;
  if (primaryButtonType > 2)
  {
    if (primaryButtonType == 3)
    {
      v6 = @"Share My Location";
    }

    else
    {
      if (primaryButtonType != 4)
      {
        goto LABEL_12;
      }

      v6 = @"Add Stop\nto route";
    }

    v7 = _MKLocalizedStringFromThisBundle(v6);
    v3 = [(MKPlaceHeaderButtonsViewController *)self attributedStringWith:v7];
  }

  else
  {
    if (primaryButtonType == 1)
    {
      directionAttributedStringWithETAString = [(MKPlaceHeaderButtonsViewController *)self directionAttributedStringWithETAString];
    }

    else
    {
      if (primaryButtonType != 2)
      {
        goto LABEL_12;
      }

      directionAttributedStringWithETAString = [(MKPlaceHeaderButtonsViewController *)self rerouteAttributedString];
    }

    v3 = directionAttributedStringWithETAString;
  }

LABEL_12:

  return v3;
}

- (id)attributedStringWith:(id)with
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB7D0];
  withCopy = with;
  defaultParagraphStyle = [v3 defaultParagraphStyle];
  v6 = [defaultParagraphStyle mutableCopy];

  [v6 setAlignment:1];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16[0] = *MEMORY[0x1E69DB648];
  v8 = MEMORY[0x1E69DB878];
  v9 = MEMORY[0x1E69DB880];
  if (_MKPlaceCardUseSmallerFont_onceToken != -1)
  {
    dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
  }

  if (_MKPlaceCardUseSmallerFont_smallerFont)
  {
    v10 = MEMORY[0x1E69DDD28];
  }

  else
  {
    v10 = MEMORY[0x1E69DDD78];
  }

  v11 = [v9 preferredFontDescriptorWithTextStyle:*v10 addingSymbolicTraits:2 options:0];
  v12 = [v8 fontWithDescriptor:v11 size:0.0];
  v16[1] = *MEMORY[0x1E69DB688];
  v17[0] = v12;
  v17[1] = v6;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14 = [v7 initWithString:withCopy attributes:v13];

  return v14;
}

- (id)rerouteAttributedString
{
  v35[1] = *MEMORY[0x1E69E9840];
  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  _detourInfo = [mapItem _detourInfo];
  [_detourInfo detourTime];
  if (v5 > 60.0)
  {
    mapItem2 = [(_MKPlaceItem *)self->_placeItem mapItem];
    _detourInfo2 = [mapItem2 _detourInfo];
    [_detourInfo2 detourTime];
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = _MKLocalizedStringFromThisBundle(@"PlaceCard_Reroute_Cost");
  v10 = _MKPlaceCardFormattedStringForTimeInterval();
  v11 = [v8 stringWithFormat:v9, v10];

  v12 = objc_alloc(MEMORY[0x1E696AAB0]);
  v34 = *MEMORY[0x1E69DB648];
  v13 = v34;
  v14 = *MEMORY[0x1E69DDDC8];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
  v35[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v17 = [v12 initWithString:v11 attributes:v16];

  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v19 = [defaultParagraphStyle mutableCopy];

  [v19 setAlignment:1];
  v20 = objc_alloc(MEMORY[0x1E696AD40]);
  v21 = _MKLocalizedStringFromThisBundle(@"PlaceCard_Reroute_Button");
  v32[0] = v13;
  v22 = MEMORY[0x1E69DB878];
  v23 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v14 addingSymbolicTraits:2 options:0];
  v24 = [v22 fontWithDescriptor:v23 size:0.0];
  v32[1] = *MEMORY[0x1E69DB688];
  v33[0] = v24;
  v33[1] = v19;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v26 = [v20 initWithString:v21 attributes:v25];

  string = [v26 string];
  v28 = [string rangeOfString:@"%@"];
  v30 = v29;

  if (v17 && v28 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v26 replaceCharactersInRange:v28 withAttributedString:{v30, v17}];
  }

  return v26;
}

- (id)directionAttributedStringWithETAString
{
  v34[1] = *MEMORY[0x1E69E9840];
  currentETAString = self->_currentETAString;
  v4 = *MEMORY[0x1E69DB648];
  v5 = 0x1E69DB000uLL;
  if (currentETAString)
  {
    v33 = *MEMORY[0x1E69DB648];
    v6 = MEMORY[0x1E69DB878];
    if (_MKPlaceCardUseSmallerFont_onceToken != -1)
    {
      dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
    }

    v7 = *MEMORY[0x1E69DDD28];
    v8 = *MEMORY[0x1E69DDD78];
    if (_MKPlaceCardUseSmallerFont_smallerFont)
    {
      v9 = *MEMORY[0x1E69DDD28];
    }

    else
    {
      v9 = *MEMORY[0x1E69DDD78];
    }

    v10 = [v6 preferredFontForTextStyle:v9];
    [v10 pointSize];
    v11 = [v6 systemFontOfSize:? weight:?];
    v34[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    [(NSMutableAttributedString *)currentETAString addAttributes:v12 range:0, [(NSMutableAttributedString *)self->_currentETAString length]];

    v5 = 0x1E69DB000;
  }

  else
  {
    v7 = *MEMORY[0x1E69DDD28];
    v8 = *MEMORY[0x1E69DDD78];
  }

  v13 = _MKLocalizedStringFromThisBundle(@"PlaceCard_GetDirections_No_ETA_Short");
  v31 = v4;
  v14 = *(v5 + 2168);
  v15 = MEMORY[0x1E69DB880];
  if (_MKPlaceCardUseSmallerFont_onceToken != -1)
  {
    dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
  }

  if (_MKPlaceCardUseSmallerFont_smallerFont)
  {
    v16 = v7;
  }

  else
  {
    v16 = v8;
  }

  v17 = [v15 preferredFontDescriptorWithTextStyle:v16 addingSymbolicTraits:2 options:0];
  v18 = [v14 fontWithDescriptor:v17 size:0.0];
  v32 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

  v20 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13 attributes:v19];
  v21 = v20;
  if (self->_currentETAString)
  {
    string = [v20 string];
    v23 = [string rangeOfString:@"%@"];
    v25 = v24;

    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v19];
      [v21 appendAttributedString:v26];

      [v21 appendAttributedString:self->_currentETAString];
    }

    else
    {
      [v21 replaceCharactersInRange:v23 withAttributedString:{v25, self->_currentETAString}];
    }
  }

  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v28 = [defaultParagraphStyle mutableCopy];

  [v28 setAlignment:1];
  [v28 setParagraphSpacing:-3.0];
  [v28 setLineBreakMode:5];
  v29 = [v21 length];
  [v21 addAttribute:*MEMORY[0x1E69DB688] value:v28 range:{0, v29}];

  return v21;
}

- (id)etaStringFor:(unint64_t)for travelTime:(double)time
{
  v4 = for - 1;
  if (for - 1 <= 7 && ((0x8Bu >> v4) & 1) != 0)
  {
    v5 = _MKLocalizedStringFromThisBundle(off_1E76CCD68[v4]);
    v6 = MEMORY[0x1E696AEC0];
    v7 = _MKPlaceCardFormattedStringForTimeInterval();
    v8 = [v6 stringWithFormat:v5, v7];

    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
    v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setPlaceItem:(id)item
{
  itemCopy = item;
  if (self->_placeItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_placeItem, item);
    [(MKPlaceHeaderButtonsViewController *)self setPrimaryButtonType:0];
    itemCopy = v6;
  }
}

- (void)setLineItem:(id)item
{
  itemCopy = item;
  if (self->_lineItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_lineItem, item);
    [(MKPlaceHeaderButtonsViewController *)self setPrimaryButtonType:0];
    itemCopy = v6;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = MKPlaceHeaderButtonsViewController;
  coordinatorCopy = coordinator;
  [(MKPlaceHeaderButtonsViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__MKPlaceHeaderButtonsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E76CCD48;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (void)viewDidLoad
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PlaceHeaderButtonsViewDidLoad", &unk_1A30FEA0E, buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = MKPlaceHeaderButtonsViewController;
  [(MKPlaceHeaderButtonsViewController *)&v13 viewDidLoad];
  sectionView = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView setPreservesSuperviewLayoutMargins:1];

  sectionView2 = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView2 setShowsBottomHairline:0];

  v6 = objc_alloc_init(MKPlaceSectionRowView);
  buttonsContainerView = self->_buttonsContainerView;
  self->_buttonsContainerView = v6;

  [(MKPlaceSectionRowView *)self->_buttonsContainerView setPreservesSuperviewLayoutMargins:1];
  [(MKViewWithHairline *)self->_buttonsContainerView setTopHairlineHidden:1];
  [(MKViewWithHairline *)self->_buttonsContainerView setBottomHairlineHidden:1];
  sectionView3 = [(MKPlaceSectionViewController *)self sectionView];
  v15[0] = self->_buttonsContainerView;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [sectionView3 setRowViews:v9];

  [(MKPlaceHeaderButtonsViewController *)self setupPrimaryButton];
  v10 = [(MKPlaceHeaderButtonsViewController *)self updateButton:self->_secondaryButton withController:self->_secondaryButtonController];
  secondaryButton = self->_secondaryButton;
  self->_secondaryButton = v10;

  [(MKPlaceHeaderButtonsViewController *)self setConstraints];
  v12 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PlaceHeaderButtonsViewDidLoad", &unk_1A30FEA0E, buf, 2u);
  }
}

- (void)_commonInit
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

- (MKPlaceHeaderButtonsViewController)init
{
  v5.receiver = self;
  v5.super_class = MKPlaceHeaderButtonsViewController;
  v2 = [(MKPlaceHeaderButtonsViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MKPlaceHeaderButtonsViewController *)v2 _commonInit];
  }

  return v3;
}

@end