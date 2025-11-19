@interface FKOrderMessagesPreviewMetadataText
- (id)_initWithText:(id)a3;
- (void)dealloc;
@end

@implementation FKOrderMessagesPreviewMetadataText

- (id)_initWithText:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FKOrderMessagesPreviewMetadataText;
  v5 = [(FKOrderMessagesPreviewMetadataText *)&v9 init];
  if (v5)
  {
    v6 = [v4 text];
    text = v5->_text;
    v5->_text = v6;

    v5->_overrideColor = CGColorRetain([v4 overrideColor]);
  }

  return v5;
}

- (void)dealloc
{
  CGColorRelease(self->_overrideColor);
  v3.receiver = self;
  v3.super_class = FKOrderMessagesPreviewMetadataText;
  [(FKOrderMessagesPreviewMetadataText *)&v3 dealloc];
}

@end