@interface TSDImager
+ (CGImage)CGImageForInfo:(id)info documentRoot:(id)root;
+ (CGImage)CGImageOfSize:(CGSize)size forInfo:(id)info documentRoot:(id)root;
+ (id)imageForInfo:(id)info layoutRect:(CGRect *)rect contentsScale:(double)scale documentRoot:(id)root;
+ (id)imageForShapeInfo:(id)info viewScale:(double)scale screenScale:(double)screenScale lines:(id *)lines layoutRect:(CGRect *)rect useCullingRect:(BOOL)cullingRect documentRoot:(id)root;
+ (id)imageForStorage:(id)storage maxWidth:(double)width lines:(id *)lines layoutRect:(CGRect *)rect useCullingRect:(BOOL)cullingRect maxLines:(unint64_t)maxLines allowsLastLineTruncation:(BOOL)truncation contentsScale:(double)self0 documentRoot:(id)self1;
+ (id)imageSizedForShapeWithSinglePixelStroke:(id)stroke contentsScale:(double)scale documentRoot:(id)root;
- (CGImage)CGImageForInfo:(id)info;
- (CGImage)CGImageOfSize:(CGSize)size forInfo:(id)info;
- (id)imageSizedForShapeWithSinglePixelStroke:(id)stroke contentsScale:(double)scale;
- (id)p_layoutForInfo:(id)info;
- (id)p_repForInfo:(id)info;
@end

@implementation TSDImager

+ (CGImage)CGImageForInfo:(id)info documentRoot:(id)root
{
  v5 = [[TSDImager alloc] initWithDocumentRoot:root];
  v6 = [v5 CGImageForInfo:info];

  return v6;
}

+ (id)imageForInfo:(id)info layoutRect:(CGRect *)rect contentsScale:(double)scale documentRoot:(id)root
{
  v9 = [[TSDImager alloc] initWithDocumentRoot:root];
  [v9 setInfos:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", info)}];
  [v9 setViewScale:scale];
  newImage = [v9 newImage];
  if (newImage)
  {
    v11 = newImage;
    v12 = [v9 p_layoutForInfo:info];
    if (v12)
    {
      if (rect)
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
        rect->origin.x = v25;
        rect->origin.y = v26;
        rect->size.width = v27;
        rect->size.height = v28;
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

+ (CGImage)CGImageOfSize:(CGSize)size forInfo:(id)info documentRoot:(id)root
{
  height = size.height;
  width = size.width;
  v8 = [[TSDImager alloc] initWithDocumentRoot:root];
  v9 = [v8 CGImageOfSize:info forInfo:{width, height}];

  return v9;
}

+ (id)imageSizedForShapeWithSinglePixelStroke:(id)stroke contentsScale:(double)scale documentRoot:(id)root
{
  v7 = [[TSDImager alloc] initWithDocumentRoot:root];
  v8 = [v7 imageSizedForShapeWithSinglePixelStroke:stroke contentsScale:scale];

  return v8;
}

- (CGImage)CGImageForInfo:(id)info
{
  infos = [(TSDImager *)self infos];
  v6 = [[NSArray alloc] initWithObjects:{info, 0}];
  [(TSDImager *)self setInfos:v6];
  newImage = [(TSDImager *)self newImage];
  [(TSDImager *)self setInfos:infos];

  v8 = newImage;
  return newImage;
}

- (CGImage)CGImageOfSize:(CGSize)size forInfo:(id)info
{
  [(TSDImager *)self setScaledImageSize:size.width, size.height];

  return [(TSDImager *)self CGImageForInfo:info];
}

- (id)imageSizedForShapeWithSinglePixelStroke:(id)stroke contentsScale:(double)scale
{
  [objc_msgSend(objc_msgSend(stroke "pathSource")];
  TSDRectWithSize();
  [(TSDImager *)self setUnscaledClipRect:?];
  [(TSDImager *)self setViewScale:scale];
  geometry = [stroke geometry];
  v8 = [geometry mutableCopy];
  [v8 setPosition:{0.5, 0.5}];
  [geometry size];
  v10 = v9 + -1.0;
  [geometry size];
  [v8 setSize:{v10, v11 + -1.0}];
  [stroke setGeometry:v8];

  v12 = [(TSDImager *)self CGImageForInfo:stroke];
  [stroke setGeometry:geometry];

  [(TSDImager *)self viewScale];

  return [TSUImage imageWithCGImage:v12 scale:0 orientation:?];
}

+ (id)imageForStorage:(id)storage maxWidth:(double)width lines:(id *)lines layoutRect:(CGRect *)rect useCullingRect:(BOOL)cullingRect maxLines:(unint64_t)maxLines allowsLastLineTruncation:(BOOL)truncation contentsScale:(double)self0 documentRoot:(id)self1
{
  truncationCopy = truncation;
  cullingRectCopy = cullingRect;
  v19 = [[TSSStylesheet alloc] initWithContext:{objc_msgSend(storage, "context")}];
  v20 = +[TSWPShapeStyle defaultStyleWithContext:](TSWPShapeStyle, "defaultStyleWithContext:", [storage context]);
  [v20 setValue:+[TSDStroke emptyStroke](TSDStroke forProperty:{"emptyStroke"), 517}];
  [v20 setIntValue:maxLines forProperty:155];
  [v19 addStyle:v20];
  v21 = [[TSDInfoGeometry alloc] initWithWidth:width];
  v22 = [objc_alloc(objc_opt_class()) initWithContext:objc_msgSend(storage geometry:"context") style:v21 wpStorage:{v20, storage}];
  [v22 setAllowsLastLineTruncation:truncationCopy];
  v23 = [self imageForShapeInfo:v22 viewScale:lines screenScale:rect lines:cullingRectCopy layoutRect:root useCullingRect:1.0 documentRoot:scale];

  return v23;
}

+ (id)imageForShapeInfo:(id)info viewScale:(double)scale screenScale:(double)screenScale lines:(id *)lines layoutRect:(CGRect *)rect useCullingRect:(BOOL)cullingRect documentRoot:(id)root
{
  cullingRectCopy = cullingRect;
  v15 = [[TSDImager alloc] initWithDocumentRoot:root];
  [v15 setInfos:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", info)}];
  [v15 setViewScale:scale * screenScale];
  newImage = [v15 newImage];
  if (newImage)
  {
    v17 = newImage;
    objc_opt_class();
    [v15 p_repForInfo:info];
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

    if (lines)
    {
      *lines = [v19 allLines];
    }

    if (rect)
    {
      if (cullingRectCopy)
      {
        [objc_msgSend(v18 "layout")];
      }

      [objc_msgSend(v18 "layout")];
      TSDRoundedRect();
      rect->origin.x = v21;
      rect->origin.y = v22;
      rect->size.width = v23;
      rect->size.height = v24;
    }

    v20 = [TSUImage imageWithCGImage:v17 scale:0 orientation:screenScale];
    CGImageRelease(v17);
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v20 = 0;
  }

  return v20;
}

- (id)p_layoutForInfo:(id)info
{
  v4 = [-[TSDImager canvas](self "canvas")];
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return [v4 layoutForInfo:info];
}

- (id)p_repForInfo:(id)info
{
  v4 = [(TSDImager *)self p_layoutForInfo:info];
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  canvas = [(TSDImager *)self canvas];

  return [canvas repForLayout:v4];
}

@end