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
    layer = [(BKPictureBookPageContainerView *)self layer];
    [layer setCornerRadius:6.0];

    layer2 = [(BKPictureBookPageContainerView *)self layer];
    [layer2 setMasksToBounds:1];

    if ([(BKPictureBookPageContainerView *)self isLeftPage])
    {
      layer3 = [(BKPictureBookPageContainerView *)self layer];
      v6 = layer3;
      v7 = 5;
    }

    else
    {
      isRightPage = [(BKPictureBookPageContainerView *)self isRightPage];
      layer3 = [(BKPictureBookPageContainerView *)self layer];
      v6 = layer3;
      if (isRightPage)
      {
        v7 = 10;
      }

      else
      {
        v7 = 15;
      }
    }

    [layer3 setMaskedCorners:v7];
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