@interface MessageUITipsManager
+ (void)donateHasSentEmailEvent;
+ (void)donateHasUsedAttachment;
+ (void)setShouldDisplayTo:(BOOL)to;
- (void)controllerDidAppear;
- (void)controllerDidDisappear;
@end

@implementation MessageUITipsManager

- (void)controllerDidAppear
{
  MEMORY[0x1E69E5928](self);
  sub_1BE9239BC();
  MEMORY[0x1E69E5920](self);
}

- (void)controllerDidDisappear
{
  MEMORY[0x1E69E5928](self);
  sub_1BE924C20();
  MEMORY[0x1E69E5920](self);
}

+ (void)setShouldDisplayTo:(BOOL)to
{
  swift_getObjCClassMetadata();
  sub_1BE941E9C();
  swift_getObjCClassMetadata();
  static MessageUITipsManager.setShouldDisplay(to:)();
}

+ (void)donateHasUsedAttachment
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MessageUITipsManager.donateHasUsedAttachment()();
}

+ (void)donateHasSentEmailEvent
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MessageUITipsManager.donateHasSentEmailEvent()();
}

@end