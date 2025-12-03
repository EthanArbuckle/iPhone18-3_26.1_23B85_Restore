@interface AXDynamicTypeImageView
- (AXDynamicTypeImageView)initWithFrame:(CGRect)frame;
- (AXDynamicTypeImageView)initWithImage:(id)image;
- (AXDynamicTypeImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (CGSize)_scaledSizeForSize:(CGSize)size;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_commonInit;
- (void)_traitCollectionDidChange:(id)change;
- (void)setFontMetrics:(id)metrics;
- (void)setMaximumContentSizeCategory:(id)category;
- (void)setMinimumContentSizeCategory:(id)category;
@end

@implementation AXDynamicTypeImageView

- (void)_commonInit
{
  v11[1] = *MEMORY[0x1E69E9840];
  defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
  fontMetrics = self->_fontMetrics;
  self->_fontMetrics = defaultMetrics;

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

- (AXDynamicTypeImageView)initWithImage:(id)image
{
  v6.receiver = self;
  v6.super_class = AXDynamicTypeImageView;
  v3 = [(AXDynamicTypeImageView *)&v6 initWithImage:image];
  v4 = v3;
  if (v3)
  {
    [(AXDynamicTypeImageView *)v3 _commonInit];
  }

  return v4;
}

- (AXDynamicTypeImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  v7.receiver = self;
  v7.super_class = AXDynamicTypeImageView;
  v4 = [(AXDynamicTypeImageView *)&v7 initWithImage:image highlightedImage:highlightedImage];
  v5 = v4;
  if (v4)
  {
    [(AXDynamicTypeImageView *)v4 _commonInit];
  }

  return v5;
}

- (AXDynamicTypeImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AXDynamicTypeImageView;
  v3 = [(AXDynamicTypeImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AXDynamicTypeImageView *)v3 _commonInit];
  }

  return v4;
}

- (CGSize)_scaledSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width >= 0.0 && size.height >= 0.0)
  {
    traitCollection = [(AXDynamicTypeImageView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    maximumContentSizeCategory = [(AXDynamicTypeImageView *)self maximumContentSizeCategory];
    v9 = AXUIContentSizeCategoryMin(preferredContentSizeCategory, maximumContentSizeCategory);

    minimumContentSizeCategory = [(AXDynamicTypeImageView *)self minimumContentSizeCategory];
    v11 = AXUIContentSizeCategoryMax(v9, minimumContentSizeCategory);

    v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v11];
    fontMetrics = [(AXDynamicTypeImageView *)self fontMetrics];
    [fontMetrics scaledValueForValue:v12 compatibleWithTraitCollection:width];
    width = v14;
    fontMetrics2 = [(AXDynamicTypeImageView *)self fontMetrics];
    [fontMetrics2 scaledValueForValue:v12 compatibleWithTraitCollection:height];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  v6.receiver = self;
  v6.super_class = AXDynamicTypeImageView;
  [(AXDynamicTypeImageView *)&v6 sizeThatFits:fits.width, fits.height];
  [(AXDynamicTypeImageView *)self _scaledSizeForSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_traitCollectionDidChange:(id)change
{
  preferredContentSizeCategory = [change preferredContentSizeCategory];
  traitCollection = [(AXDynamicTypeImageView *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqual:preferredContentSizeCategory2];

  if ((v7 & 1) == 0)
  {

    [(AXDynamicTypeImageView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setMinimumContentSizeCategory:(id)category
{
  categoryCopy = category;
  if (self->_minimumContentSizeCategory != categoryCopy)
  {
    v6 = categoryCopy;
    objc_storeStrong(&self->_minimumContentSizeCategory, category);
    [(AXDynamicTypeImageView *)self invalidateIntrinsicContentSize];
    categoryCopy = v6;
  }
}

- (void)setMaximumContentSizeCategory:(id)category
{
  categoryCopy = category;
  if (self->_maximumContentSizeCategory != categoryCopy)
  {
    v6 = categoryCopy;
    objc_storeStrong(&self->_maximumContentSizeCategory, category);
    [(AXDynamicTypeImageView *)self invalidateIntrinsicContentSize];
    categoryCopy = v6;
  }
}

- (void)setFontMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (self->_fontMetrics != metricsCopy)
  {
    v6 = metricsCopy;
    objc_storeStrong(&self->_fontMetrics, metrics);
    [(AXDynamicTypeImageView *)self invalidateIntrinsicContentSize];
    metricsCopy = v6;
  }
}

@end