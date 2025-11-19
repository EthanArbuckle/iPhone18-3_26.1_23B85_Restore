@interface DDMatchMoneyAmount
- (DDMatchMoneyAmount)initWithDDScannerResult:(id)a3;
@end

@implementation DDMatchMoneyAmount

- (DDMatchMoneyAmount)initWithDDScannerResult:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DDMatchMoneyAmount;
  v5 = [(DDMatch *)&v12 initWithDDScannerResult:v4];
  if (v5)
  {
    v10 = 0;
    v11 = 0.0;
    v6 = [v4 getMoneyAmount:&v11 currency:&v10];
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