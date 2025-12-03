@interface SLImageAttachment
- (SLImageAttachment)initWithAsset:(id)asset preview:(id)preview;
- (SLImageAttachment)initWithImage:(id)image preview:(id)preview;
- (SLImageAttachment)initWithJPEGData:(id)data preview:(id)preview;
@end

@implementation SLImageAttachment

- (SLImageAttachment)initWithJPEGData:(id)data preview:(id)preview
{
  v5.receiver = self;
  v5.super_class = SLImageAttachment;
  return [(SLAttachment *)&v5 initWithPayload:data type:0 previewImage:preview];
}

- (SLImageAttachment)initWithImage:(id)image preview:(id)preview
{
  previewCopy = preview;
  v7 = UIImageJPEGRepresentation(image, 0.8);
  v10.receiver = self;
  v10.super_class = SLImageAttachment;
  v8 = [(SLAttachment *)&v10 initWithPayload:v7 type:0 previewImage:previewCopy];

  return v8;
}

- (SLImageAttachment)initWithAsset:(id)asset preview:(id)preview
{
  previewCopy = preview;
  v7 = _SLAttachmentURLForAsset(asset);
  if (v7)
  {
    v10.receiver = self;
    v10.super_class = SLImageAttachment;
    self = [(SLAttachment *)&v10 initWithPayload:v7 type:2 previewImage:previewCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end