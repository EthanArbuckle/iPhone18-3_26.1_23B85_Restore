@interface VNRegionOfInterestTile
- (CGRect)pixelCropRect;
- (VNRegionOfInterestTile)initWithTiling:(id)a3 pixelCropRect:(CGRect)a4;
- (id)description;
@end

@implementation VNRegionOfInterestTile

- (CGRect)pixelCropRect
{
  objc_copyStruct(v6, &self->_pixelCropRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12.receiver = self;
  v12.super_class = VNRegionOfInterestTile;
  v4 = [(VNRegionOfInterestTile *)&v12 description];
  [(VNRegionOfInterestTile *)self pixelCropRect];
  v9 = VNHumanReadableCGRect(v5, v6, v7, v8);
  v10 = [v3 initWithFormat:@"%@ %@", v4, v9];

  return v10;
}

- (VNRegionOfInterestTile)initWithTiling:(id)a3 pixelCropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v13.receiver = self;
  v13.super_class = VNRegionOfInterestTile;
  v10 = [(VNRegionOfInterestTile *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_tiling, v9);
    v11->_pixelCropRect.origin.x = x;
    v11->_pixelCropRect.origin.y = y;
    v11->_pixelCropRect.size.width = width;
    v11->_pixelCropRect.size.height = height;
  }

  return v11;
}

@end