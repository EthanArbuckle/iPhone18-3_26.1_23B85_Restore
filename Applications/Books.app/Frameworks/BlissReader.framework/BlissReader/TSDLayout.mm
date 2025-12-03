@interface TSDLayout
+ (id)layoutGeometryFittingLayoutGeometry:(id)geometry inFrame:(CGRect)frame;
+ (id)layoutGeometryFittingLayoutGeometry:(id)geometry inFrame:(CGRect)frame scale:(double)scale;
- (THInteractiveCanvasController)interactiveCanvasController;
- (THPageLayout)pageLayout;
- (THSectionLayout)sectionLayout;
- (double)contentsScale;
- (unint64_t)pageIndex;
@end

@implementation TSDLayout

- (unint64_t)pageIndex
{
  parent = [(TSDLayout *)self parent];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  return [parent pageIndex];
}

- (THPageLayout)pageLayout
{
  objc_opt_class();
  [(TSDLayout *)self parent];
  v3 = TSUDynamicCast();

  return [v3 pageLayout];
}

- (THSectionLayout)sectionLayout
{
  objc_opt_class();
  [(TSDLayout *)self parent];
  v3 = TSUDynamicCast();

  return [v3 sectionLayout];
}

- (THInteractiveCanvasController)interactiveCanvasController
{
  v2 = [-[TSDLayout layoutController](self "layoutController")];
  if (![v2 isCanvasInteractive])
  {
    return 0;
  }

  objc_opt_class();
  [v2 canvasController];

  return TSUDynamicCast();
}

+ (id)layoutGeometryFittingLayoutGeometry:(id)geometry inFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  memset(&v25, 0, sizeof(v25));
  if (geometry)
  {
    [geometry transform];
  }

  [geometry frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = THScaleNeededToFitSizeInSize(v12, v14, width, height);
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeTranslation(&t2, -v9 - v13 * 0.5, -v11 - v15 * 0.5);
  t1 = v25;
  CGAffineTransformConcat(&v24, &t1, &t2);
  memset(&t2, 0, sizeof(t2));
  CGAffineTransformMakeScale(&t1, v16, v16);
  v21 = v24;
  CGAffineTransformConcat(&t2, &v21, &t1);
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformMakeTranslation(&v21, x + width * 0.5, y + height * 0.5);
  v20 = t2;
  CGAffineTransformConcat(&t1, &v20, &v21);
  v17 = [TSDLayoutGeometry alloc];
  [geometry size];
  v21 = t1;
  return [v17 initWithSize:&v21 transform:?];
}

+ (id)layoutGeometryFittingLayoutGeometry:(id)geometry inFrame:(CGRect)frame scale:(double)scale
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  memset(&v22, 0, sizeof(v22));
  if (geometry)
  {
    [geometry transform];
  }

  [geometry frame];
  memset(&v21, 0, sizeof(v21));
  CGAffineTransformMakeTranslation(&t2, -v11 - v12 * 0.5, -v13 - v14 * 0.5);
  t1 = v22;
  CGAffineTransformConcat(&v21, &t1, &t2);
  memset(&t2, 0, sizeof(t2));
  CGAffineTransformMakeScale(&t1, scale, scale);
  v18 = v21;
  CGAffineTransformConcat(&t2, &v18, &t1);
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformMakeTranslation(&v18, x + width * 0.5, y + height * 0.5);
  v17 = t2;
  CGAffineTransformConcat(&t1, &v17, &v18);
  v15 = [TSDLayoutGeometry alloc];
  [geometry size];
  v18 = t1;
  return [v15 initWithSize:&v18 transform:?];
}

- (double)contentsScale
{
  v2 = [-[TSDLayout layoutController](self "layoutController")];

  [v2 contentsScale];
  return result;
}

@end