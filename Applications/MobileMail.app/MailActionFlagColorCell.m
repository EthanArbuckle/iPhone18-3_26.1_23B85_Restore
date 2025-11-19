@interface MailActionFlagColorCell
- (MailActionFlagColorCell)initWithFrame:(CGRect)a3;
- (MailActionFlagColorCellDelegate)delegate;
- (NSArray)buttons;
- (NSArray)pointerRegions;
- (id)_arrangedSubviewsRespectingLayoutDirection;
- (id)_flagColorButtons;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)targetedPreviewForView:(id)a3;
- (void)_buttonTapped:(id)a3;
- (void)_setupViews;
- (void)selectColor:(id)a3;
- (void)updateConstraints;
@end

@implementation MailActionFlagColorCell

- (MailActionFlagColorCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MailActionFlagColorCell;
  v3 = [(MailActionVerticalGroupedCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MailActionFlagColorCell *)v3 _setupViews];
  }

  return v4;
}

- (NSArray)buttons
{
  v2 = [(MailActionFlagColorCell *)self buttonPairs];
  v3 = [v2 ef_map:&stru_10064F2B8];

  return v3;
}

- (void)_setupViews
{
  v3 = [(MailActionFlagColorCell *)self contentView];
  v4 = [(MailActionFlagColorCell *)self _flagColorButtons];
  [(MailActionFlagColorCell *)self setButtonPairs:v4];

  v5 = +[UIStackView mf_equalSpacingHorizontalStackView];
  [v5 setAlignment:3];
  [v3 addSubview:v5];
  if ([EMInternalPreferences preferenceEnabled:7])
  {
    v6 = [[UIPointerInteraction alloc] initWithDelegate:self];
    [v5 addInteraction:v6];
  }

  [(MailActionFlagColorCell *)self setStackView:v5];
  v7 = [(MailActionFlagColorCell *)self buttons];
  v32 = [v7 mutableCopy];

  v8 = objc_opt_new();
  v33 = [(MailActionCell *)self imageView];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v32;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        [v13 setTranslatesAutoresizingMaskIntoConstraints:{0, v32}];
        [v5 addArrangedSubview:v13];
        v14 = [v13 widthAnchor];
        v15 = [v14 constraintEqualToConstant:28.0];
        [v8 addObject:v15];

        v16 = [v13 widthAnchor];
        v17 = [v13 heightAnchor];
        v18 = [v16 constraintEqualToAnchor:v17];
        [v8 addObject:v18];
      }

      v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  v19 = [v9 firstObject];
  v20 = [v19 leadingAnchor];
  v21 = [v3 layoutMarginsGuide];
  v22 = [v21 leadingAnchor];
  [v3 layoutMargins];
  v24 = [v20 constraintEqualToAnchor:v22 constant:v23];
  [v8 addObject:v24];

  v25 = [v9 lastObject];
  v26 = [v25 centerXAnchor];
  v27 = [v33 centerXAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v8 addObject:v28];

  v29 = [v5 centerYAnchor];
  v30 = [v3 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  [v8 addObject:v31];

  [NSLayoutConstraint activateConstraints:v8];
}

- (id)_flagColorButtons
{
  [NSMutableArray arrayWithCapacity:8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C0D40;
  v7[3] = &unk_10064F2E0;
  v3 = v7[4] = self;
  v8 = v3;
  v4 = objc_retainBlock(v7);
  (v4[2])(v4, 1);
  (v4[2])(v4, 0);
  (v4[2])(v4, 5);
  (v4[2])(v4, 4);
  (v4[2])(v4, 2);
  (v4[2])(v4, 3);
  (v4[2])(v4, 6);
  v5 = v3;

  return v3;
}

- (void)_buttonTapped:(id)a3
{
  v4 = a3;
  v5 = [(MailActionFlagColorCell *)self buttons];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    memset(__b, 170, sizeof(__b));
    __b[8] = 0;
    *v13 = 0xE00000001;
    v14 = 1;
    v15 = getpid();
    v11 = 648;
    if (!sysctl(v13, 4u, __b, &v11, 0, 0) && (__b[8] & 0x800) != 0)
    {
      __debugbreak();
      JUMPOUT(0x1000C0F2CLL);
    }
  }

  else
  {
    v7 = [(MailActionFlagColorCell *)self delegate];
    if (v7)
    {
      v8 = [(MailActionFlagColorCell *)self buttonPairs];
      v9 = [v8 objectAtIndexedSubscript:v6];
      v10 = [v9 first];

      [v7 mailActionFlagColorCell:self didTapOnFlagColor:v10];
    }
  }
}

- (void)selectColor:(id)a3
{
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(MailActionFlagColorCell *)self buttonPairs];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v5)
        {
          v3 = [*(*(&v13 + 1) + 8 * v9) first];
          v11 = [v3 isEqualToNumber:v5];
        }

        else
        {
          v11 = 0;
        }

        v12 = [v10 second];
        [v12 setSelected:v11];

        if (v5)
        {
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  v7 = [(MailActionFlagColorCell *)self pointerRegions];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C12DC;
  v11[3] = &unk_10064F308;
  v8 = v6;
  v12 = v8;
  v9 = [v7 ef_firstObjectPassingTest:v11];

  return v9;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a4;
  v6 = [(MailActionFlagColorCell *)self pointerRegions];
  v7 = [v6 indexOfObject:v5];

  v8 = [(MailActionFlagColorCell *)self _arrangedSubviewsRespectingLayoutDirection];
  v9 = [v8 objectAtIndexedSubscript:v7];
  v10 = [(MailActionFlagColorCell *)self targetedPreviewForView:v9];
  v11 = [UIPointerLiftEffect effectWithPreview:v10];
  v12 = [UIPointerStyle styleWithEffect:v11 shape:0];

  return v12;
}

- (id)targetedPreviewForView:(id)a3
{
  v4 = a3;
  v5 = [(MailActionFlagColorCell *)self delegate];
  v6 = [v5 targetedPreviewContainer];

  if (v6)
  {
    [v4 bounds];
    UIRectGetCenter();
    [v4 convertPoint:v6 toView:?];
    v9 = [[UIPreviewTarget alloc] initWithContainer:v6 center:{v7, v8}];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc_init(UIPreviewParameters);
  if (v9)
  {
    v11 = [[UITargetedPreview alloc] initWithView:v4 parameters:v10 target:v9];
  }

  else
  {
    v11 = [[UITargetedPreview alloc] initWithView:v4 parameters:v10];
  }

  v12 = v11;

  return v12;
}

- (NSArray)pointerRegions
{
  pointerRegions = self->_pointerRegions;
  if (!pointerRegions)
  {
    v36 = self;
    v34 = [(MailActionFlagColorCell *)self stackView];
    v35 = [(MailActionFlagColorCell *)v36 _arrangedSubviewsRespectingLayoutDirection];
    v4 = [(MailActionFlagColorCell *)v36 stackView];
    [v4 frame];
    Width = CGRectGetWidth(v48);

    v6 = [(MailActionFlagColorCell *)v36 stackView];
    [v6 frame];
    Height = CGRectGetHeight(v49);

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = [v34 arrangedSubviews];
    v9 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v9)
    {
      v10 = *v42;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v41 + 1) + 8 * i) frame];
          v11 = v11 + CGRectGetWidth(v50);
        }

        v9 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v13 = [v35 count];
    v14 = objc_alloc_init(NSMutableArray);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = v35;
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v16)
    {
      v17 = (Width - v11) / (v13 - 1);
      v18 = *v38;
      MaxX = 0.0;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v37 + 1) + 8 * j);
          v22 = [v15 firstObject];
          v23 = v22;
          if (v21 == v22)
          {

LABEL_20:
            v26 = v17 * 0.5;
            goto LABEL_21;
          }

          v24 = [v15 lastObject];
          v25 = v21 == v24;

          v26 = v17;
          if (v25)
          {
            goto LABEL_20;
          }

LABEL_21:
          [v21 frame];
          v27 = CGRectGetWidth(v51);
          v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"FlagColor-%lu", [v14 count]);
          v29 = v26 + v27;
          v30 = [UIPointerRegion regionWithRect:v28 identifier:MaxX, 0.0, v29, Height];
          [v14 addObject:v30];
          v52.origin.y = 0.0;
          v52.origin.x = MaxX;
          v52.size.width = v29;
          v52.size.height = Height;
          MaxX = CGRectGetMaxX(v52);
        }

        v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v16);
    }

    v31 = [v14 copy];
    v32 = v36->_pointerRegions;
    v36->_pointerRegions = v31;

    pointerRegions = v36->_pointerRegions;
  }

  return pointerRegions;
}

- (id)_arrangedSubviewsRespectingLayoutDirection
{
  v3 = [(MailActionFlagColorCell *)self stackView];
  v4 = [v3 arrangedSubviews];

  v5 = [(MailActionFlagColorCell *)self traitCollection];
  v6 = [v5 layoutDirection];

  if (v6 == 1)
  {
    v7 = [v4 ef_reverse];

    v4 = v7;
  }

  return v4;
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = MailActionFlagColorCell;
  [(MailActionFlagColorCell *)&v3 updateConstraints];
  [(MailActionFlagColorCell *)self setPointerRegions:0];
}

- (MailActionFlagColorCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end