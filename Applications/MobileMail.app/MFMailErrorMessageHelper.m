@interface MFMailErrorMessageHelper
+ (id)invalidRecipientErrorMessageWithRecipients:(id)a3;
@end

@implementation MFMailErrorMessageHelper

+ (id)invalidRecipientErrorMessageWithRecipients:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  if (a3)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(a3);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  swift_getObjCClassMetadata();
  static MFMailErrorMessageHelper.invalidRecipientErrorMessage(withRecipients:)(v6);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

@end