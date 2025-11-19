@interface NSMeasurement
@end

@implementation NSMeasurement

id __85__NSMeasurement_INCodableAttributeRelationComparing___intents_compareValue_relation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [*(a1 + 32) unit];
  v7 = [v5 measurementByConvertingToUnit:v6];

  v8 = [MEMORY[0x1E695DEC8] if_arrayWithObjectIfNonNil:v7];

  return v8;
}

@end