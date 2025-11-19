@interface VoiceVolumeControlView
- (CGSize)intrinsicContentSize;
- (VoiceVolumeControlView)initWithDelegate:(id)a3;
- (VoiceVolumeControlViewDelegate)delegate;
- (double)_buttonLabelVerticalMarginForTrait:(id)a3;
- (id)_accessibilityIdenfifierPrefixForVolumeOption:(int64_t)a3;
- (id)_accessibilityTextForVolumeOption:(int64_t)a3;
- (id)_buttonForVolumeOption:(int64_t)a3;
- (id)_effectiveTraitCollection;
- (id)_imageForVolumeOption:(int64_t)a3;
- (id)_labelForVolumeOption:(int64_t)a3;
- (void)_addShadows;
- (void)_animateContentUpdate;
- (void)_setup;
- (void)_updateContent;
- (void)buttonSwiped:(id)a3;
- (void)buttonTapped:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation VoiceVolumeControlView

- (VoiceVolumeControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == 736 && a3.var1 == &unk_101644C90)
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
  v7 = [(VoiceVolumeControlView *)self traitCollection];
  [v7 displayScale];
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

- (double)_buttonLabelVerticalMarginForTrait:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  if (UIContentSizeCategoryCompareToCategory(v3, UIContentSizeCategoryMedium) == NSOrderedDescending)
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
  v3 = [(VoiceVolumeControlView *)self traitCollection];
  v4 = [(VoiceVolumeControlView *)self _maximumContentSizeCategory];
  v5 = [v3 _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:v4];

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = VoiceVolumeControlView;
  [(VoiceVolumeControlView *)&v21 traitCollectionDidChange:v4];
  v5 = [(VoiceVolumeControlView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];
  v8 = sub_10008FB5C(v6, v7);

  if (v8)
  {
    v9 = [(VoiceVolumeControlView *)self _effectiveTraitCollection];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [(UIStackView *)self->_labelStackView arrangedSubviews];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v9];
          [v15 setFont:v16];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

- (id)_accessibilityTextForVolumeOption:(int64_t)a3
{
  if (a3 <= 2)
  {
    v4 = off_101626248[a3];
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

- (id)_accessibilityIdenfifierPrefixForVolumeOption:(int64_t)a3
{
  v3 = @"VolumeSoft";
  if (a3 == 1)
  {
    v3 = @"VolumeNormal";
  }

  if (a3 == 2)
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

- (void)buttonSwiped:(id)a3
{
  v12 = a3;
  v4 = [v12 view];
  v5 = [v4 tag];
  currentSelection = self->_currentSelection;

  if (v5 == currentSelection)
  {
    v7 = [v12 direction];
    v8 = [v12 view];
    v9 = [v8 tag];
    v10 = (v7 == 2 ? v9 - 1 : v9 + 1);

    if (v10 <= 2)
    {
      self->_currentSelection = v10;
      v11 = [(VoiceVolumeControlView *)self delegate];
      [v11 audioControlView:self didSelectAudioVolume:self->_currentSelection];

      [(VoiceVolumeControlView *)self _animateContentUpdate];
    }
  }
}

- (void)buttonTapped:(id)a3
{
  self->_currentSelection = [a3 tag];
  v4 = [(VoiceVolumeControlView *)self delegate];
  [v4 audioControlView:self didSelectAudioVolume:self->_currentSelection];

  [(VoiceVolumeControlView *)self _animateContentUpdate];
}

- (id)_buttonForVolumeOption:(int64_t)a3
{
  v5 = objc_opt_new();
  [v5 setTag:a3];
  v6 = [(VoiceVolumeControlView *)self _accessibilityIdenfifierPrefixForVolumeOption:a3];
  [v5 setAccessibilityIdentifier:v6];

  v7 = [(VoiceVolumeControlView *)self _accessibilityTextForVolumeOption:a3];
  [v5 setAccessibilityLabel:v7];

  v8 = [(VoiceVolumeControlView *)self _imageForVolumeOption:a3];
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

- (id)_labelForVolumeOption:(int64_t)a3
{
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_101626230[a3];
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

- (id)_imageForVolumeOption:(int64_t)a3
{
  if (qword_10195CEE8 != -1)
  {
    dispatch_once(&qword_10195CEE8, &stru_1016261D8);
  }

  if (a3 <= 2)
  {
    self = [UIImage systemImageNamed:off_101626218[a3] withConfiguration:qword_10195CEF0];
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
  v11 = [(UIView *)self->_buttonStackViewContainer layer];
  [v11 setCornerRadius:44.0];

  v12 = +[UIColor tertiarySystemFillColor];
  [(UIView *)self->_buttonStackViewContainer setBackgroundColor:v12];

  v13 = [(UIView *)self->_buttonStackViewContainer widthAnchor];
  v14 = [v13 constraintEqualToConstant:324.0];

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
  v18 = [(UIView *)self->_selectionBadge layer];
  [v18 setCornerRadius:40.0];

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
  v99 = self;
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
        v102 = [v29 widthAnchor];
        v30 = [v29 heightAnchor];
        v31 = [v102 constraintEqualToAnchor:v30];
        v121[0] = v31;
        v32 = [v29 topAnchor];
        v33 = [(UIStackView *)v99->_buttonStackView topAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];
        v121[1] = v34;
        v35 = [v29 bottomAnchor];
        v36 = [(UIStackView *)v99->_buttonStackView bottomAnchor];
        v37 = [v35 constraintEqualToAnchor:v36];
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

        v44 = -[VoiceVolumeControlView _labelForVolumeOption:](v99, "_labelForVolumeOption:", [*(*(&v107 + 1) + 8 * k) integerValue]);
        [v39 addObject:v44];
      }

      v41 = [&off_1016EC890 countByEnumeratingWithState:&v107 objects:v120 count:16];
    }

    while (v41);
  }

  v45 = [[UIStackView alloc] initWithArrangedSubviews:v39];
  labelStackView = v99->_labelStackView;
  v99->_labelStackView = v45;

  [(UIStackView *)v99->_labelStackView setSpacing:10.0];
  [(UIStackView *)v99->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)v99->_labelStackView setAlignment:5];
  [(UIStackView *)v99->_labelStackView setAxis:0];
  [(UIStackView *)v99->_labelStackView setDistribution:3];
  [(VoiceVolumeControlView *)v99 addSubview:v99->_labelStackView];
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_1006AC778;
  v104[3] = &unk_1016261B8;
  v105 = v97;
  v106 = v99;
  v103 = v97;
  [v39 enumerateObjectsUsingBlock:v104];
  v101 = [(UIView *)v99->_buttonStackViewContainer topAnchor];
  v98 = [(VoiceVolumeControlView *)v99 topAnchor];
  v96 = [v101 constraintEqualToAnchor:v98];
  v119[0] = v96;
  obja = [(UIView *)v99->_buttonStackViewContainer heightAnchor];
  v89 = [obja constraintEqualToConstant:88.0];
  v119[1] = v89;
  v88 = [(UIView *)v99->_buttonStackViewContainer leftAnchor];
  v87 = [(VoiceVolumeControlView *)v99 leftAnchor];
  v86 = [v88 constraintEqualToAnchor:v87];
  v119[2] = v86;
  v85 = [(UIView *)v99->_buttonStackViewContainer rightAnchor];
  v84 = [(VoiceVolumeControlView *)v99 rightAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v119[3] = v83;
  v82 = [(UIView *)v99->_selectionBadge topAnchor];
  v81 = [(UIView *)v99->_buttonStackViewContainer topAnchor];
  v80 = [v82 constraintEqualToAnchor:v81 constant:4.0];
  v119[4] = v80;
  v79 = [(UIView *)v99->_selectionBadge bottomAnchor];
  v78 = [(UIView *)v99->_buttonStackViewContainer bottomAnchor];
  v77 = [v79 constraintEqualToAnchor:v78 constant:-4.0];
  v119[5] = v77;
  v76 = [(UIView *)v99->_selectionBadge widthAnchor];
  v90 = [(UIView *)v99->_selectionBadge heightAnchor];
  v75 = [v76 constraintEqualToAnchor:v90];
  v119[6] = v75;
  v74 = [(UIStackView *)v99->_buttonStackView topAnchor];
  v73 = [(UIView *)v99->_buttonStackViewContainer topAnchor];
  v72 = [v74 constraintEqualToAnchor:v73 constant:4.0];
  v119[7] = v72;
  v71 = [(UIStackView *)v99->_buttonStackView bottomAnchor];
  v70 = [(UIView *)v99->_buttonStackViewContainer bottomAnchor];
  v69 = [v71 constraintEqualToAnchor:v70 constant:-4.0];
  v119[8] = v69;
  v68 = [(UIStackView *)v99->_buttonStackView leftAnchor];
  v67 = [(UIView *)v99->_buttonStackViewContainer leftAnchor];
  v66 = [v68 constraintEqualToAnchor:v67 constant:4.0];
  v119[9] = v66;
  v65 = [(UIStackView *)v99->_buttonStackView rightAnchor];
  v64 = [(UIView *)v99->_buttonStackViewContainer rightAnchor];
  v63 = [v65 constraintEqualToAnchor:v64 constant:-4.0];
  v119[10] = v63;
  v62 = [(UIStackView *)v99->_labelStackView topAnchor];
  v61 = [(UIView *)v99->_buttonStackViewContainer bottomAnchor];
  v60 = [v62 constraintLessThanOrEqualToAnchor:v61 constant:10.0];
  v119[11] = v60;
  v59 = [(UIStackView *)v99->_labelStackView topAnchor];
  v58 = [(UIView *)v99->_buttonStackViewContainer bottomAnchor];
  v57 = [v59 constraintGreaterThanOrEqualToAnchor:v58 constant:8.0];
  v119[12] = v57;
  v56 = [(UIStackView *)v99->_labelStackView leftAnchor];
  v47 = [(UIStackView *)v99->_buttonStackView leftAnchor];
  v48 = [v56 constraintEqualToAnchor:v47];
  v119[13] = v48;
  v49 = [(UIStackView *)v99->_labelStackView rightAnchor];
  v50 = [(UIStackView *)v99->_buttonStackView rightAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  v119[14] = v51;
  v52 = [(VoiceVolumeControlView *)v99 topAnchor];
  v53 = [(UIView *)v99->_buttonStackViewContainer topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  v119[15] = v54;
  v55 = [NSArray arrayWithObjects:v119 count:16];
  [v103 addObjectsFromArray:v55];

  [NSLayoutConstraint activateConstraints:v103];
  [(VoiceVolumeControlView *)v99 _updateContent];
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
  v3 = [(UIStackView *)self->_labelStackView arrangedSubviews];
  v4 = [v3 firstObject];
  v5 = [v4 font];
  [v5 lineHeight];
  v7 = v6;

  v8 = ceil(v7);
  v9 = [(VoiceVolumeControlView *)self traitCollection];
  [(VoiceVolumeControlView *)self _buttonLabelVerticalMarginForTrait:v9];
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

- (VoiceVolumeControlView)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VoiceVolumeControlView;
  v5 = [(VoiceVolumeControlView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(VoiceVolumeControlView *)v5 setAccessibilityIdentifier:v7];

    objc_storeWeak(&v5->_delegate, v4);
    [(VoiceVolumeControlView *)v5 _setup];
  }

  return v5;
}

@end