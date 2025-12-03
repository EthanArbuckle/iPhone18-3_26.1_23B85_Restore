@interface BCSNFCCodePayload
- (BCSNFCCodePayload)initWithCoder:(id)coder;
- (BCSNFCCodePayload)initWithNFCPayload:(id)payload;
@end

@implementation BCSNFCCodePayload

- (BCSNFCCodePayload)initWithNFCPayload:(id)payload
{
  payloadCopy = payload;
  v10.receiver = self;
  v10.super_class = BCSNFCCodePayload;
  v6 = [(BCSNFCCodePayload *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nfcPayload, payload);
    v8 = v7;
  }

  return v7;
}

- (BCSNFCCodePayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy _bcs_strictlyDecodeObjectOfClass:getNFCNDEFMessageClass() forKey:@"payloadData"];

  v6 = [(BCSNFCCodePayload *)self initWithNFCPayload:v5];
  return v6;
}

@end