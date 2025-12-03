@interface DDMatchShipmentTrackingNumber
- (DDMatchShipmentTrackingNumber)initWithDDScannerResult:(id)result;
@end

@implementation DDMatchShipmentTrackingNumber

- (DDMatchShipmentTrackingNumber)initWithDDScannerResult:(id)result
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = DDMatchShipmentTrackingNumber;
  v5 = [(DDMatch *)&v14 initWithDDScannerResult:resultCopy];
  if (v5)
  {
    v12 = 0;
    v13 = 0;
    v6 = [resultCopy getTrackingNumber:&v13 carrier:&v12];
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