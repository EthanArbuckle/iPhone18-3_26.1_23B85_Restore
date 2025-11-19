@interface BCSVisualCodeQR
- (BCSVisualCodeQR)initWithBarcodeObservation:(id)a3;
- (BCSVisualCodeQR)initWithCoder:(id)a3;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGRect)boundingBox;
@end

@implementation BCSVisualCodeQR

- (BCSVisualCodeQR)initWithBarcodeObservation:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BCSVisualCodeQR;
  v6 = [(BCSVisualCodeQR *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_barcodeObservation, a3);
    v8 = v7;
  }

  return v7;
}

- (CGPoint)topLeft
{
  [(VNBarcodeObservation *)self->_barcodeObservation topLeft];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)topRight
{
  [(VNBarcodeObservation *)self->_barcodeObservation topRight];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)bottomRight
{
  [(VNBarcodeObservation *)self->_barcodeObservation bottomRight];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)bottomLeft
{
  [(VNBarcodeObservation *)self->_barcodeObservation bottomLeft];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)boundingBox
{
  [(VNBarcodeObservation *)self->_barcodeObservation boundingBox];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BCSVisualCodeQR)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CE2BF8];
  v5 = a3;
  v6 = [[v4 alloc] initWithCoder:v5];

  v7 = [(BCSVisualCodeQR *)self initWithBarcodeObservation:v6];
  return v7;
}

@end