@interface FKOrderMessagesPreviewMetadata
- (FKOrderMessagesPreviewMetadata)initWithOrderData:(id)a3 workingDirectory:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation FKOrderMessagesPreviewMetadata

- (FKOrderMessagesPreviewMetadata)initWithOrderData:(id)a3 workingDirectory:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v34.receiver = self;
  v34.super_class = FKOrderMessagesPreviewMetadata;
  v10 = [(FKOrderMessagesPreviewMetadata *)&v34 init];
  if (!v10)
  {
LABEL_13:
    v13 = v10;
    goto LABEL_14;
  }

  v11 = [__FKOrderMessagesPreviewMetadata alloc];
  if (v9)
  {
    v12 = [(__FKOrderMessagesPreviewMetadata *)v11 initWithOrderData:v8 workingDirectory:v9 error:a5];
  }

  else
  {
    v12 = [(__FKOrderMessagesPreviewMetadata *)v11 initWithOrderData:v8 error:a5];
  }

  v13 = v12;
  if (v12)
  {
    v14 = [(__FKOrderMessagesPreviewMetadata *)v12 image];

    if (v14)
    {
      v15 = [FKOrderMessagesPreviewMetadataImage alloc];
      v16 = [(FKOrderMessagesPreviewMetadata *)v13 image];
      v17 = [(FKOrderMessagesPreviewMetadataImage *)v15 _initWithImage:v16];
      headerImage = v10->_headerImage;
      v10->_headerImage = v17;
    }

    v10->_backgroundColor = CGColorRetain([(FKOrderMessagesPreviewMetadata *)v13 backgroundColor]);
    v19 = [FKOrderMessagesPreviewMetadataText alloc];
    v20 = [(FKOrderMessagesPreviewMetadata *)v13 primaryText];
    v21 = [(FKOrderMessagesPreviewMetadataText *)v19 _initWithText:v20];
    primaryText = v10->_primaryText;
    v10->_primaryText = v21;

    v23 = [(FKOrderMessagesPreviewMetadata *)v13 secondaryText];

    if (v23)
    {
      v24 = [FKOrderMessagesPreviewMetadataText alloc];
      v25 = [(FKOrderMessagesPreviewMetadata *)v13 secondaryText];
      v26 = [(FKOrderMessagesPreviewMetadataText *)v24 _initWithText:v25];
      secondaryText = v10->_secondaryText;
      v10->_secondaryText = v26;
    }

    v28 = [(FKOrderMessagesPreviewMetadata *)v13 tertiaryText];

    if (v28)
    {
      v29 = [FKOrderMessagesPreviewMetadataText alloc];
      v30 = [(FKOrderMessagesPreviewMetadata *)v13 tertiaryText];
      v31 = [(FKOrderMessagesPreviewMetadataText *)v29 _initWithText:v30];
      tertiaryText = v10->_tertiaryText;
      v10->_tertiaryText = v31;
    }

    goto LABEL_13;
  }

LABEL_14:

  return v13;
}

- (void)dealloc
{
  CGColorRelease(self->_backgroundColor);
  v3.receiver = self;
  v3.super_class = FKOrderMessagesPreviewMetadata;
  [(FKOrderMessagesPreviewMetadata *)&v3 dealloc];
}

@end