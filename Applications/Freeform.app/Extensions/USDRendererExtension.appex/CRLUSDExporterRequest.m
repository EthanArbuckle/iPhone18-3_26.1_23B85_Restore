@interface CRLUSDExporterRequest
- (CGSize)basePlateSize;
- (CRLUSDExporterRequest)initWithItems:(id)a3;
@end

@implementation CRLUSDExporterRequest

- (CRLUSDExporterRequest)initWithItems:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRLUSDExporterRequest;
  v6 = [(CRLUSDExporterRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, a3);
    v7->_surfaceScale = 1.0;
    v7->_showBasePlate = 0;
    v7->_basePlateSize = CGSizeZero;
  }

  return v7;
}

- (CGSize)basePlateSize
{
  width = self->_basePlateSize.width;
  height = self->_basePlateSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end