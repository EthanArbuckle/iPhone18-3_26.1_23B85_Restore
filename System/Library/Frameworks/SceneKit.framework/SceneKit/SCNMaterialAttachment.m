@interface SCNMaterialAttachment
+ (id)materialAttachmentWithGLKTextureInfo:(id)a3;
- (CGSize)size;
- (void)dealloc;
@end

@implementation SCNMaterialAttachment

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMaterialAttachment;
  [(SCNMaterialAttachment *)&v3 dealloc];
}

+ (id)materialAttachmentWithGLKTextureInfo:(id)a3
{
  v4 = [a3 width];
  v5 = [a3 height];
  v6 = [a3 name];
  v7 = [a3 target];

  return SCNTextureContentWithGLInfo(0, v6, v7, 0, v4, v5);
}

- (CGSize)size
{
  width = self->size.width;
  height = self->size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end