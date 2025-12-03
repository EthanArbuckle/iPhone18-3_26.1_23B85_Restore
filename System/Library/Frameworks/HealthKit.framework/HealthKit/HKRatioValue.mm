@interface HKRatioValue
+ (id)ratioValueWithNumerator:(id)numerator andDenominator:(id)denominator;
- (BOOL)isEqual:(id)equal;
- (HKRatioValue)init;
- (HKRatioValue)initWithCoder:(id)coder;
- (id)_initWithNumerator:(id)numerator denominator:(id)denominator;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

+ (id)ratioValueWithNumerator:(id)numerator andDenominator:(id)denominator
{
  denominatorCopy = denominator;
  numeratorCopy = numerator;
  v8 = [[self alloc] _initWithNumerator:numeratorCopy denominator:denominatorCopy];

  return v8;
}

- (id)_initWithNumerator:(id)numerator denominator:(id)denominator
{
  numeratorCopy = numerator;
  denominatorCopy = denominator;
  v14.receiver = self;
  v14.super_class = HKRatioValue;
  v8 = [(HKRatioValue *)&v14 init];
  if (v8)
  {
    v9 = [numeratorCopy copy];
    numerator = v8->_numerator;
    v8->_numerator = v9;

    v11 = [denominatorCopy copy];
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
  numerator = [(HKRatioValue *)self numerator];
  denominator = [(HKRatioValue *)self denominator];
  v8 = [v3 stringWithFormat:@"<%@:%p numerator = %@, denominator = %@>", v5, self, numerator, denominator];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      numerator = [(HKRatioValue *)self numerator];
      numerator2 = [(HKRatioValue *)v5 numerator];
      v8 = numerator2;
      if (numerator == numerator2)
      {
      }

      else
      {
        numerator3 = [(HKRatioValue *)v5 numerator];
        if (!numerator3)
        {
          goto LABEL_14;
        }

        v10 = numerator3;
        numerator4 = [(HKRatioValue *)self numerator];
        numerator5 = [(HKRatioValue *)v5 numerator];
        v13 = [numerator4 isEqual:numerator5];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      numerator = [(HKRatioValue *)self denominator];
      denominator = [(HKRatioValue *)v5 denominator];
      v8 = denominator;
      if (numerator == denominator)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      denominator2 = [(HKRatioValue *)v5 denominator];
      if (denominator2)
      {
        v17 = denominator2;
        denominator3 = [(HKRatioValue *)self denominator];
        denominator4 = [(HKRatioValue *)v5 denominator];
        v20 = [denominator3 isEqual:denominator4];

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

- (HKRatioValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKRatioValue;
  v5 = [(HKRatioValue *)&v12 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NumeratorKey"];
  numerator = v5->_numerator;
  v5->_numerator = v6;

  if (!v5->_numerator)
  {
    goto LABEL_5;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DenominatorKey"];
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

- (void)encodeWithCoder:(id)coder
{
  numerator = self->_numerator;
  coderCopy = coder;
  [coderCopy encodeObject:numerator forKey:@"NumeratorKey"];
  [coderCopy encodeObject:self->_denominator forKey:@"DenominatorKey"];
}

@end