@interface GLKHashableBigInt
- (GLKHashableBigInt)initWithBigInt:(GLKBigInt_s *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation GLKHashableBigInt

- (GLKHashableBigInt)initWithBigInt:(GLKBigInt_s *)a3
{
  v5.receiver = self;
  v5.super_class = GLKHashableBigInt;
  result = [(GLKHashableBigInt *)&v5 init];
  if (result)
  {
    result->_bigInt = *a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[GLKHashableBigInt allocWithZone:?]];
  *(result + 8) = self->_bigInt;
  return result;
}

- (unint64_t)hash
{
  v2 = self;
  v3 = 0;
  v4 = self + 8;
  LODWORD(self) = -2128831035;
  do
  {
    LODWORD(self) = (16777619 * self) ^ *(v4 + v3++);
  }

  while (v3 != 8);
  v5 = 0;
  v6 = v2 + 16;
  do
  {
    self = (16777619 * self) ^ *(v6 + v5++);
  }

  while (v5 != 8);
  return self;
}

@end