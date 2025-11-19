@interface NTKParameciumSprite
+ (id)spriteWithBlitBlock:(id)a3;
+ (id)spriteWithImage:(id)a3;
+ (id)spriteWithImage:(id)a3 format:(unint64_t)a4;
- (NTKParameciumSprite)initWithBlitBlock:(id)a3;
- (NTKParameciumSprite)initWithImage:(id)a3 format:(unint64_t)a4;
- (void)blitIfNecessaryWithCommandBuffer:(id)a3;
@end

@implementation NTKParameciumSprite

+ (id)spriteWithImage:(id)a3
{
  v3 = a3;
  v4 = [[NTKParameciumSprite alloc] initWithImage:v3];

  return v4;
}

+ (id)spriteWithImage:(id)a3 format:(unint64_t)a4
{
  v5 = a3;
  v6 = [[NTKParameciumSprite alloc] initWithImage:v5 format:a4];

  return v6;
}

+ (id)spriteWithBlitBlock:(id)a3
{
  v3 = a3;
  v4 = [[NTKParameciumSprite alloc] initWithBlitBlock:v3];

  return v4;
}

- (NTKParameciumSprite)initWithImage:(id)a3 format:(unint64_t)a4
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NTKParameciumSprite;
  v6 = [(NTKParameciumSprite *)&v11 init];
  if (v6)
  {
    v7 = CLKUIConvertUIImageToMTLTexture();
    blitTexture = v6->_blitTexture;
    v6->_blitTexture = v7;

    texture = v6->_texture;
    v6->_texture = 0;
  }

  return v6;
}

- (NTKParameciumSprite)initWithBlitBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKParameciumSprite;
  v5 = [(NTKParameciumSprite *)&v10 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    blitTexture = v5->_blitTexture;
    v5->_blitTexture = v6;

    texture = v5->_texture;
    v5->_texture = 0;
  }

  return v5;
}

- (void)blitIfNecessaryWithCommandBuffer:(id)a3
{
  blitTexture = a3;
  v5 = blitTexture;
  if (!self->_texture)
  {
    blitTexture = self->_blitTexture;
    if (blitTexture)
    {
      v9 = v5;
      v6 = blitTexture[2]();
      texture = self->_texture;
      self->_texture = v6;

      v8 = self->_blitTexture;
      self->_blitTexture = 0;

      v5 = v9;
    }
  }

  _objc_release_x1(blitTexture, v5);
}

@end