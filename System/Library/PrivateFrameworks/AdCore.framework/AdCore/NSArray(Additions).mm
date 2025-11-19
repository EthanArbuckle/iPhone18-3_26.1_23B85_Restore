@interface NSArray(Additions)
- (id)arrayCappedToMaxItems:()Additions;
@end

@implementation NSArray(Additions)

- (id)arrayCappedToMaxItems:()Additions
{
  v5 = [a1 count];
  if (v5 <= a3)
  {
    v6 = a1;
  }

  else
  {
    v6 = [a1 subarrayWithRange:{v5 - a3, a3}];
  }

  return v6;
}

@end