@interface LPLinkMetadataStatusTransformer
- (LPLinkMetadataStatusTransformer)initWithMetadata:(id)a3 URL:(id)a4;
- (LPLinkMetadataStatusTransformerDelegate)delegate;
- (NSAttributedString)statusText;
- (NSURL)actionURL;
- (NSURL)canonicalURL;
- (id)originalURL;
- (void)dealloc;
- (void)setMetadata:(id)a3;
@end

@implementation LPLinkMetadataStatusTransformer

- (LPLinkMetadataStatusTransformer)initWithMetadata:(id)a3 URL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = LPLinkMetadataStatusTransformer;
  v9 = [(LPLinkMetadataStatusTransformer *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, a3);
    objc_storeStrong(&v10->_URL, a4);
    v11 = [(LPLinkMetadata *)v10->_metadata specialization];
    if (v11)
    {
      v12 = [(LPLinkMetadata *)v10->_metadata specialization];
      if (([v12 conformsToProtocol:&unk_1F24959C8] & 1) == 0)
      {

        goto LABEL_7;
      }

      v13 = [(LPLinkMetadata *)v10->_metadata specialization];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v11 = [(LPLinkMetadata *)v10->_metadata specialization];
        [v11 initializeForTransformer:v10];
LABEL_7:
      }
    }

    v15 = v10;
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(LPLinkMetadata *)self->_metadata specialization];
  if (v3)
  {
    v4 = [(LPLinkMetadata *)self->_metadata specialization];
    if (([v4 conformsToProtocol:&unk_1F24959C8] & 1) == 0)
    {

      goto LABEL_6;
    }

    v5 = [(LPLinkMetadata *)self->_metadata specialization];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v3 = [(LPLinkMetadata *)self->_metadata specialization];
      [v3 destroyForTransformer:self];
LABEL_6:
    }
  }

  v7.receiver = self;
  v7.super_class = LPLinkMetadataStatusTransformer;
  [(LPLinkMetadataStatusTransformer *)&v7 dealloc];
}

- (void)setMetadata:(id)a3
{
  v16 = a3;
  p_metadata = &self->_metadata;
  v6 = [(LPLinkMetadata *)self->_metadata specialization];
  if (v6)
  {
    v7 = [(LPLinkMetadata *)*p_metadata specialization];
    if ([v7 conformsToProtocol:&unk_1F24959C8])
    {
      v8 = [(LPLinkMetadata *)*p_metadata specialization];
      v9 = objc_opt_respondsToSelector();

      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }

      v6 = [(LPLinkMetadata *)*p_metadata specialization];
      [v6 destroyForTransformer:self];
    }

    else
    {
    }
  }

LABEL_7:
  objc_storeStrong(&self->_metadata, a3);
  v10 = [(LPLinkMetadata *)*p_metadata specialization];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = [(LPLinkMetadata *)*p_metadata specialization];
  if ([v11 conformsToProtocol:&unk_1F24959C8])
  {
    v12 = [(LPLinkMetadata *)*p_metadata specialization];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

    v10 = [(LPLinkMetadata *)*p_metadata specialization];
    [v10 initializeForTransformer:self];
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
  v3 = [(LPLinkMetadata *)self->_metadata specialization];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(LPLinkMetadata *)self->_metadata specialization];
  if (([v5 conformsToProtocol:&unk_1F24959C8] & 1) == 0)
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
  v8 = [v4 statusForTransformer:self];
LABEL_7:

LABEL_8:

  return v8;
}

- (NSURL)actionURL
{
  v3 = [(LPLinkMetadata *)self->_metadata specialization];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(LPLinkMetadata *)self->_metadata specialization];
  if (([v5 conformsToProtocol:&unk_1F24959C8] & 1) == 0)
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
  v8 = [v4 actionURLForTransformer:self];
LABEL_7:

LABEL_8:

  return v8;
}

- (id)originalURL
{
  URL = self->_URL;
  if (URL)
  {
    v3 = URL;
  }

  else
  {
    v3 = [(LPLinkMetadata *)self->_metadata originalURL];
  }

  return v3;
}

- (NSURL)canonicalURL
{
  v3 = [(LPLinkMetadata *)self->_metadata URL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(LPLinkMetadataStatusTransformer *)self originalURL];
  }

  v6 = v5;

  return v6;
}

- (LPLinkMetadataStatusTransformerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end