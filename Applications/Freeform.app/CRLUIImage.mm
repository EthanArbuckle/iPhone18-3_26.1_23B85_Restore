@interface CRLUIImage
+ (id)imageNamed:(id)a3;
- (CGSize)size;
- (CRLUIImage)initWithContentsOfFile:(id)a3;
- (CRLUIImage)initWithPrivateSystemImageNamed:(id)a3;
- (CRLUIImage)initWithPrivateSystemImageNamed:(id)a3 pointSize:(double)a4;
- (CRLUIImage)initWithSystemImageNamed:(id)a3;
- (CRLUIImage)initWithSystemImageNamed:(id)a3 pointSize:(double)a4;
- (CRLUIImage)initWithUIImage:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation CRLUIImage

- (void)dealloc
{
  mUIImage = self->mUIImage;
  self->mUIImage = 0;

  v4.receiver = self;
  v4.super_class = CRLUIImage;
  [(CRLImage *)&v4 dealloc];
}

+ (id)imageNamed:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [UIImage imageNamed:v4];

  v7 = [v5 initWithUIImage:v6];

  return v7;
}

- (CRLUIImage)initWithUIImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRLUIImage;
  v6 = [(CRLImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->mUIImage, a3);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (CRLUIImage)initWithContentsOfFile:(id)a3
{
  v4 = a3;
  v5 = [[UIImage alloc] initWithContentsOfFile:v4];

  v6 = [(CRLUIImage *)self initWithUIImage:v5];
  return v6;
}

- (CRLUIImage)initWithSystemImageNamed:(id)a3 pointSize:(double)a4
{
  v6 = a3;
  v7 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:a4];
  v8 = [UIImage systemImageNamed:v6 withConfiguration:v7];

  v9 = [(CRLUIImage *)self initWithUIImage:v8];
  return v9;
}

- (CRLUIImage)initWithSystemImageNamed:(id)a3
{
  v4 = [UIImage systemImageNamed:a3];
  v5 = [(CRLUIImage *)self initWithUIImage:v4];

  return v5;
}

- (CRLUIImage)initWithPrivateSystemImageNamed:(id)a3 pointSize:(double)a4
{
  v5 = [UIImage crl_internalSystemImageNamed:a3 pointSize:a4];
  v6 = [(CRLUIImage *)self initWithUIImage:v5];

  return v6;
}

- (CRLUIImage)initWithPrivateSystemImageNamed:(id)a3
{
  v4 = [UIImage crl_internalSystemImageNamed:a3];
  v5 = [(CRLUIImage *)self initWithUIImage:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  mUIImage = self->mUIImage;

  return [v4 initWithUIImage:mUIImage];
}

- (CGSize)size
{
  [self->mUIImage size];
  result.height = v3;
  result.width = v2;
  return result;
}

@end