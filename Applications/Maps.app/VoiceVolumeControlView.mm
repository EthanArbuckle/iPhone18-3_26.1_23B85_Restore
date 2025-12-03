@interface VoiceVolumeControlView
- (CGSize)intrinsicContentSize;
- (VoiceVolumeControlView)initWithDelegate:(id)delegate;
- (VoiceVolumeControlViewDelegate)delegate;
- (double)_buttonLabelVerticalMarginForTrait:(id)trait;
- (id)_accessibilityIdenfifierPrefixForVolumeOption:(int64_t)option;
- (id)_accessibilityTextForVolumeOption:(int64_t)option;
- (id)_buttonForVolumeOption:(int64_t)option;
- (id)_effectiveTraitCollection;
- (id)_imageForVolumeOption:(int64_t)option;
- (id)_labelForVolumeOption:(int64_t)option;
- (void)_addShadows;
- (void)_animateContentUpdate;
- (void)_setup;
- (void)_updateContent;
- (void)buttonSwiped:(id)swiped;
- (void)buttonTapped:(id)tapped;
- (void)dealloc;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation VoiceVolumeControlView

- (VoiceVolumeControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  if (key.var0 == 736 && key.var1 == &unk_101644C90)
  {
    self->_currentSelection = GEOConfigGetInteger();

    [(VoiceVolumeControlView *)self _animateContentUpdate];
  }
}

- (void)_addShadows
{
  if (!self->_shadowImageView)
  {
    v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    shadowImageView = self->_shadowImageView;
    self->_shadowImageView = v3;

    [(UIView *)self->_selectionBadge addSubview:self->_shadowImageView];
  }

  [(UIView *)self->_selectionBadge frame];
  v6 = v5 * 0.5;
  traitCollection = [(VoiceVolumeControlView *)self traitCollection];
  [traitCollection displayScale];
  v9 = v8;

  v14 = +[UIColor systemBlackColor];
  v10 = sub_1006AAD54(v14, v6, 8.0, 0.119999997, v9);
  [(UIImageView *)self->_shadowImageView setImage:v10];
  if (self->_shadowImageView)
  {
    [(UIView *)self->_selectionBadge bounds];
    v17 = CGRectInset(v16, -8.0, -8.0);
    [(UIImageView *)self->_shadowImageView setFrame:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
  }

  if (!self->_shadowImageView2)
  {
    v11 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    shadowImageView2 = self->_shadowImageView2;
    self->_shadowImageView2 = v11;

    [(UIView *)self->_selectionBadge addSubview:self->_shadowImageView2];
  }

  v13 = sub_1006AAD54(v14, v6, 1.0, 0.0399999991, v9);

  [(UIImageView *)self->_shadowImageView2 setImage:v13];
  if (self->_shadowImageView2)
  {
    [(UIView *)self->_selectionBadge bounds];
    v19 = CGRectInset(v18, -1.0, -1.0);
    [(UIImageView *)self->_shadowImageView2 setFrame:v19.origin.x, v19.origin.y, v19.size.width, v19.size.height];
  }
}

- (double)_buttonLabelVerticalMarginForTrait:(id)trait
{
  preferredContentSizeCategory = [trait preferredContentSizeCategory];
  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryMedium) == NSOrderedDescending)
  {
    v4 = 10.0;
  }

  else
  {
    v4 = 8.0;
  }

  return v4;
}

- (id)_effectiveTraitCollection
{
  traitCollection = [(VoiceVolumeControlView *)self traitCollection];
  _maximumContentSizeCategory = [(VoiceVolumeControlView *)self _maximumContentSizeCategory];
  v5 = [traitCollection _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:_maximumContentSizeCategory];

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v21.receiver = self;
  v21.super_class = VoiceVolumeControlView;
  [(VoiceVolumeControlView *)&v21 traitCollectionDidChange:changeCopy];
  traitCollection = [(VoiceVolumeControlView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);

  if (v8)
  {
    _effectiveTraitCollection = [(VoiceVolumeControlView *)self _effectiveTraitCollection];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    arrangedSubviews = [(UIStackView *)self->_labelStackView arrangedSubviews];
    v11 = [arrangedSubviews countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:_effectiveTraitCollection];
          [v15 setFont:v16];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [arrangedSubviews countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

- (id)_accessibilityTextForVolumeOption:(int64_t)option
{
  if (option <= 2)
  {
    v4 = off_101626248[option];
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

- (id)_accessibilityIdenfifierPrefixForVolumeOption:(int64_t)option
{
  v3 = @"VolumeSoft";
  if (option == 1)
  {
    v3 = @"VolumeNormal";
  }

  if (option == 2)
  {
    return @"VolumeLoud";
  }

  else
  {
    return v3;
  }
}

- (void)_animateContentUpdate
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1006AB420;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.25];
}

- (void)buttonSwiped:(id)swiped
{
  swipedCopy = swiped;
  view = [swipedCopy view];
  v5 = [view tag];
  currentSelection = self->_currentSelection;

  if (v5 == currentSelection)
  {
    direction = [swipedCopy direction];
    view2 = [swipedCopy view];
    v9 = [view2 tag];
    v10 = (direction == 2 ? v9 - 1 : v9 + 1);

    if (v10 <= 2)
    {
      self->_currentSelection = v10;
      delegate = [(VoiceVolumeControlView *)self delegate];
      [delegate audioControlView:self didSelectAudioVolume:self->_currentSelection];

      [(VoiceVolumeControlView *)self _animateContentUpdate];
    }
  }
}

- (void)buttonTapped:(id)tapped
{
  self->_currentSelection = [tapped tag];
  delegate = [(VoiceVolumeControlView *)self delegate];
  [delegate audioControlView:self didSelectAudioVolume:self->_currentSelection];

  [(VoiceVolumeControlView *)self _animateContentUpdate];
}

- (id)_buttonForVolumeOption:(int64_t)option
{
  v5 = objc_opt_new();
  [v5 setTag:option];
  v6 = [(VoiceVolumeControlView *)self _accessibilityIdenfifierPrefixForVolumeOption:option];
  [v5 setAccessibilityIdentifier:v6];

  v7 = [(VoiceVolumeControlView *)self _accessibilityTextForVolumeOption:option];
  [v5 setAccessibilityLabel:v7];

  v8 = [(VoiceVolumeControlView *)self _imageForVolumeOption:option];
  [v5 setImage:v8 forState:0];

  [v5 addTarget:self action:"buttonTapped:" forControlEvents:64];
  v9 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"buttonSwiped:"];
  [v9 setDirection:2];
  [v9 setNumberOfTouchesRequired:1];
  [v5 addGestureRecognizer:v9];
  v10 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"buttonSwiped:"];

  [v10 setDirection:1];
  [v10 setNumberOfTouchesRequired:1];
  [v5 addGestureRecognizer:v10];

  return v5;
}

- (id)_labelForVolumeOption:(int64_t)option
{
  if (option > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_101626230[option];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  v6 = objc_opt_new();
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTextAlignment:1];
  LODWORD(v7) = 1148846080;
  [v6 setContentHuggingPriority:1 forAxis:v7];
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v6 setFont:v8];

  v9 = +[UIColor labelColor];
  [v6 setTextColor:v9];

  [v6 setText:v5];

  return v6;
}

- (id)_imageForVolumeOption:(int64_t)option
{
  if (qword_10195CEE8 != -1)
  {
    dispatch_once(&qword_10195CEE8, &stru_1016261D8);
  }

  if (option <= 2)
  {
    self = [UIImage systemImageNamed:off_101626218[option] withConfiguration:qword_10195CEF0];
  }

  return self;
}

- (void)_updateContent
{
  buttons = self->_buttons;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006AB990;
  v3[3] = &unk_10162A8A0;
  v3[4] = self;
  [(NSArray *)buttons enumerateObjectsUsingBlock:v3];
}

- (void)_setup
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  self->_currentSelection = [WeakRetained currentSelectionForAudioControlView:self];

  v4 = objc_opt_new();
  v5 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  buttonStackViewContainer = self->_buttonStackViewContainer;
  self->_buttonStackViewContainer = v9;

  [(UIView *)self->_buttonStackViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_buttonStackViewContainer setAccessibilityLabel:@"buttonStackViewContainer"];
  [(UIView *)self->_buttonStackViewContainer setClipsToBounds:1];
  layer = [(UIView *)self->_buttonStackViewContainer layer];
  [layer setCornerRadius:44.0];

  v12 = +[UIColor tertiarySystemFillColor];
  [(UIView *)self->_buttonStackViewContainer setBackgroundColor:v12];

  widthAnchor = [(UIView *)self->_buttonStackViewContainer widthAnchor];
  v14 = [widthAnchor constraintEqualToConstant:324.0];

  LODWORD(v15) = 1144750080;
  [v14 setPriority:v15];
  v97 = v4;
  v92 = v14;
  [v4 addObject:v14];
  [(VoiceVolumeControlView *)self addSubview:self->_buttonStackViewContainer];
  v16 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  selectionBadge = self->_selectionBadge;
  self->_selectionBadge = v16;

  [(UIView *)self->_selectionBadge setTranslatesAutoresizingMaskIntoConstraints:0];
  layer2 = [(UIView *)self->_selectionBadge layer];
  [layer2 setCornerRadius:40.0];

  v19 = +[UIColor systemWhiteColor];
  [(UIView *)self->_selectionBadge setBackgroundColor:v19];

  [(UIView *)self->_buttonStackViewContainer addSubview:self->_selectionBadge];
  v20 = objc_opt_new();
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v21 = [&off_1016EC890 countByEnumeratingWithState:&v115 objects:v123 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v116;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v116 != v23)
        {
          objc_enumerationMutation(&off_1016EC890);
        }

        v25 = -[VoiceVolumeControlView _buttonForVolumeOption:](self, "_buttonForVolumeOption:", [*(*(&v115 + 1) + 8 * i) integerValue]);
        [v20 addObject:v25];
      }

      v22 = [&off_1016EC890 countByEnumeratingWithState:&v115 objects:v123 count:16];
    }

    while (v22);
  }

  v91 = v20;
  objc_storeStrong(&self->_buttons, v20);
  v26 = [[UIStackView alloc] initWithArrangedSubviews:self->_buttons];
  buttonStackView = self->_buttonStackView;
  self->_buttonStackView = v26;

  [(UIStackView *)self->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_buttonStackView setAlignment:3];
  [(UIStackView *)self->_buttonStackView setAxis:0];
  [(UIStackView *)self->_buttonStackView setDistribution:3];
  [(UIView *)self->_buttonStackViewContainer addSubview:self->_buttonStackView];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  selfCopy = self;
  obj = self->_buttons;
  v100 = [(NSArray *)obj countByEnumeratingWithState:&v111 objects:v122 count:16];
  if (v100)
  {
    v95 = *v112;
    do
    {
      for (j = 0; j != v100; j = j + 1)
      {
        if (*v112 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v111 + 1) + 8 * j);
        [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
        widthAnchor2 = [v29 widthAnchor];
        heightAnchor = [v29 heightAnchor];
        v31 = [widthAnchor2 constraintEqualToAnchor:heightAnchor];
        v121[0] = v31;
        topAnchor = [v29 topAnchor];
        topAnchor2 = [(UIStackView *)selfCopy->_buttonStackView topAnchor];
        v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v121[1] = v34;
        bottomAnchor = [v29 bottomAnchor];
        bottomAnchor2 = [(UIStackView *)selfCopy->_buttonStackView bottomAnchor];
        v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v121[2] = v37;
        v38 = [NSArray arrayWithObjects:v121 count:3];
        [v97 addObjectsFromArray:v38];
      }

      v100 = [(NSArray *)obj countByEnumeratingWithState:&v111 objects:v122 count:16];
    }

    while (v100);
  }

  v39 = objc_opt_new();
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v40 = [&off_1016EC890 countByEnumeratingWithState:&v107 objects:v120 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v108;
    do
    {
      for (k = 0; k != v41; k = k + 1)
      {
        if (*v108 != v42)
        {
          objc_enumerationMutation(&off_1016EC890);
        }

        v44 = -[VoiceVolumeControlView _labelForVolumeOption:](selfCopy, "_labelForVolumeOption:", [*(*(&v107 + 1) + 8 * k) integerValue]);
        [v39 addObject:v44];
      }

      v41 = [&off_1016EC890 countByEnumeratingWithState:&v107 objects:v120 count:16];
    }

    while (v41);
  }

  v45 = [[UIStackView alloc] initWithArrangedSubviews:v39];
  labelStackView = selfCopy->_labelStackView;
  selfCopy->_labelStackView = v45;

  [(UIStackView *)selfCopy->_labelStackView setSpacing:10.0];
  [(UIStackView *)selfCopy->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)selfCopy->_labelStackView setAlignment:5];
  [(UIStackView *)selfCopy->_labelStackView setAxis:0];
  [(UIStackView *)selfCopy->_labelStackView setDistribution:3];
  [(VoiceVolumeControlView *)selfCopy addSubview:selfCopy->_labelStackView];
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_1006AC778;
  v104[3] = &unk_1016261B8;
  v105 = v97;
  v106 = selfCopy;
  v103 = v97;
  [v39 enumerateObjectsUsingBlock:v104];
  topAnchor3 = [(UIView *)selfCopy->_buttonStackViewContainer topAnchor];
  topAnchor4 = [(VoiceVolumeControlView *)selfCopy topAnchor];
  v96 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v119[0] = v96;
  obja = [(UIView *)selfCopy->_buttonStackViewContainer heightAnchor];
  v89 = [obja constraintEqualToConstant:88.0];
  v119[1] = v89;
  leftAnchor = [(UIView *)selfCopy->_buttonStackViewContainer leftAnchor];
  leftAnchor2 = [(VoiceVolumeControlView *)selfCopy leftAnchor];
  v86 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v119[2] = v86;
  rightAnchor = [(UIView *)selfCopy->_buttonStackViewContainer rightAnchor];
  rightAnchor2 = [(VoiceVolumeControlView *)selfCopy rightAnchor];
  v83 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v119[3] = v83;
  topAnchor5 = [(UIView *)selfCopy->_selectionBadge topAnchor];
  topAnchor6 = [(UIView *)selfCopy->_buttonStackViewContainer topAnchor];
  v80 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:4.0];
  v119[4] = v80;
  bottomAnchor3 = [(UIView *)selfCopy->_selectionBadge bottomAnchor];
  bottomAnchor4 = [(UIView *)selfCopy->_buttonStackViewContainer bottomAnchor];
  v77 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-4.0];
  v119[5] = v77;
  widthAnchor3 = [(UIView *)selfCopy->_selectionBadge widthAnchor];
  heightAnchor2 = [(UIView *)selfCopy->_selectionBadge heightAnchor];
  v75 = [widthAnchor3 constraintEqualToAnchor:heightAnchor2];
  v119[6] = v75;
  topAnchor7 = [(UIStackView *)selfCopy->_buttonStackView topAnchor];
  topAnchor8 = [(UIView *)selfCopy->_buttonStackViewContainer topAnchor];
  v72 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:4.0];
  v119[7] = v72;
  bottomAnchor5 = [(UIStackView *)selfCopy->_buttonStackView bottomAnchor];
  bottomAnchor6 = [(UIView *)selfCopy->_buttonStackViewContainer bottomAnchor];
  v69 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-4.0];
  v119[8] = v69;
  leftAnchor3 = [(UIStackView *)selfCopy->_buttonStackView leftAnchor];
  leftAnchor4 = [(UIView *)selfCopy->_buttonStackViewContainer leftAnchor];
  v66 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:4.0];
  v119[9] = v66;
  rightAnchor3 = [(UIStackView *)selfCopy->_buttonStackView rightAnchor];
  rightAnchor4 = [(UIView *)selfCopy->_buttonStackViewContainer rightAnchor];
  v63 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:-4.0];
  v119[10] = v63;
  topAnchor9 = [(UIStackView *)selfCopy->_labelStackView topAnchor];
  bottomAnchor7 = [(UIView *)selfCopy->_buttonStackViewContainer bottomAnchor];
  v60 = [topAnchor9 constraintLessThanOrEqualToAnchor:bottomAnchor7 constant:10.0];
  v119[11] = v60;
  topAnchor10 = [(UIStackView *)selfCopy->_labelStackView topAnchor];
  bottomAnchor8 = [(UIView *)selfCopy->_buttonStackViewContainer bottomAnchor];
  v57 = [topAnchor10 constraintGreaterThanOrEqualToAnchor:bottomAnchor8 constant:8.0];
  v119[12] = v57;
  leftAnchor5 = [(UIStackView *)selfCopy->_labelStackView leftAnchor];
  leftAnchor6 = [(UIStackView *)selfCopy->_buttonStackView leftAnchor];
  v48 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
  v119[13] = v48;
  rightAnchor5 = [(UIStackView *)selfCopy->_labelStackView rightAnchor];
  rightAnchor6 = [(UIStackView *)selfCopy->_buttonStackView rightAnchor];
  v51 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  v119[14] = v51;
  topAnchor11 = [(VoiceVolumeControlView *)selfCopy topAnchor];
  topAnchor12 = [(UIView *)selfCopy->_buttonStackViewContainer topAnchor];
  v54 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
  v119[15] = v54;
  v55 = [NSArray arrayWithObjects:v119 count:16];
  [v103 addObjectsFromArray:v55];

  [NSLayoutConstraint activateConstraints:v103];
  [(VoiceVolumeControlView *)selfCopy _updateContent];
  _GEOConfigAddDelegateListenerForKey();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VoiceVolumeControlView;
  [(VoiceVolumeControlView *)&v3 layoutSubviews];
  [(UIView *)self->_buttonStackViewContainer layoutSubviews];
  [(VoiceVolumeControlView *)self _addShadows];
}

- (CGSize)intrinsicContentSize
{
  arrangedSubviews = [(UIStackView *)self->_labelStackView arrangedSubviews];
  firstObject = [arrangedSubviews firstObject];
  font = [firstObject font];
  [font lineHeight];
  v7 = v6;

  v8 = ceil(v7);
  traitCollection = [(VoiceVolumeControlView *)self traitCollection];
  [(VoiceVolumeControlView *)self _buttonLabelVerticalMarginForTrait:traitCollection];
  v11 = v10;

  v12 = v8 + v11 + 88.0;
  v13 = 324.0;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForKey();
  v3.receiver = self;
  v3.super_class = VoiceVolumeControlView;
  [(VoiceVolumeControlView *)&v3 dealloc];
}

- (VoiceVolumeControlView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = VoiceVolumeControlView;
  v5 = [(VoiceVolumeControlView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(VoiceVolumeControlView *)v5 setAccessibilityIdentifier:v7];

    objc_storeWeak(&v5->_delegate, delegateCopy);
    [(VoiceVolumeControlView *)v5 _setup];
  }

  return v5;
}

@end