@interface IMButtonAndRadialProgress
- (CGRect)_centeredProgressFrameWithBounds:(CGRect)a3;
- (IMButtonAndRadialProgress)initWithCoder:(id)a3;
- (IMButtonAndRadialProgress)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentEdgeInsets;
- (UILabel)titleLabel;
- (float)progress;
- (int)modeState;
- (void)_commonInitWithFrame:(CGRect)a3;
- (void)_updateButtonColorsForCurrentState;
- (void)_updateButtonEnabledState;
- (void)_updateNetworkReachability;
- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)removeTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5;
- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setDisableInteraction:(BOOL)a3;
- (void)setModeState:(int)a3;
- (void)setProgress:(float)a3;
- (void)setProgressColor:(id)a3;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
- (void)setTitleColor:(id)a3 forState:(unint64_t)a4;
- (void)sizeToFit;
- (void)tintColorDidChange;
@end

@implementation IMButtonAndRadialProgress

- (IMButtonAndRadialProgress)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMButtonAndRadialProgress;
  v3 = [(IMButtonAndRadialProgress *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(IMButtonAndRadialProgress *)v3 frame];
    [(IMButtonAndRadialProgress *)v4 _commonInitWithFrame:?];
  }

  return v4;
}

- (IMButtonAndRadialProgress)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v2 = [(IMButtonAndRadialProgress *)self button];
  [v2 contentEdgeInsets];
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

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(IMButtonAndRadialProgress *)self button];
  [v7 setContentEdgeInsets:{top, left, bottom, right}];
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(IMButtonAndRadialProgress *)self button];
  [v7 setTitle:v6 forState:a4];
}

- (void)setTitleColor:(id)a3 forState:(unint64_t)a4
{
  v7 = a3;
  v6 = [(IMButtonAndRadialProgress *)self button];
  [v6 setTitleColor:v7 forState:a4];

  [(IMButtonAndRadialProgress *)self setProgressColor:v7];
}

- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(IMButtonAndRadialProgress *)self button];
  [v7 setBackgroundImage:v6 forState:a4];
}

- (UILabel)titleLabel
{
  v2 = [(IMButtonAndRadialProgress *)self button];
  v3 = [v2 titleLabel];

  return v3;
}

- (void)sizeToFit
{
  v3 = [(IMButtonAndRadialProgress *)self button];
  [v3 sizeToFit];

  v4 = [(IMButtonAndRadialProgress *)self button];
  [v4 bounds];
  [(IMButtonAndRadialProgress *)self setBounds:?];

  [(IMButtonAndRadialProgress *)self bounds];
  [(IMButtonAndRadialProgress *)self _centeredProgressFrameWithBounds:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(IMButtonAndRadialProgress *)self radialProgress];
  [v13 setFrame:{v6, v8, v10, v12}];
}

- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  v8 = a3;
  v9 = [(IMButtonAndRadialProgress *)self button];
  [v9 addTarget:v8 action:a4 forControlEvents:a5];
}

- (void)removeTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  v8 = a3;
  v9 = [(IMButtonAndRadialProgress *)self button];
  [v9 removeTarget:v8 action:a4 forControlEvents:a5];
}

- (float)progress
{
  v2 = [(IMButtonAndRadialProgress *)self radialProgress];
  [v2 progress];
  v4 = v3;

  return v4;
}

- (void)setProgress:(float)a3
{
  v5 = [(IMButtonAndRadialProgress *)self radialProgress];
  *&v4 = a3;
  [v5 setProgress:v4];
}

- (void)setDisableInteraction:(BOOL)a3
{
  if (self->_disableInteraction != a3)
  {
    v3 = a3;
    self->_disableInteraction = a3;
    v5 = [(IMButtonAndRadialProgress *)self radialProgress];
    [v5 setShowImages:!v3];

    v6 = !self->_disableInteraction;

    [(IMButtonAndRadialProgress *)self setUserInteractionEnabled:v6];
  }
}

- (void)setProgressColor:(id)a3
{
  objc_storeStrong(&self->_progressColor, a3);
  v5 = a3;
  v6 = [(IMButtonAndRadialProgress *)self radialProgress];
  [v6 setProgressColor:v5];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = IMButtonAndRadialProgress;
  [(IMButtonAndRadialProgress *)&v5 tintColorDidChange];
  if (!self->_progressColor)
  {
    v3 = [(IMButtonAndRadialProgress *)self tintColor];
    v4 = [(IMButtonAndRadialProgress *)self radialProgress];
    [v4 setProgressColor:v3];
  }
}

- (void)setModeState:(int)a3
{
  v5 = [(IMButtonAndRadialProgress *)self button];
  v6 = a3 < 4;
  v7 = 2u >> (a3 & 0xF);
  v8 = (a3 > 3) | (0xBu >> (a3 & 0xF));
  [v5 setHidden:(a3 > 3) | ((a3 & 1) == 0)];

  v9 = [(IMButtonAndRadialProgress *)self button];
  [v9 setEnabled:v6 & v7];

  v10 = [(IMButtonAndRadialProgress *)self radialProgress];
  [v10 setHidden:v8 & 1];

  v11 = [(IMButtonAndRadialProgress *)self radialProgress];
  [v11 setEnabled:0];

  [(IMButtonAndRadialProgress *)self _updateButtonColorsForCurrentState];
}

- (int)modeState
{
  v3 = [(IMButtonAndRadialProgress *)self button];
  if ([v3 isHidden])
  {
    v4 = [(IMButtonAndRadialProgress *)self radialProgress];
    v5 = [v4 isHidden];

    if (v5)
    {
      return 0;
    }
  }

  else
  {
  }

  v7 = [(IMButtonAndRadialProgress *)self button];
  v8 = [v7 isHidden];

  if (v8)
  {
    return 2;
  }

  v9 = [(IMButtonAndRadialProgress *)self button];
  v10 = [v9 isEnabled];

  if (v10)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)_commonInitWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CGRect)_centeredProgressFrameWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v3 = [(IMButtonAndRadialProgress *)self button];
  [v3 setEnabled:networkReachable];
}

- (void)_updateButtonColorsForCurrentState
{
  v3 = [(IMButtonAndRadialProgress *)self modeState];
  v4 = 0;
  v5 = 1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v5 = 0;
      v4 = 0;
      goto LABEL_14;
    }

    if (v3 != 1)
    {
      goto LABEL_14;
    }

    v6 = [(IMButtonAndRadialProgress *)self isPreorder];
    goto LABEL_8;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_14;
    }

    v6 = [(IMButtonAndRadialProgress *)self isPreorder];
    v5 = 0;
LABEL_8:
    v7 = v6 == 0;
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
  v10 = [v13 foregroundColor];

  if (v10)
  {
    v11 = [(IMButtonAndRadialProgress *)self button];
    v12 = [v13 foregroundColor];
    [v11 setTitleColor:v12 forState:0];
  }
}

@end