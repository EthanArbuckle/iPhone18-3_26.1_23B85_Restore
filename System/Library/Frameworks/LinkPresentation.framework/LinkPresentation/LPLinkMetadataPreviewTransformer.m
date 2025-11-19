@interface LPLinkMetadataPreviewTransformer
- (LPImage)previewImage;
- (LPLinkMetadataPreviewTransformer)initWithMetadata:(id)a3 URL:(id)a4;
- (NSString)previewSummary;
@end

@implementation LPLinkMetadataPreviewTransformer

- (LPLinkMetadataPreviewTransformer)initWithMetadata:(id)a3 URL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LPLinkMetadataPreviewTransformer;
  v9 = [(LPLinkMetadataPreviewTransformer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, a3);
    objc_storeStrong(&v10->_URL, a4);
    v11 = v10;
  }

  return v10;
}

- (NSString)previewSummary
{
  v3 = [(LPLinkMetadata *)self->_metadata specialization];
  if (v3)
  {
    v4 = v3;
    v5 = [(LPLinkMetadata *)self->_metadata specialization];
    if ([v5 conformsToProtocol:&unk_1F24957B8])
    {
      v6 = [(LPLinkMetadata *)self->_metadata specialization];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [(LPLinkMetadata *)self->_metadata specialization];
        v9 = [v8 previewSummaryForTransformer:self];
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v10 = [(LPLinkMetadata *)self->_metadata title];
  v8 = truncatedStringAtMaximumMetadataLength(v10);

  URL = self->_URL;
  v12 = URL;
  if (!URL)
  {
    v12 = [(LPLinkMetadata *)self->_metadata originalURL];
  }

  v13 = [v12 _lp_simplifiedDisplayString];
  v14 = truncatedStringAtMaximumMetadataLength(v13);

  if (URL)
  {
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!v8)
    {
      goto LABEL_14;
    }
  }

  if (v14)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = LPLocalizedString(@"Website: %@ (%@)");
    v17 = [v15 localizedStringWithFormat:v16, v8, v14];
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
  v3 = [(LPLinkMetadata *)self->_metadata specialization];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(LPLinkMetadata *)self->_metadata specialization];
  if (([v5 conformsToProtocol:&unk_1F24957B8] & 1) == 0)
  {

    v8 = 0;
    goto LABEL_7;
  }

  v6 = [(LPLinkMetadata *)self->_metadata specialization];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = [(LPLinkMetadata *)self->_metadata specialization];
  v8 = [v4 previewImageForTransformer:self];
LABEL_7:

LABEL_8:

  return v8;
}

@end