@interface AVTEngagementLayout
+ (UIEdgeInsets)insetsToCenterFirstAndLastItemsGivenContainerSize:(CGSize)size itemSize:(CGSize)itemSize;
+ (double)minimumInterItemSpacingForVisibileBoundsSize:(CGSize)size defaultCellSize:(CGSize)cellSize engagedCellSize:(CGSize)engagedCellSize;
- (AVTEngagementLayout)initWithDefaultCellSize:(CGSize)size engagedCellSize:(CGSize)cellSize baseInteritemSpacing:(double)spacing;
- (AVTEngagementLayout)initWithDefaultCellSize:(CGSize)size engagedCellSize:(CGSize)cellSize useEngagementSpacing:(BOOL)spacing interItemSpacingProvider:(id)provider;
- (CGPoint)centerForCenteringElementAtIndex:(int64_t)index visibleBoundsSize:(CGSize)size proposedOrigin:(CGPoint)origin;
- (CGRect)engagementBoundsForContainerBounds:(CGRect)bounds;
- (CGRect)frameForElementAfterElementEndingAt:(double)at engagementBounds:(CGRect)bounds verticalBounds:(id)verticalBounds;
- (CGRect)frameForElementAtIndex:(int64_t)index visibleBounds:(CGRect)bounds;
- (CGRect)frameForElementAtIndex:(int64_t)index visibleBounds:(CGRect)bounds engagementBounds:(CGRect)engagementBounds verticalBounds:(id)verticalBounds;
- (CGRect)frameForElementBeforeElementStartingAt:(double)at engagementBounds:(CGRect)bounds verticalBounds:(id)verticalBounds;
- (CGRect)frameForElementBeforeOriginForVisibleBounds:(CGRect)bounds;
- (CGSize)cellSizeForEngagement:(double)engagement;
- (CGSize)contentSizeForVisibleBounds:(CGRect)bounds numberOfItems:(int64_t)items;
- (CGSize)defaultCellSize;
- (CGSize)engagedCellSize;
- (CGSize)engagementSizeForVisibleBoundsSize:(CGSize)size;
- (UIEdgeInsets)engagementBoundsInsets;
- (double)contentOriginXForVisibleSize:(CGSize)size;
- (double)contentTrailingXForVisibleSize:(CGSize)size;
- (double)engagementForValue:(double)value withRangeMin:(double)min rangeMax:(double)max rangePeakBegin:(double)begin rangePeakEnd:(double)end;
- (double)interitemSpacingForEngagement:(double)engagement;
- (double)spacingAfterElementEndingAt:(double)at engagementBounds:(CGRect)bounds;
- (double)spacingBeforElementStartingAt:(double)at engagementBounds:(CGRect)bounds;
- (double)xAxisScale;
- (id)indexesForElementsInRect:(CGRect)rect visibleBounds:(CGRect)bounds numberOfItems:(int64_t)items;
@end

@implementation AVTEngagementLayout

+ (double)minimumInterItemSpacingForVisibileBoundsSize:(CGSize)size defaultCellSize:(CGSize)cellSize engagedCellSize:(CGSize)engagedCellSize
{
  v5 = (size.width - engagedCellSize.width) * 0.5;
  v6 = floor(cellSize.width * 0.5);
  v7 = floor(v5 - v6) + 1.0;
  if (v5 <= v6)
  {
    return v7;
  }

  else
  {
    return -v6;
  }
}

+ (UIEdgeInsets)insetsToCenterFirstAndLastItemsGivenContainerSize:(CGSize)size itemSize:(CGSize)itemSize
{
  v4 = size.width * 0.5 - itemSize.width * 0.5;
  v5 = *MEMORY[0x1E69DDCE0];
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v7 = v4;
  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

- (AVTEngagementLayout)initWithDefaultCellSize:(CGSize)size engagedCellSize:(CGSize)cellSize baseInteritemSpacing:(double)spacing
{
  height = cellSize.height;
  width = cellSize.width;
  v7 = size.height;
  v8 = size.width;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__AVTEngagementLayout_initWithDefaultCellSize_engagedCellSize_baseInteritemSpacing___block_invoke;
  v13[3] = &__block_descriptor_40_e8_d16__0d8l;
  *&v13[4] = spacing;
  v10 = MEMORY[0x1BFB0DE80](v13, a2);
  height = [(AVTEngagementLayout *)self initWithDefaultCellSize:v10 engagedCellSize:v8 interItemSpacingProvider:v7, width, height];

  return height;
}

- (AVTEngagementLayout)initWithDefaultCellSize:(CGSize)size engagedCellSize:(CGSize)cellSize useEngagementSpacing:(BOOL)spacing interItemSpacingProvider:(id)provider
{
  height = cellSize.height;
  width = cellSize.width;
  v9 = size.height;
  v10 = size.width;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = AVTEngagementLayout;
  v13 = [(AVTEngagementLayout *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v13->_defaultCellSize.width = v10;
    v13->_defaultCellSize.height = v9;
    v15 = MEMORY[0x1E69DDCE0];
    v13->_engagedCellSize.width = width;
    v13->_engagedCellSize.height = height;
    v16 = v15[1];
    *&v13->_engagementBoundsInsets.top = *v15;
    *&v13->_engagementBoundsInsets.bottom = v16;
    v13->_useEngagementSpacing = spacing;
    v17 = [providerCopy copy];
    interItemSpacingProvider = v14->_interItemSpacingProvider;
    v14->_interItemSpacingProvider = v17;

    v19 = +[AVTUIEnvironment defaultEnvironment];
    logger = [v19 logger];
    logger = v14->_logger;
    v14->_logger = logger;
  }

  return v14;
}

- (CGRect)engagementBoundsForContainerBounds:(CGRect)bounds
{
  x = bounds.origin.x;
  v5 = *(MEMORY[0x1E695F058] + 8);
  [(AVTEngagementLayout *)self engagementSizeForVisibleBoundsSize:bounds.size.width, bounds.size.height];
  v7 = v6;
  v9 = v8;
  [(AVTEngagementLayout *)self engagementBoundsInsets];
  v11 = x + v10;
  v12 = v5;
  v13 = v7;
  v14 = v9;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGSize)engagementSizeForVisibleBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(AVTEngagementLayout *)self engagementBoundsInsets];
  v7 = width - v6;
  [(AVTEngagementLayout *)self engagementBoundsInsets];
  v9 = v7 - v8;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)xAxisScale
{
  [(AVTEngagementLayout *)self defaultCellSize];
  v4 = v3;
  interItemSpacingProvider = [(AVTEngagementLayout *)self interItemSpacingProvider];
  v6 = v4 + interItemSpacingProvider[2](0.0);
  [(AVTEngagementLayout *)self engagedCellSize];
  v8 = v7;
  interItemSpacingProvider2 = [(AVTEngagementLayout *)self interItemSpacingProvider];
  v10 = v6 / (v8 + interItemSpacingProvider2[2](1.0));

  return v10;
}

- (double)contentOriginXForVisibleSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_opt_class();
  [(AVTEngagementLayout *)self engagedCellSize];
  [v6 insetsToCenterFirstAndLastItemsGivenContainerSize:width itemSize:{height, v7, v8}];
  return v9;
}

- (double)contentTrailingXForVisibleSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_opt_class();
  [(AVTEngagementLayout *)self engagedCellSize];
  [v6 insetsToCenterFirstAndLastItemsGivenContainerSize:width itemSize:{height, v7, v8}];
  return v9;
}

- (CGRect)frameForElementAtIndex:(int64_t)index visibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(AVTEngagementLayout *)self engagementBoundsForContainerBounds:?];
  [(AVTEngagementLayout *)self frameForElementAtIndex:index visibleBounds:x engagementBounds:y verticalBounds:width, height, v10, v11, v12, v13, *&y, *&height];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)frameForElementAtIndex:(int64_t)index visibleBounds:(CGRect)bounds engagementBounds:(CGRect)engagementBounds verticalBounds:(id)verticalBounds
{
  height = engagementBounds.size.height;
  width = engagementBounds.size.width;
  y = engagementBounds.origin.y;
  x = engagementBounds.origin.x;
  v10 = bounds.size.height;
  v11 = bounds.size.width;
  rect_24 = bounds.origin.y;
  rect = bounds.origin.x;
  indexCopy = index;
  v14 = v38;
  [(AVTEngagementLayout *)self contentOriginXForVisibleSize:index, *&verticalBounds.var0, *&verticalBounds.var1, bounds.size.width, bounds.size.height];
  v32 = v15;
  [(AVTEngagementLayout *)self xAxisScale];
  v17 = 1.0 - v16;
  v39.origin.x = rect;
  v39.origin.y = rect_24;
  v39.size.width = v11;
  v39.size.height = v10;
  v18 = v32 + v17 * CGRectGetMinX(v39);
  if (indexCopy >= 1)
  {
    do
    {
      [(AVTEngagementLayout *)self frameForElementAfterElementEndingAt:v18 engagementBounds:x verticalBounds:y, width, height, v37, v14];
      v19 = v40.origin.x;
      v20 = v40.origin.y;
      v21 = x;
      v22 = y;
      v23 = width;
      v24 = height;
      v25 = v40.size.width;
      v26 = v40.size.height;
      [(AVTEngagementLayout *)self spacingAfterElementEndingAt:CGRectGetMaxX(v40) engagementBounds:v21, v22, v23, v24];
      rect_24a = v27;
      v41.origin.x = v19;
      v41.origin.y = v20;
      v41.size.width = v25;
      height = v24;
      width = v23;
      y = v22;
      x = v21;
      v41.size.height = v26;
      v14 = v38;
      v18 = rect_24a + CGRectGetMaxX(v41);
      --indexCopy;
    }

    while (indexCopy);
  }

  [(AVTEngagementLayout *)self frameForElementAfterElementEndingAt:v18 engagementBounds:x verticalBounds:y, width, height, v37, v14];
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)frameForElementAfterElementEndingAt:(double)at engagementBounds:(CGRect)bounds verticalBounds:(id)verticalBounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  MinX = CGRectGetMinX(bounds);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MaxX = CGRectGetMaxX(v34);
  [(AVTEngagementLayout *)self defaultCellSize];
  v14 = MaxX - v13;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MidX = CGRectGetMidX(v35);
  [(AVTEngagementLayout *)self engagedCellSize];
  [(AVTEngagementLayout *)self engagementForValue:at withRangeMin:MinX rangeMax:v14 rangePeak:MidX + v16 * -0.5];
  [(AVTEngagementLayout *)self cellSizeForEngagement:?];
  v19 = v18;
  v20 = v17;
  if (v18 == INFINITY || v17 == INFINITY)
  {
    [(AVTEngagementLayout *)self defaultCellSize];
    v19 = v22;
    v20 = v23;
  }

  v36.origin.x = at;
  v36.origin.y = verticalBounds.var0 + (verticalBounds.var1 - v20) * 0.5;
  v36.size.width = v19;
  v36.size.height = v20;
  if (CGRectIsInfinite(v36))
  {
    v24 = MEMORY[0x1E696AEC0];
    v37.origin.x = at;
    v37.origin.y = verticalBounds.var0 + (verticalBounds.var1 - v20) * 0.5;
    v37.size.width = v19;
    v37.size.height = v20;
    v25 = NSStringFromCGRect(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v26 = NSStringFromCGRect(v38);
    v27 = [v24 stringWithFormat:@"Frame %@ has infinity values based on parameters previousElementMaxX=%f, engagementBounds=%@, verticalBounds=(%f %f)", v25, *&at, v26, *&verticalBounds.var1, *&verticalBounds.var0];

    logger = [(AVTEngagementLayout *)self logger];
    [logger logDebug:v27];
  }

  atCopy = at;
  v30 = verticalBounds.var0 + (verticalBounds.var1 - v20) * 0.5;
  v31 = v19;
  v32 = v20;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = atCopy;
  return result;
}

- (double)spacingAfterElementEndingAt:(double)at engagementBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  MidX = CGRectGetMidX(bounds);
  [(AVTEngagementLayout *)self engagedCellSize];
  v12 = MidX - v11 * 0.5;
  [(AVTEngagementLayout *)self interitemSpacingForEngagement:1.0];
  v14 = v12 - v13;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v15 = CGRectGetMidX(v31);
  [(AVTEngagementLayout *)self engagedCellSize];
  v17 = v15 + v16 * 0.5;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MinX = CGRectGetMinX(v32);
  [(AVTEngagementLayout *)self defaultCellSize];
  v20 = MinX + v19;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MaxX = CGRectGetMaxX(v33);
  [(AVTEngagementLayout *)self defaultCellSize];
  v23 = MaxX - v22;
  [(AVTEngagementLayout *)self interitemSpacingForEngagement:0.0];
  [(AVTEngagementLayout *)self engagementForValue:at withRangeMin:v20 rangeMax:v23 - v24 rangePeakBegin:v14 rangePeakEnd:v17];
  v26 = v25;
  useEngagementSpacing = [(AVTEngagementLayout *)self useEngagementSpacing];
  v28 = 1.0;
  if (useEngagementSpacing)
  {
    v28 = v26;
  }

  [(AVTEngagementLayout *)self interitemSpacingForEngagement:v28];
  return result;
}

- (CGRect)frameForElementBeforeElementStartingAt:(double)at engagementBounds:(CGRect)bounds verticalBounds:(id)verticalBounds
{
  var1 = verticalBounds.var1;
  var0 = verticalBounds.var0;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  MinX = CGRectGetMinX(bounds);
  [(AVTEngagementLayout *)self defaultCellSize];
  v14 = MinX + v13;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MaxX = CGRectGetMaxX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MidX = CGRectGetMidX(v26);
  [(AVTEngagementLayout *)self engagedCellSize];
  [(AVTEngagementLayout *)self engagementForValue:at withRangeMin:v14 rangeMax:MaxX rangePeak:MidX + v17 * 0.5];
  [(AVTEngagementLayout *)self cellSizeForEngagement:?];
  v19 = v18;
  v21 = v20;
  v22 = at - v18;
  v23 = var0 + (var1 - v20) * 0.5;
  result.size.height = v21;
  result.size.width = v19;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (double)spacingBeforElementStartingAt:(double)at engagementBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  MidX = CGRectGetMidX(bounds);
  [(AVTEngagementLayout *)self engagedCellSize];
  v12 = MidX - v11 * 0.5;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v13 = CGRectGetMidX(v31);
  [(AVTEngagementLayout *)self engagedCellSize];
  v15 = v13 + v14 * 0.5;
  [(AVTEngagementLayout *)self interitemSpacingForEngagement:1.0];
  v17 = v16 + v15;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MinX = CGRectGetMinX(v32);
  [(AVTEngagementLayout *)self defaultCellSize];
  v20 = MinX + v19;
  [(AVTEngagementLayout *)self interitemSpacingForEngagement:0.0];
  v22 = v21 + v20;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MaxX = CGRectGetMaxX(v33);
  [(AVTEngagementLayout *)self defaultCellSize];
  [(AVTEngagementLayout *)self engagementForValue:at withRangeMin:v22 rangeMax:MaxX - v24 rangePeakBegin:v12 rangePeakEnd:v17];
  v26 = v25;
  useEngagementSpacing = [(AVTEngagementLayout *)self useEngagementSpacing];
  v28 = 1.0;
  if (useEngagementSpacing)
  {
    v28 = v26;
  }

  [(AVTEngagementLayout *)self interitemSpacingForEngagement:v28];
  return result;
}

- (double)engagementForValue:(double)value withRangeMin:(double)min rangeMax:(double)max rangePeakBegin:(double)begin rangePeakEnd:(double)end
{
  v7 = max - end;
  if (value > end)
  {
    v8 = value - end;
  }

  else
  {
    v7 = 1.0;
    v8 = 0.0;
  }

  v9 = begin - value;
  v10 = begin - min;
  v11 = value < begin;
  if (value < begin)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = v8;
  }

  result = fmin(1.0 - v13 / v12, 1.0);
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (CGSize)cellSizeForEngagement:(double)engagement
{
  [(AVTEngagementLayout *)self defaultCellSize];
  v6 = v5;
  [(AVTEngagementLayout *)self engagedCellSize];
  v8 = v7;
  [(AVTEngagementLayout *)self defaultCellSize];
  v10 = v6 + (v8 - v9) * engagement;
  [(AVTEngagementLayout *)self defaultCellSize];
  v12 = v11;
  [(AVTEngagementLayout *)self engagedCellSize];
  v14 = v13;
  [(AVTEngagementLayout *)self defaultCellSize];
  v16 = v12 + (v14 - v15) * engagement;
  v17 = v10;
  result.height = v16;
  result.width = v17;
  return result;
}

- (double)interitemSpacingForEngagement:(double)engagement
{
  interItemSpacingProvider = [(AVTEngagementLayout *)self interItemSpacingProvider];
  v5 = interItemSpacingProvider[2](engagement);

  return v5;
}

- (id)indexesForElementsInRect:(CGRect)rect visibleBounds:(CGRect)bounds numberOfItems:(int64_t)items
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = rect.size.height;
  v11 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if (items >= 1)
  {
    v16 = 0;
    do
    {
      [(AVTEngagementLayout *)self frameForElementAtIndex:v16 visibleBounds:x, y, width, height];
      v25.origin.x = v17;
      v25.origin.y = v18;
      v25.size.width = v19;
      v25.size.height = v20;
      v24.origin.x = v13;
      v24.origin.y = v12;
      v24.size.width = v11;
      v24.size.height = v10;
      if (CGRectIntersectsRect(v24, v25))
      {
        [indexSet addIndex:v16];
      }

      ++v16;
    }

    while (items != v16);
  }

  v21 = [indexSet copy];

  return v21;
}

- (CGPoint)centerForCenteringElementAtIndex:(int64_t)index visibleBoundsSize:(CGSize)size proposedOrigin:(CGPoint)origin
{
  y = origin.y;
  height = size.height;
  width = size.width;
  [(AVTEngagementLayout *)self engagementSizeForVisibleBoundsSize:size.width, size.height, origin.x];
  v11 = v10;
  v13 = v12;
  [(AVTEngagementLayout *)self engagedCellSize];
  MinX = v14 * -0.5;
  if (index >= 1)
  {
    v16 = *(MEMORY[0x1E695F058] + 8);
    v17 = v11 * -0.5;
    do
    {
      [(AVTEngagementLayout *)self spacingBeforElementStartingAt:MinX engagementBounds:v17, v16, v11, v13];
      [(AVTEngagementLayout *)self frameForElementBeforeElementStartingAt:MinX - v18 engagementBounds:v17 verticalBounds:v16, v11, v13, y, height];
      MinX = CGRectGetMinX(v31);
      --index;
    }

    while (index);
  }

  [(AVTEngagementLayout *)self contentOriginXForVisibleSize:width, height];
  v20 = MinX - v19;
  [(AVTEngagementLayout *)self engagementBoundsInsets];
  v22 = v11 * 0.5 + v21;
  [(AVTEngagementLayout *)self xAxisScale];
  v24 = v22 + (-v20 - v22) / v23;
  [(AVTEngagementLayout *)self engagementBoundsInsets];
  v26 = v25;
  [(AVTEngagementLayout *)self engagementBoundsInsets];
  v28 = v24 + (v26 - v27) * 0.5;
  v29 = y + height * 0.5;
  result.y = v29;
  result.x = v28;
  return result;
}

- (CGSize)contentSizeForVisibleBounds:(CGRect)bounds numberOfItems:(int64_t)items
{
  if (items <= 0)
  {
    v14 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    [(AVTEngagementLayout *)self centerForCenteringElementAtIndex:items - 1 visibleBoundsSize:bounds.size.width proposedOrigin:bounds.size.height, bounds.origin.x, bounds.origin.y];
    v10 = v9;
    [(AVTEngagementLayout *)self contentTrailingXForVisibleSize:width, height];
    v12 = v11;
    [(AVTEngagementLayout *)self engagedCellSize];
    v14 = v12 + v10 + v13 * 0.5;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v15 = CGRectGetHeight(v18);
  }

  v16 = v14;
  result.height = v15;
  result.width = v16;
  return result;
}

- (CGRect)frameForElementBeforeOriginForVisibleBounds:(CGRect)bounds
{
  width = bounds.size.width;
  x = bounds.origin.x;
  y = bounds.origin.y;
  rect_8 = bounds.size.height;
  rect_16 = bounds.origin.y;
  height = bounds.size.height;
  [(AVTEngagementLayout *)self frameForElementAtIndex:0 visibleBounds:?];
  v9 = v8;
  rect = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(AVTEngagementLayout *)self engagementBoundsForContainerBounds:x, y, width, height];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v35.origin.x = v9;
  v35.origin.y = v11;
  v35.size.width = v13;
  v35.size.height = v15;
  [(AVTEngagementLayout *)self spacingBeforElementStartingAt:CGRectGetMinX(v35) engagementBounds:v17, v19, v21, v23];
  v25 = v24;
  v36.origin.x = rect;
  v36.origin.y = v11;
  v36.size.width = v13;
  v36.size.height = v15;
  v26 = CGRectGetMinX(v36) - v25;

  [(AVTEngagementLayout *)self frameForElementBeforeElementStartingAt:v26 engagementBounds:v17 verticalBounds:v19, v21, v23, rect_16, rect_8];
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGSize)defaultCellSize
{
  width = self->_defaultCellSize.width;
  height = self->_defaultCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)engagedCellSize
{
  width = self->_engagedCellSize.width;
  height = self->_engagedCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)engagementBoundsInsets
{
  top = self->_engagementBoundsInsets.top;
  left = self->_engagementBoundsInsets.left;
  bottom = self->_engagementBoundsInsets.bottom;
  right = self->_engagementBoundsInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end