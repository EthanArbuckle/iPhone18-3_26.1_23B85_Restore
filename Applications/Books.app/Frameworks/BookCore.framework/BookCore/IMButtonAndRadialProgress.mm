@interface IMButtonAndRadialProgress
- (CGRect)_centeredProgressFrameWithBounds:(CGRect)bounds;
- (IMButtonAndRadialProgress)initWithCoder:(id)coder;
- (IMButtonAndRadialProgress)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentEdgeInsets;
- (UILabel)titleLabel;
- (float)progress;
- (int)modeState;
- (void)_commonInitWithFrame:(CGRect)frame;
- (void)_updateButtonColorsForCurrentState;
- (void)_updateButtonEnabledState;
- (void)_updateNetworkReachability;
- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
- (void)dealloc;
- (void)layoutSubviews;
- (void)removeTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
- (void)setBackgroundImage:(id)image forState:(unint64_t)state;
- (void)setContentEdgeInsets:(UIEdgeInsets)insets;
- (void)setDisableInteraction:(BOOL)interaction;
- (void)setModeState:(int)state;
- (void)setProgress:(float)progress;
- (void)setProgressColor:(id)color;
- (void)setTitle:(id)title forState:(unint64_t)state;
- (void)setTitleColor:(id)color forState:(unint64_t)state;
- (void)sizeToFit;
- (void)tintColorDidChange;
@end

@implementation IMButtonAndRadialProgress

- (IMButtonAndRadialProgress)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = IMButtonAndRadialProgress;
  v3 = [(IMButtonAndRadialProgress *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(IMButtonAndRadialProgress *)v3 frame];
    [(IMButtonAndRadialProgress *)v4 _commonInitWithFrame:?];
  }

  return v4;
}

- (IMButtonAndRadialProgress)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = IMButtonAndRadialProgress;
  v7 = [(IMButtonAndRadialProgress *)&v10 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(IMButtonAndRadialProgress *)v7 _commonInitWithFrame:x, y, width, height];
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[BKReachability sharedReachabilityForInternetConnection];
  [v3 removeObserver:self name:@"kNetworkReachabilityChangedNotification" object:v4];

  [(UIButton *)self->_button removeFromSuperview];
  [(IMRadialProgressButton *)self->_radialProgress removeFromSuperview];
  v5.receiver = self;
  v5.super_class = IMButtonAndRadialProgress;
  [(IMButtonAndRadialProgress *)&v5 dealloc];
}

- (void)layoutSubviews
{
  [(IMButtonAndRadialProgress *)self bounds];
  [(UIButton *)self->_button setFrame:?];
  [(IMButtonAndRadialProgress *)self bounds];
  [(IMButtonAndRadialProgress *)self _centeredProgressFrameWithBounds:?];
  radialProgress = self->_radialProgress;

  [(IMRadialProgressButton *)radialProgress setFrame:?];
}

- (UIEdgeInsets)contentEdgeInsets
{
  button = [(IMButtonAndRadialProgress *)self button];
  [button contentEdgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setContentEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  button = [(IMButtonAndRadialProgress *)self button];
  [button setContentEdgeInsets:{top, left, bottom, right}];
}

- (void)setTitle:(id)title forState:(unint64_t)state
{
  titleCopy = title;
  button = [(IMButtonAndRadialProgress *)self button];
  [button setTitle:titleCopy forState:state];
}

- (void)setTitleColor:(id)color forState:(unint64_t)state
{
  colorCopy = color;
  button = [(IMButtonAndRadialProgress *)self button];
  [button setTitleColor:colorCopy forState:state];

  [(IMButtonAndRadialProgress *)self setProgressColor:colorCopy];
}

- (void)setBackgroundImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  button = [(IMButtonAndRadialProgress *)self button];
  [button setBackgroundImage:imageCopy forState:state];
}

- (UILabel)titleLabel
{
  button = [(IMButtonAndRadialProgress *)self button];
  titleLabel = [button titleLabel];

  return titleLabel;
}

- (void)sizeToFit
{
  button = [(IMButtonAndRadialProgress *)self button];
  [button sizeToFit];

  button2 = [(IMButtonAndRadialProgress *)self button];
  [button2 bounds];
  [(IMButtonAndRadialProgress *)self setBounds:?];

  [(IMButtonAndRadialProgress *)self bounds];
  [(IMButtonAndRadialProgress *)self _centeredProgressFrameWithBounds:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  radialProgress = [(IMButtonAndRadialProgress *)self radialProgress];
  [radialProgress setFrame:{v6, v8, v10, v12}];
}

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  targetCopy = target;
  button = [(IMButtonAndRadialProgress *)self button];
  [button addTarget:targetCopy action:action forControlEvents:events];
}

- (void)removeTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  targetCopy = target;
  button = [(IMButtonAndRadialProgress *)self button];
  [button removeTarget:targetCopy action:action forControlEvents:events];
}

- (float)progress
{
  radialProgress = [(IMButtonAndRadialProgress *)self radialProgress];
  [radialProgress progress];
  v4 = v3;

  return v4;
}

- (void)setProgress:(float)progress
{
  radialProgress = [(IMButtonAndRadialProgress *)self radialProgress];
  *&v4 = progress;
  [radialProgress setProgress:v4];
}

- (void)setDisableInteraction:(BOOL)interaction
{
  if (self->_disableInteraction != interaction)
  {
    interactionCopy = interaction;
    self->_disableInteraction = interaction;
    radialProgress = [(IMButtonAndRadialProgress *)self radialProgress];
    [radialProgress setShowImages:!interactionCopy];

    v6 = !self->_disableInteraction;

    [(IMButtonAndRadialProgress *)self setUserInteractionEnabled:v6];
  }
}

- (void)setProgressColor:(id)color
{
  objc_storeStrong(&self->_progressColor, color);
  colorCopy = color;
  radialProgress = [(IMButtonAndRadialProgress *)self radialProgress];
  [radialProgress setProgressColor:colorCopy];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = IMButtonAndRadialProgress;
  [(IMButtonAndRadialProgress *)&v5 tintColorDidChange];
  if (!self->_progressColor)
  {
    tintColor = [(IMButtonAndRadialProgress *)self tintColor];
    radialProgress = [(IMButtonAndRadialProgress *)self radialProgress];
    [radialProgress setProgressColor:tintColor];
  }
}

- (void)setModeState:(int)state
{
  button = [(IMButtonAndRadialProgress *)self button];
  v6 = state < 4;
  v7 = 2u >> (state & 0xF);
  v8 = (state > 3) | (0xBu >> (state & 0xF));
  [button setHidden:(state > 3) | ((state & 1) == 0)];

  button2 = [(IMButtonAndRadialProgress *)self button];
  [button2 setEnabled:v6 & v7];

  radialProgress = [(IMButtonAndRadialProgress *)self radialProgress];
  [radialProgress setHidden:v8 & 1];

  radialProgress2 = [(IMButtonAndRadialProgress *)self radialProgress];
  [radialProgress2 setEnabled:0];

  [(IMButtonAndRadialProgress *)self _updateButtonColorsForCurrentState];
}

- (int)modeState
{
  button = [(IMButtonAndRadialProgress *)self button];
  if ([button isHidden])
  {
    radialProgress = [(IMButtonAndRadialProgress *)self radialProgress];
    isHidden = [radialProgress isHidden];

    if (isHidden)
    {
      return 0;
    }
  }

  else
  {
  }

  button2 = [(IMButtonAndRadialProgress *)self button];
  isHidden2 = [button2 isHidden];

  if (isHidden2)
  {
    return 2;
  }

  button3 = [(IMButtonAndRadialProgress *)self button];
  isEnabled = [button3 isEnabled];

  if (isEnabled)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)_commonInitWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [UIButton alloc];
  [(IMButtonAndRadialProgress *)self frame];
  v9 = [v8 initWithFrame:?];
  button = self->_button;
  self->_button = v9;

  self->_disableInteraction = 0;
  v11 = [IMRadialProgressButton alloc];
  [(IMButtonAndRadialProgress *)self _centeredProgressFrameWithBounds:x, y, width, height];
  v12 = [(IMRadialProgressButton *)v11 initWithFrame:?];
  radialProgress = self->_radialProgress;
  self->_radialProgress = v12;

  [(IMRadialProgressButton *)self->_radialProgress setHidden:1];
  [(IMButtonAndRadialProgress *)self addSubview:self->_button];
  [(IMButtonAndRadialProgress *)self addSubview:self->_radialProgress];
  v14 = +[NSNotificationCenter defaultCenter];
  v15 = +[BKReachability sharedReachabilityForInternetConnection];
  [v14 addObserver:self selector:"_internetReachabilityChanged:" name:@"kNetworkReachabilityChangedNotification" object:v15];

  [(IMButtonAndRadialProgress *)self _updateNetworkReachability];
}

- (CGRect)_centeredProgressFrameWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  +[IMRadialProgressButton minimumBoundingBox];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetHeight(v13);

  CGRectMakeWithCenterAndSize();
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)_updateNetworkReachability
{
  v3 = +[BUAccountsProvider sharedProvider];
  if ([v3 isStoreAccountManagedAppleID])
  {
    self->_networkReachable = 0;
  }

  else
  {
    v4 = +[BURestrictionsProvider sharedInstance];
    if ([v4 isBookStoreAllowed])
    {
      v5 = !+[BKReachability isOffline];
    }

    else
    {
      v5 = 0;
    }

    self->_networkReachable = v5;
  }

  [(IMButtonAndRadialProgress *)self _updateButtonEnabledState];
}

- (void)_updateButtonEnabledState
{
  networkReachable = self->_networkReachable;
  button = [(IMButtonAndRadialProgress *)self button];
  [button setEnabled:networkReachable];
}

- (void)_updateButtonColorsForCurrentState
{
  modeState = [(IMButtonAndRadialProgress *)self modeState];
  v4 = 0;
  v5 = 1;
  if (modeState <= 1)
  {
    if (!modeState)
    {
      v5 = 0;
      v4 = 0;
      goto LABEL_14;
    }

    if (modeState != 1)
    {
      goto LABEL_14;
    }

    isPreorder = [(IMButtonAndRadialProgress *)self isPreorder];
    goto LABEL_8;
  }

  if (modeState != 2)
  {
    if (modeState != 3)
    {
      goto LABEL_14;
    }

    isPreorder = [(IMButtonAndRadialProgress *)self isPreorder];
    v5 = 0;
LABEL_8:
    v7 = isPreorder == 0;
    v8 = 2;
    v9 = 4;
    goto LABEL_11;
  }

  v5 = 0;
  v7 = ![(IMButtonAndRadialProgress *)self isPreorder];
  v8 = 7;
  v9 = 5;
LABEL_11:
  if (v7)
  {
    v4 = v8;
  }

  else
  {
    v4 = v9;
  }

LABEL_14:
  v13 = [BCBuyButtonColorProvider colorsForButtonState:v4 isDark:[(IMButtonAndRadialProgress *)self overrideUserInterfaceStyle]== &dword_0 + 2 isEnabled:v5];
  foregroundColor = [v13 foregroundColor];

  if (foregroundColor)
  {
    button = [(IMButtonAndRadialProgress *)self button];
    foregroundColor2 = [v13 foregroundColor];
    [button setTitleColor:foregroundColor2 forState:0];
  }
}

@end