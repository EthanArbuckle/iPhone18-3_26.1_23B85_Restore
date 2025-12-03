@interface SCNMaterialAttachment
+ (id)materialAttachmentWithGLKTextureInfo:(id)info;
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

+ (id)materialAttachmentWithGLKTextureInfo:(id)info
{
  width = [info width];
  height = [info height];
  name = [info name];
  target = [info target];

  return SCNTextureContentWithGLInfo(0, name, target, 0, width, height);
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