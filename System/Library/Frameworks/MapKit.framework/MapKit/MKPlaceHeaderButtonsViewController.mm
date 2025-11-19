@interface MKPlaceHeaderButtonsViewController
- (BOOL)shouldStackForButtons:(id)a3;
- (MKPlaceHeaderButtonsViewController)init;
- (MKPlaceHeaderButtonsViewControllerDelegate)delegate;
- (id)attributedStringWith:(id)a3;
- (id)directionAttributedStringWithETAString;
- (id)etaStringFor:(unint64_t)a3 travelTime:(double)a4;
- (id)infoCardChildPossibleActions;
- (id)primaryAttributedString;
- (id)rerouteAttributedString;
- (id)updateButton:(id)a3 withController:(id)a4;
- (void)ETAProviderUpdated:(id)a3;
- (void)_commonInit;
- (void)_contentSizeDidChange;
- (void)primaryButtonSelected:(id)a3;
- (void)setAlternatePrimaryButtonController:(id)a3;
- (void)setConstraints;
- (void)setLineItem:(id)a3;
- (void)setPlaceItem:(id)a3;
- (void)setPrimaryButtonType:(unint64_t)a3;
- (void)setSecondaryButtonController:(id)a3;
- (void)setupPrimaryButton;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MKPlaceHeaderButtonsViewController

- (MKPlaceHeaderButtonsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)infoCardChildPossibleActions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  v5 = self->_primaryButtonType - 1;
  if (v5 <= 2)
  {
    [v3 addObject:qword_1E76CCDA8[v5]];
  }

  v6 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v7 = [v6 _hasFlyover];

  if (v7)
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
  v9 = [(MKPlaceHeaderButtonsViewController *)self secondaryButtonController];
  v10 = [v9 conformsToProtocol:&unk_1F1642C28];

  if (v10)
  {
    v11 = [(MKPlaceHeaderButtonsViewController *)self secondaryButtonController];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 infoCardChildPossibleActions];
      if ([v12 count])
      {
        [v4 addObjectsFromArray:v12];
      }
    }
  }

  return v4;
}

- (void)setAlternatePrimaryButtonController:(id)a3
{
  v8 = a3;
  if (self->_alternatePrimaryButtonController != v8)
  {
    [(_MKPlaceActionControlledButton *)self->_alternatePrimaryButton removeFromSuperview];
    alternatePrimaryButton = self->_alternatePrimaryButton;
    self->_alternatePrimaryButton = 0;

    objc_storeStrong(&self->_alternatePrimaryButtonController, a3);
    v6 = [(MKPlaceHeaderButtonsViewController *)self updateButton:self->_alternatePrimaryButton withController:self->_alternatePrimaryButtonController];
    v7 = self->_alternatePrimaryButton;
    self->_alternatePrimaryButton = v6;

    if (self->_buttonsContainerView)
    {
      [(MKPlaceHeaderButtonsViewController *)self setConstraints];
    }
  }
}

- (void)setSecondaryButtonController:(id)a3
{
  v8 = a3;
  if (self->_secondaryButtonController != v8)
  {
    [(_MKPlaceActionControlledButton *)self->_secondaryButton removeFromSuperview];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = 0;

    objc_storeStrong(&self->_secondaryButtonController, a3);
    v6 = [(MKPlaceHeaderButtonsViewController *)self updateButton:self->_secondaryButton withController:self->_secondaryButtonController];
    v7 = self->_secondaryButton;
    self->_secondaryButton = v6;

    if (self->_buttonsContainerView)
    {
      [(MKPlaceHeaderButtonsViewController *)self setConstraints];
    }
  }
}

- (id)updateButton:(id)a3 withController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MKPlaceHeaderButtonsViewController *)self viewIfLoaded];

  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = [(MKPlaceHeaderButtonsViewController *)self traitCollection];
  if ([v9 userInterfaceIdiom] == 5)
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

  v12 = [v7 buttonTitle];
  v13 = [v12 length];
  if (!v6 && v13)
  {
    v6 = objc_alloc_init(MKPlaceHeaderButton);
    [(MKPlaceSectionRowView *)self->_buttonsContainerView addSubview:v6];
LABEL_13:
    [(MKPlaceHeaderButton *)v6 setButtonController:v7];
    goto LABEL_14;
  }

  if (!v6 || v13)
  {
    if (v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [(MKPlaceHeaderButton *)v6 removeFromSuperview];

    v6 = 0;
  }

LABEL_14:
  v6 = v6;

  v11 = v6;
LABEL_15:

  return v11;
}

- (void)primaryButtonSelected:(id)a3
{
  v4 = a3;
  v5 = [(MKPlaceHeaderButtonsViewController *)self delegate];
  [v5 placeHeaderButtonsViewController:self didSelectPrimaryType:self->_primaryButtonType withView:v4];
}

- (void)setupPrimaryButton
{
  v3 = [(MKPlaceHeaderButtonsViewController *)self viewIfLoaded];

  if (v3)
  {
    v4 = [(MKPlaceHeaderButtonsViewController *)self traitCollection];
    if ([v4 userInterfaceIdiom] == 5)
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
    v11 = [(MKPlaceHeaderButtonsViewController *)self primaryAttributedString];
    [(_MKPlaceActionControlledButton *)v10 setPrimaryTitle:v11];
  }
}

- (void)setPrimaryButtonType:(unint64_t)a3
{
  if (self->_primaryButtonType != a3)
  {
    self->_primaryButtonType = a3;
    currentETAString = self->_currentETAString;
    self->_currentETAString = 0;

    [(MKPlaceHeaderButtonsViewController *)self setupPrimaryButton];

    [(MKPlaceHeaderButtonsViewController *)self setConstraints];
  }
}

- (void)setConstraints
{
  v2 = self;
  v155[6] = *MEMORY[0x1E69E9840];
  v3 = [(MKPlaceHeaderButtonsViewController *)self viewIfLoaded];

  if (v3)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:v2->_constraints];
    v4 = MEMORY[0x1E695E0F0];
    v139 = [MEMORY[0x1E695E0F0] mutableCopy];
    v5 = [v4 mutableCopy];
    v6 = v5;
    if (v2->_primaryButton)
    {
      [v5 addObject:?];
    }

    if (v2->_secondaryButton)
    {
      [v6 addObject:?];
    }

    v7 = [(MKPlaceHeaderButtonsViewController *)v2 shouldStackForButtons:v6];
    if (v2->_primaryButton || v2->_secondaryButton)
    {
      v8 = [(_MKPlaceActionControlledButton *)v2->_alternatePrimaryButton superview];

      if (!v8)
      {
        [(MKPlaceSectionRowView *)v2->_buttonsContainerView addSubview:v2->_alternatePrimaryButton];
      }
    }

    else
    {
      [(_MKPlaceActionControlledButton *)v2->_alternatePrimaryButton removeFromSuperview];
    }

    alternatePrimaryButton = v2->_alternatePrimaryButton;
    if (alternatePrimaryButton)
    {
      v10 = [(_MKPlaceActionControlledButton *)alternatePrimaryButton superview];
      buttonsContainerView = v2->_buttonsContainerView;

      if (v10 != buttonsContainerView)
      {
        [(_MKPlaceActionControlledButton *)v2->_alternatePrimaryButton removeFromSuperview];
        [(MKPlaceSectionRowView *)v2->_buttonsContainerView addSubview:v2->_alternatePrimaryButton];
      }
    }

    primaryButton = v2->_primaryButton;
    if (primaryButton && v2->_alternatePrimaryButton)
    {
      v113 = v6;
      v132 = [(_MKPlaceActionControlledButton *)primaryButton topAnchor];
      v129 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView topAnchor];
      v120 = [v132 constraintEqualToAnchor:v129];
      v155[0] = v120;
      v110 = [(_MKPlaceActionControlledButton *)v2->_primaryButton leadingAnchor];
      obja = [(MKPlaceSectionRowView *)v2->_buttonsContainerView layoutMarginsGuide];
      v107 = [obja leadingAnchor];
      v104 = [v110 constraintEqualToAnchor:v107];
      v155[1] = v104;
      v102 = [(_MKPlaceActionControlledButton *)v2->_alternatePrimaryButton topAnchor];
      v100 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView topAnchor];
      v98 = [v102 constraintEqualToAnchor:v100];
      v155[2] = v98;
      v96 = [(_MKPlaceActionControlledButton *)v2->_alternatePrimaryButton leadingAnchor];
      v94 = [(_MKPlaceActionControlledButton *)v2->_primaryButton trailingAnchor];
      v92 = [v96 constraintEqualToAnchor:v94 constant:6.0];
      v155[3] = v92;
      v13 = [(_MKPlaceActionControlledButton *)v2->_alternatePrimaryButton trailingAnchor];
      v14 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView layoutMarginsGuide];
      v15 = [v14 trailingAnchor];
      v16 = [v13 constraintEqualToAnchor:v15];
      v155[4] = v16;
      v17 = [(_MKPlaceActionControlledButton *)v2->_primaryButton widthAnchor];
      v18 = [(_MKPlaceActionControlledButton *)v2->_alternatePrimaryButton widthAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      v155[5] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:6];
      [v139 addObjectsFromArray:v20];

      secondaryButton = v2->_secondaryButton;
      if (secondaryButton)
      {
        v22 = [(_MKPlaceActionControlledButton *)secondaryButton leadingAnchor];
        v23 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView layoutMarginsGuide];
        v133 = [v23 leadingAnchor];
        v121 = v22;
        v130 = [v22 constraintEqualToAnchor:v133];
        v154[0] = v130;
        v111 = [(_MKPlaceActionControlledButton *)v2->_secondaryButton trailingAnchor];
        objb = [(MKPlaceSectionRowView *)v2->_buttonsContainerView layoutMarginsGuide];
        v108 = [objb trailingAnchor];
        v105 = [v111 constraintEqualToAnchor:v108];
        v154[1] = v105;
        v24 = [(_MKPlaceActionControlledButton *)v2->_secondaryButton topAnchor];
        v25 = [(_MKPlaceActionControlledButton *)v2->_primaryButton bottomAnchor];
        v26 = v24;
        v27 = [v24 constraintEqualToAnchor:v25 constant:10.0];
        v154[2] = v27;
        v28 = [(_MKPlaceActionControlledButton *)v2->_secondaryButton bottomAnchor];
        v29 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView bottomAnchor];
        v30 = [v28 constraintEqualToAnchor:v29 constant:-0.0];
        v154[3] = v30;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:4];
        v32 = v31 = v2;
        v33 = v139;
        [v139 addObjectsFromArray:v32];

        v2 = v31;
        v34 = v133;

        v35 = v130;
      }

      else
      {
        v81 = [(_MKPlaceActionControlledButton *)v2->_primaryButton bottomAnchor];
        v23 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView bottomAnchor];
        v121 = v81;
        v34 = [v81 constraintEqualToAnchor:v23 constant:-0.0];
        v153 = v34;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
        v33 = v139;
        [v139 addObjectsFromArray:v35];
      }

LABEL_47:
      v6 = v113;
      goto LABEL_48;
    }

    v36 = v2->_secondaryButton;
    if (v36 && v2->_alternatePrimaryButton)
    {
      v37 = [(_MKPlaceActionControlledButton *)v36 topAnchor];
      v23 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView topAnchor];
      v121 = v37;
      v134 = [v37 constraintEqualToAnchor:v23];
      v152[0] = v134;
      v131 = [(_MKPlaceActionControlledButton *)v2->_secondaryButton leadingAnchor];
      v126 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView layoutMarginsGuide];
      v123 = [v126 leadingAnchor];
      objc = [v131 constraintEqualToAnchor:v123];
      v152[1] = objc;
      v112 = [(_MKPlaceActionControlledButton *)v2->_alternatePrimaryButton topAnchor];
      v109 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView topAnchor];
      v106 = [v112 constraintEqualToAnchor:v109];
      v152[2] = v106;
      v103 = [(_MKPlaceActionControlledButton *)v2->_alternatePrimaryButton leadingAnchor];
      v101 = [(_MKPlaceActionControlledButton *)v2->_secondaryButton trailingAnchor];
      v99 = [v103 constraintEqualToAnchor:v101 constant:6.0];
      v152[3] = v99;
      v95 = [(_MKPlaceActionControlledButton *)v2->_alternatePrimaryButton trailingAnchor];
      v97 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView layoutMarginsGuide];
      v93 = [v97 trailingAnchor];
      v91 = [v95 constraintEqualToAnchor:v93];
      v152[4] = v91;
      v90 = [(_MKPlaceActionControlledButton *)v2->_alternatePrimaryButton bottomAnchor];
      v89 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView bottomAnchor];
      v88 = [v90 constraintEqualToAnchor:v89 constant:-0.0];
      v152[5] = v88;
      v87 = [(_MKPlaceActionControlledButton *)v2->_secondaryButton widthAnchor];
      v38 = [(_MKPlaceActionControlledButton *)v2->_alternatePrimaryButton widthAnchor];
      v39 = [v87 constraintEqualToAnchor:v38];
      v152[6] = v39;
      [(_MKPlaceActionControlledButton *)v2->_secondaryButton bottomAnchor];
      v40 = v114 = v6;
      v41 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView bottomAnchor];
      v42 = [v40 constraintEqualToAnchor:v41 constant:-0.0];
      v152[7] = v42;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:8];
      v33 = v139;
      [v139 addObjectsFromArray:v43];

      v34 = v134;
      v6 = v114;

      v35 = v131;
LABEL_48:
      v60 = 0x1E696A000uLL;
LABEL_49:

LABEL_50:
      v61 = v121;
LABEL_51:

LABEL_52:
      v82 = [v6 copy];
      buttons = v2->_buttons;
      v2->_buttons = v82;

      v84 = [v33 copy];
      constraints = v2->_constraints;
      v2->_constraints = v84;

      [*(v60 + 3288) activateConstraints:v2->_constraints];
      v86 = [(MKPlaceHeaderButtonsViewController *)v2 view];
      [v86 _mapkit_setNeedsLayout];

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
        v137 = v2;
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
            v127 = [v48 leadingAnchor];
            v49 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView layoutMarginsGuide];
            v50 = [v49 leadingAnchor];
            v51 = [v127 constraintEqualToAnchor:v50];
            v150[0] = v51;
            v52 = [v48 trailingAnchor];
            v53 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView layoutMarginsGuide];
            v54 = [v53 trailingAnchor];
            v55 = [v52 constraintEqualToAnchor:v54];
            v150[1] = v55;
            v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:2];
            [v139 addObjectsFromArray:v56];

            v57 = [v48 topAnchor];
            if (v135)
            {
              v58 = [v135 bottomAnchor];
              v59 = [v57 constraintEqualToAnchor:v58 constant:10.0];
              v2 = v137;
            }

            else
            {
              v2 = v137;
              v58 = [(MKPlaceSectionRowView *)v137->_buttonsContainerView topAnchor];
              v59 = [v57 constraintEqualToAnchor:v58];
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
        v23 = [v45 bottomAnchor];
        v34 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView bottomAnchor];
        v35 = [v23 constraintEqualToAnchor:v34 constant:-0.0];
        [v139 addObject:v35];
        goto LABEL_49;
      }

      v61 = v44;
    }

    else
    {
      v61 = [v6 reverseObjectEnumerator];
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v128 = [v61 countByEnumeratingWithState:&v140 objects:v149 count:16];
      if (v128)
      {
        v113 = v6;
        v23 = 0;
        v121 = v61;
        v125 = *v141;
        v138 = v2;
        do
        {
          v62 = 0;
          v63 = v23;
          do
          {
            v136 = v63;
            if (*v141 != v125)
            {
              objc_enumerationMutation(v121);
            }

            v64 = *(*(&v140 + 1) + 8 * v62);
            v65 = [v64 topAnchor];
            v66 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView topAnchor];
            v67 = [v65 constraintEqualToAnchor:v66];
            v148[0] = v67;
            v68 = [v64 bottomAnchor];
            v69 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView bottomAnchor];
            v70 = [v68 constraintEqualToAnchor:v69 constant:-0.0];
            v148[1] = v70;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:2];
            [v139 addObjectsFromArray:v71];

            if (v136)
            {
              v72 = [v64 widthAnchor];
              v73 = [v136 widthAnchor];
              v74 = [v72 constraintEqualToAnchor:v73];
              [v139 addObject:v74];

              v75 = [v64 leadingAnchor];
              v76 = [v136 trailingAnchor];
              v77 = [v75 constraintEqualToAnchor:v76 constant:10.0];
              [v139 addObject:v77];
              v2 = v138;
            }

            else
            {
              v75 = [v64 leadingAnchor];
              v2 = v138;
              v76 = [(MKPlaceSectionRowView *)v138->_buttonsContainerView layoutMarginsGuide];
              v77 = [v76 leadingAnchor];
              v78 = [v75 constraintEqualToAnchor:v77];
              [v139 addObject:v78];
            }

            v23 = v64;
            ++v62;
            v63 = v23;
          }

          while (v128 != v62);
          v128 = [v121 countByEnumeratingWithState:&v140 objects:v149 count:16];
        }

        while (v128);
        if (!v23)
        {
          v33 = v139;
          v6 = v113;
          v60 = 0x1E696A000;
          goto LABEL_50;
        }

        v34 = [v23 trailingAnchor];
        v35 = [(MKPlaceSectionRowView *)v2->_buttonsContainerView layoutMarginsGuide];
        v79 = [v35 trailingAnchor];
        v80 = [v34 constraintEqualToAnchor:v79];
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

- (BOOL)shouldStackForButtons:(id)a3
{
  if ([a3 count] > 2)
  {
    return 1;
  }

  v4 = [(MKPlaceHeaderButtonsViewController *)self view];
  [v4 frame];
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
    v14 = [(MKPlaceHeaderButtonsViewController *)self view];
    [v14 frame];
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

- (void)ETAProviderUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 etaTransportType];
  [v4 etaTravelTime];
  v7 = v6;

  v8 = [(MKPlaceHeaderButtonsViewController *)self etaStringFor:v5 travelTime:v7];
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
      v5 = [(MKPlaceHeaderButtonsViewController *)self directionAttributedStringWithETAString];
    }

    else
    {
      if (primaryButtonType != 2)
      {
        goto LABEL_12;
      }

      v5 = [(MKPlaceHeaderButtonsViewController *)self rerouteAttributedString];
    }

    v3 = v5;
  }

LABEL_12:

  return v3;
}

- (id)attributedStringWith:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB7D0];
  v4 = a3;
  v5 = [v3 defaultParagraphStyle];
  v6 = [v5 mutableCopy];

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
  v14 = [v7 initWithString:v4 attributes:v13];

  return v14;
}

- (id)rerouteAttributedString
{
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v4 = [v3 _detourInfo];
  [v4 detourTime];
  if (v5 > 60.0)
  {
    v6 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v7 = [v6 _detourInfo];
    [v7 detourTime];
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

  v18 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v19 = [v18 mutableCopy];

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

  v27 = [v26 string];
  v28 = [v27 rangeOfString:@"%@"];
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
    v22 = [v20 string];
    v23 = [v22 rangeOfString:@"%@"];
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

  v27 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v28 = [v27 mutableCopy];

  [v28 setAlignment:1];
  [v28 setParagraphSpacing:-3.0];
  [v28 setLineBreakMode:5];
  v29 = [v21 length];
  [v21 addAttribute:*MEMORY[0x1E69DB688] value:v28 range:{0, v29}];

  return v21;
}

- (id)etaStringFor:(unint64_t)a3 travelTime:(double)a4
{
  v4 = a3 - 1;
  if (a3 - 1 <= 7 && ((0x8Bu >> v4) & 1) != 0)
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

- (void)setPlaceItem:(id)a3
{
  v5 = a3;
  if (self->_placeItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeItem, a3);
    [(MKPlaceHeaderButtonsViewController *)self setPrimaryButtonType:0];
    v5 = v6;
  }
}

- (void)setLineItem:(id)a3
{
  v5 = a3;
  if (self->_lineItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_lineItem, a3);
    [(MKPlaceHeaderButtonsViewController *)self setPrimaryButtonType:0];
    v5 = v6;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = MKPlaceHeaderButtonsViewController;
  v7 = a4;
  [(MKPlaceHeaderButtonsViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__MKPlaceHeaderButtonsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E76CCD48;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
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
  v4 = [(MKPlaceSectionViewController *)self sectionView];
  [v4 setPreservesSuperviewLayoutMargins:1];

  v5 = [(MKPlaceSectionViewController *)self sectionView];
  [v5 setShowsBottomHairline:0];

  v6 = objc_alloc_init(MKPlaceSectionRowView);
  buttonsContainerView = self->_buttonsContainerView;
  self->_buttonsContainerView = v6;

  [(MKPlaceSectionRowView *)self->_buttonsContainerView setPreservesSuperviewLayoutMargins:1];
  [(MKViewWithHairline *)self->_buttonsContainerView setTopHairlineHidden:1];
  [(MKViewWithHairline *)self->_buttonsContainerView setBottomHairlineHidden:1];
  v8 = [(MKPlaceSectionViewController *)self sectionView];
  v15[0] = self->_buttonsContainerView;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v8 setRowViews:v9];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
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