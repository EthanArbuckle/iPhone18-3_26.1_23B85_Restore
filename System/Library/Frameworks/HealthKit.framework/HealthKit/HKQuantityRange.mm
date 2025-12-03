@interface HKQuantityRange
+ (BOOL)areRangesDisjoint:(id)disjoint;
+ (id)ATTDEuglycemicRangeWithUnit:(id)unit;
+ (id)ATTDGlycemicRangesWithUnit:(id)unit;
+ (id)ATTDHyperglycemicRangeWithUnit:(id)unit;
+ (id)ATTDLevel1HypoglycemicRangeWithUnit:(id)unit;
+ (id)ATTDLevel2HypoglycemicRangeWithUnit:(id)unit;
+ (id)exclusiveRangeWithMinimum:(id)minimum maximum:(id)maximum;
+ (id)inclusiveRangeWithMinimum:(id)minimum maximum:(id)maximum;
- (BOOL)containsQuantity:(id)quantity;
- (BOOL)intersectsRange:(id)range;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToQuantityRange:(id)range withAccuracy:(id)accuracy;
- (HKQuantityRange)initWithCoder:(id)coder;
- (HKQuantityRange)initWithMinimum:(id)minimum maximum:(id)maximum isMinimumInclusive:(BOOL)inclusive isMaximumInclusive:(BOOL)maximumInclusive;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKQuantityRange

- (HKQuantityRange)initWithMinimum:(id)minimum maximum:(id)maximum isMinimumInclusive:(BOOL)inclusive isMaximumInclusive:(BOOL)maximumInclusive
{
  minimumCopy = minimum;
  maximumCopy = maximum;
  v16.receiver = self;
  v16.super_class = HKQuantityRange;
  v14 = [(HKQuantityRange *)&v16 init];
  if (v14)
  {
    if ([maximumCopy hk_isLessThanQuantity:minimumCopy])
    {
      [HKQuantityRange initWithMinimum:a2 maximum:v14 isMinimumInclusive:? isMaximumInclusive:?];
    }

    objc_storeStrong(&v14->_minimum, minimum);
    objc_storeStrong(&v14->_maximum, maximum);
    v14->_isMinimumInclusive = inclusive;
    v14->_isMaximumInclusive = maximumInclusive;
  }

  return v14;
}

+ (id)inclusiveRangeWithMinimum:(id)minimum maximum:(id)maximum
{
  maximumCopy = maximum;
  minimumCopy = minimum;
  v8 = [[self alloc] initWithMinimum:minimumCopy maximum:maximumCopy isMinimumInclusive:1 isMaximumInclusive:1];

  return v8;
}

+ (id)exclusiveRangeWithMinimum:(id)minimum maximum:(id)maximum
{
  maximumCopy = maximum;
  minimumCopy = minimum;
  v8 = [[self alloc] initWithMinimum:minimumCopy maximum:maximumCopy isMinimumInclusive:0 isMaximumInclusive:0];

  return v8;
}

- (BOOL)containsQuantity:(id)quantity
{
  quantityCopy = quantity;
  v5 = quantityCopy;
  minimum = self->_minimum;
  if (self->_isMinimumInclusive)
  {
    if ([quantityCopy hk_isLessThanQuantity:minimum])
    {
LABEL_3:
      LOBYTE(v7) = 0;
      goto LABEL_8;
    }
  }

  else if (![quantityCopy hk_isGreaterThanQuantity:minimum])
  {
    goto LABEL_3;
  }

  maximum = self->_maximum;
  if (self->_isMaximumInclusive)
  {
    v7 = [v5 hk_isGreaterThanQuantity:maximum] ^ 1;
  }

  else
  {
    LOBYTE(v7) = [v5 hk_isLessThanQuantity:maximum];
  }

LABEL_8:

  return v7;
}

- (BOOL)intersectsRange:(id)range
{
  rangeCopy = range;
  minimum = self->_minimum;
  maximum = [rangeCopy maximum];
  v7 = [(HKQuantity *)minimum compare:maximum];

  if (v7 == 1)
  {
    goto LABEL_10;
  }

  if (v7)
  {
    maximum = self->_maximum;
    minimum = [rangeCopy minimum];
    v11 = [(HKQuantity *)maximum compare:minimum];

    if (v11 != -1)
    {
      if (v11)
      {
        v12 = 1;
        goto LABEL_11;
      }

      if (self->_isMaximumInclusive)
      {
        isMinimumInclusive = [rangeCopy isMinimumInclusive];
        goto LABEL_9;
      }
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  if (!self->_isMinimumInclusive)
  {
    goto LABEL_10;
  }

  isMinimumInclusive = [rangeCopy isMaximumInclusive];
LABEL_9:
  v12 = isMinimumInclusive;
LABEL_11:

  return v12;
}

+ (BOOL)areRangesDisjoint:(id)disjoint
{
  disjointCopy = disjoint;
  if ([disjointCopy count] >= 2)
  {
    v5 = [disjointCopy sortedArrayUsingComparator:&__block_literal_global_69];
    v6 = [v5 objectAtIndexedSubscript:0];
    if ([v5 count] >= 2)
    {
      v7 = 1;
      while (1)
      {
        v8 = [v5 objectAtIndexedSubscript:v7];
        if ([v8 intersectsRange:v6])
        {
          break;
        }

        ++v7;
        v6 = v8;
        if (v7 >= [v5 count])
        {
          v4 = 1;
          v6 = v8;
          goto LABEL_10;
        }
      }

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

LABEL_10:
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t __37__HKQuantityRange_areRangesDisjoint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 minimum];
  v6 = [v4 minimum];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)isEqualToQuantityRange:(id)range withAccuracy:(id)accuracy
{
  rangeCopy = range;
  accuracyCopy = accuracy;
  v8 = [(HKQuantity *)self->_minimum isEqualToQuantity:rangeCopy[2] withAccuracy:accuracyCopy]&& [(HKQuantity *)self->_maximum isEqualToQuantity:rangeCopy[3] withAccuracy:accuracyCopy]&& self->_isMinimumInclusive == *(rangeCopy + 8) && self->_isMaximumInclusive == *(rangeCopy + 9);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if ([(HKQuantityRange *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    minimum = self->_minimum;
    minimum = [(HKQuantityRange *)v5 minimum];
    if ([(HKQuantity *)minimum isEqual:minimum])
    {
      maximum = self->_maximum;
      maximum = [(HKQuantityRange *)v5 maximum];
      if ([(HKQuantity *)maximum isEqual:maximum]&& (isMinimumInclusive = self->_isMinimumInclusive, isMinimumInclusive == [(HKQuantityRange *)v5 isMinimumInclusive]))
      {
        isMaximumInclusive = self->_isMaximumInclusive;
        v12 = isMaximumInclusive == [(HKQuantityRange *)v5 isMaximumInclusive];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKQuantityRange alloc];
  minimum = self->_minimum;
  maximum = self->_maximum;
  isMinimumInclusive = self->_isMinimumInclusive;
  isMaximumInclusive = self->_isMaximumInclusive;

  return [(HKQuantityRange *)v4 initWithMinimum:minimum maximum:maximum isMinimumInclusive:isMinimumInclusive isMaximumInclusive:isMaximumInclusive];
}

- (id)description
{
  v2 = CFSTR("(");
  if (self->_isMinimumInclusive)
  {
    v2 = @"[";
  }

  if (self->_isMaximumInclusive)
  {
    v3 = @"]";
  }

  else
  {
    v3 = @"");
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@, %@%@", v2, self->_minimum, self->_maximum, v3];
}

- (HKQuantityRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimum"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximum"];
  v7 = [coderCopy decodeBoolForKey:@"isMinimumInclusive"];
  v8 = [coderCopy decodeBoolForKey:@"isMaximumInclusive"];

  v9 = [(HKQuantityRange *)self initWithMinimum:v5 maximum:v6 isMinimumInclusive:v7 isMaximumInclusive:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  minimum = self->_minimum;
  coderCopy = coder;
  [coderCopy encodeObject:minimum forKey:@"minimum"];
  [coderCopy encodeObject:self->_maximum forKey:@"maximum"];
  [coderCopy encodeBool:self->_isMinimumInclusive forKey:@"isMinimumInclusive"];
  [coderCopy encodeBool:self->_isMaximumInclusive forKey:@"isMaximumInclusive"];
}

+ (id)ATTDLevel2HypoglycemicRangeWithUnit:(id)unit
{
  unitCopy = unit;
  v5 = +[HKUnit _milligramsPerDeciliterUnit];
  v6 = [unitCopy isEqual:v5];

  if (v6)
  {
    v7 = [HKQuantityRange alloc];
    v8 = [HKQuantity quantityWithUnit:unitCopy doubleValue:0.0];
    v9 = 54.0;
LABEL_5:
    v12 = [HKQuantity quantityWithUnit:unitCopy doubleValue:v9];
    v13 = [(HKQuantityRange *)v7 initWithMinimum:v8 maximum:v12 isMinimumInclusive:1 isMaximumInclusive:0];

    goto LABEL_7;
  }

  v10 = +[HKUnit _millimolesBloodGlucosePerLiterUnit];
  v11 = [unitCopy isEqual:v10];

  if (v11)
  {
    v7 = [HKQuantityRange alloc];
    v8 = [HKQuantity quantityWithUnit:unitCopy doubleValue:0.0];
    v9 = 3.0;
    goto LABEL_5;
  }

  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D940];
  unitString = [unitCopy unitString];
  [v14 raise:v15 format:{@"Unsupported unit for standard glucose range: %@", unitString}];

  v8 = +[HKUnit _milligramsPerDeciliterUnit];
  v13 = [self ATTDLevel2HypoglycemicRangeWithUnit:v8];
LABEL_7:

  return v13;
}

+ (id)ATTDLevel1HypoglycemicRangeWithUnit:(id)unit
{
  unitCopy = unit;
  v5 = +[HKUnit _milligramsPerDeciliterUnit];
  v6 = [unitCopy isEqual:v5];

  if (v6)
  {
    v7 = [HKQuantityRange alloc];
    v8 = [HKQuantity quantityWithUnit:unitCopy doubleValue:54.0];
    v9 = 70.0;
LABEL_5:
    v12 = [HKQuantity quantityWithUnit:unitCopy doubleValue:v9];
    v13 = [(HKQuantityRange *)v7 initWithMinimum:v8 maximum:v12 isMinimumInclusive:1 isMaximumInclusive:0];

    goto LABEL_7;
  }

  v10 = +[HKUnit _millimolesBloodGlucosePerLiterUnit];
  v11 = [unitCopy isEqual:v10];

  if (v11)
  {
    v7 = [HKQuantityRange alloc];
    v8 = [HKQuantity quantityWithUnit:unitCopy doubleValue:3.0];
    v9 = 3.9;
    goto LABEL_5;
  }

  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D940];
  unitString = [unitCopy unitString];
  [v14 raise:v15 format:{@"Unsupported unit for standard glucose range: %@", unitString}];

  v8 = +[HKUnit _milligramsPerDeciliterUnit];
  v13 = [self ATTDLevel1HypoglycemicRangeWithUnit:v8];
LABEL_7:

  return v13;
}

+ (id)ATTDEuglycemicRangeWithUnit:(id)unit
{
  unitCopy = unit;
  v5 = +[HKUnit _milligramsPerDeciliterUnit];
  v6 = [unitCopy isEqual:v5];

  if (v6)
  {
    v7 = [HKQuantity quantityWithUnit:unitCopy doubleValue:70.0];
    v8 = 180.0;
LABEL_5:
    v11 = [HKQuantity quantityWithUnit:unitCopy doubleValue:v8];
    v12 = [HKQuantityRange inclusiveRangeWithMinimum:v7 maximum:v11];

    goto LABEL_7;
  }

  v9 = +[HKUnit _millimolesBloodGlucosePerLiterUnit];
  v10 = [unitCopy isEqual:v9];

  if (v10)
  {
    v7 = [HKQuantity quantityWithUnit:unitCopy doubleValue:3.9];
    v8 = 10.0;
    goto LABEL_5;
  }

  v13 = MEMORY[0x1E695DF30];
  v14 = *MEMORY[0x1E695D940];
  unitString = [unitCopy unitString];
  [v13 raise:v14 format:{@"Unsupported unit for standard glucose range: %@", unitString}];

  v7 = +[HKUnit _milligramsPerDeciliterUnit];
  v12 = [self ATTDEuglycemicRangeWithUnit:v7];
LABEL_7:

  return v12;
}

+ (id)ATTDHyperglycemicRangeWithUnit:(id)unit
{
  unitCopy = unit;
  v5 = +[HKUnit _milligramsPerDeciliterUnit];
  v6 = [unitCopy isEqual:v5];

  if (v6)
  {
    v7 = [HKQuantityRange alloc];
    v8 = 180.0;
LABEL_5:
    v11 = [HKQuantity quantityWithUnit:unitCopy doubleValue:v8];
    v12 = [HKQuantity quantityWithUnit:unitCopy doubleValue:1.79769313e308];
    v13 = [(HKQuantityRange *)v7 initWithMinimum:v11 maximum:v12 isMinimumInclusive:0 isMaximumInclusive:1];

    goto LABEL_7;
  }

  v9 = +[HKUnit _millimolesBloodGlucosePerLiterUnit];
  v10 = [unitCopy isEqual:v9];

  if (v10)
  {
    v7 = [HKQuantityRange alloc];
    v8 = 10.0;
    goto LABEL_5;
  }

  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D940];
  unitString = [unitCopy unitString];
  [v14 raise:v15 format:{@"Unsupported unit for standard glucose range: %@", unitString}];

  v11 = +[HKUnit _milligramsPerDeciliterUnit];
  v13 = [self ATTDHyperglycemicRangeWithUnit:v11];
LABEL_7:

  return v13;
}

+ (id)ATTDGlycemicRangesWithUnit:(id)unit
{
  v12[4] = *MEMORY[0x1E69E9840];
  unitCopy = unit;
  v5 = [self ATTDLevel2HypoglycemicRangeWithUnit:unitCopy];
  v12[0] = v5;
  v6 = [self ATTDLevel1HypoglycemicRangeWithUnit:unitCopy];
  v12[1] = v6;
  v7 = [self ATTDEuglycemicRangeWithUnit:unitCopy];
  v12[2] = v7;
  v8 = [self ATTDHyperglycemicRangeWithUnit:unitCopy];

  v12[3] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)initWithMinimum:(uint64_t)a1 maximum:(uint64_t)a2 isMinimumInclusive:isMaximumInclusive:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKQuantityRange.m" lineNumber:26 description:@"Quantity range maximum must be >= minimum"];
}

@end