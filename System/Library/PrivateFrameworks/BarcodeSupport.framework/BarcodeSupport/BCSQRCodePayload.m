@interface BCSQRCodePayload
- (BCSQRCodePayload)initWithBarcodeDescriptor:(id)a3;
- (BCSQRCodePayload)initWithCoder:(id)a3;
@end

@implementation BCSQRCodePayload

- (BCSQRCodePayload)initWithBarcodeDescriptor:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BCSQRCodePayload;
  v6 = [(BCSQRCodePayload *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_barcodeDescriptor, a3);
    v8 = v7;
  }

  return v7;
}

- (BCSQRCodePayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];

  v6 = [(BCSQRCodePayload *)self initWithBarcodeDescriptor:v5];
  return v6;
}

@end