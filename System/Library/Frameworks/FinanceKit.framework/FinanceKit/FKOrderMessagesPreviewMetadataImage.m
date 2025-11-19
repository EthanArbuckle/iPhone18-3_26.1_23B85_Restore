@interface FKOrderMessagesPreviewMetadataImage
- (id)_initWithImage:(id)a3;
@end

@implementation FKOrderMessagesPreviewMetadataImage

- (id)_initWithImage:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FKOrderMessagesPreviewMetadataImage;
  v5 = [(FKOrderMessagesPreviewMetadataImage *)&v9 init];
  if (v5)
  {
    v6 = [v4 data];
    data = v5->_data;
    v5->_data = v6;

    v5->_kind = [v4 kind];
  }

  return v5;
}

@end