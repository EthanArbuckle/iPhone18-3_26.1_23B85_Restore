@interface LPLinkMetadataSharedWithYouTransformer
- (BOOL)shouldDonateToSharedWithYou;
- (LPLinkMetadataSharedWithYouTransformer)initWithMetadata:(id)a3 URL:(id)a4;
@end

@implementation LPLinkMetadataSharedWithYouTransformer

- (LPLinkMetadataSharedWithYouTransformer)initWithMetadata:(id)a3 URL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LPLinkMetadataSharedWithYouTransformer;
  v9 = [(LPLinkMetadataSharedWithYouTransformer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, a3);
    objc_storeStrong(&v10->_URL, a4);
    v11 = v10;
  }

  return v10;
}

- (BOOL)shouldDonateToSharedWithYou
{
  v3 = [(LPLinkMetadata *)self->_metadata specialization];
  if (v3)
  {
    v4 = v3;
    v5 = [(LPLinkMetadata *)self->_metadata specialization];
    if (([v5 conformsToProtocol:&unk_1F24975F0] & 1) == 0)
    {

      v8 = 1;
      goto LABEL_7;
    }

    v6 = [(LPLinkMetadata *)self->_metadata specialization];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v4 = [(LPLinkMetadata *)self->_metadata specialization];
      v8 = [v4 shouldDonateToSharedWithYouForTransformer:self];
LABEL_7:

      return v8;
    }
  }

  return 1;
}

@end