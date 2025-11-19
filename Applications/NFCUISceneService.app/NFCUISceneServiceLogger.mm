@interface NFCUISceneServiceLogger
+ (id)defaultLogger;
@end

@implementation NFCUISceneServiceLogger

+ (id)defaultLogger
{
  if (qword_10001DFA0 != -1)
  {
    dispatch_once(&qword_10001DFA0, &stru_100018E20);
  }

  v3 = qword_10001DFA8;

  return v3;
}

@end