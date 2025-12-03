@interface MailActionFlagColorCell
- (MailActionFlagColorCell)initWithFrame:(CGRect)frame;
- (MailActionFlagColorCellDelegate)delegate;
- (NSArray)buttons;
- (NSArray)pointerRegions;
- (id)_arrangedSubviewsRespectingLayoutDirection;
- (id)_flagColorButtons;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)targetedPreviewForView:(id)view;
- (void)_buttonTapped:(id)tapped;
- (void)_setupViews;
- (void)selectColor:(id)color;
- (void)updateConstraints;
@end

@implementation MailActionFlagColorCell

- (MailActionFlagColorCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MailActionFlagColorCell;
  v3 = [(MailActionVerticalGroupedCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MailActionFlagColorCell *)v3 _setupViews];
  }

  return v4;
}

- (NSArray)buttons
{
  buttonPairs = [(MailActionFlagColorCell *)self buttonPairs];
  v3 = [buttonPairs ef_map:&stru_10064F2B8];

  return v3;
}

- (void)_setupViews
{
  contentView = [(MailActionFlagColorCell *)self contentView];
  _flagColorButtons = [(MailActionFlagColorCell *)self _flagColorButtons];
  [(MailActionFlagColorCell *)self setButtonPairs:_flagColorButtons];

  v5 = +[UIStackView mf_equalSpacingHorizontalStackView];
  [v5 setAlignment:3];
  [contentView addSubview:v5];
  if ([EMInternalPreferences preferenceEnabled:7])
  {
    v6 = [[UIPointerInteraction alloc] initWithDelegate:self];
    [v5 addInteraction:v6];
  }

  [(MailActionFlagColorCell *)self setStackView:v5];
  buttons = [(MailActionFlagColorCell *)self buttons];
  v32 = [buttons mutableCopy];

  v8 = objc_opt_new();
  imageView = [(MailActionCell *)self imageView];
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
        widthAnchor = [v13 widthAnchor];
        v15 = [widthAnchor constraintEqualToConstant:28.0];
        [v8 addObject:v15];

        widthAnchor2 = [v13 widthAnchor];
        heightAnchor = [v13 heightAnchor];
        v18 = [widthAnchor2 constraintEqualToAnchor:heightAnchor];
        [v8 addObject:v18];
      }

      v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  firstObject = [v9 firstObject];
  leadingAnchor = [firstObject leadingAnchor];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  [contentView layoutMargins];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v23];
  [v8 addObject:v24];

  lastObject = [v9 lastObject];
  centerXAnchor = [lastObject centerXAnchor];
  centerXAnchor2 = [imageView centerXAnchor];
  v28 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v8 addObject:v28];

  centerYAnchor = [v5 centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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

- (void)_buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  buttons = [(MailActionFlagColorCell *)self buttons];
  v6 = [buttons indexOfObject:tappedCopy];

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
    delegate = [(MailActionFlagColorCell *)self delegate];
    if (delegate)
    {
      buttonPairs = [(MailActionFlagColorCell *)self buttonPairs];
      v9 = [buttonPairs objectAtIndexedSubscript:v6];
      first = [v9 first];

      [delegate mailActionFlagColorCell:self didTapOnFlagColor:first];
    }
  }
}

- (void)selectColor:(id)color
{
  colorCopy = color;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  buttonPairs = [(MailActionFlagColorCell *)self buttonPairs];
  v7 = [buttonPairs countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(buttonPairs);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (colorCopy)
        {
          first = [*(*(&v13 + 1) + 8 * v9) first];
          v11 = [first isEqualToNumber:colorCopy];
        }

        else
        {
          v11 = 0;
        }

        second = [v10 second];
        [second setSelected:v11];

        if (colorCopy)
        {
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [buttonPairs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  pointerRegions = [(MailActionFlagColorCell *)self pointerRegions];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C12DC;
  v11[3] = &unk_10064F308;
  v8 = requestCopy;
  v12 = v8;
  v9 = [pointerRegions ef_firstObjectPassingTest:v11];

  return v9;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  regionCopy = region;
  pointerRegions = [(MailActionFlagColorCell *)self pointerRegions];
  v7 = [pointerRegions indexOfObject:regionCopy];

  _arrangedSubviewsRespectingLayoutDirection = [(MailActionFlagColorCell *)self _arrangedSubviewsRespectingLayoutDirection];
  v9 = [_arrangedSubviewsRespectingLayoutDirection objectAtIndexedSubscript:v7];
  v10 = [(MailActionFlagColorCell *)self targetedPreviewForView:v9];
  v11 = [UIPointerLiftEffect effectWithPreview:v10];
  v12 = [UIPointerStyle styleWithEffect:v11 shape:0];

  return v12;
}

- (id)targetedPreviewForView:(id)view
{
  viewCopy = view;
  delegate = [(MailActionFlagColorCell *)self delegate];
  targetedPreviewContainer = [delegate targetedPreviewContainer];

  if (targetedPreviewContainer)
  {
    [viewCopy bounds];
    UIRectGetCenter();
    [viewCopy convertPoint:targetedPreviewContainer toView:?];
    v9 = [[UIPreviewTarget alloc] initWithContainer:targetedPreviewContainer center:{v7, v8}];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc_init(UIPreviewParameters);
  if (v9)
  {
    v11 = [[UITargetedPreview alloc] initWithView:viewCopy parameters:v10 target:v9];
  }

  else
  {
    v11 = [[UITargetedPreview alloc] initWithView:viewCopy parameters:v10];
  }

  v12 = v11;

  return v12;
}

- (NSArray)pointerRegions
{
  pointerRegions = self->_pointerRegions;
  if (!pointerRegions)
  {
    selfCopy = self;
    stackView = [(MailActionFlagColorCell *)self stackView];
    _arrangedSubviewsRespectingLayoutDirection = [(MailActionFlagColorCell *)selfCopy _arrangedSubviewsRespectingLayoutDirection];
    stackView2 = [(MailActionFlagColorCell *)selfCopy stackView];
    [stackView2 frame];
    Width = CGRectGetWidth(v48);

    stackView3 = [(MailActionFlagColorCell *)selfCopy stackView];
    [stackView3 frame];
    Height = CGRectGetHeight(v49);

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    arrangedSubviews = [stackView arrangedSubviews];
    v9 = [arrangedSubviews countByEnumeratingWithState:&v41 objects:v46 count:16];
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
            objc_enumerationMutation(arrangedSubviews);
          }

          [*(*(&v41 + 1) + 8 * i) frame];
          v11 = v11 + CGRectGetWidth(v50);
        }

        v9 = [arrangedSubviews countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v13 = [_arrangedSubviewsRespectingLayoutDirection count];
    v14 = objc_alloc_init(NSMutableArray);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = _arrangedSubviewsRespectingLayoutDirection;
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
          firstObject = [v15 firstObject];
          v23 = firstObject;
          if (v21 == firstObject)
          {

LABEL_20:
            v26 = v17 * 0.5;
            goto LABEL_21;
          }

          lastObject = [v15 lastObject];
          v25 = v21 == lastObject;

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
          height = [UIPointerRegion regionWithRect:v28 identifier:MaxX, 0.0, v29, Height];
          [v14 addObject:height];
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
    v32 = selfCopy->_pointerRegions;
    selfCopy->_pointerRegions = v31;

    pointerRegions = selfCopy->_pointerRegions;
  }

  return pointerRegions;
}

- (id)_arrangedSubviewsRespectingLayoutDirection
{
  stackView = [(MailActionFlagColorCell *)self stackView];
  arrangedSubviews = [stackView arrangedSubviews];

  traitCollection = [(MailActionFlagColorCell *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection == 1)
  {
    ef_reverse = [arrangedSubviews ef_reverse];

    arrangedSubviews = ef_reverse;
  }

  return arrangedSubviews;
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