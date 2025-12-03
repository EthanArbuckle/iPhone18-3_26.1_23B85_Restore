@interface SemiExpandedMessageHeaderSubjectBlock
- (_TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock)initWithHandler:(id)handler;
- (void)createPrimaryViews;
- (void)displayMessageUsingViewModel:(id)model;
- (void)tappedHeader:(id)header;
@end

@implementation SemiExpandedMessageHeaderSubjectBlock

- (_TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock)initWithHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  return sub_10042A68C(sub_1003F7888, v3);
}

- (void)displayMessageUsingViewModel:(id)model
{
  _objc_retain(model);
  _objc_retain(self);
  sub_10042AA64(model);
  _objc_release(self);
  _objc_release(model);
}

- (void)createPrimaryViews
{
  _objc_retain(self);
  sub_10042AEF4();
  _objc_release(self);
}

- (void)tappedHeader:(id)header
{
  _objc_retain(header);
  _objc_retain(self);
  sub_10042C4B8();
  _objc_release(self);
  _objc_release(header);
}

@end