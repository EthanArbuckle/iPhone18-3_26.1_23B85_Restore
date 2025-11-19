@interface TSDImager
+ (CGImage)CGImageForInfo:(id)a3 documentRoot:(id)a4;
+ (CGImage)CGImageOfSize:(CGSize)a3 forInfo:(id)a4 documentRoot:(id)a5;
+ (id)imageForInfo:(id)a3 layoutRect:(CGRect *)a4 contentsScale:(double)a5 documentRoot:(id)a6;
+ (id)imageForShapeInfo:(id)a3 viewScale:(double)a4 screenScale:(double)a5 lines:(id *)a6 layoutRect:(CGRect *)a7 useCullingRect:(BOOL)a8 documentRoot:(id)a9;
+ (id)imageForStorage:(id)a3 maxWidth:(double)a4 lines:(id *)a5 layoutRect:(CGRect *)a6 useCullingRect:(BOOL)a7 maxLines:(unint64_t)a8 allowsLastLineTruncation:(BOOL)a9 contentsScale:(double)a10 documentRoot:(id)a11;
+ (id)imageSizedForShapeWithSinglePixelStroke:(id)a3 contentsScale:(double)a4 documentRoot:(id)a5;
- (CGImage)CGImageForInfo:(id)a3;
- (CGImage)CGImageOfSize:(CGSize)a3 forInfo:(id)a4;
- (id)imageSizedForShapeWithSinglePixelStroke:(id)a3 contentsScale:(double)a4;
- (id)p_layoutForInfo:(id)a3;
- (id)p_repForInfo:(id)a3;
@end

@implementation TSDImager

+ (CGImage)CGImageForInfo:(id)a3 documentRoot:(id)a4
{
  v5 = [[TSDImager alloc] initWithDocumentRoot:a4];
  v6 = [v5 CGImageForInfo:a3];

  return v6;
}

+ (id)imageForInfo:(id)a3 layoutRect:(CGRect *)a4 contentsScale:(double)a5 documentRoot:(id)a6
{
  v9 = [[TSDImager alloc] initWithDocumentRoot:a6];
  [v9 setInfos:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", a3)}];
  [v9 setViewScale:a5];
  v10 = [v9 newImage];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 p_layoutForInfo:a3];
    if (v12)
    {
      if (a4)
      {
        v13 = v12;
        [v12 frameForCulling];
        v15 = v14;
        rect = v14;
        rect_8 = v16;
        v18 = v17;
        v20 = v19;
        [v13 frame];
        x = v33.origin.x;
        y = v33.origin.y;
        width = v33.size.width;
        height = v33.size.height;
        CGRectGetMinX(v33);
        v34.origin.x = v15;
        v34.origin.y = v18;
        v34.size.width = v20;
        v34.size.height = rect_8;
        CGRectGetMinX(v34);
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = height;
        CGRectGetMinY(v35);
        v36.origin.x = rect;
        v36.origin.y = v18;
        v36.size.width = v20;
        v36.size.height = rect_8;
        CGRectGetMinY(v36);
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        CGRectGetWidth(v37);
        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = width;
        v38.size.height = height;
        CGRectGetHeight(v38);
        TSDRoundedRect();
        a4->origin.x = v25;
        a4->origin.y = v26;
        a4->size.width = v27;
        a4->size.height = v28;
      }
    }

    else
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [v9 viewScale];
    v29 = [TSUImage imageWithCGImage:v11 scale:0 orientation:?];
    CGImageRelease(v11);
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v29 = 0;
  }

  return v29;
}

+ (CGImage)CGImageOfSize:(CGSize)a3 forInfo:(id)a4 documentRoot:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = [[TSDImager alloc] initWithDocumentRoot:a5];
  v9 = [v8 CGImageOfSize:a4 forInfo:{width, height}];

  return v9;
}

+ (id)imageSizedForShapeWithSinglePixelStroke:(id)a3 contentsScale:(double)a4 documentRoot:(id)a5
{
  v7 = [[TSDImager alloc] initWithDocumentRoot:a5];
  v8 = [v7 imageSizedForShapeWithSinglePixelStroke:a3 contentsScale:a4];

  return v8;
}

- (CGImage)CGImageForInfo:(id)a3
{
  v5 = [(TSDImager *)self infos];
  v6 = [[NSArray alloc] initWithObjects:{a3, 0}];
  [(TSDImager *)self setInfos:v6];
  v7 = [(TSDImager *)self newImage];
  [(TSDImager *)self setInfos:v5];

  v8 = v7;
  return v7;
}

- (CGImage)CGImageOfSize:(CGSize)a3 forInfo:(id)a4
{
  [(TSDImager *)self setScaledImageSize:a3.width, a3.height];

  return [(TSDImager *)self CGImageForInfo:a4];
}

- (id)imageSizedForShapeWithSinglePixelStroke:(id)a3 contentsScale:(double)a4
{
  [objc_msgSend(objc_msgSend(a3 "pathSource")];
  TSDRectWithSize();
  [(TSDImager *)self setUnscaledClipRect:?];
  [(TSDImager *)self setViewScale:a4];
  v7 = [a3 geometry];
  v8 = [v7 mutableCopy];
  [v8 setPosition:{0.5, 0.5}];
  [v7 size];
  v10 = v9 + -1.0;
  [v7 size];
  [v8 setSize:{v10, v11 + -1.0}];
  [a3 setGeometry:v8];

  v12 = [(TSDImager *)self CGImageForInfo:a3];
  [a3 setGeometry:v7];

  [(TSDImager *)self viewScale];

  return [TSUImage imageWithCGImage:v12 scale:0 orientation:?];
}

+ (id)imageForStorage:(id)a3 maxWidth:(double)a4 lines:(id *)a5 layoutRect:(CGRect *)a6 useCullingRect:(BOOL)a7 maxLines:(unint64_t)a8 allowsLastLineTruncation:(BOOL)a9 contentsScale:(double)a10 documentRoot:(id)a11
{
  v12 = a9;
  v14 = a7;
  v19 = [[TSSStylesheet alloc] initWithContext:{objc_msgSend(a3, "context")}];
  v20 = +[TSWPShapeStyle defaultStyleWithContext:](TSWPShapeStyle, "defaultStyleWithContext:", [a3 context]);
  [v20 setValue:+[TSDStroke emptyStroke](TSDStroke forProperty:{"emptyStroke"), 517}];
  [v20 setIntValue:a8 forProperty:155];
  [v19 addStyle:v20];
  v21 = [[TSDInfoGeometry alloc] initWithWidth:a4];
  v22 = [objc_alloc(objc_opt_class()) initWithContext:objc_msgSend(a3 geometry:"context") style:v21 wpStorage:{v20, a3}];
  [v22 setAllowsLastLineTruncation:v12];
  v23 = [a1 imageForShapeInfo:v22 viewScale:a5 screenScale:a6 lines:v14 layoutRect:a11 useCullingRect:1.0 documentRoot:a10];

  return v23;
}

+ (id)imageForShapeInfo:(id)a3 viewScale:(double)a4 screenScale:(double)a5 lines:(id *)a6 layoutRect:(CGRect *)a7 useCullingRect:(BOOL)a8 documentRoot:(id)a9
{
  v9 = a8;
  v15 = [[TSDImager alloc] initWithDocumentRoot:a9];
  [v15 setInfos:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", a3)}];
  [v15 setViewScale:a4 * a5];
  v16 = [v15 newImage];
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    [v15 p_repForInfo:a3];
    v18 = TSUDynamicCast();
    if (!v18)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    objc_opt_class();
    [v18 containedRep];
    v19 = TSUDynamicCast();
    if (!v19)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if (a6)
    {
      *a6 = [v19 allLines];
    }

    if (a7)
    {
      if (v9)
      {
        [objc_msgSend(v18 "layout")];
      }

      [objc_msgSend(v18 "layout")];
      TSDRoundedRect();
      a7->origin.x = v21;
      a7->origin.y = v22;
      a7->size.width = v23;
      a7->size.height = v24;
    }

    v20 = [TSUImage imageWithCGImage:v17 scale:0 orientation:a5];
    CGImageRelease(v17);
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v20 = 0;
  }

  return v20;
}

- (id)p_layoutForInfo:(id)a3
{
  v4 = [-[TSDImager canvas](self "canvas")];
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return [v4 layoutForInfo:a3];
}

- (id)p_repForInfo:(id)a3
{
  v4 = [(TSDImager *)self p_layoutForInfo:a3];
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(TSDImager *)self canvas];

  return [v5 repForLayout:v4];
}

@end