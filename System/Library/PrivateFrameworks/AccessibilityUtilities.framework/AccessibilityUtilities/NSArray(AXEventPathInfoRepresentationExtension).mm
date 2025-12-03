@interface NSArray(AXEventPathInfoRepresentationExtension)
- (id)firstPath;
- (id)secondPath;
@end

@implementation NSArray(AXEventPathInfoRepresentationExtension)

- (id)firstPath
{
  v2 = [self count];
  if (v2)
  {
    v3 = [self objectAtIndex:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v2 = [self objectAtIndex:0];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)secondPath
{
  if ([self count] >= 2 && (objc_msgSend(self, "objectAtIndex:", 1), v2 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v2, (isKindOfClass & 1) != 0))
  {
    v4 = [self objectAtIndex:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end