@interface FKOrderMessagesPreviewMetadata
- (FKOrderMessagesPreviewMetadata)initWithOrderData:(id)data workingDirectory:(id)directory error:(id *)error;
- (void)dealloc;
@end

@implementation FKOrderMessagesPreviewMetadata

- (FKOrderMessagesPreviewMetadata)initWithOrderData:(id)data workingDirectory:(id)directory error:(id *)error
{
  dataCopy = data;
  directoryCopy = directory;
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
  if (directoryCopy)
  {
    v12 = [(__FKOrderMessagesPreviewMetadata *)v11 initWithOrderData:dataCopy workingDirectory:directoryCopy error:error];
  }

  else
  {
    v12 = [(__FKOrderMessagesPreviewMetadata *)v11 initWithOrderData:dataCopy error:error];
  }

  v13 = v12;
  if (v12)
  {
    image = [(__FKOrderMessagesPreviewMetadata *)v12 image];

    if (image)
    {
      v15 = [FKOrderMessagesPreviewMetadataImage alloc];
      image2 = [(FKOrderMessagesPreviewMetadata *)v13 image];
      v17 = [(FKOrderMessagesPreviewMetadataImage *)v15 _initWithImage:image2];
      headerImage = v10->_headerImage;
      v10->_headerImage = v17;
    }

    v10->_backgroundColor = CGColorRetain([(FKOrderMessagesPreviewMetadata *)v13 backgroundColor]);
    v19 = [FKOrderMessagesPreviewMetadataText alloc];
    primaryText = [(FKOrderMessagesPreviewMetadata *)v13 primaryText];
    v21 = [(FKOrderMessagesPreviewMetadataText *)v19 _initWithText:primaryText];
    primaryText = v10->_primaryText;
    v10->_primaryText = v21;

    secondaryText = [(FKOrderMessagesPreviewMetadata *)v13 secondaryText];

    if (secondaryText)
    {
      v24 = [FKOrderMessagesPreviewMetadataText alloc];
      secondaryText2 = [(FKOrderMessagesPreviewMetadata *)v13 secondaryText];
      v26 = [(FKOrderMessagesPreviewMetadataText *)v24 _initWithText:secondaryText2];
      secondaryText = v10->_secondaryText;
      v10->_secondaryText = v26;
    }

    tertiaryText = [(FKOrderMessagesPreviewMetadata *)v13 tertiaryText];

    if (tertiaryText)
    {
      v29 = [FKOrderMessagesPreviewMetadataText alloc];
      tertiaryText2 = [(FKOrderMessagesPreviewMetadata *)v13 tertiaryText];
      v31 = [(FKOrderMessagesPreviewMetadataText *)v29 _initWithText:tertiaryText2];
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