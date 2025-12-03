@interface NSArray
- (unint64_t)ntk_indexOfFirstObjectPassingTest:(id)test;
@end

@implementation NSArray

- (unint64_t)ntk_indexOfFirstObjectPassingTest:(id)test
{
  testCopy = test;
  v5 = [(NSArray *)self count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSArray *)self objectAtIndexedSubscript:v7];
      v9 = testCopy[2](testCopy, v8);

      if (v9)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

@end