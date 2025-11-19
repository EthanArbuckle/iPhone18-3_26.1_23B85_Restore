@interface AMKPurgeability
+ (BOOL)amk_markPurgeableAt:(int)a3 purgeable:(BOOL)a4 error:(id *)a5;
+ (BOOL)amk_markPurgeableAtURL:(id)a3 purgeable:(BOOL)a4 error:(id *)a5;
@end

@implementation AMKPurgeability

+ (BOOL)amk_markPurgeableAt:(int)a3 purgeable:(BOOL)a4 error:(id *)a5
{
  v6 = 65669;
  if (!a4)
  {
    v6 = 0;
  }

  v9 = v6;
  v7 = ffsctl(a3, 0xC0084A44uLL, &v9, 0);
  if (v7 < 0)
  {
    *a5 = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
  }

  return v7 >= 0;
}

+ (BOOL)amk_markPurgeableAtURL:(id)a3 purgeable:(BOOL)a4 error:(id *)a5
{
  v6 = 65669;
  if (!a4)
  {
    v6 = 0;
  }

  v9 = v6;
  v7 = fsctl([a3 fileSystemRepresentation], 0xC0084A44uLL, &v9, 0);
  if (v7 < 0)
  {
    *a5 = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
  }

  return v7 >= 0;
}

@end