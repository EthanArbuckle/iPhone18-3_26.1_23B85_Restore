@interface LPLinkMetadataStatusTransformer
- (LPLinkMetadataStatusTransformer)initWithMetadata:(id)metadata URL:(id)l;
- (LPLinkMetadataStatusTransformerDelegate)delegate;
- (NSAttributedString)statusText;
- (NSURL)actionURL;
- (NSURL)canonicalURL;
- (id)originalURL;
- (void)dealloc;
- (void)setMetadata:(id)metadata;
@end

@implementation LPLinkMetadataStatusTransformer

- (LPLinkMetadataStatusTransformer)initWithMetadata:(id)metadata URL:(id)l
{
  metadataCopy = metadata;
  lCopy = l;
  v17.receiver = self;
  v17.super_class = LPLinkMetadataStatusTransformer;
  v9 = [(LPLinkMetadataStatusTransformer *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, metadata);
    objc_storeStrong(&v10->_URL, l);
    specialization = [(LPLinkMetadata *)v10->_metadata specialization];
    if (specialization)
    {
      specialization2 = [(LPLinkMetadata *)v10->_metadata specialization];
      if (([specialization2 conformsToProtocol:&unk_1F24959C8] & 1) == 0)
      {

        goto LABEL_7;
      }

      specialization3 = [(LPLinkMetadata *)v10->_metadata specialization];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        specialization = [(LPLinkMetadata *)v10->_metadata specialization];
        [specialization initializeForTransformer:v10];
LABEL_7:
      }
    }

    v15 = v10;
  }

  return v10;
}

- (void)dealloc
{
  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  if (specialization)
  {
    specialization2 = [(LPLinkMetadata *)self->_metadata specialization];
    if (([specialization2 conformsToProtocol:&unk_1F24959C8] & 1) == 0)
    {

      goto LABEL_6;
    }

    specialization3 = [(LPLinkMetadata *)self->_metadata specialization];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      specialization = [(LPLinkMetadata *)self->_metadata specialization];
      [specialization destroyForTransformer:self];
LABEL_6:
    }
  }

  v7.receiver = self;
  v7.super_class = LPLinkMetadataStatusTransformer;
  [(LPLinkMetadataStatusTransformer *)&v7 dealloc];
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  p_metadata = &self->_metadata;
  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  if (specialization)
  {
    specialization2 = [(LPLinkMetadata *)*p_metadata specialization];
    if ([specialization2 conformsToProtocol:&unk_1F24959C8])
    {
      specialization3 = [(LPLinkMetadata *)*p_metadata specialization];
      v9 = objc_opt_respondsToSelector();

      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }

      specialization = [(LPLinkMetadata *)*p_metadata specialization];
      [specialization destroyForTransformer:self];
    }

    else
    {
    }
  }

LABEL_7:
  objc_storeStrong(&self->_metadata, metadata);
  specialization4 = [(LPLinkMetadata *)*p_metadata specialization];
  if (!specialization4)
  {
    goto LABEL_13;
  }

  specialization5 = [(LPLinkMetadata *)*p_metadata specialization];
  if ([specialization5 conformsToProtocol:&unk_1F24959C8])
  {
    specialization6 = [(LPLinkMetadata *)*p_metadata specialization];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

    specialization4 = [(LPLinkMetadata *)*p_metadata specialization];
    [specialization4 initializeForTransformer:self];
  }

  else
  {
  }

LABEL_13:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 statusTransformerDidUpdate:self];
  }
}

- (NSAttributedString)statusText
{
  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  if (!specialization)
  {
    goto LABEL_5;
  }

  specialization4 = specialization;
  specialization2 = [(LPLinkMetadata *)self->_metadata specialization];
  if (([specialization2 conformsToProtocol:&unk_1F24959C8] & 1) == 0)
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
  v8 = [specialization4 statusForTransformer:self];
LABEL_7:

LABEL_8:

  return v8;
}

- (NSURL)actionURL
{
  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  if (!specialization)
  {
    goto LABEL_5;
  }

  specialization4 = specialization;
  specialization2 = [(LPLinkMetadata *)self->_metadata specialization];
  if (([specialization2 conformsToProtocol:&unk_1F24959C8] & 1) == 0)
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
  v8 = [specialization4 actionURLForTransformer:self];
LABEL_7:

LABEL_8:

  return v8;
}

- (id)originalURL
{
  URL = self->_URL;
  if (URL)
  {
    originalURL = URL;
  }

  else
  {
    originalURL = [(LPLinkMetadata *)self->_metadata originalURL];
  }

  return originalURL;
}

- (NSURL)canonicalURL
{
  v3 = [(LPLinkMetadata *)self->_metadata URL];
  v4 = v3;
  if (v3)
  {
    originalURL = v3;
  }

  else
  {
    originalURL = [(LPLinkMetadataStatusTransformer *)self originalURL];
  }

  v6 = originalURL;

  return v6;
}

- (LPLinkMetadataStatusTransformerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end