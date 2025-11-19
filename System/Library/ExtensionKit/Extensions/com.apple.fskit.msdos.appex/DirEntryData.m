@interface DirEntryData
+ (id)dynamicCast:(id)a3;
@end

@implementation DirEntryData

+ (id)dynamicCast:(id)a3
{
  v3 = a3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end