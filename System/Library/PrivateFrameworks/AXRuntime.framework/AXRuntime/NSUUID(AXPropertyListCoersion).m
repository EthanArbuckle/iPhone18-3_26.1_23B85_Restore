@interface NSUUID(AXPropertyListCoersion)
- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:()AXPropertyListCoersion;
@end

@implementation NSUUID(AXPropertyListCoersion)

- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:()AXPropertyListCoersion
{
  v1 = [a1 UUIDString];
  v2 = CFUUIDCreateFromString(0, v1);
  v3 = smugglingDictionaryForCFUUID(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

@end