@interface NSKeyedUnarchiver(LaunchServicesAdditions)
+ (id)ls_unarchivedObjectOfClass:()LaunchServicesAdditions fromData:error:;
@end

@implementation NSKeyedUnarchiver(LaunchServicesAdditions)

+ (id)ls_unarchivedObjectOfClass:()LaunchServicesAdditions fromData:error:
{
  v7 = [a1 unarchivedObjectOfClass:? fromData:? error:?];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:a3];
    v9 = _LSIsKindOfClasses(v7, v8);

    if ((v9 & 1) == 0)
    {

      if (a5)
      {
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "+[NSKeyedUnarchiver(LaunchServicesAdditions) ls_unarchivedObjectOfClass:fromData:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/NSCoder+LaunchServicesAdditions.m", 161);
        *a5 = v7 = 0;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end