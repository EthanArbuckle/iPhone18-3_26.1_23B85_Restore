@interface CRLUIImage
+ (id)imageNamed:(id)named;
- (CGSize)size;
- (CRLUIImage)initWithContentsOfFile:(id)file;
- (CRLUIImage)initWithPrivateSystemImageNamed:(id)named;
- (CRLUIImage)initWithPrivateSystemImageNamed:(id)named pointSize:(double)size;
- (CRLUIImage)initWithSystemImageNamed:(id)named;
- (CRLUIImage)initWithSystemImageNamed:(id)named pointSize:(double)size;
- (CRLUIImage)initWithUIImage:(id)image;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation CRLUIImage

+ (id)imageNamed:(id)named
{
  namedCopy = named;
  v5 = [self alloc];
  v6 = [UIImage imageNamed:namedCopy];

  v7 = [v5 initWithUIImage:v6];

  return v7;
}

- (CRLUIImage)initWithUIImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = CRLUIImage;
  v6 = [(CRLImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (imageCopy)
    {
      objc_storeStrong(&v6->mUIImage, image);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (CRLUIImage)initWithContentsOfFile:(id)file
{
  fileCopy = file;
  v5 = [[UIImage alloc] initWithContentsOfFile:fileCopy];

  v6 = [(CRLUIImage *)self initWithUIImage:v5];
  return v6;
}

- (CRLUIImage)initWithSystemImageNamed:(id)named pointSize:(double)size
{
  namedCopy = named;
  v7 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:size];
  v8 = [UIImage systemImageNamed:namedCopy withConfiguration:v7];

  v9 = [(CRLUIImage *)self initWithUIImage:v8];
  return v9;
}

- (CRLUIImage)initWithSystemImageNamed:(id)named
{
  v4 = [UIImage systemImageNamed:named];
  v5 = [(CRLUIImage *)self initWithUIImage:v4];

  return v5;
}

- (CRLUIImage)initWithPrivateSystemImageNamed:(id)named pointSize:(double)size
{
  v5 = [UIImage crl_internalSystemImageNamed:named pointSize:size];
  v6 = [(CRLUIImage *)self initWithUIImage:v5];

  return v6;
}

- (CRLUIImage)initWithPrivateSystemImageNamed:(id)named
{
  v4 = [UIImage crl_internalSystemImageNamed:named];
  v5 = [(CRLUIImage *)self initWithUIImage:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  mUIImage = self->mUIImage;

  return [v4 initWithUIImage:mUIImage];
}

- (void)dealloc
{
  mUIImage = self->mUIImage;
  self->mUIImage = 0;

  v4.receiver = self;
  v4.super_class = CRLUIImage;
  [(CRLImage *)&v4 dealloc];
}

- (CGSize)size
{
  [self->mUIImage size];
  result.height = v3;
  result.width = v2;
  return result;
}

@end