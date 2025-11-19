@interface BKPictureBookPageContainerView
- (BKPageScrollerPageView)pageScrollerPageView;
- (BKPictureBookPageContainerView)init;
- (void)layoutSubviews;
@end

@implementation BKPictureBookPageContainerView

- (BKPictureBookPageContainerView)init
{
  v5.receiver = self;
  v5.super_class = BKPictureBookPageContainerView;
  v2 = [(BKPictureBookPageContainerView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BKPictureBookPageContainerView *)v2 setUseRoundedCornerRadius:1];
  }

  return v3;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = BKPictureBookPageContainerView;
  [(BKPictureBookPageContainerView *)&v10 layoutSubviews];
  if ([(BKPictureBookPageContainerView *)self useRoundedCornerRadius])
  {
    v3 = [(BKPictureBookPageContainerView *)self layer];
    [v3 setCornerRadius:6.0];

    v4 = [(BKPictureBookPageContainerView *)self layer];
    [v4 setMasksToBounds:1];

    if ([(BKPictureBookPageContainerView *)self isLeftPage])
    {
      v5 = [(BKPictureBookPageContainerView *)self layer];
      v6 = v5;
      v7 = 5;
    }

    else
    {
      v8 = [(BKPictureBookPageContainerView *)self isRightPage];
      v5 = [(BKPictureBookPageContainerView *)self layer];
      v6 = v5;
      if (v8)
      {
        v7 = 10;
      }

      else
      {
        v7 = 15;
      }
    }

    [v5 setMaskedCorners:v7];
  }

  v9 = +[UIColor whiteColor];
  [(BKPictureBookPageContainerView *)self setBackgroundColor:v9];
}

- (BKPageScrollerPageView)pageScrollerPageView
{
  WeakRetained = objc_loadWeakRetained(&self->_pageScrollerPageView);

  return WeakRetained;
}

@end