@interface MFMailErrorMessageHelper
+ (id)invalidRecipientErrorMessageWithRecipients:(id)recipients;
@end

@implementation MFMailErrorMessageHelper

+ (id)invalidRecipientErrorMessageWithRecipients:(id)recipients
{
  swift_getObjCClassMetadata();
  _objc_retain(recipients);
  if (recipients)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(recipients);
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