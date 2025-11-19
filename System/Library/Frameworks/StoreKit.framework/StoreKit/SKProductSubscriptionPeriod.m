@interface SKProductSubscriptionPeriod
- (SKProductSubscriptionPeriod)init;
- (SKProductSubscriptionPeriod)initWithISO8601String:(id)a3;
- (id)toISO8601String;
@end

@implementation SKProductSubscriptionPeriod

- (SKProductSubscriptionPeriod)init
{
  v6.receiver = self;
  v6.super_class = SKProductSubscriptionPeriod;
  v2 = [(SKProductSubscriptionPeriod *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKProductSubscriptionPeriodInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

- (SKProductSubscriptionPeriod)initWithISO8601String:(id)a3
{
  v4 = a3;
  v5 = [(SKProductSubscriptionPeriod *)self init];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = [MEMORY[0x1E696AE88] scannerWithString:v4];
  v16 = 0;
  [v6 scanString:@"P" intoString:&v16];
  v7 = v16;
  if (!v7)
  {

    v5 = 0;
  }

  v15 = 0;
  [v6 scanInteger:&v15];
  if (v15)
  {
    *(v5->_internal + 1) = v15;

    v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"DWMY"];
    v14 = 0;
    [v6 scanCharactersFromSet:v8 intoString:&v14];
    v9 = v14;
    v10 = v9;
    if (!v9 || [v9 length] != 1)
    {

      v5 = 0;
    }

    if ([v10 isEqualToString:@"D"])
    {
      *(v5->_internal + 2) = 0;
    }

    else
    {
      if ([v10 isEqualToString:@"W"])
      {
        internal = v5->_internal;
        v12 = 1;
      }

      else if ([v10 isEqualToString:@"M"])
      {
        internal = v5->_internal;
        v12 = 2;
      }

      else
      {
        if (![v10 isEqualToString:@"Y"])
        {

          v5 = 0;
          goto LABEL_17;
        }

        internal = v5->_internal;
        v12 = 3;
      }

      internal[2] = v12;
    }

LABEL_17:

LABEL_18:
    return v5;
  }

  __break(1u);
  return result;
}

- (id)toISO8601String
{
  v3 = [(SKProductSubscriptionPeriod *)self unit];
  if (v3 > SKProductPeriodUnitYear)
  {
    v4 = &stru_1F29BCE20;
  }

  else
  {
    v4 = off_1E7B27A00[v3];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SKProductSubscriptionPeriod numberOfUnits](self, "numberOfUnits")}];
  v7 = [v5 stringWithFormat:@"P%@%@", v6, v4];

  return v7;
}

@end