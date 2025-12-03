@interface VCArrayUtils
+ (id)closestValueLessThanOrEqualToValue:(id)value array:(id)array;
+ (unint64_t)insertionIndexForValue:(id)value array:(id)array;
@end

@implementation VCArrayUtils

+ (unint64_t)insertionIndexForValue:(id)value array:(id)array
{
  if (!array)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [array count];

  return [array indexOfObject:value inSortedRange:0 options:v6 usingComparator:{1536, &__block_literal_global_8}];
}

+ (id)closestValueLessThanOrEqualToValue:(id)value array:(id)array
{
  v5 = [self insertionIndexForValue:value array:?];
  v6 = v5;
  if (v5)
  {
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v6 = v5 - 1;
  }

  v8 = [array count];
  if (v6 >= v8 - 1)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = v6;
  }

  return [array objectAtIndexedSubscript:v9];
}

@end