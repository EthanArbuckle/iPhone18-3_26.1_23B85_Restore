@interface RelatedSearchSuggestionView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (MapsThemeButton)closeButton;
- (UIScrollView)scrollView;
- (UIVisualEffectView)blurView;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setAlpha:(double)a3 animated:(BOOL)a4;
- (void)setShowCloseButton:(BOOL)a3;
@end

@implementation RelatedSearchSuggestionView

- (MapsThemeButton)closeButton
{
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  return WeakRetained;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (UIVisualEffectView)blurView
{
  WeakRetained = objc_loadWeakRetained(&self->_blurView);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = RelatedSearchSuggestionView;
  [(RelatedSearchSuggestionView *)&v28 layoutSubviews];
  [(RelatedSearchSuggestionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_blurView);
  [WeakRetained setFrame:{v4, v6, v8, v10}];

  [(RelatedSearchSuggestionView *)self bounds];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  if (CGRectGetHeight(v29) > 49.0)
  {
    [(RelatedSearchSuggestionView *)self safeAreaInsets];
    height = height - v16;
  }

  if (self->_showCloseButton)
  {
    v17 = objc_loadWeakRetained(&self->_closeButton);
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    width = width + -30.0 - v23;
    v26 = objc_loadWeakRetained(&self->_closeButton);
    [v26 setFrame:{v19 + 15.0 + width, round((height - v25) * 0.5) + v21, v23, v25}];
  }

  v27 = objc_loadWeakRetained(&self->_scrollView);
  [v27 setFrame:{x, y, width, height}];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = RelatedSearchSuggestionView;
  [(RelatedSearchSuggestionView *)&v3 safeAreaInsetsDidChange];
  [(RelatedSearchSuggestionView *)self invalidateIntrinsicContentSize];
  [(RelatedSearchSuggestionView *)self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  [(RelatedSearchSuggestionView *)self safeAreaInsets];
  v3 = v2 + 49.0;
  v4 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v4;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  width = a3.width;
  [(RelatedSearchSuggestionView *)self intrinsicContentSize:a3.width];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setShowCloseButton:(BOOL)a3
{
  if (self->_showCloseButton != a3)
  {
    self->_showCloseButton = a3;
    [(RelatedSearchSuggestionView *)self setNeedsLayout];
  }
}

- (void)setAlpha:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(RelatedSearchSuggestionView *)self alpha];
  if (v7 != a3)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100DB34D4;
    v12[3] = &unk_101661650;
    v12[4] = self;
    *&v12[5] = a3;
    v8 = objc_retainBlock(v12);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100DB3590;
    v11[3] = &unk_101661738;
    v11[4] = self;
    v9 = objc_retainBlock(v11);
    [(RelatedSearchSuggestionView *)self endEditing:1];
    [(RelatedSearchSuggestionView *)self setUserInteractionEnabled:0];
    if (v4)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100DB359C;
      v10[3] = &unk_101661B18;
      v10[4] = self;
      [UIView performWithoutAnimation:v10];
      [UIView animateWithDuration:v8 animations:v9 completion:0.25];
    }

    else
    {
      (v8[2])(v8);
      (v9[2])(v9, 1);
    }
  }
}

@end