@interface AXDynamicTypeImageView
- (AXDynamicTypeImageView)initWithFrame:(CGRect)a3;
- (AXDynamicTypeImageView)initWithImage:(id)a3;
- (AXDynamicTypeImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (CGSize)_scaledSizeForSize:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_commonInit;
- (void)_traitCollectionDidChange:(id)a3;
- (void)setFontMetrics:(id)a3;
- (void)setMaximumContentSizeCategory:(id)a3;
- (void)setMinimumContentSizeCategory:(id)a3;
@end

@implementation AXDynamicTypeImageView

- (void)_commonInit
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCA40] defaultMetrics];
  fontMetrics = self->_fontMetrics;
  self->_fontMetrics = v3;

  v5 = *MEMORY[0x1E69DDC90];
  objc_storeStrong(&self->_minimumContentSizeCategory, *MEMORY[0x1E69DDC90]);
  objc_storeStrong(&self->_maximumContentSizeCategory, v5);
  objc_initWeak(&location, self);
  v11[0] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__AXDynamicTypeImageView__commonInit__block_invoke;
  v8[3] = &unk_1E812E3A8;
  objc_copyWeak(&v9, &location);
  v7 = [(AXDynamicTypeImageView *)self registerForTraitChanges:v6 withHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __37__AXDynamicTypeImageView__commonInit__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _traitCollectionDidChange:v4];
}

- (AXDynamicTypeImageView)initWithImage:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXDynamicTypeImageView;
  v3 = [(AXDynamicTypeImageView *)&v6 initWithImage:a3];
  v4 = v3;
  if (v3)
  {
    [(AXDynamicTypeImageView *)v3 _commonInit];
  }

  return v4;
}

- (AXDynamicTypeImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  v7.receiver = self;
  v7.super_class = AXDynamicTypeImageView;
  v4 = [(AXDynamicTypeImageView *)&v7 initWithImage:a3 highlightedImage:a4];
  v5 = v4;
  if (v4)
  {
    [(AXDynamicTypeImageView *)v4 _commonInit];
  }

  return v5;
}

- (AXDynamicTypeImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AXDynamicTypeImageView;
  v3 = [(AXDynamicTypeImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AXDynamicTypeImageView *)v3 _commonInit];
  }

  return v4;
}

- (CGSize)_scaledSizeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width >= 0.0 && a3.height >= 0.0)
  {
    v6 = [(AXDynamicTypeImageView *)self traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    v8 = [(AXDynamicTypeImageView *)self maximumContentSizeCategory];
    v9 = AXUIContentSizeCategoryMin(v7, v8);

    v10 = [(AXDynamicTypeImageView *)self minimumContentSizeCategory];
    v11 = AXUIContentSizeCategoryMax(v9, v10);

    v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v11];
    v13 = [(AXDynamicTypeImageView *)self fontMetrics];
    [v13 scaledValueForValue:v12 compatibleWithTraitCollection:width];
    width = v14;
    v15 = [(AXDynamicTypeImageView *)self fontMetrics];
    [v15 scaledValueForValue:v12 compatibleWithTraitCollection:height];
    height = v16;
  }

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v5.receiver = self;
  v5.super_class = AXDynamicTypeImageView;
  [(AXDynamicTypeImageView *)&v5 intrinsicContentSize];
  [(AXDynamicTypeImageView *)self _scaledSizeForSize:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v6.receiver = self;
  v6.super_class = AXDynamicTypeImageView;
  [(AXDynamicTypeImageView *)&v6 sizeThatFits:a3.width, a3.height];
  [(AXDynamicTypeImageView *)self _scaledSizeForSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_traitCollectionDidChange:(id)a3
{
  v4 = [a3 preferredContentSizeCategory];
  v5 = [(AXDynamicTypeImageView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 isEqual:v6];

  if ((v7 & 1) == 0)
  {

    [(AXDynamicTypeImageView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setMinimumContentSizeCategory:(id)a3
{
  v5 = a3;
  if (self->_minimumContentSizeCategory != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_minimumContentSizeCategory, a3);
    [(AXDynamicTypeImageView *)self invalidateIntrinsicContentSize];
    v5 = v6;
  }
}

- (void)setMaximumContentSizeCategory:(id)a3
{
  v5 = a3;
  if (self->_maximumContentSizeCategory != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_maximumContentSizeCategory, a3);
    [(AXDynamicTypeImageView *)self invalidateIntrinsicContentSize];
    v5 = v6;
  }
}

- (void)setFontMetrics:(id)a3
{
  v5 = a3;
  if (self->_fontMetrics != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_fontMetrics, a3);
    [(AXDynamicTypeImageView *)self invalidateIntrinsicContentSize];
    v5 = v6;
  }
}

@end