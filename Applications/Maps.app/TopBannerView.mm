@interface TopBannerView
- (id)_initialConstraints;
- (id)initAllowingBlurredForButton:(BOOL)a3;
- (void)_commonInit;
- (void)_createSubviews;
- (void)_updateItemViews;
- (void)setItems:(id)a3;
- (void)setMaximumHeight:(double)a3;
@end

@implementation TopBannerView

- (void)setMaximumHeight:(double)a3
{
  [(NSLayoutConstraint *)self->_maximumHeightConstraint constant];
  if (v5 != a3)
  {
    [(NSLayoutConstraint *)self->_maximumHeightConstraint setConstant:a3];
    maximumHeightConstraint = self->_maximumHeightConstraint;

    [(NSLayoutConstraint *)maximumHeightConstraint setActive:a3 != -1.0];
  }
}

- (void)_updateItemViews
{
  v3 = [(TopBannerView *)self items];
  v4 = [v3 count];
  v5 = [(UIStackView *)self->_stackView arrangedSubviews];
  v6 = [v5 count];

  if (v4 - v6 < 0)
  {
    v7 = v6 - v4;
    do
    {
      v8 = [(UIStackView *)self->_stackView arrangedSubviews];
      v9 = [v8 lastObject];

      [v9 removeFromSuperview];
      --v7;
    }

    while (v7);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(TopBannerView *)self items];
  v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v30 = *v32;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    do
    {
      v17 = 0;
      v18 = v12;
      do
      {
        if (*v32 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v31 + 1) + 8 * v17);
        v20 = [(UIStackView *)self->_stackView arrangedSubviews];
        v21 = [v20 count];

        if (v13 >= v21)
        {
          v23 = [[TopBannerItemView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
          [(TopBannerItemView *)v23 setItem:v19];
          [(UIStackView *)self->_stackView addArrangedSubview:v23];
        }

        else
        {
          v22 = [(UIStackView *)self->_stackView arrangedSubviews];
          v23 = [v22 objectAtIndexedSubscript:v13];

          [(TopBannerItemView *)v23 setItem:v19];
        }

        v24 = [(TopBannerView *)self items];
        v25 = v13 != [v24 count] - 1;

        [(TopBannerItemView *)v23 setHairlineVisible:v25];
        v12 = 1;
        [(TopBannerItemView *)v23 setFirstItemWithIcon:(v18 & 1) == 0];
        v26 = [v19 artwork];
        if (!v26)
        {
          v27 = [v19 artworkURL];
          v28 = v27 != 0;

          v12 = v28 | v18;
        }

        ++v13;
        v17 = v17 + 1;
        v18 = v12;
      }

      while (v11 != v17);
      v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  [(OverflowView *)self->_overflowView resetContentOffset];
  [(TopBannerView *)self setNeedsLayout];
}

- (void)setItems:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_items != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqualToArray:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      items = self->_items;
      self->_items = v7;

      [(TopBannerView *)self _updateItemViews];
      v5 = v9;
    }
  }
}

- (id)_initialConstraints
{
  v16 = [(OverflowView *)self->_overflowView topAnchor];
  v15 = [(TopBannerView *)self topAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v17[0] = v14;
  v3 = [(OverflowView *)self->_overflowView trailingAnchor];
  v4 = [(TopBannerView *)self trailingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v17[1] = v5;
  v6 = [(OverflowView *)self->_overflowView leadingAnchor];
  v7 = [(TopBannerView *)self leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v17[2] = v8;
  v9 = [(OverflowView *)self->_overflowView bottomAnchor];
  v10 = [(TopBannerView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v17[3] = v11;
  v12 = [NSArray arrayWithObjects:v17 count:4];

  return v12;
}

- (void)_createSubviews
{
  v3 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  stackView = self->_stackView;
  self->_stackView = v3;

  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setSpacing:0.0];
  [(UIStackView *)self->_stackView setDistribution:0];
  [(UIStackView *)self->_stackView setAlignment:0];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [[OverflowView alloc] initWithContentView:self->_stackView];
  overflowView = self->_overflowView;
  self->_overflowView = v5;

  [(OverflowView *)self->_overflowView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(CardView *)self contentView];
  [v7 addSubview:self->_overflowView];
}

- (void)_commonInit
{
  [(CardView *)self setLayoutStyle:6];
  [(TopBannerView *)self _createSubviews];
  v3 = [(TopBannerView *)self _initialConstraints];
  [NSLayoutConstraint activateConstraints:v3];

  v6 = [(OverflowView *)self->_overflowView heightAnchor];
  v4 = [v6 constraintLessThanOrEqualToConstant:-1.0];
  maximumHeightConstraint = self->_maximumHeightConstraint;
  self->_maximumHeightConstraint = v4;
}

- (id)initAllowingBlurredForButton:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = TopBannerView;
  v3 = [(CardView *)&v6 initAllowingBlurredForButton:a3 buttonBackgroundType:0];
  v4 = v3;
  if (v3)
  {
    [v3 _commonInit];
  }

  return v4;
}

@end