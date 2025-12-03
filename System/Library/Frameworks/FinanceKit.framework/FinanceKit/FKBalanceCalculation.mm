@interface FKBalanceCalculation
- (BOOL)isEqual:(id)equal;
- (FKBalanceCalculation)initWithAmount:(id)amount asOf:(id)of creditDebitIndicator:(unint64_t)indicator;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKBalanceCalculation

- (FKBalanceCalculation)initWithAmount:(id)amount asOf:(id)of creditDebitIndicator:(unint64_t)indicator
{
  amountCopy = amount;
  ofCopy = of;
  v16.receiver = self;
  v16.super_class = FKBalanceCalculation;
  v10 = [(FKBalanceCalculation *)&v16 init];
  if (v10)
  {
    v11 = [amountCopy copy];
    amount = v10->_amount;
    v10->_amount = v11;

    v13 = [ofCopy copy];
    asOf = v10->_asOf;
    v10->_asOf = v13;

    v10->_creditDebitIndicator = indicator;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(FKBalanceCalculation);
  v6 = [(FKAmount *)self->_amount copyWithZone:zone];
  amount = v5->_amount;
  v5->_amount = v6;

  v8 = [(NSDate *)self->_asOf copyWithZone:zone];
  asOf = v5->_asOf;
  v5->_asOf = v8;

  v5->_creditDebitIndicator = self->_creditDebitIndicator;
  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_asOf];
  v4 = FKCombinedHash(17, v3);
  v5 = FKIntegerHash(v4, self->_creditDebitIndicator);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = FKEqualObjects(self->_amount, v6[1]) && FKEqualObjects(self->_asOf, v6[2]) && self->_creditDebitIndicator == v6[3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end