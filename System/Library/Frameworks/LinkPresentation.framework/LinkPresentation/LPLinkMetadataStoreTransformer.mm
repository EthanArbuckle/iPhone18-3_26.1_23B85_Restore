@interface LPLinkMetadataStoreTransformer
- (LPLinkMetadataStoreTransformer)initWithMetadata:(id)a3 URL:(id)a4;
- (id)storeIdentifier;
@end

@implementation LPLinkMetadataStoreTransformer

- (LPLinkMetadataStoreTransformer)initWithMetadata:(id)a3 URL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LPLinkMetadataStoreTransformer;
  v9 = [(LPLinkMetadataStoreTransformer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, a3);
    objc_storeStrong(&v10->_URL, a4);
    v11 = v10;
  }

  return v10;
}

- (id)storeIdentifier
{
  v3 = [(LPLinkMetadata *)self->_metadata specialization];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(LPLinkMetadata *)self->_metadata specialization];
  if (([v5 conformsToProtocol:&unk_1F24958D8] & 1) == 0)
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
  v8 = [v4 storeIdentifierForTransformer:self];
LABEL_7:

LABEL_8:

  return v8;
}

@end