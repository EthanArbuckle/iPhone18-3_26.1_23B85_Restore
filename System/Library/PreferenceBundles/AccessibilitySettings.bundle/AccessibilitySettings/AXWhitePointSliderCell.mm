@interface AXWhitePointSliderCell
- (AXWhitePointSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateRightLabelWithValue:(double)a3;
- (void)handleSliderBeingDragged:(id)a3;
- (void)handleSliderDidFinishDrag:(id)a3;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AXWhitePointSliderCell

- (AXWhitePointSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = AXWhitePointSliderCell;
  v4 = [(AXWhitePointSliderCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = dispatch_queue_create("setter-queue", 0);
    setterQueue = v4->_setterQueue;
    v4->_setterQueue = v5;

    v7 = [(AXWhitePointSliderCell *)v4 slider];
    [v7 setContinuous:1];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXWhitePointSliderCell;
  [(AXWhitePointSliderCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(AXWhitePointSliderCell *)self initialValue];
  [(AXWhitePointSliderCell *)self _updateRightLabelWithValue:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AXWhitePointSliderCell;
  [(AXWhitePointSliderCell *)&v4 prepareForReuse];
  v3 = [(AXWhitePointSliderCell *)self slider];
  [v3 setContinuous:1];
}

- (void)_updateRightLabelWithValue:(double)a3
{
  v4 = [(AXWhitePointSliderCell *)self slider];
  [v4 value];
  v5 = AXFormatFloatWithPercentage();
  [(AXWhitePointSliderCell *)self setLabelText:v5];

  v6 = objc_initWeak(&location, self);
  v7 = [(AXWhitePointSliderCell *)self slider];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __53__AXWhitePointSliderCell__updateRightLabelWithValue___block_invoke;
  v8[3] = &unk_255F00;
  objc_copyWeak(&v9, &location);
  [v7 _setAccessibilityValueBlock:v8];

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

- (void)handleSliderBeingDragged:(id)a3
{
  v4 = a3;
  setterQueue = self->_setterQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__AXWhitePointSliderCell_handleSliderBeingDragged___block_invoke;
  block[3] = &unk_2553B0;
  v9 = v4;
  v6 = v4;
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

- (void)handleSliderDidFinishDrag:(id)a3
{
  v3 = [a3 value];
  v4.n128_f64[0] = v4.n128_f32[0];

  _MADisplayFilterPrefSetReduceWhitePointIntensity(v3, v4);
}

@end