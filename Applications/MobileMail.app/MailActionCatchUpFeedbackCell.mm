@interface MailActionCatchUpFeedbackCell
+ (NSString)reusableIdentifier;
- (BOOL)_disableRasterizeInAnimations;
- (_TtP10MobileMail37MailActionCatchUpFeedbackCellDelegate_)delegate;
- (void)handleThumbsDownWithSender:(id)sender;
- (void)handleThumbsUpWithSender:(id)sender;
- (void)setDelegate:(id)delegate;
@end

@implementation MailActionCatchUpFeedbackCell

- (_TtP10MobileMail37MailActionCatchUpFeedbackCellDelegate_)delegate
{
  _objc_retain(self);
  v4 = sub_10034D500();
  _objc_release(self);

  return v4;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_10034D5C8();
  _objc_release(self);
}

+ (NSString)reusableIdentifier
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  sub_10034DCE8();
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (BOOL)_disableRasterizeInAnimations
{
  _objc_retain(self);
  sub_10034DFDC();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)handleThumbsUpWithSender:(id)sender
{
  _objc_retain(sender);
  _objc_retain(self);
  sub_10034E488();
  _objc_release(self);
  _objc_release(sender);
}

- (void)handleThumbsDownWithSender:(id)sender
{
  _objc_retain(sender);
  _objc_retain(self);
  sub_10034E59C();
  _objc_release(self);
  _objc_release(sender);
}

@end