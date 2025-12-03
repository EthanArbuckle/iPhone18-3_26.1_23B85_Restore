@interface NSUUID(AXPropertyListCoersion)
- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:()AXPropertyListCoersion;
@end

@implementation NSUUID(AXPropertyListCoersion)

- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:()AXPropertyListCoersion
{
  uUIDString = [self UUIDString];
  v2 = CFUUIDCreateFromString(0, uUIDString);
  v3 = smugglingDictionaryForCFUUID(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

@end