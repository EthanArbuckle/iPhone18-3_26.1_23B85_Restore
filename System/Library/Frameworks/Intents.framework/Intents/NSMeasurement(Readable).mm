@interface NSMeasurement(Readable)
- (id)_intents_readableTitleWithLocalizer:()Readable metadata:;
@end

@implementation NSMeasurement(Readable)

- (id)_intents_readableTitleWithLocalizer:()Readable metadata:
{
  v6 = a4;
  locale = [a3 locale];
  selfCopy = self;
  v9 = objc_alloc_init(MEMORY[0x1E696AD30]);
  unit = [v6 unit];

  if (unit)
  {
    unit2 = [v6 unit];
    v12 = [selfCopy measurementByConvertingToUnit:unit2];

    v13 = 1;
  }

  else
  {
    v13 = 2;
    v12 = selfCopy;
  }

  [v9 setUnitOptions:v13];
  unit3 = [selfCopy unit];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  [v9 setUnitStyle:v16];
  [v9 setLocale:locale];
  v17 = [v9 stringFromMeasurement:v12];

  return v17;
}

@end