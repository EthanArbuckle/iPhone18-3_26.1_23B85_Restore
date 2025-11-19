@interface CNPropertyDescription(ABSExtentions)
- (uint64_t)convertABSValue:()ABSExtentions toCNValue:error:;
@end

@implementation CNPropertyDescription(ABSExtentions)

- (uint64_t)convertABSValue:()ABSExtentions toCNValue:error:
{
  v6 = [a1 CNValueFromABSValue:?];
  [a1 assertValueType:v6];
  v7 = v6;
  *a4 = v6;

  return 1;
}

@end