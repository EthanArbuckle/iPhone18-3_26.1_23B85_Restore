@interface AVTEngagementLayout
+ (UIEdgeInsets)insetsToCenterFirstAndLastItemsGivenContainerSize:(CGSize)a3 itemSize:(CGSize)a4;
+ (double)minimumInterItemSpacingForVisibileBoundsSize:(CGSize)a3 defaultCellSize:(CGSize)a4 engagedCellSize:(CGSize)a5;
- (AVTEngagementLayout)initWithDefaultCellSize:(CGSize)a3 engagedCellSize:(CGSize)a4 baseInteritemSpacing:(double)a5;
- (AVTEngagementLayout)initWithDefaultCellSize:(CGSize)a3 engagedCellSize:(CGSize)a4 useEngagementSpacing:(BOOL)a5 interItemSpacingProvider:(id)a6;
- (CGPoint)centerForCenteringElementAtIndex:(int64_t)a3 visibleBoundsSize:(CGSize)a4 proposedOrigin:(CGPoint)a5;
- (CGRect)engagementBoundsForContainerBounds:(CGRect)a3;
- (CGRect)frameForElementAfterElementEndingAt:(double)a3 engagementBounds:(CGRect)a4 verticalBounds:(id)a5;
- (CGRect)frameForElementAtIndex:(int64_t)a3 visibleBounds:(CGRect)a4;
- (CGRect)frameForElementAtIndex:(int64_t)a3 visibleBounds:(CGRect)a4 engagementBounds:(CGRect)a5 verticalBounds:(id)a6;
- (CGRect)frameForElementBeforeElementStartingAt:(double)a3 engagementBounds:(CGRect)a4 verticalBounds:(id)a5;
- (CGRect)frameForElementBeforeOriginForVisibleBounds:(CGRect)a3;
- (CGSize)cellSizeForEngagement:(double)a3;
- (CGSize)contentSizeForVisibleBounds:(CGRect)a3 numberOfItems:(int64_t)a4;
- (CGSize)defaultCellSize;
- (CGSize)engagedCellSize;
- (CGSize)engagementSizeForVisibleBoundsSize:(CGSize)a3;
- (UIEdgeInsets)engagementBoundsInsets;
- (double)contentOriginXForVisibleSize:(CGSize)a3;
- (double)contentTrailingXForVisibleSize:(CGSize)a3;
- (double)engagementForValue:(double)a3 withRangeMin:(double)a4 rangeMax:(double)a5 rangePeakBegin:(double)a6 rangePeakEnd:(double)a7;
- (double)interitemSpacingForEngagement:(double)a3;
- (double)spacingAfterElementEndingAt:(double)a3 engagementBounds:(CGRect)a4;
- (double)spacingBeforElementStartingAt:(double)a3 engagementBounds:(CGRect)a4;
- (double)xAxisScale;
- (id)indexesForElementsInRect:(CGRect)a3 visibleBounds:(CGRect)a4 numberOfItems:(int64_t)a5;
@end

@implementation AVTEngagementLayout

+ (double)minimumInterItemSpacingForVisibileBoundsSize:(CGSize)a3 defaultCellSize:(CGSize)a4 engagedCellSize:(CGSize)a5
{
  v5 = (a3.width - a5.width) * 0.5;
  v6 = floor(a4.width * 0.5);
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

+ (UIEdgeInsets)insetsToCenterFirstAndLastItemsGivenContainerSize:(CGSize)a3 itemSize:(CGSize)a4
{
  v4 = a3.width * 0.5 - a4.width * 0.5;
  v5 = *MEMORY[0x1E69DDCE0];
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v7 = v4;
  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

- (AVTEngagementLayout)initWithDefaultCellSize:(CGSize)a3 engagedCellSize:(CGSize)a4 baseInteritemSpacing:(double)a5
{
  height = a4.height;
  width = a4.width;
  v7 = a3.height;
  v8 = a3.width;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__AVTEngagementLayout_initWithDefaultCellSize_engagedCellSize_baseInteritemSpacing___block_invoke;
  v13[3] = &__block_descriptor_40_e8_d16__0d8l;
  *&v13[4] = a5;
  v10 = MEMORY[0x1BFB0DE80](v13, a2);
  v11 = [(AVTEngagementLayout *)self initWithDefaultCellSize:v10 engagedCellSize:v8 interItemSpacingProvider:v7, width, height];

  return v11;
}

- (AVTEngagementLayout)initWithDefaultCellSize:(CGSize)a3 engagedCellSize:(CGSize)a4 useEngagementSpacing:(BOOL)a5 interItemSpacingProvider:(id)a6
{
  height = a4.height;
  width = a4.width;
  v9 = a3.height;
  v10 = a3.width;
  v12 = a6;
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
    v13->_useEngagementSpacing = a5;
    v17 = [v12 copy];
    interItemSpacingProvider = v14->_interItemSpacingProvider;
    v14->_interItemSpacingProvider = v17;

    v19 = +[AVTUIEnvironment defaultEnvironment];
    v20 = [v19 logger];
    logger = v14->_logger;
    v14->_logger = v20;
  }

  return v14;
}

- (CGRect)engagementBoundsForContainerBounds:(CGRect)a3
{
  x = a3.origin.x;
  v5 = *(MEMORY[0x1E695F058] + 8);
  [(AVTEngagementLayout *)self engagementSizeForVisibleBoundsSize:a3.size.width, a3.size.height];
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

- (CGSize)engagementSizeForVisibleBoundsSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v5 = [(AVTEngagementLayout *)self interItemSpacingProvider];
  v6 = v4 + v5[2](0.0);
  [(AVTEngagementLayout *)self engagedCellSize];
  v8 = v7;
  v9 = [(AVTEngagementLayout *)self interItemSpacingProvider];
  v10 = v6 / (v8 + v9[2](1.0));

  return v10;
}

- (double)contentOriginXForVisibleSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_opt_class();
  [(AVTEngagementLayout *)self engagedCellSize];
  [v6 insetsToCenterFirstAndLastItemsGivenContainerSize:width itemSize:{height, v7, v8}];
  return v9;
}

- (double)contentTrailingXForVisibleSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_opt_class();
  [(AVTEngagementLayout *)self engagedCellSize];
  [v6 insetsToCenterFirstAndLastItemsGivenContainerSize:width itemSize:{height, v7, v8}];
  return v9;
}

- (CGRect)frameForElementAtIndex:(int64_t)a3 visibleBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(AVTEngagementLayout *)self engagementBoundsForContainerBounds:?];
  [(AVTEngagementLayout *)self frameForElementAtIndex:a3 visibleBounds:x engagementBounds:y verticalBounds:width, height, v10, v11, v12, v13, *&y, *&height];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)frameForElementAtIndex:(int64_t)a3 visibleBounds:(CGRect)a4 engagementBounds:(CGRect)a5 verticalBounds:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4.size.height;
  v11 = a4.size.width;
  rect_24 = a4.origin.y;
  rect = a4.origin.x;
  v12 = a3;
  v14 = v38;
  [(AVTEngagementLayout *)self contentOriginXForVisibleSize:a3, *&a6.var0, *&a6.var1, a4.size.width, a4.size.height];
  v32 = v15;
  [(AVTEngagementLayout *)self xAxisScale];
  v17 = 1.0 - v16;
  v39.origin.x = rect;
  v39.origin.y = rect_24;
  v39.size.width = v11;
  v39.size.height = v10;
  v18 = v32 + v17 * CGRectGetMinX(v39);
  if (v12 >= 1)
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
      --v12;
    }

    while (v12);
  }

  [(AVTEngagementLayout *)self frameForElementAfterElementEndingAt:v18 engagementBounds:x verticalBounds:y, width, height, v37, v14];
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)frameForElementAfterElementEndingAt:(double)a3 engagementBounds:(CGRect)a4 verticalBounds:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MinX = CGRectGetMinX(a4);
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
  [(AVTEngagementLayout *)self engagementForValue:a3 withRangeMin:MinX rangeMax:v14 rangePeak:MidX + v16 * -0.5];
  [(AVTEngagementLayout *)self cellSizeForEngagement:?];
  v19 = v18;
  v20 = v17;
  if (v18 == INFINITY || v17 == INFINITY)
  {
    [(AVTEngagementLayout *)self defaultCellSize];
    v19 = v22;
    v20 = v23;
  }

  v36.origin.x = a3;
  v36.origin.y = a5.var0 + (a5.var1 - v20) * 0.5;
  v36.size.width = v19;
  v36.size.height = v20;
  if (CGRectIsInfinite(v36))
  {
    v24 = MEMORY[0x1E696AEC0];
    v37.origin.x = a3;
    v37.origin.y = a5.var0 + (a5.var1 - v20) * 0.5;
    v37.size.width = v19;
    v37.size.height = v20;
    v25 = NSStringFromCGRect(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v26 = NSStringFromCGRect(v38);
    v27 = [v24 stringWithFormat:@"Frame %@ has infinity values based on parameters previousElementMaxX=%f, engagementBounds=%@, verticalBounds=(%f %f)", v25, *&a3, v26, *&a5.var1, *&a5.var0];

    v28 = [(AVTEngagementLayout *)self logger];
    [v28 logDebug:v27];
  }

  v29 = a3;
  v30 = a5.var0 + (a5.var1 - v20) * 0.5;
  v31 = v19;
  v32 = v20;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (double)spacingAfterElementEndingAt:(double)a3 engagementBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MidX = CGRectGetMidX(a4);
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
  [(AVTEngagementLayout *)self engagementForValue:a3 withRangeMin:v20 rangeMax:v23 - v24 rangePeakBegin:v14 rangePeakEnd:v17];
  v26 = v25;
  v27 = [(AVTEngagementLayout *)self useEngagementSpacing];
  v28 = 1.0;
  if (v27)
  {
    v28 = v26;
  }

  [(AVTEngagementLayout *)self interitemSpacingForEngagement:v28];
  return result;
}

- (CGRect)frameForElementBeforeElementStartingAt:(double)a3 engagementBounds:(CGRect)a4 verticalBounds:(id)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MinX = CGRectGetMinX(a4);
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
  [(AVTEngagementLayout *)self engagementForValue:a3 withRangeMin:v14 rangeMax:MaxX rangePeak:MidX + v17 * 0.5];
  [(AVTEngagementLayout *)self cellSizeForEngagement:?];
  v19 = v18;
  v21 = v20;
  v22 = a3 - v18;
  v23 = var0 + (var1 - v20) * 0.5;
  result.size.height = v21;
  result.size.width = v19;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (double)spacingBeforElementStartingAt:(double)a3 engagementBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MidX = CGRectGetMidX(a4);
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
  [(AVTEngagementLayout *)self engagementForValue:a3 withRangeMin:v22 rangeMax:MaxX - v24 rangePeakBegin:v12 rangePeakEnd:v17];
  v26 = v25;
  v27 = [(AVTEngagementLayout *)self useEngagementSpacing];
  v28 = 1.0;
  if (v27)
  {
    v28 = v26;
  }

  [(AVTEngagementLayout *)self interitemSpacingForEngagement:v28];
  return result;
}

- (double)engagementForValue:(double)a3 withRangeMin:(double)a4 rangeMax:(double)a5 rangePeakBegin:(double)a6 rangePeakEnd:(double)a7
{
  v7 = a5 - a7;
  if (a3 > a7)
  {
    v8 = a3 - a7;
  }

  else
  {
    v7 = 1.0;
    v8 = 0.0;
  }

  v9 = a6 - a3;
  v10 = a6 - a4;
  v11 = a3 < a6;
  if (a3 < a6)
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

- (CGSize)cellSizeForEngagement:(double)a3
{
  [(AVTEngagementLayout *)self defaultCellSize];
  v6 = v5;
  [(AVTEngagementLayout *)self engagedCellSize];
  v8 = v7;
  [(AVTEngagementLayout *)self defaultCellSize];
  v10 = v6 + (v8 - v9) * a3;
  [(AVTEngagementLayout *)self defaultCellSize];
  v12 = v11;
  [(AVTEngagementLayout *)self engagedCellSize];
  v14 = v13;
  [(AVTEngagementLayout *)self defaultCellSize];
  v16 = v12 + (v14 - v15) * a3;
  v17 = v10;
  result.height = v16;
  result.width = v17;
  return result;
}

- (double)interitemSpacingForEngagement:(double)a3
{
  v4 = [(AVTEngagementLayout *)self interItemSpacingProvider];
  v5 = v4[2](a3);

  return v5;
}

- (id)indexesForElementsInRect:(CGRect)a3 visibleBounds:(CGRect)a4 numberOfItems:(int64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  v15 = [MEMORY[0x1E696AD50] indexSet];
  if (a5 >= 1)
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
        [v15 addIndex:v16];
      }

      ++v16;
    }

    while (a5 != v16);
  }

  v21 = [v15 copy];

  return v21;
}

- (CGPoint)centerForCenteringElementAtIndex:(int64_t)a3 visibleBoundsSize:(CGSize)a4 proposedOrigin:(CGPoint)a5
{
  y = a5.y;
  height = a4.height;
  width = a4.width;
  [(AVTEngagementLayout *)self engagementSizeForVisibleBoundsSize:a4.width, a4.height, a5.x];
  v11 = v10;
  v13 = v12;
  [(AVTEngagementLayout *)self engagedCellSize];
  MinX = v14 * -0.5;
  if (a3 >= 1)
  {
    v16 = *(MEMORY[0x1E695F058] + 8);
    v17 = v11 * -0.5;
    do
    {
      [(AVTEngagementLayout *)self spacingBeforElementStartingAt:MinX engagementBounds:v17, v16, v11, v13];
      [(AVTEngagementLayout *)self frameForElementBeforeElementStartingAt:MinX - v18 engagementBounds:v17 verticalBounds:v16, v11, v13, y, height];
      MinX = CGRectGetMinX(v31);
      --a3;
    }

    while (a3);
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

- (CGSize)contentSizeForVisibleBounds:(CGRect)a3 numberOfItems:(int64_t)a4
{
  if (a4 <= 0)
  {
    v14 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    [(AVTEngagementLayout *)self centerForCenteringElementAtIndex:a4 - 1 visibleBoundsSize:a3.size.width proposedOrigin:a3.size.height, a3.origin.x, a3.origin.y];
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

- (CGRect)frameForElementBeforeOriginForVisibleBounds:(CGRect)a3
{
  width = a3.size.width;
  x = a3.origin.x;
  y = a3.origin.y;
  rect_8 = a3.size.height;
  rect_16 = a3.origin.y;
  height = a3.size.height;
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