@interface LPLinkMetadataSharedWithYouTransformer
- (BOOL)shouldDonateToSharedWithYou;
- (LPLinkMetadataSharedWithYouTransformer)initWithMetadata:(id)metadata URL:(id)l;
@end

@implementation LPLinkMetadataSharedWithYouTransformer

- (LPLinkMetadataSharedWithYouTransformer)initWithMetadata:(id)metadata URL:(id)l
{
  metadataCopy = metadata;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = LPLinkMetadataSharedWithYouTransformer;
  v9 = [(LPLinkMetadataSharedWithYouTransformer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, metadata);
    objc_storeStrong(&v10->_URL, l);
    v11 = v10;
  }

  return v10;
}

- (BOOL)shouldDonateToSharedWithYou
{
  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  if (specialization)
  {
    specialization4 = specialization;
    specialization2 = [(LPLinkMetadata *)self->_metadata specialization];
    if (([specialization2 conformsToProtocol:&unk_1F24975F0] & 1) == 0)
    {

      v8 = 1;
      goto LABEL_7;
    }

    specialization3 = [(LPLinkMetadata *)self->_metadata specialization];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      specialization4 = [(LPLinkMetadata *)self->_metadata specialization];
      v8 = [specialization4 shouldDonateToSharedWithYouForTransformer:self];
LABEL_7:

      return v8;
    }
  }

  return 1;
}

@end