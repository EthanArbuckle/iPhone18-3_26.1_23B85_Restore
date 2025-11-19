@interface BSBlockSentinelSignalContext
+ (_WORD)failureContext;
@end

@implementation BSBlockSentinelSignalContext

+ (_WORD)failureContext
{
  v0 = objc_alloc_init(objc_opt_self());
  if (v0)
  {
    v0[4] = 257;
  }

  return v0;
}

@end