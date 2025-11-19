@interface BKPictureBookViewGeometry
+ (CGSize)imageSizeForSize:(CGSize)a3;
+ (id)geometryWithContentSize:(CGSize)a3 configuration:(id)a4 drawsSpine:(BOOL)a5 containerBounds:(CGRect)a6;
+ (id)geometryWithContentSize:(CGSize)a3 configuration:(id)a4 drawsSpine:(BOOL)a5 ignoresPadding:(BOOL)a6 containerBounds:(CGRect)a7;
- (BKPictureBookViewGeometry)initWithContentSize:(CGSize)a3 configuration:(id)a4 drawsSpine:(BOOL)a5 ignoresPadding:(BOOL)a6 containerBounds:(CGRect)a7;
- (CGRect)containerBounds;
- (CGSize)contentSize;
- (CGSize)imageSizeForSpread:(BOOL)a3 landscape:(BOOL)a4;
- (CGSize)maximumSize;
- (CGSize)sizeForSpread:(BOOL)a3 landscape:(BOOL)a4;
- (double)scaleForSize:(CGSize)a3;
- (double)scaleForSpread:(BOOL)a3 landscape:(BOOL)a4;
- (id)imageSizes;
- (id)sizes;
@end

@implementation BKPictureBookViewGeometry

+ (id)geometryWithContentSize:(CGSize)a3 configuration:(id)a4 drawsSpine:(BOOL)a5 ignoresPadding:(BOOL)a6 containerBounds:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v11 = a6;
  v12 = a5;
  v13 = a3.height;
  v14 = a3.width;
  v16 = a4;
  v17 = [[a1 alloc] initWithContentSize:v16 configuration:v12 drawsSpine:v11 ignoresPadding:v14 containerBounds:{v13, x, y, width, height}];

  return v17;
}

+ (id)geometryWithContentSize:(CGSize)a3 configuration:(id)a4 drawsSpine:(BOOL)a5 containerBounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5;
  v11 = a3.height;
  v12 = a3.width;
  v14 = a4;
  v15 = [[a1 alloc] initWithContentSize:v14 configuration:v10 drawsSpine:0 ignoresPadding:v12 containerBounds:{v11, x, y, width, height}];

  return v15;
}

- (BKPictureBookViewGeometry)initWithContentSize:(CGSize)a3 configuration:(id)a4 drawsSpine:(BOOL)a5 ignoresPadding:(BOOL)a6 containerBounds:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v14 = a3.height;
  v15 = a3.width;
  v17 = a4;
  v21.receiver = self;
  v21.super_class = BKPictureBookViewGeometry;
  v18 = [(BKPictureBookViewGeometry *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_contentSize.width = v15;
    v18->_contentSize.height = v14;
    v18->_drawsSpine = a5;
    objc_storeStrong(&v18->_configuration, a4);
    v19->_ignoresPadding = a6;
    v19->_containerBounds.origin.x = x;
    v19->_containerBounds.origin.y = y;
    v19->_containerBounds.size.width = width;
    v19->_containerBounds.size.height = height;
  }

  return v19;
}

- (CGSize)sizeForSpread:(BOOL)a3 landscape:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(BKPictureBookViewGeometry *)self contentSize];
  if (v7 <= 0.0 || ([(BKPictureBookViewGeometry *)self contentSize], v8 <= 0.0))
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    [(BKPictureBookViewGeometry *)self contentSize];
    v10 = v9;
    [(BKPictureBookViewGeometry *)self contentSize];
    v12 = v10 / v11;
    [(BKPictureBookViewGeometry *)self scaleForSpread:v5 landscape:v4];
    [(BKPictureBookViewGeometry *)self contentSize];
    CGSizeScale();
    v14 = floor(v13);
    v15 = vcvtmd_s64_f64(v13);
    width = v14 + 1.0;
    if ((v15 & 1) == 0)
    {
      width = v14;
    }

    height = floor(1.0 / v12 * width);
  }

  result.height = height;
  result.width = width;
  return result;
}

- (double)scaleForSpread:(BOOL)a3 landscape:(BOOL)a4
{
  [(BKPictureBookViewGeometry *)self contentSize:a3];
  if (v6 <= 0.0)
  {
    return 1.0;
  }

  [(BKPictureBookViewGeometry *)self contentSize];
  if (v7 <= 0.0 || CGRectIsEmpty(self->_containerBounds))
  {
    return 1.0;
  }

  [(BKPictureBookViewGeometry *)self contentSize];
  [(BKPictureBookViewGeometry *)self contentSize];
  IMActionSafeRectForRect();
  if (!a3 && !self->_ignoresPadding)
  {
    v9 = [(BKPictureBookViewGeometry *)self configuration];
    [v9 singlePagePadding];
  }

  CGSizeScaleThatFitsInCGSize();
  return result;
}

- (CGSize)maximumSize
{
  [(BKPictureBookViewGeometry *)self contentSize];
  if (v3 <= 0.0 || ([(BKPictureBookViewGeometry *)self contentSize], v4 <= 0.0))
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    [(BKPictureBookViewGeometry *)self sizeForSpread:0 landscape:1];
    v6 = v5;
    v8 = v7;
    [(BKPictureBookViewGeometry *)self sizeForSpread:0 landscape:0];
    if (v6 > width)
    {
      width = v6;
      height = v8;
    }
  }

  result.height = height;
  result.width = width;
  return result;
}

- (double)scaleForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(BKPictureBookViewGeometry *)self sizeForSpread:0 landscape:1];
  v8 = width == v7 && height == v6;
  if (v8 || (([(BKPictureBookViewGeometry *)self sizeForSpread:0 landscape:1], width == v10) ? (v11 = height == v9) : (v11 = 0), v11 || (([(BKPictureBookViewGeometry *)self sizeForSpread:0 landscape:1], width == v13) ? (v14 = height == v12) : (v14 = 0), v14 || ([(BKPictureBookViewGeometry *)self sizeForSpread:0 landscape:1], width == v16) && height == v15)))
  {

    [(BKPictureBookViewGeometry *)self scaleForSpread:0 landscape:1];
  }

  else
  {
    [(BKPictureBookViewGeometry *)self contentSize];
    return width / v18;
  }

  return result;
}

- (id)sizes
{
  v3 = +[NSMutableArray array];
  [(BKPictureBookViewGeometry *)self sizeForSpread:1 landscape:1];
  v30 = v5;
  v31 = v4;
  [(BKPictureBookViewGeometry *)self sizeForSpread:1 landscape:0];
  v7 = v6;
  v9 = v8;
  [(BKPictureBookViewGeometry *)self sizeForSpread:0 landscape:1];
  v11 = v10;
  v13 = v12;
  [(BKPictureBookViewGeometry *)self sizeForSpread:0 landscape:0];
  v15 = v14;
  v17 = v16;
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  v20 = [NSValue valueWithCGSize:v7, v9];
  [v3 addObject:v20];

  v21 = [NSValue valueWithCGSize:v31, v30];
  [v3 addObject:v21];

  v22 = height < width;
  if (height >= width)
  {
    v23 = v11;
  }

  else
  {
    v23 = v15;
  }

  if (height >= width)
  {
    v24 = v13;
  }

  else
  {
    v24 = v17;
  }

  if (height >= width)
  {
    v25 = v15;
  }

  else
  {
    v25 = v11;
  }

  if (v22)
  {
    v26 = v13;
  }

  else
  {
    v26 = v17;
  }

  v27 = [NSValue valueWithCGSize:v23, v24];
  [v3 addObject:v27];

  v28 = [NSValue valueWithCGSize:v25, v26];
  [v3 addObject:v28];

  return v3;
}

- (id)imageSizes
{
  v3 = +[NSMutableArray array];
  [(BKPictureBookViewGeometry *)self imageSizeForSpread:1 landscape:1];
  v30 = v5;
  v31 = v4;
  [(BKPictureBookViewGeometry *)self imageSizeForSpread:1 landscape:0];
  v7 = v6;
  v9 = v8;
  [(BKPictureBookViewGeometry *)self imageSizeForSpread:0 landscape:1];
  v11 = v10;
  v13 = v12;
  [(BKPictureBookViewGeometry *)self imageSizeForSpread:0 landscape:0];
  v15 = v14;
  v17 = v16;
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  v20 = [NSValue valueWithCGSize:v7, v9];
  [v3 addObject:v20];

  v21 = [NSValue valueWithCGSize:v31, v30];
  [v3 addObject:v21];

  v22 = height < width;
  if (height >= width)
  {
    v23 = v11;
  }

  else
  {
    v23 = v15;
  }

  if (height >= width)
  {
    v24 = v13;
  }

  else
  {
    v24 = v17;
  }

  if (height >= width)
  {
    v25 = v15;
  }

  else
  {
    v25 = v11;
  }

  if (v22)
  {
    v26 = v13;
  }

  else
  {
    v26 = v17;
  }

  v27 = [NSValue valueWithCGSize:v23, v24];
  [v3 addObject:v27];

  v28 = [NSValue valueWithCGSize:v25, v26];
  [v3 addObject:v28];

  return v3;
}

- (CGSize)imageSizeForSpread:(BOOL)a3 landscape:(BOOL)a4
{
  [(BKPictureBookViewGeometry *)self sizeForSpread:a3 landscape:a4];
  v5 = v4;
  v7 = v6;
  v8 = objc_opt_class();

  [v8 imageSizeForSize:{v5, v7}];
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)imageSizeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = width * v7;
  v9 = height * v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)contentSize
{
  objc_copyStruct(v4, &self->_contentSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)containerBounds
{
  x = self->_containerBounds.origin.x;
  y = self->_containerBounds.origin.y;
  width = self->_containerBounds.size.width;
  height = self->_containerBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end