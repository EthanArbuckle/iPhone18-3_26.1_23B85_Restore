@interface BCSNFCCodePayload
- (BCSNFCCodePayload)initWithCoder:(id)a3;
- (BCSNFCCodePayload)initWithNFCPayload:(id)a3;
@end

@implementation BCSNFCCodePayload

- (BCSNFCCodePayload)initWithNFCPayload:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BCSNFCCodePayload;
  v6 = [(BCSNFCCodePayload *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nfcPayload, a3);
    v8 = v7;
  }

  return v7;
}

- (BCSNFCCodePayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 _bcs_strictlyDecodeObjectOfClass:getNFCNDEFMessageClass() forKey:@"payloadData"];

  v6 = [(BCSNFCCodePayload *)self initWithNFCPayload:v5];
  return v6;
}

@end