@interface KNGaussianBlurTexture
- (CGRect)bounds;
- (CGRect)frame;
- (KNGaussianBlurTexture)initWithMetalTexture:(id)texture frame:(CGRect)frame blurAmount:(double)amount;
- (KNGaussianBlurTexture)initWithTextureName:(unsigned int)name frame:(CGRect)frame blurAmount:(double)amount;
- (id)description;
- (void)dealloc;
- (void)teardown;
@end

@implementation KNGaussianBlurTexture

- (KNGaussianBlurTexture)initWithTextureName:(unsigned int)name frame:(CGRect)frame blurAmount:(double)amount
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = KNGaussianBlurTexture;
  result = [(KNGaussianBlurTexture *)&v12 init];
  if (result)
  {
    result->_textureName = name;
    result->_frame.origin.y = y;
    result->_frame.size.width = width;
    result->_frame.size.height = height;
    result->_blurAmount = amount;
    result->_frame.origin.x = x;
    result->_isMetalTexture = 0;
  }

  return result;
}

- (KNGaussianBlurTexture)initWithMetalTexture:(id)texture frame:(CGRect)frame blurAmount:(double)amount
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  textureCopy = texture;
  v16.receiver = self;
  v16.super_class = KNGaussianBlurTexture;
  v13 = [(KNGaussianBlurTexture *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_texture, texture);
    v14->_frame.origin.y = y;
    v14->_frame.size.width = width;
    v14->_frame.size.height = height;
    v14->_blurAmount = amount;
    v14->_frame.origin.x = x;
    v14->_isMetalTexture = 1;
  }

  return v14;
}

- (void)teardown
{
  if ([(KNGaussianBlurTexture *)self isMetalTexture])
  {
    texture = self->_texture;
    self->_texture = 0;
  }

  self->_didTeardown = 1;
}

- (void)dealloc
{
  if (!self->_didTeardown)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[KNGaussianBlurTexture dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KNGaussianBlurEffect.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:111 description:@"Didn't call -teardown! Leaking!!"];
  }

  v6.receiver = self;
  v6.super_class = KNGaussianBlurTexture;
  [(KNGaussianBlurTexture *)&v6 dealloc];
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = KNGaussianBlurTexture;
  v3 = [(KNGaussianBlurTexture *)&v11 description];
  textureName = [(KNGaussianBlurTexture *)self textureName];
  [(KNGaussianBlurTexture *)self blurAmount];
  v6 = v5;
  [(KNGaussianBlurTexture *)self frame];
  v7 = NSStringFromCGRect(v13);
  [(KNGaussianBlurTexture *)self bounds];
  v8 = NSStringFromCGRect(v14);
  v9 = [NSString stringWithFormat:@"%@: name:%d, blur:%0.1f, frame:%@, bounds:%@", v3, textureName, v6, v7, v8];

  return v9;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end