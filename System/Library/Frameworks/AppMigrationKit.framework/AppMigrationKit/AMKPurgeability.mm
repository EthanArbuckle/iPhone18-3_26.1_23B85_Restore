@interface AMKPurgeability
+ (BOOL)amk_markPurgeableAt:(int)at purgeable:(BOOL)purgeable error:(id *)error;
+ (BOOL)amk_markPurgeableAtURL:(id)l purgeable:(BOOL)purgeable error:(id *)error;
@end

@implementation AMKPurgeability

+ (BOOL)amk_markPurgeableAt:(int)at purgeable:(BOOL)purgeable error:(id *)error
{
  v6 = 65669;
  if (!purgeable)
  {
    v6 = 0;
  }

  v9 = v6;
  v7 = ffsctl(at, 0xC0084A44uLL, &v9, 0);
  if (v7 < 0)
  {
    *error = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
  }

  return v7 >= 0;
}

+ (BOOL)amk_markPurgeableAtURL:(id)l purgeable:(BOOL)purgeable error:(id *)error
{
  v6 = 65669;
  if (!purgeable)
  {
    v6 = 0;
  }

  v9 = v6;
  v7 = fsctl([l fileSystemRepresentation], 0xC0084A44uLL, &v9, 0);
  if (v7 < 0)
  {
    *error = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
  }

  return v7 >= 0;
}

@end