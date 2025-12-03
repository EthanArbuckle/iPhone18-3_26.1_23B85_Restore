@interface TPSPageControl
- (TPSPageControl)init;
- (TPSPageControlHudDelegate)hudDelegate;
- (void)handleLongPressForAccessibilityHUDView:(id)view;
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

- (void)handleLongPressForAccessibilityHUDView:(id)view
{
  state = [view state];
  if ((state - 3) >= 2)
  {
    if (state != 1)
    {
      return;
    }

    if ([(TPSPageControl *)self currentPage]== 0x7FFFFFFFFFFFFFFFLL || [(TPSPageControl *)self numberOfPages]< 1)
    {
      numberOfPages = 0;
      v5 = 0;
    }

    else
    {
      v5 = [(TPSPageControl *)self currentPage]+ 1;
      numberOfPages = [(TPSPageControl *)self numberOfPages];
    }

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"TIP_NUMBER_X_OF_Y" value:&stru_1000A4A50 table:0];
    hudDelegate2 = [NSString localizedStringWithFormat:v8, v5, numberOfPages];

    hudDelegate = [(TPSPageControl *)self hudDelegate];
    [hudDelegate pageControlLongPressedForHUD:self withText:hudDelegate2];
  }

  else
  {
    hudDelegate2 = [(TPSPageControl *)self hudDelegate];
    [hudDelegate2 pageControlCancelLongPressedForHUD:self];
  }
}

- (TPSPageControlHudDelegate)hudDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hudDelegate);

  return WeakRetained;
}

@end