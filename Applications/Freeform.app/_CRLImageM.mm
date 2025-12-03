@interface _CRLImageM
+ (id)initWithCGImage:(CGImage *)image;
+ (id)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation;
+ (id)initWithContentsOfFile:(id)file;
+ (id)initWithData:(id)data;
+ (id)initWithImageSourceRef:(CGImageSource *)ref;
+ (id)initWithSystemImageNamed:(id)named pointSize:(double)size;
+ (id)initWithUIImage:(id)image;
@end

@implementation _CRLImageM

+ (id)initWithCGImage:(CGImage *)image
{
  v4 = [CRLCGImage alloc];

  return [(CRLCGImage *)v4 initWithCGImage:image scale:0 orientation:0.0];
}

+ (id)initWithData:(id)data
{
  v4 = CGImageSourceCreateWithData(data, &__NSDictionary0__struct);
  v5 = [self initWithImageSourceRef:v4];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

+ (id)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation
{
  v8 = [CRLCGImage alloc];

  return [(CRLCGImage *)v8 initWithCGImage:image scale:orientation orientation:scale];
}

+ (id)initWithContentsOfFile:(id)file
{
  fileCopy = file;
  v4 = [[CRLUIImage alloc] initWithContentsOfFile:fileCopy];

  return v4;
}

+ (id)initWithImageSourceRef:(CGImageSource *)ref
{
  refCopy = ref;
  if (ref)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(ref, 0, 0);
    refCopy = sub_1004F3CE4(refCopy);
  }

  else
  {
    ImageAtIndex = 0;
  }

  v5 = [[CRLCGImage alloc] initWithCGImage:ImageAtIndex scale:refCopy orientation:0.0];
  CGImageRelease(ImageAtIndex);
  return v5;
}

+ (id)initWithSystemImageNamed:(id)named pointSize:(double)size
{
  namedCopy = named;
  v6 = [[CRLUIImage alloc] initWithSystemImageNamed:namedCopy pointSize:size];

  return v6;
}

+ (id)initWithUIImage:(id)image
{
  imageCopy = image;
  v4 = [[CRLUIImage alloc] initWithUIImage:imageCopy];

  return v4;
}

@end