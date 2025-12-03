@interface BCSQRCodePayload
- (BCSQRCodePayload)initWithBarcodeDescriptor:(id)descriptor;
- (BCSQRCodePayload)initWithCoder:(id)coder;
@end

@implementation BCSQRCodePayload

- (BCSQRCodePayload)initWithBarcodeDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v10.receiver = self;
  v10.super_class = BCSQRCodePayload;
  v6 = [(BCSQRCodePayload *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_barcodeDescriptor, descriptor);
    v8 = v7;
  }

  return v7;
}

- (BCSQRCodePayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];

  v6 = [(BCSQRCodePayload *)self initWithBarcodeDescriptor:v5];
  return v6;
}

@end