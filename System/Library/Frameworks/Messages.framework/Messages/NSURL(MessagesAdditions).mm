@interface NSURL(MessagesAdditions)
+ (id)__ms_cachesDirectory;
- (BOOL)__ms_conformsToUTI:()MessagesAdditions;
- (id)__ms_UTI;
@end

@implementation NSURL(MessagesAdditions)

- (BOOL)__ms_conformsToUTI:()MessagesAdditions
{
  v4 = a3;
  __ms_UTI = [self __ms_UTI];
  v6 = __ms_UTI;
  if (__ms_UTI)
  {
    v7 = UTTypeConformsTo(__ms_UTI, v4) != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)__ms_UTI
{
  v3 = 0;
  [self getResourceValue:&v3 forKey:*MEMORY[0x1E695DC68] error:0];
  v1 = v3;

  return v1;
}

+ (id)__ms_cachesDirectory
{
  if (__ms_cachesDirectory_once != -1)
  {
    +[NSURL(MessagesAdditions) __ms_cachesDirectory];
  }

  v1 = __ms_cachesDirectory_sCachesDirectory;

  return v1;
}

@end