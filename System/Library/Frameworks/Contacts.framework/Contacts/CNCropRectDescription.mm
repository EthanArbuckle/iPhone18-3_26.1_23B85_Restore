@interface CNCropRectDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)setCNValue:(id)value onABPerson:(void *)person withDependentPropertiesContext:(id)context error:(id *)error;
- (id)CNValueForContact:(id)contact;
- (void)ABValueForABPerson:(void *)person;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
- (void)setCNValue:(id)value onContact:(id)contact;
@end

@implementation CNCropRectDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  [coder decodeRectForKey:@"_cropRect"];
  contactCopy[33] = v5;
  contactCopy[34] = v6;
  contactCopy[35] = v7;
  contactCopy[36] = v8;
}

- (id)CNValueForContact:(id)contact
{
  v3 = MEMORY[0x1E696B098];
  [contact cropRect];

  return [v3 valueWithRect:?];
}

- (void)setCNValue:(id)value onContact:(id)contact
{
  contactCopy = contact;
  [value rectValue];
  [contactCopy setCropRect:?];
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A168];
  }

  return d != 0;
}

- (void)ABValueForABPerson:(void *)person
{
  v3 = ABPersonCopyImageDataAndCropRect();
  if (v3)
  {
    CFRelease(v3);
  }

  return [MEMORY[0x1E696B098] valueWithRect:{0, 0, 0, 0, 0, 0}];
}

- (BOOL)setCNValue:(id)value onABPerson:(void *)person withDependentPropertiesContext:(id)context error:(id *)error
{
  valueCopy = value;
  contextCopy = context;
  [valueCopy rectValue];
  [contextCopy setPendingCropRect:?];

  return 1;
}

@end