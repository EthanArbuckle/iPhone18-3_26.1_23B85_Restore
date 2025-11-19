@interface ZWPointerAppearance
- (ZWPointerAppearance)initWithZoomRootVC:(id)a3;
- (double)_zoomLevelMultiplier;
- (double)fingerInnerCircleInnerRadius;
- (double)fingerInnerRadius;
- (double)innerCircleStrokeWidth;
- (double)strokeOutlineWidth;
- (double)strokeWidth;
@end

@implementation ZWPointerAppearance

- (ZWPointerAppearance)initWithZoomRootVC:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ZWPointerAppearance;
  v5 = [(ZWPointerAppearance *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ZWPointerAppearance *)v5 setZoomRootVC:v4];
  }

  return v6;
}

- (double)_zoomLevelMultiplier
{
  if (!_AXSPointerScaleWithZoomLevelEnabled())
  {
    return 1.0;
  }

  v3 = [(ZWPointerAppearance *)self zoomRootVC];
  [v3 zoomLevel];
  v5 = v4;

  result = 1.0;
  if (v5 > AXZoomMinimumZoomLevel + 0.0001)
  {
    return v5;
  }

  return result;
}

- (double)strokeWidth
{
  v7.receiver = self;
  v7.super_class = ZWPointerAppearance;
  [(ZWPointerAppearance *)&v7 strokeWidth];
  v4 = v3;
  [(ZWPointerAppearance *)self _zoomLevelMultiplier];
  return v4 * v5;
}

- (double)strokeOutlineWidth
{
  v7.receiver = self;
  v7.super_class = ZWPointerAppearance;
  [(ZWPointerAppearance *)&v7 strokeOutlineWidth];
  v4 = v3;
  [(ZWPointerAppearance *)self _zoomLevelMultiplier];
  return v4 * v5;
}

- (double)innerCircleStrokeWidth
{
  v7.receiver = self;
  v7.super_class = ZWPointerAppearance;
  [(ZWPointerAppearance *)&v7 innerCircleStrokeWidth];
  v4 = v3;
  [(ZWPointerAppearance *)self _zoomLevelMultiplier];
  return v4 * v5;
}

- (double)fingerInnerRadius
{
  v7.receiver = self;
  v7.super_class = ZWPointerAppearance;
  [(ZWPointerAppearance *)&v7 fingerInnerRadius];
  v4 = v3;
  [(ZWPointerAppearance *)self _zoomLevelMultiplier];
  return v4 * v5;
}

- (double)fingerInnerCircleInnerRadius
{
  v7.receiver = self;
  v7.super_class = ZWPointerAppearance;
  [(ZWPointerAppearance *)&v7 fingerInnerCircleInnerRadius];
  v4 = v3;
  [(ZWPointerAppearance *)self _zoomLevelMultiplier];
  return v4 * v5;
}

@end