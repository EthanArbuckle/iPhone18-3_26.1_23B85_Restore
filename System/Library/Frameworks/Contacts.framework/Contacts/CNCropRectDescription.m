@interface CNCropRectDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)setCNValue:(id)a3 onABPerson:(void *)a4 withDependentPropertiesContext:(id)a5 error:(id *)a6;
- (id)CNValueForContact:(id)a3;
- (void)ABValueForABPerson:(void *)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
- (void)setCNValue:(id)a3 onContact:(id)a4;
@end

@implementation CNCropRectDescription

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v9 = a4;
  [a3 decodeRectForKey:@"_cropRect"];
  v9[33] = v5;
  v9[34] = v6;
  v9[35] = v7;
  v9[36] = v8;
}

- (id)CNValueForContact:(id)a3
{
  v3 = MEMORY[0x1E696B098];
  [a3 cropRect];

  return [v3 valueWithRect:?];
}

- (void)setCNValue:(id)a3 onContact:(id)a4
{
  v5 = a4;
  [a3 rectValue];
  [v5 setCropRect:?];
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A168];
  }

  return a3 != 0;
}

- (void)ABValueForABPerson:(void *)a3
{
  v3 = ABPersonCopyImageDataAndCropRect();
  if (v3)
  {
    CFRelease(v3);
  }

  return [MEMORY[0x1E696B098] valueWithRect:{0, 0, 0, 0, 0, 0}];
}

- (BOOL)setCNValue:(id)a3 onABPerson:(void *)a4 withDependentPropertiesContext:(id)a5 error:(id *)a6
{
  v7 = a3;
  v8 = a5;
  [v7 rectValue];
  [v8 setPendingCropRect:?];

  return 1;
}

@end