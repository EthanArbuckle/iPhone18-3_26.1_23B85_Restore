@interface SLVideoAttachment
- (SLVideoAttachment)initWithAsset:(id)asset preview:(id)preview;
- (SLVideoAttachment)initWithVideoData:(id)data preview:(id)preview;
@end

@implementation SLVideoAttachment

- (SLVideoAttachment)initWithAsset:(id)asset preview:(id)preview
{
  previewCopy = preview;
  v7 = _SLAttachmentURLForAsset(asset);
  if (v7)
  {
    v10.receiver = self;
    v10.super_class = SLVideoAttachment;
    self = [(SLAttachment *)&v10 initWithPayload:v7 type:9 previewImage:previewCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SLVideoAttachment)initWithVideoData:(id)data preview:(id)preview
{
  v5.receiver = self;
  v5.super_class = SLVideoAttachment;
  return [(SLAttachment *)&v5 initWithPayload:data type:8 previewImage:preview];
}

@end