@interface SLImageAttachment
- (SLImageAttachment)initWithAsset:(id)a3 preview:(id)a4;
- (SLImageAttachment)initWithImage:(id)a3 preview:(id)a4;
- (SLImageAttachment)initWithJPEGData:(id)a3 preview:(id)a4;
@end

@implementation SLImageAttachment

- (SLImageAttachment)initWithJPEGData:(id)a3 preview:(id)a4
{
  v5.receiver = self;
  v5.super_class = SLImageAttachment;
  return [(SLAttachment *)&v5 initWithPayload:a3 type:0 previewImage:a4];
}

- (SLImageAttachment)initWithImage:(id)a3 preview:(id)a4
{
  v6 = a4;
  v7 = UIImageJPEGRepresentation(a3, 0.8);
  v10.receiver = self;
  v10.super_class = SLImageAttachment;
  v8 = [(SLAttachment *)&v10 initWithPayload:v7 type:0 previewImage:v6];

  return v8;
}

- (SLImageAttachment)initWithAsset:(id)a3 preview:(id)a4
{
  v6 = a4;
  v7 = _SLAttachmentURLForAsset(a3);
  if (v7)
  {
    v10.receiver = self;
    v10.super_class = SLImageAttachment;
    self = [(SLAttachment *)&v10 initWithPayload:v7 type:2 previewImage:v6];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end