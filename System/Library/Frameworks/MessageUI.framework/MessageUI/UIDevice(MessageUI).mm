@interface UIDevice(MessageUI)
+ (uint64_t)mf_isPadIdiom;
@end

@implementation UIDevice(MessageUI)

+ (uint64_t)mf_isPadIdiom
{
  if (mf_isPadIdiom_onceToken != -1)
  {
    +[UIDevice(MessageUI) mf_isPadIdiom];
  }

  return mf_isPadIdiom_isPad;
}

@end