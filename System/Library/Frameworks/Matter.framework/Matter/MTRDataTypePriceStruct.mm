@interface MTRDataTypePriceStruct
- (MTRDataTypePriceStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDataTypePriceStruct

- (MTRDataTypePriceStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRDataTypePriceStruct;
  v2 = [(MTRDataTypePriceStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    amount = v2->_amount;
    v2->_amount = &unk_284C3E588;

    v5 = objc_opt_new();
    currency = v3->_currency;
    v3->_currency = v5;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDataTypePriceStruct);
  amount = [(MTRDataTypePriceStruct *)self amount];
  [(MTRDataTypePriceStruct *)v4 setAmount:amount];

  currency = [(MTRDataTypePriceStruct *)self currency];
  [(MTRDataTypePriceStruct *)v4 setCurrency:currency];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: amount:%@ currency:%@; >", v5, self->_amount, self->_currency];;

  return v6;
}

@end