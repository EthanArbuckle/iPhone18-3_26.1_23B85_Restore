@interface JSATasteManager
+ (id)sharedInstance;
- (void)syncTastes;
@end

@implementation JSATasteManager

+ (id)sharedInstance
{
  if (qword_CC070 != -1)
  {
    sub_7F2DC();
  }

  v3 = qword_CC078;

  return v3;
}

- (void)syncTastes
{
  v2 = +[JSABridge sharedInstance];
  [v2 enqueueBlock:&stru_B2568 file:@"JSATasteManager.m" line:32];
}

@end