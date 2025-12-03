@interface THWPStorageImager
+ (CGSize)sizeForMaxSize:(CGSize)size withStorage:(id)storage;
+ (id)imageForStorage:(id)storage maxSize:(CGSize)size;
+ (id)imageForStorage:(id)storage maxSize:(CGSize)size viewScale:(double)scale;
- (CGSize)sizeForMaxSize:(CGSize)size;
- (THWPStorageImager)initWithStorage:(id)storage;
- (id)imageForMaxSize:(CGSize)size;
- (id)imageWithUnscaledSize:(CGSize)size viewScale:(double)scale;
- (void)dealloc;
@end

@implementation THWPStorageImager

- (THWPStorageImager)initWithStorage:(id)storage
{
  v7.receiver = self;
  v7.super_class = THWPStorageImager;
  v4 = [(THWPStorageImager *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THWPStorageImager *)v4 setWpStorage:storage];
    -[THWPStorageImager setWpTextHelper:](v5, "setWpTextHelper:", [[TSWPText alloc] initWithParagraphStyle:objc_msgSend(objc_msgSend(storage columnStyle:{"stylesheet"), "defaultParagraphStyle"), +[TSWPColumnStyle defaultStyleWithContext:](TSWPColumnStyle, "defaultStyleWithContext:", +[THTemporaryObjectContext temporaryContextForDocumentContext:](THTemporaryObjectContext, "temporaryContextForDocumentContext:", objc_msgSend(storage, "context")))}]);
  }

  return v5;
}

- (void)dealloc
{
  self->mWPStorage = 0;

  self->mWPTextHelper = 0;
  self->mWPColumnHelper = 0;
  v3.receiver = self;
  v3.super_class = THWPStorageImager;
  [(THWPStorageImager *)&v3 dealloc];
}

+ (id)imageForStorage:(id)storage maxSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [[self alloc] initWithStorage:storage];
  v7 = [v6 imageForMaxSize:{width, height}];

  return v7;
}

+ (id)imageForStorage:(id)storage maxSize:(CGSize)size viewScale:(double)scale
{
  height = size.height;
  width = size.width;
  v7 = [[self alloc] initWithStorage:storage];
  [v7 sizeForMaxSize:{width, height}];
  v8 = [v7 imageWithUnscaledSize:? viewScale:?];

  return v8;
}

- (id)imageForMaxSize:(CGSize)size
{
  [(THWPStorageImager *)self sizeForMaxSize:size.width, size.height];

  return [(THWPStorageImager *)self imageWithSize:?];
}

+ (CGSize)sizeForMaxSize:(CGSize)size withStorage:(id)storage
{
  height = size.height;
  width = size.width;
  v6 = [[THWPStorageImager alloc] initWithStorage:storage];
  [(THWPStorageImager *)v6 sizeForMaxSize:width, height];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)sizeForMaxSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (![(THWPStorageImager *)self wpColumnHelper]|| (([(TSWPColumn *)[(THWPStorageImager *)self wpColumnHelper] frameBounds], width == v7) ? (v8 = height == v6) : (v8 = 0), !v8))
  {
    [(THWPStorageImager *)self setWpColumnHelper:[(TSWPText *)[(THWPStorageImager *)self wpTextHelper] layoutTextStorage:[(THWPStorageImager *)self wpStorage] minSize:0 maxSize:0 anchor:4111 pageNumber:CGSizeZero.width pageCount:CGSizeZero.height flags:width, height, CGPointZero.x, CGPointZero.y]];
  }

  [(TSWPColumn *)[(THWPStorageImager *)self wpColumnHelper] frameBounds];
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v13 = CGRectIntegral(v12);
  v9 = v13.size.width;
  v10 = v13.size.height + 1.0;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)imageWithUnscaledSize:(CGSize)size viewScale:(double)scale
{
  width = size.width;
  height = size.height;
  [(TSWPColumn *)[(THWPStorageImager *)self wpColumnHelper] frameBounds];
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v12 = CGRectIntegral(v11);
  if (height != v12.size.height)
  {
    [(THWPStorageImager *)self setWpColumnHelper:[(TSWPText *)[(THWPStorageImager *)self wpTextHelper:height] layoutTextStorage:[(THWPStorageImager *)self wpStorage] minSize:0 maxSize:0 anchor:4111 pageNumber:width pageCount:height flags:width, height, CGPointZero.x, CGPointZero.y]];
  }

  CGAffineTransformMakeScale(&v10, scale, scale);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_737E0;
  v9[3] = &unk_45C248;
  *&v9[5] = scale;
  v9[4] = self;
  return [TSUImage imageWithSize:v9 drawnUsingBlock:vmlaq_n_f64(vmulq_n_f64(*&v10.c, height), *&v10.a, width)];
}

@end