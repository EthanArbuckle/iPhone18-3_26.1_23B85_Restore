@interface CRLiCloudStatusObserver
+ (void)qa_resetConnectICloudDialog:(id)a3;
- (void)accountDidChange;
@end

@implementation CRLiCloudStatusObserver

- (void)accountDidChange
{

  sub_1000067FC();
  sub_100C5D0B4();
}

+ (void)qa_resetConnectICloudDialog:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [v3 removeObjectForKey:v4];

  sub_10000CAAC(v5, &unk_1019F4D00);
}

@end