@interface NSKnownKeysDictionary2
+ (id)newInstanceWithSearchStrategy:(id)strategy inData:(id)data;
@end

@implementation NSKnownKeysDictionary2

+ (id)newInstanceWithSearchStrategy:(id)strategy inData:(id)data
{
  v6 = [strategy length];
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  result = _PFAllocateObject(self, 8 * v7);
  *(result + 2) = strategy;
  *(result + 3) = -1;
  return result;
}

@end