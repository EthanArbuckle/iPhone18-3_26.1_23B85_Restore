@interface DDMatchShipmentTrackingNumber
- (DDMatchShipmentTrackingNumber)initWithDDScannerResult:(id)a3;
@end

@implementation DDMatchShipmentTrackingNumber

- (DDMatchShipmentTrackingNumber)initWithDDScannerResult:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DDMatchShipmentTrackingNumber;
  v5 = [(DDMatch *)&v14 initWithDDScannerResult:v4];
  if (v5)
  {
    v12 = 0;
    v13 = 0;
    v6 = [v4 getTrackingNumber:&v13 carrier:&v12];
    v7 = v13;
    v8 = v13;
    v9 = v12;
    v10 = v12;
    if (v6)
    {
      objc_storeStrong(&v5->_carrier, v9);
      objc_storeStrong(&v5->_trackingNumber, v7);
    }
  }

  return v5;
}

@end