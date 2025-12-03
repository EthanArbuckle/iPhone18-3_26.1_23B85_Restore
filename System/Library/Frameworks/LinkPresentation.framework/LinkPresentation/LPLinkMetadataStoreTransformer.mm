@interface LPLinkMetadataStoreTransformer
- (LPLinkMetadataStoreTransformer)initWithMetadata:(id)metadata URL:(id)l;
- (id)storeIdentifier;
@end

@implementation LPLinkMetadataStoreTransformer

- (LPLinkMetadataStoreTransformer)initWithMetadata:(id)metadata URL:(id)l
{
  metadataCopy = metadata;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = LPLinkMetadataStoreTransformer;
  v9 = [(LPLinkMetadataStoreTransformer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, metadata);
    objc_storeStrong(&v10->_URL, l);
    v11 = v10;
  }

  return v10;
}

- (id)storeIdentifier
{
  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  if (!specialization)
  {
    goto LABEL_5;
  }

  specialization4 = specialization;
  specialization2 = [(LPLinkMetadata *)self->_metadata specialization];
  if (([specialization2 conformsToProtocol:&unk_1F24958D8] & 1) == 0)
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
  v8 = [specialization4 storeIdentifierForTransformer:self];
LABEL_7:

LABEL_8:

  return v8;
}

@end