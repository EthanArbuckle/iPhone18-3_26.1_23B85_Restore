@interface VNRegionOfInterestTiling
+ (id)tilingForRegionOfInterest:(CGRect)interest inPixelBounds:(CGRect)bounds tileAspectRatio:(double)ratio options:(id)options;
+ (id)tilingForRegionOfInterest:(CGRect)interest inPixelWidth:(unint64_t)width height:(unint64_t)height tileAspectRatio:(double)ratio options:(id)options;
- (CGRect)pixelBounds;
- (CGRect)pixelRegionOfInterest;
- (CGRect)regionOfInterest;
- (id)_initWithPixelOriginX:(unint64_t)x Y:(unint64_t)y width:(unint64_t)width height:(unint64_t)height regionOfInterest:(CGRect)interest;
- (void)_calculateTilesHorizontally:(BOOL)horizontally vertically:(BOOL)vertically tileAspectRatio:(double)ratio overlapPercentage:(double)percentage tileOverflowCount:(unint64_t)count addTileBlock:(id)block columnCount:(unint64_t *)columnCount rowCount:(unint64_t *)self0;
- (void)_calculateTilesWithAspectRatio:(double)ratio options:(id)options;
@end

@implementation VNRegionOfInterestTiling

- (CGRect)pixelRegionOfInterest
{
  objc_copyStruct(v6, &self->_pixelRegionOfInterest, 32, 1, 0);
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

- (CGRect)regionOfInterest
{
  objc_copyStruct(v6, &self->_regionOfInterest, 32, 1, 0);
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

- (CGRect)pixelBounds
{
  pixelOriginX = self->_pixelOriginX;
  pixelOriginY = self->_pixelOriginY;
  pixelWidth = self->_pixelWidth;
  pixelHeight = self->_pixelHeight;
  result.size.height = pixelHeight;
  result.size.width = pixelWidth;
  result.origin.y = pixelOriginY;
  result.origin.x = pixelOriginX;
  return result;
}

- (void)_calculateTilesWithAspectRatio:(double)ratio options:(id)options
{
  optionsCopy = options;
  v7 = optionsCopy;
  if (self->_pixelRegionOfInterest.size.width >= 1.0 && self->_pixelRegionOfInterest.size.height >= 1.0)
  {
    if (!optionsCopy)
    {
      v7 = objc_alloc_init(VNRegionOfInterestTilingOptions);
    }

    [(VNRegionOfInterestTilingOptions *)v7 regionOfInterestAspectRatioThreshold];
    v9 = self->_pixelRegionOfInterest.size.width / self->_pixelRegionOfInterest.size.height;
    v10 = v9 < v8 && v9 <= 1.0 / v8;
    v11 = v9 >= v8;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__VNRegionOfInterestTiling__calculateTilesWithAspectRatio_options___block_invoke;
    aBlock[3] = &unk_1E77B4D28;
    v23 = vcvtq_f64_u64(*&self->_pixelOriginX);
    aBlock[4] = self;
    v22 = v12;
    v13 = v12;
    v14 = _Block_copy(aBlock);
    v19 = 0;
    v20 = 0;
    [(VNRegionOfInterestTilingOptions *)v7 tileOverlapPercentage];
    [(VNRegionOfInterestTiling *)self _calculateTilesHorizontally:v11 vertically:v10 tileAspectRatio:[(VNRegionOfInterestTilingOptions *)v7 tileOverflowCount] overlapPercentage:v14 tileOverflowCount:&v20 addTileBlock:&v19 columnCount:ratio rowCount:v15];
    v16 = [v13 copy];
    tiles = self->_tiles;
    self->_tiles = v16;

    v18 = v19;
    self->_columnCount = v20;
    self->_rowCount = v18;
  }
}

void __67__VNRegionOfInterestTiling__calculateTilesWithAspectRatio_options___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = CGRectOffset(*&a2, *(a1 + 48), *(a1 + 56));
  v6 = [[VNRegionOfInterestTile alloc] initWithTiling:*(a1 + 32) pixelCropRect:v8.origin.x, v8.origin.y, v8.size.width, v8.size.height];
  [*(a1 + 40) addObject:v6];
}

- (void)_calculateTilesHorizontally:(BOOL)horizontally vertically:(BOOL)vertically tileAspectRatio:(double)ratio overlapPercentage:(double)percentage tileOverflowCount:(unint64_t)count addTileBlock:(id)block columnCount:(unint64_t *)columnCount rowCount:(unint64_t *)self0
{
  verticallyCopy = vertically;
  horizontallyCopy = horizontally;
  blockCopy = block;
  *columnCount = 0;
  *rowCount = 0;
  width = self->_pixelRegionOfInterest.size.width;
  if (width >= 1.0)
  {
    height = self->_pixelRegionOfInterest.size.height;
    if (height >= 1.0)
    {
      v21 = width;
      v22 = height;
      if (horizontallyCopy)
      {
        v23 = v22;
        v24 = v22 - (v22 * percentage);
        v25 = (v21 + v24 - 1) / v24;
        if (v25 > count)
        {
          goto LABEL_26;
        }

        rowCountCopy2 = rowCount;
        width = trunc(height * ratio);
        v26 = v24;
        v27 = 1;
      }

      else
      {
        if (!verticallyCopy)
        {
          goto LABEL_26;
        }

        v26 = v21;
        v28 = v21 - (v21 * percentage);
        v27 = (v28 + v22 - 1) / v28;
        if (v27 > count)
        {
          goto LABEL_26;
        }

        rowCountCopy2 = rowCount;
        height = trunc(width / ratio);
        v23 = v28;
        v25 = 1;
      }

      v29 = 0;
      v30 = (v25 >> 1) + 1;
      v31 = v27 >> 1;
      y = self->_pixelRegionOfInterest.origin.y;
      v45 = blockCopy;
      do
      {
        x = self->_pixelRegionOfInterest.origin.x;
        v34 = (v25 >> 1) + 1;
        do
        {
          v47.origin.x = x;
          v47.origin.y = y;
          v47.size.width = width;
          v47.size.height = height;
          v48 = CGRectIntersection(v47, self->_pixelRegionOfInterest);
          v45[2](v48.origin, *&v48.origin.y, v48.size, *&v48.size.height);
          x = x + v26;
          --v34;
        }

        while (v34);
        if (v30 < v25)
        {
          v35 = self->_pixelRegionOfInterest.origin.x + self->_pixelRegionOfInterest.size.width - width;
          v36 = ~(v25 >> 1) + v25;
          do
          {
            v49.origin.x = v35;
            v49.origin.y = y;
            v49.size.width = width;
            v49.size.height = height;
            v50 = CGRectIntersection(v49, self->_pixelRegionOfInterest);
            v45[2](v50.origin, *&v50.origin.y, v50.size, *&v50.size.height);
            v35 = v35 - v26;
            --v36;
          }

          while (v36);
        }

        y = y + v23;
      }

      while (v29++ != v31);
      v38 = v31 + 1;
      if (v31 + 1 < v27)
      {
        v39 = self->_pixelRegionOfInterest.origin.y + self->_pixelRegionOfInterest.size.height;
        do
        {
          v39 = v39 - v23;
          v40 = self->_pixelRegionOfInterest.origin.x;
          v41 = (v25 >> 1) + 1;
          do
          {
            v51.origin.x = v40;
            v51.origin.y = v39;
            v51.size.width = width;
            v51.size.height = height;
            v52 = CGRectIntersection(v51, self->_pixelRegionOfInterest);
            v45[2](v52.origin, *&v52.origin.y, v52.size, *&v52.size.height);
            v40 = v40 + v26;
            --v41;
          }

          while (v41);
          if (v30 < v25)
          {
            v42 = self->_pixelRegionOfInterest.origin.x + self->_pixelRegionOfInterest.size.width - height;
            v43 = ~(v25 >> 1) + v25;
            do
            {
              v53.origin.x = v42;
              v53.origin.y = v39;
              v53.size.width = width;
              v53.size.height = height;
              v54 = CGRectIntersection(v53, self->_pixelRegionOfInterest);
              v45[2](v54.origin, *&v54.origin.y, v54.size, *&v54.size.height);
              v42 = v42 - v26;
              --v43;
            }

            while (v43);
          }

          ++v38;
        }

        while (v38 != v27);
      }

      *columnCount = v25;
      blockCopy = v45;
      *rowCountCopy2 = v27;
    }
  }

LABEL_26:
}

- (id)_initWithPixelOriginX:(unint64_t)x Y:(unint64_t)y width:(unint64_t)width height:(unint64_t)height regionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v16.receiver = self;
  v16.super_class = VNRegionOfInterestTiling;
  result = [(VNRegionOfInterestTiling *)&v16 init];
  if (result)
  {
    *(result + 1) = x;
    *(result + 2) = y;
    *(result + 3) = width;
    *(result + 4) = height;
    *(result + 5) = x;
    *(result + 6) = y;
    *(result + 7) = width;
    *(result + 8) = height;
    *(result + 9) = x * width;
    *(result + 10) = y * height;
    *(result + 11) = width * width;
    *(result + 12) = height * height;
  }

  return result;
}

+ (id)tilingForRegionOfInterest:(CGRect)interest inPixelWidth:(unint64_t)width height:(unint64_t)height tileAspectRatio:(double)ratio options:(id)options
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  optionsCopy = options;
  v16 = [[self alloc] _initWithPixelOriginX:0 Y:0 width:width height:height regionOfInterest:{x, y, width, height}];
  [v16 _calculateTilesWithAspectRatio:optionsCopy options:ratio];

  return v16;
}

+ (id)tilingForRegionOfInterest:(CGRect)interest inPixelBounds:(CGRect)bounds tileAspectRatio:(double)ratio options:(id)options
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = interest.size.height;
  v11 = interest.size.width;
  v12 = interest.origin.y;
  v13 = interest.origin.x;
  optionsCopy = options;
  v16 = [[self alloc] _initWithPixelOriginX:x Y:y width:width height:height regionOfInterest:{v13, v12, v11, v10}];
  [v16 _calculateTilesWithAspectRatio:optionsCopy options:ratio];

  return v16;
}

@end