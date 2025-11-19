@interface HKQuantityRange
+ (BOOL)areRangesDisjoint:(id)a3;
+ (id)ATTDEuglycemicRangeWithUnit:(id)a3;
+ (id)ATTDGlycemicRangesWithUnit:(id)a3;
+ (id)ATTDHyperglycemicRangeWithUnit:(id)a3;
+ (id)ATTDLevel1HypoglycemicRangeWithUnit:(id)a3;
+ (id)ATTDLevel2HypoglycemicRangeWithUnit:(id)a3;
+ (id)exclusiveRangeWithMinimum:(id)a3 maximum:(id)a4;
+ (id)inclusiveRangeWithMinimum:(id)a3 maximum:(id)a4;
- (BOOL)containsQuantity:(id)a3;
- (BOOL)intersectsRange:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToQuantityRange:(id)a3 withAccuracy:(id)a4;
- (HKQuantityRange)initWithCoder:(id)a3;
- (HKQuantityRange)initWithMinimum:(id)a3 maximum:(id)a4 isMinimumInclusive:(BOOL)a5 isMaximumInclusive:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKQuantityRange

- (HKQuantityRange)initWithMinimum:(id)a3 maximum:(id)a4 isMinimumInclusive:(BOOL)a5 isMaximumInclusive:(BOOL)a6
{
  v12 = a3;
  v13 = a4;
  v16.receiver = self;
  v16.super_class = HKQuantityRange;
  v14 = [(HKQuantityRange *)&v16 init];
  if (v14)
  {
    if ([v13 hk_isLessThanQuantity:v12])
    {
      [HKQuantityRange initWithMinimum:a2 maximum:v14 isMinimumInclusive:? isMaximumInclusive:?];
    }

    objc_storeStrong(&v14->_minimum, a3);
    objc_storeStrong(&v14->_maximum, a4);
    v14->_isMinimumInclusive = a5;
    v14->_isMaximumInclusive = a6;
  }

  return v14;
}

+ (id)inclusiveRangeWithMinimum:(id)a3 maximum:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithMinimum:v7 maximum:v6 isMinimumInclusive:1 isMaximumInclusive:1];

  return v8;
}

+ (id)exclusiveRangeWithMinimum:(id)a3 maximum:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithMinimum:v7 maximum:v6 isMinimumInclusive:0 isMaximumInclusive:0];

  return v8;
}

- (BOOL)containsQuantity:(id)a3
{
  v4 = a3;
  v5 = v4;
  minimum = self->_minimum;
  if (self->_isMinimumInclusive)
  {
    if ([v4 hk_isLessThanQuantity:minimum])
    {
LABEL_3:
      LOBYTE(v7) = 0;
      goto LABEL_8;
    }
  }

  else if (![v4 hk_isGreaterThanQuantity:minimum])
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

- (BOOL)intersectsRange:(id)a3
{
  v4 = a3;
  minimum = self->_minimum;
  v6 = [v4 maximum];
  v7 = [(HKQuantity *)minimum compare:v6];

  if (v7 == 1)
  {
    goto LABEL_10;
  }

  if (v7)
  {
    maximum = self->_maximum;
    v10 = [v4 minimum];
    v11 = [(HKQuantity *)maximum compare:v10];

    if (v11 != -1)
    {
      if (v11)
      {
        v12 = 1;
        goto LABEL_11;
      }

      if (self->_isMaximumInclusive)
      {
        v8 = [v4 isMinimumInclusive];
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

  v8 = [v4 isMaximumInclusive];
LABEL_9:
  v12 = v8;
LABEL_11:

  return v12;
}

+ (BOOL)areRangesDisjoint:(id)a3
{
  v3 = a3;
  if ([v3 count] >= 2)
  {
    v5 = [v3 sortedArrayUsingComparator:&__block_literal_global_69];
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

- (BOOL)isEqualToQuantityRange:(id)a3 withAccuracy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuantity *)self->_minimum isEqualToQuantity:v6[2] withAccuracy:v7]&& [(HKQuantity *)self->_maximum isEqualToQuantity:v6[3] withAccuracy:v7]&& self->_isMinimumInclusive == *(v6 + 8) && self->_isMaximumInclusive == *(v6 + 9);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if ([(HKQuantityRange *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    minimum = self->_minimum;
    v7 = [(HKQuantityRange *)v5 minimum];
    if ([(HKQuantity *)minimum isEqual:v7])
    {
      maximum = self->_maximum;
      v9 = [(HKQuantityRange *)v5 maximum];
      if ([(HKQuantity *)maximum isEqual:v9]&& (isMinimumInclusive = self->_isMinimumInclusive, isMinimumInclusive == [(HKQuantityRange *)v5 isMinimumInclusive]))
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

- (id)copyWithZone:(_NSZone *)a3
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

- (HKQuantityRange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimum"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximum"];
  v7 = [v4 decodeBoolForKey:@"isMinimumInclusive"];
  v8 = [v4 decodeBoolForKey:@"isMaximumInclusive"];

  v9 = [(HKQuantityRange *)self initWithMinimum:v5 maximum:v6 isMinimumInclusive:v7 isMaximumInclusive:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  minimum = self->_minimum;
  v5 = a3;
  [v5 encodeObject:minimum forKey:@"minimum"];
  [v5 encodeObject:self->_maximum forKey:@"maximum"];
  [v5 encodeBool:self->_isMinimumInclusive forKey:@"isMinimumInclusive"];
  [v5 encodeBool:self->_isMaximumInclusive forKey:@"isMaximumInclusive"];
}

+ (id)ATTDLevel2HypoglycemicRangeWithUnit:(id)a3
{
  v4 = a3;
  v5 = +[HKUnit _milligramsPerDeciliterUnit];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [HKQuantityRange alloc];
    v8 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
    v9 = 54.0;
LABEL_5:
    v12 = [HKQuantity quantityWithUnit:v4 doubleValue:v9];
    v13 = [(HKQuantityRange *)v7 initWithMinimum:v8 maximum:v12 isMinimumInclusive:1 isMaximumInclusive:0];

    goto LABEL_7;
  }

  v10 = +[HKUnit _millimolesBloodGlucosePerLiterUnit];
  v11 = [v4 isEqual:v10];

  if (v11)
  {
    v7 = [HKQuantityRange alloc];
    v8 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
    v9 = 3.0;
    goto LABEL_5;
  }

  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D940];
  v16 = [v4 unitString];
  [v14 raise:v15 format:{@"Unsupported unit for standard glucose range: %@", v16}];

  v8 = +[HKUnit _milligramsPerDeciliterUnit];
  v13 = [a1 ATTDLevel2HypoglycemicRangeWithUnit:v8];
LABEL_7:

  return v13;
}

+ (id)ATTDLevel1HypoglycemicRangeWithUnit:(id)a3
{
  v4 = a3;
  v5 = +[HKUnit _milligramsPerDeciliterUnit];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [HKQuantityRange alloc];
    v8 = [HKQuantity quantityWithUnit:v4 doubleValue:54.0];
    v9 = 70.0;
LABEL_5:
    v12 = [HKQuantity quantityWithUnit:v4 doubleValue:v9];
    v13 = [(HKQuantityRange *)v7 initWithMinimum:v8 maximum:v12 isMinimumInclusive:1 isMaximumInclusive:0];

    goto LABEL_7;
  }

  v10 = +[HKUnit _millimolesBloodGlucosePerLiterUnit];
  v11 = [v4 isEqual:v10];

  if (v11)
  {
    v7 = [HKQuantityRange alloc];
    v8 = [HKQuantity quantityWithUnit:v4 doubleValue:3.0];
    v9 = 3.9;
    goto LABEL_5;
  }

  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D940];
  v16 = [v4 unitString];
  [v14 raise:v15 format:{@"Unsupported unit for standard glucose range: %@", v16}];

  v8 = +[HKUnit _milligramsPerDeciliterUnit];
  v13 = [a1 ATTDLevel1HypoglycemicRangeWithUnit:v8];
LABEL_7:

  return v13;
}

+ (id)ATTDEuglycemicRangeWithUnit:(id)a3
{
  v4 = a3;
  v5 = +[HKUnit _milligramsPerDeciliterUnit];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [HKQuantity quantityWithUnit:v4 doubleValue:70.0];
    v8 = 180.0;
LABEL_5:
    v11 = [HKQuantity quantityWithUnit:v4 doubleValue:v8];
    v12 = [HKQuantityRange inclusiveRangeWithMinimum:v7 maximum:v11];

    goto LABEL_7;
  }

  v9 = +[HKUnit _millimolesBloodGlucosePerLiterUnit];
  v10 = [v4 isEqual:v9];

  if (v10)
  {
    v7 = [HKQuantity quantityWithUnit:v4 doubleValue:3.9];
    v8 = 10.0;
    goto LABEL_5;
  }

  v13 = MEMORY[0x1E695DF30];
  v14 = *MEMORY[0x1E695D940];
  v15 = [v4 unitString];
  [v13 raise:v14 format:{@"Unsupported unit for standard glucose range: %@", v15}];

  v7 = +[HKUnit _milligramsPerDeciliterUnit];
  v12 = [a1 ATTDEuglycemicRangeWithUnit:v7];
LABEL_7:

  return v12;
}

+ (id)ATTDHyperglycemicRangeWithUnit:(id)a3
{
  v4 = a3;
  v5 = +[HKUnit _milligramsPerDeciliterUnit];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [HKQuantityRange alloc];
    v8 = 180.0;
LABEL_5:
    v11 = [HKQuantity quantityWithUnit:v4 doubleValue:v8];
    v12 = [HKQuantity quantityWithUnit:v4 doubleValue:1.79769313e308];
    v13 = [(HKQuantityRange *)v7 initWithMinimum:v11 maximum:v12 isMinimumInclusive:0 isMaximumInclusive:1];

    goto LABEL_7;
  }

  v9 = +[HKUnit _millimolesBloodGlucosePerLiterUnit];
  v10 = [v4 isEqual:v9];

  if (v10)
  {
    v7 = [HKQuantityRange alloc];
    v8 = 10.0;
    goto LABEL_5;
  }

  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D940];
  v16 = [v4 unitString];
  [v14 raise:v15 format:{@"Unsupported unit for standard glucose range: %@", v16}];

  v11 = +[HKUnit _milligramsPerDeciliterUnit];
  v13 = [a1 ATTDHyperglycemicRangeWithUnit:v11];
LABEL_7:

  return v13;
}

+ (id)ATTDGlycemicRangesWithUnit:(id)a3
{
  v12[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 ATTDLevel2HypoglycemicRangeWithUnit:v4];
  v12[0] = v5;
  v6 = [a1 ATTDLevel1HypoglycemicRangeWithUnit:v4];
  v12[1] = v6;
  v7 = [a1 ATTDEuglycemicRangeWithUnit:v4];
  v12[2] = v7;
  v8 = [a1 ATTDHyperglycemicRangeWithUnit:v4];

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