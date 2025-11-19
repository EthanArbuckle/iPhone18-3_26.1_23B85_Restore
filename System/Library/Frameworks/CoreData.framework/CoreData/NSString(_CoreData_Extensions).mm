@interface NSString(_CoreData_Extensions)
- (uint64_t)_caseInsensitiveNumericCompare:()_CoreData_Extensions;
@end

@implementation NSString(_CoreData_Extensions)

- (uint64_t)_caseInsensitiveNumericCompare:()_CoreData_Extensions
{
  v5 = [a1 length];

  return [a1 compare:a3 options:65 range:{0, v5}];
}

@end