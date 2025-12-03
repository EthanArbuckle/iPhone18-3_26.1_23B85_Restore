@interface TopBannerView
- (id)_initialConstraints;
- (id)initAllowingBlurredForButton:(BOOL)button;
- (void)_commonInit;
- (void)_createSubviews;
- (void)_updateItemViews;
- (void)setItems:(id)items;
- (void)setMaximumHeight:(double)height;
@end

@implementation TopBannerView

- (void)setMaximumHeight:(double)height
{
  [(NSLayoutConstraint *)self->_maximumHeightConstraint constant];
  if (v5 != height)
  {
    [(NSLayoutConstraint *)self->_maximumHeightConstraint setConstant:height];
    maximumHeightConstraint = self->_maximumHeightConstraint;

    [(NSLayoutConstraint *)maximumHeightConstraint setActive:height != -1.0];
  }
}

- (void)_updateItemViews
{
  items = [(TopBannerView *)self items];
  v4 = [items count];
  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  v6 = [arrangedSubviews count];

  if (v4 - v6 < 0)
  {
    v7 = v6 - v4;
    do
    {
      arrangedSubviews2 = [(UIStackView *)self->_stackView arrangedSubviews];
      lastObject = [arrangedSubviews2 lastObject];

      [lastObject removeFromSuperview];
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
        arrangedSubviews3 = [(UIStackView *)self->_stackView arrangedSubviews];
        v21 = [arrangedSubviews3 count];

        if (v13 >= v21)
        {
          height = [[TopBannerItemView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
          [(TopBannerItemView *)height setItem:v19];
          [(UIStackView *)self->_stackView addArrangedSubview:height];
        }

        else
        {
          arrangedSubviews4 = [(UIStackView *)self->_stackView arrangedSubviews];
          height = [arrangedSubviews4 objectAtIndexedSubscript:v13];

          [(TopBannerItemView *)height setItem:v19];
        }

        items2 = [(TopBannerView *)self items];
        v25 = v13 != [items2 count] - 1;

        [(TopBannerItemView *)height setHairlineVisible:v25];
        v12 = 1;
        [(TopBannerItemView *)height setFirstItemWithIcon:(v18 & 1) == 0];
        artwork = [v19 artwork];
        if (!artwork)
        {
          artworkURL = [v19 artworkURL];
          v28 = artworkURL != 0;

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

- (void)setItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  if (self->_items != itemsCopy)
  {
    v9 = itemsCopy;
    v6 = [(NSArray *)itemsCopy isEqualToArray:?];
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
  topAnchor = [(OverflowView *)self->_overflowView topAnchor];
  topAnchor2 = [(TopBannerView *)self topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v17[0] = v14;
  trailingAnchor = [(OverflowView *)self->_overflowView trailingAnchor];
  trailingAnchor2 = [(TopBannerView *)self trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v17[1] = v5;
  leadingAnchor = [(OverflowView *)self->_overflowView leadingAnchor];
  leadingAnchor2 = [(TopBannerView *)self leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v17[2] = v8;
  bottomAnchor = [(OverflowView *)self->_overflowView bottomAnchor];
  bottomAnchor2 = [(TopBannerView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  contentView = [(CardView *)self contentView];
  [contentView addSubview:self->_overflowView];
}

- (void)_commonInit
{
  [(CardView *)self setLayoutStyle:6];
  [(TopBannerView *)self _createSubviews];
  _initialConstraints = [(TopBannerView *)self _initialConstraints];
  [NSLayoutConstraint activateConstraints:_initialConstraints];

  heightAnchor = [(OverflowView *)self->_overflowView heightAnchor];
  v4 = [heightAnchor constraintLessThanOrEqualToConstant:-1.0];
  maximumHeightConstraint = self->_maximumHeightConstraint;
  self->_maximumHeightConstraint = v4;
}

- (id)initAllowingBlurredForButton:(BOOL)button
{
  v6.receiver = self;
  v6.super_class = TopBannerView;
  v3 = [(CardView *)&v6 initAllowingBlurredForButton:button buttonBackgroundType:0];
  v4 = v3;
  if (v3)
  {
    [v3 _commonInit];
  }

  return v4;
}

@end