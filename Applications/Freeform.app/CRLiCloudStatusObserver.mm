@interface CRLiCloudStatusObserver
+ (void)qa_resetConnectICloudDialog:(id)dialog;
- (void)accountDidChange;
@end

@implementation CRLiCloudStatusObserver

- (void)accountDidChange
{

  sub_1000067FC();
  sub_100C5D0B4();
}

+ (void)qa_resetConnectICloudDialog:(id)dialog
{
  if (dialog)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [standardUserDefaults removeObjectForKey:v4];

  sub_10000CAAC(v5, &unk_1019F4D00);
}

@end