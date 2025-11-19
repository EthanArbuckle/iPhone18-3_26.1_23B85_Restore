@interface HKRatioValue
+ (id)ratioValueWithNumerator:(id)a3 andDenominator:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HKRatioValue)init;
- (HKRatioValue)initWithCoder:(id)a3;
- (id)_initWithNumerator:(id)a3 denominator:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKRatioValue

- (HKRatioValue)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)ratioValueWithNumerator:(id)a3 andDenominator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithNumerator:v7 denominator:v6];

  return v8;
}

- (id)_initWithNumerator:(id)a3 denominator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKRatioValue;
  v8 = [(HKRatioValue *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    numerator = v8->_numerator;
    v8->_numerator = v9;

    v11 = [v7 copy];
    denominator = v8->_denominator;
    v8->_denominator = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HKRatioValue *)self numerator];
  v7 = [(HKRatioValue *)self denominator];
  v8 = [v3 stringWithFormat:@"<%@:%p numerator = %@, denominator = %@>", v5, self, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKRatioValue *)self numerator];
      v7 = [(HKRatioValue *)v5 numerator];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKRatioValue *)v5 numerator];
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = v9;
        v11 = [(HKRatioValue *)self numerator];
        v12 = [(HKRatioValue *)v5 numerator];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      v6 = [(HKRatioValue *)self denominator];
      v15 = [(HKRatioValue *)v5 denominator];
      v8 = v15;
      if (v6 == v15)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      v16 = [(HKRatioValue *)v5 denominator];
      if (v16)
      {
        v17 = v16;
        v18 = [(HKRatioValue *)self denominator];
        v19 = [(HKRatioValue *)v5 denominator];
        v20 = [v18 isEqual:v19];

        if (v20)
        {
          goto LABEL_17;
        }

LABEL_15:
        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_14:

      goto LABEL_15;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (HKRatioValue)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKRatioValue;
  v5 = [(HKRatioValue *)&v12 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NumeratorKey"];
  numerator = v5->_numerator;
  v5->_numerator = v6;

  if (!v5->_numerator)
  {
    goto LABEL_5;
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DenominatorKey"];
  denominator = v5->_denominator;
  v5->_denominator = v8;

  if (v5->_denominator)
  {
LABEL_4:
    v10 = v5;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  numerator = self->_numerator;
  v5 = a3;
  [v5 encodeObject:numerator forKey:@"NumeratorKey"];
  [v5 encodeObject:self->_denominator forKey:@"DenominatorKey"];
}

@end