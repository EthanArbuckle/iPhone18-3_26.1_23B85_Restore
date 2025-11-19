@interface NSObject
- (id)_tui_getClassPropertyList;
@end

@implementation NSObject

- (id)_tui_getClassPropertyList
{
  outCount = 0;
  v2 = objc_opt_class();
  v3 = class_copyPropertyList(v2, &outCount);
  v4 = [NSMutableArray arrayWithCapacity:outCount];
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = property_getName(v3[i]);
      if (Name)
      {
        v7 = [NSString stringWithCString:Name encoding:4];
        [v4 addObject:v7];
      }
    }
  }

  free(v3);
  v8 = [v4 copy];

  return v8;
}

@end