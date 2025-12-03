@interface AXWhitePointSliderCell
- (AXWhitePointSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateRightLabelWithValue:(double)value;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AXWhitePointSliderCell

- (AXWhitePointSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = AXWhitePointSliderCell;
  v4 = [(AXWhitePointSliderCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = dispatch_queue_create("setter-queue", 0);
    setterQueue = v4->_setterQueue;
    v4->_setterQueue = v5;

    slider = [(AXWhitePointSliderCell *)v4 slider];
    [slider setContinuous:1];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = AXWhitePointSliderCell;
  [(AXWhitePointSliderCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(AXWhitePointSliderCell *)self initialValue];
  [(AXWhitePointSliderCell *)self _updateRightLabelWithValue:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AXWhitePointSliderCell;
  [(AXWhitePointSliderCell *)&v4 prepareForReuse];
  slider = [(AXWhitePointSliderCell *)self slider];
  [slider setContinuous:1];
}

- (void)_updateRightLabelWithValue:(double)value
{
  slider = [(AXWhitePointSliderCell *)self slider];
  [slider value];
  v5 = AXFormatFloatWithPercentage();
  [(AXWhitePointSliderCell *)self setLabelText:v5];

  v6 = objc_initWeak(&location, self);
  slider2 = [(AXWhitePointSliderCell *)self slider];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __53__AXWhitePointSliderCell__updateRightLabelWithValue___block_invoke;
  v8[3] = &unk_255F00;
  objc_copyWeak(&v9, &location);
  [slider2 _setAccessibilityValueBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __53__AXWhitePointSliderCell__updateRightLabelWithValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained slider];
  [v2 value];
  v3 = AXFormatFloatWithPercentage();

  return v3;
}

- (void)handleSliderBeingDragged:(id)dragged
{
  draggedCopy = dragged;
  setterQueue = self->_setterQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__AXWhitePointSliderCell_handleSliderBeingDragged___block_invoke;
  block[3] = &unk_2553B0;
  v9 = draggedCopy;
  v6 = draggedCopy;
  dispatch_async(setterQueue, block);
  [v6 value];
  [(AXWhitePointSliderCell *)self _updateRightLabelWithValue:v7];
}

uint64_t __51__AXWhitePointSliderCell_handleSliderBeingDragged___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) value];
  v2.n128_f64[0] = v2.n128_f32[0];

  return _MADisplayFilterPrefSetReduceWhitePointIntensity(v1, v2);
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  value = [drag value];
  v4.n128_f64[0] = v4.n128_f32[0];

  _MADisplayFilterPrefSetReduceWhitePointIntensity(value, v4);
}

@end