@interface DDMatchMoneyAmount
- (DDMatchMoneyAmount)initWithDDScannerResult:(id)result;
@end

@implementation DDMatchMoneyAmount

- (DDMatchMoneyAmount)initWithDDScannerResult:(id)result
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = DDMatchMoneyAmount;
  v5 = [(DDMatch *)&v12 initWithDDScannerResult:resultCopy];
  if (v5)
  {
    v10 = 0;
    v11 = 0.0;
    v6 = [resultCopy getMoneyAmount:&v11 currency:&v10];
    v7 = v10;
    v8 = v10;
    if (v6)
    {
      objc_storeStrong(&v5->_currency, v7);
      v5->_amount = v11;
    }
  }

  return v5;
}

@end