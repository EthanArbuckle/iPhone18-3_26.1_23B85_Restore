@interface NSString(FSEventAdditions)
+ (__CFString)fpfs_initWithFSEventsFlags:()FSEventAdditions;
@end

@implementation NSString(FSEventAdditions)

+ (__CFString)fpfs_initWithFSEventsFlags:()FSEventAdditions
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = 23;
  v6 = &off_1E793D700;
  do
  {
    if ((*(v6 - 1) & a3) != 0)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v6];
      [v4 addObject:v7];
    }

    v6 += 2;
    --v5;
  }

  while (v5);
  if ([v4 count])
  {
    v8 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v8 = @"none";
  }

  return v8;
}

@end