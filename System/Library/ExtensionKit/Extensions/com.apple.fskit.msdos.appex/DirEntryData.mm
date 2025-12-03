@interface DirEntryData
+ (id)dynamicCast:(id)cast;
@end

@implementation DirEntryData

+ (id)dynamicCast:(id)cast
{
  castCopy = cast;
  if (objc_opt_isKindOfClass())
  {
    v4 = castCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end