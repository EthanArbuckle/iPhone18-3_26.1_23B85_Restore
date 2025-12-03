@interface NSValue(CAObjectCGAffineTransformAdditions)
- (const)CA_CGAffineTransformValue;
@end

@implementation NSValue(CAObjectCGAffineTransformAdditions)

- (const)CA_CGAffineTransformValue
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  result = NSGetSizeAndAlignment([self objCType], v7, 0);
  if (v7[0] > 0x2F)
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return [self getValue:a2 size:48];
  }

  else
  {
    v5 = MEMORY[0x1E695EFD0];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *a2 = *MEMORY[0x1E695EFD0];
    a2[1] = v6;
    a2[2] = *(v5 + 32);
  }

  return result;
}

@end