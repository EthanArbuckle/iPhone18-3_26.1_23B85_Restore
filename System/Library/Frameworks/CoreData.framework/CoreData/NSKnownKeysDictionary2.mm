@interface NSKnownKeysDictionary2
+ (id)newInstanceWithSearchStrategy:(id)a3 inData:(id)a4;
@end

@implementation NSKnownKeysDictionary2

+ (id)newInstanceWithSearchStrategy:(id)a3 inData:(id)a4
{
  v6 = [a3 length];
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  result = _PFAllocateObject(a1, 8 * v7);
  *(result + 2) = a3;
  *(result + 3) = -1;
  return result;
}

@end