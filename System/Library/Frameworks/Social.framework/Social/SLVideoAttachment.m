@interface SLVideoAttachment
- (SLVideoAttachment)initWithAsset:(id)a3 preview:(id)a4;
- (SLVideoAttachment)initWithVideoData:(id)a3 preview:(id)a4;
@end

@implementation SLVideoAttachment

- (SLVideoAttachment)initWithAsset:(id)a3 preview:(id)a4
{
  v6 = a4;
  v7 = _SLAttachmentURLForAsset(a3);
  if (v7)
  {
    v10.receiver = self;
    v10.super_class = SLVideoAttachment;
    self = [(SLAttachment *)&v10 initWithPayload:v7 type:9 previewImage:v6];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SLVideoAttachment)initWithVideoData:(id)a3 preview:(id)a4
{
  v5.receiver = self;
  v5.super_class = SLVideoAttachment;
  return [(SLAttachment *)&v5 initWithPayload:a3 type:8 previewImage:a4];
}

@end