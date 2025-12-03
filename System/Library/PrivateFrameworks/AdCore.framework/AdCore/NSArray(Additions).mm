@interface NSArray(Additions)
- (id)arrayCappedToMaxItems:()Additions;
@end

@implementation NSArray(Additions)

- (id)arrayCappedToMaxItems:()Additions
{
  v5 = [self count];
  if (v5 <= a3)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self subarrayWithRange:{v5 - a3, a3}];
  }

  return selfCopy;
}

@end