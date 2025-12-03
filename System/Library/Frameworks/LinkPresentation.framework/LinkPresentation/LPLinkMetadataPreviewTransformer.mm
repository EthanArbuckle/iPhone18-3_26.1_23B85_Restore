@interface LPLinkMetadataPreviewTransformer
- (LPImage)previewImage;
- (LPLinkMetadataPreviewTransformer)initWithMetadata:(id)metadata URL:(id)l;
- (NSString)previewSummary;
@end

@implementation LPLinkMetadataPreviewTransformer

- (LPLinkMetadataPreviewTransformer)initWithMetadata:(id)metadata URL:(id)l
{
  metadataCopy = metadata;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = LPLinkMetadataPreviewTransformer;
  v9 = [(LPLinkMetadataPreviewTransformer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, metadata);
    objc_storeStrong(&v10->_URL, l);
    v11 = v10;
  }

  return v10;
}

- (NSString)previewSummary
{
  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  if (specialization)
  {
    v4 = specialization;
    specialization2 = [(LPLinkMetadata *)self->_metadata specialization];
    if ([specialization2 conformsToProtocol:&unk_1F24957B8])
    {
      specialization3 = [(LPLinkMetadata *)self->_metadata specialization];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        specialization4 = [(LPLinkMetadata *)self->_metadata specialization];
        v9 = [specialization4 previewSummaryForTransformer:self];
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  title = [(LPLinkMetadata *)self->_metadata title];
  specialization4 = truncatedStringAtMaximumMetadataLength(title);

  URL = self->_URL;
  originalURL = URL;
  if (!URL)
  {
    originalURL = [(LPLinkMetadata *)self->_metadata originalURL];
  }

  _lp_simplifiedDisplayString = [originalURL _lp_simplifiedDisplayString];
  v14 = truncatedStringAtMaximumMetadataLength(_lp_simplifiedDisplayString);

  if (URL)
  {
    if (!specialization4)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!specialization4)
    {
      goto LABEL_14;
    }
  }

  if (v14)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = LPLocalizedString(@"Website: %@ (%@)");
    v17 = [v15 localizedStringWithFormat:v16, specialization4, v14];
    goto LABEL_16;
  }

LABEL_14:
  if (!v14)
  {
    v9 = 0;
    goto LABEL_17;
  }

  v18 = MEMORY[0x1E696AEC0];
  v16 = LPLocalizedString(@"Website: %@");
  v17 = [v18 localizedStringWithFormat:v16, v14];
LABEL_16:
  v9 = v17;

LABEL_17:
LABEL_18:

  return v9;
}

- (LPImage)previewImage
{
  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  if (!specialization)
  {
    goto LABEL_5;
  }

  specialization4 = specialization;
  specialization2 = [(LPLinkMetadata *)self->_metadata specialization];
  if (([specialization2 conformsToProtocol:&unk_1F24957B8] & 1) == 0)
  {

    v8 = 0;
    goto LABEL_7;
  }

  specialization3 = [(LPLinkMetadata *)self->_metadata specialization];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_8;
  }

  specialization4 = [(LPLinkMetadata *)self->_metadata specialization];
  v8 = [specialization4 previewImageForTransformer:self];
LABEL_7:

LABEL_8:

  return v8;
}

@end