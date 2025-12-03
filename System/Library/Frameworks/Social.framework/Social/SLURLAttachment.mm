@interface SLURLAttachment
- (SLURLAttachment)initWithURL:(id)l ofType:(int64_t)type preview:(id)preview;
- (SLURLAttachment)initWithURL:(id)l previewImage:(id)image;
@end

@implementation SLURLAttachment

- (SLURLAttachment)initWithURL:(id)l previewImage:(id)image
{
  lCopy = l;
  imageCopy = image;
  if ([lCopy isMusicStoreURL])
  {
    v8 = 3;
  }

  else if ([lCopy isAppStoreURL])
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SLURLAttachment *)self initWithURL:lCopy ofType:v8 preview:imageCopy];

  return v9;
}

- (SLURLAttachment)initWithURL:(id)l ofType:(int64_t)type preview:(id)preview
{
  selfCopy = self;
  if (l)
  {
    v11.receiver = self;
    v11.super_class = SLURLAttachment;
    v8 = [SLAttachment initWithPayload:sel_initWithPayload_type_previewImage_ type:? previewImage:?];
    if (v8)
    {
      v8->_urlType = type;
    }

    selfCopy = v8;
    v9 = selfCopy;
  }

  else
  {
    _SLLog(v5, 3, @"SLURLAttachment must be created with a non-nil URL.");
    v9 = 0;
  }

  return v9;
}

@end