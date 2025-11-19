@interface MTRDataTypeCurrencyStruct
- (MTRDataTypeCurrencyStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDataTypeCurrencyStruct

- (MTRDataTypeCurrencyStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRDataTypeCurrencyStruct;
  v2 = [(MTRDataTypeCurrencyStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    currency = v2->_currency;
    v2->_currency = &unk_284C3E588;

    decimalPoints = v3->_decimalPoints;
    v3->_decimalPoints = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDataTypeCurrencyStruct);
  v5 = [(MTRDataTypeCurrencyStruct *)self currency];
  [(MTRDataTypeCurrencyStruct *)v4 setCurrency:v5];

  v6 = [(MTRDataTypeCurrencyStruct *)self decimalPoints];
  [(MTRDataTypeCurrencyStruct *)v4 setDecimalPoints:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: currency:%@ decimalPoints:%@; >", v5, self->_currency, self->_decimalPoints];;

  return v6;
}

@end