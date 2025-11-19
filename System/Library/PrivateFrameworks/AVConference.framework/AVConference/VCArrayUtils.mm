@interface VCArrayUtils
+ (id)closestValueLessThanOrEqualToValue:(id)a3 array:(id)a4;
+ (unint64_t)insertionIndexForValue:(id)a3 array:(id)a4;
@end

@implementation VCArrayUtils

+ (unint64_t)insertionIndexForValue:(id)a3 array:(id)a4
{
  if (!a4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [a4 count];

  return [a4 indexOfObject:a3 inSortedRange:0 options:v6 usingComparator:{1536, &__block_literal_global_8}];
}

+ (id)closestValueLessThanOrEqualToValue:(id)a3 array:(id)a4
{
  v5 = [a1 insertionIndexForValue:a3 array:?];
  v6 = v5;
  if (v5)
  {
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v6 = v5 - 1;
  }

  v8 = [a4 count];
  if (v6 >= v8 - 1)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = v6;
  }

  return [a4 objectAtIndexedSubscript:v9];
}

@end