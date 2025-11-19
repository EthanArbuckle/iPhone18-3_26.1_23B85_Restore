@interface TPSPageControl
- (TPSPageControl)init;
- (TPSPageControlHudDelegate)hudDelegate;
- (void)handleLongPressForAccessibilityHUDView:(id)a3;
@end

@implementation TPSPageControl

- (TPSPageControl)init
{
  v5.receiver = self;
  v5.super_class = TPSPageControl;
  v2 = [(TPSPageControl *)&v5 init];
  if (v2 && +[TPSDefaultsManager showPagingLabelOnLongPress])
  {
    v3 = [[UILongPressGestureRecognizer alloc] initWithTarget:v2 action:"handleLongPressForAccessibilityHUDView:"];
    [v3 setDelegate:v2];
    [(TPSPageControl *)v2 addGestureRecognizer:v3];
  }

  return v2;
}

- (void)handleLongPressForAccessibilityHUDView:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 3) >= 2)
  {
    if (v4 != 1)
    {
      return;
    }

    if ([(TPSPageControl *)self currentPage]== 0x7FFFFFFFFFFFFFFFLL || [(TPSPageControl *)self numberOfPages]< 1)
    {
      v6 = 0;
      v5 = 0;
    }

    else
    {
      v5 = [(TPSPageControl *)self currentPage]+ 1;
      v6 = [(TPSPageControl *)self numberOfPages];
    }

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"TIP_NUMBER_X_OF_Y" value:&stru_1000A4A50 table:0];
    v10 = [NSString localizedStringWithFormat:v8, v5, v6];

    v9 = [(TPSPageControl *)self hudDelegate];
    [v9 pageControlLongPressedForHUD:self withText:v10];
  }

  else
  {
    v10 = [(TPSPageControl *)self hudDelegate];
    [v10 pageControlCancelLongPressedForHUD:self];
  }
}

- (TPSPageControlHudDelegate)hudDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hudDelegate);

  return WeakRetained;
}

@end