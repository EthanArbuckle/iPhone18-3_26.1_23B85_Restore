@interface MTLTextureDescriptor
+ (MTLTextureDescriptor)allocWithZone:(_NSZone *)a3;
+ (MTLTextureDescriptor)texture2DDescriptorWithPixelFormat:(MTLPixelFormat)pixelFormat width:(NSUInteger)width height:(NSUInteger)height mipmapped:(BOOL)mipmapped;
+ (MTLTextureDescriptor)textureBufferDescriptorWithPixelFormat:(MTLPixelFormat)pixelFormat width:(NSUInteger)width resourceOptions:(MTLResourceOptions)resourceOptions usage:(MTLTextureUsage)usage;
+ (MTLTextureDescriptor)textureCubeDescriptorWithPixelFormat:(MTLPixelFormat)pixelFormat size:(NSUInteger)size mipmapped:(BOOL)mipmapped;
@end

@implementation MTLTextureDescriptor

+ (MTLTextureDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLTextureDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLTextureDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

+ (MTLTextureDescriptor)texture2DDescriptorWithPixelFormat:(MTLPixelFormat)pixelFormat width:(NSUInteger)width height:(NSUInteger)height mipmapped:(BOOL)mipmapped
{
  v6 = mipmapped;
  v10 = objc_alloc_init(MTLTextureDescriptorInternal);
  p_super = &v10->super;
  if (v10)
  {
    [(MTLTextureDescriptorInternal *)v10 setTextureType:2];
    [(MTLTextureDescriptor *)p_super setPixelFormat:pixelFormat];
    [(MTLTextureDescriptor *)p_super setWidth:width];
    [(MTLTextureDescriptor *)p_super setHeight:height];
    if (width <= height)
    {
      v12 = height;
    }

    else
    {
      v12 = width;
    }

    v13 = 64 - __clz(v12);
    if (v6)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    [(MTLTextureDescriptor *)p_super setMipmapLevelCount:v14];
  }

  return p_super;
}

+ (MTLTextureDescriptor)textureCubeDescriptorWithPixelFormat:(MTLPixelFormat)pixelFormat size:(NSUInteger)size mipmapped:(BOOL)mipmapped
{
  v5 = mipmapped;
  v8 = objc_alloc_init(MTLTextureDescriptorInternal);
  p_super = &v8->super;
  if (v8)
  {
    [(MTLTextureDescriptorInternal *)v8 setTextureType:5];
    [(MTLTextureDescriptor *)p_super setPixelFormat:pixelFormat];
    [(MTLTextureDescriptor *)p_super setWidth:size];
    [(MTLTextureDescriptor *)p_super setHeight:size];
    v10 = 64 - __clz(size);
    if (v5)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    [(MTLTextureDescriptor *)p_super setMipmapLevelCount:v11];
  }

  return p_super;
}

+ (MTLTextureDescriptor)textureBufferDescriptorWithPixelFormat:(MTLPixelFormat)pixelFormat width:(NSUInteger)width resourceOptions:(MTLResourceOptions)resourceOptions usage:(MTLTextureUsage)usage
{
  v10 = objc_alloc_init(MTLTextureDescriptorInternal);
  p_super = &v10->super;
  if (v10)
  {
    [(MTLTextureDescriptorInternal *)v10 setTextureType:9];
    [(MTLTextureDescriptor *)p_super setPixelFormat:pixelFormat];
    [(MTLTextureDescriptor *)p_super setWidth:width];
    [(MTLTextureDescriptor *)p_super setResourceOptions:resourceOptions];
    [(MTLTextureDescriptor *)p_super setUsage:usage];
  }

  return p_super;
}

@end