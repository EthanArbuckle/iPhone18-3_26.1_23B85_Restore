@interface CNPolicy(UIAdditions)
- (uint64_t)_cnui_maximumNumberOfValuesForProperty:()UIAdditions;
@end

@implementation CNPolicy(UIAdditions)

- (uint64_t)_cnui_maximumNumberOfValuesForProperty:()UIAdditions
{
  v4 = a3;
  if ([v4 isEqualToString:@"birthdays"])
  {
    v5 = [self maximumCountOfValuesForContactProperty:*MEMORY[0x1E695C1D0]];
    v6 = [self maximumCountOfValuesForContactProperty:*MEMORY[0x1E695C318]] + v5;
  }

  else
  {
    v6 = [self maximumCountOfValuesForContactProperty:v4];
  }

  return v6;
}

@end