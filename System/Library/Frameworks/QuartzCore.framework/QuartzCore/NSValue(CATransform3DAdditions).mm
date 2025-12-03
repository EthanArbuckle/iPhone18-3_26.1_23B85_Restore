@interface NSValue(CATransform3DAdditions)
- (const)CATransform3DValue;
@end

@implementation NSValue(CATransform3DAdditions)

- (const)CATransform3DValue
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  result = NSGetSizeAndAlignment([self objCType], v5, 0);
  if (v5[0] > 0x7F)
  {
    *&a2->m41 = 0u;
    *&a2->m43 = 0u;
    *&a2->m31 = 0u;
    *&a2->m33 = 0u;
    *&a2->m21 = 0u;
    *&a2->m23 = 0u;
    *&a2->m11 = 0u;
    *&a2->m13 = 0u;

    return [self getValue:a2 size:128];
  }

  else
  {
    *a2 = CATransform3DIdentity;
  }

  return result;
}

@end