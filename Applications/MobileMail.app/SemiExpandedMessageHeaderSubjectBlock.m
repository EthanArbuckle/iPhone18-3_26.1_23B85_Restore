@interface SemiExpandedMessageHeaderSubjectBlock
- (_TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock)initWithHandler:(id)a3;
- (void)createPrimaryViews;
- (void)displayMessageUsingViewModel:(id)a3;
- (void)tappedHeader:(id)a3;
@end

@implementation SemiExpandedMessageHeaderSubjectBlock

- (_TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock)initWithHandler:(id)a3
{
  v5 = _Block_copy(a3);
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  return sub_10042A68C(sub_1003F7888, v3);
}

- (void)displayMessageUsingViewModel:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_10042AA64(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)createPrimaryViews
{
  _objc_retain(self);
  sub_10042AEF4();
  _objc_release(self);
}

- (void)tappedHeader:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_10042C4B8();
  _objc_release(self);
  _objc_release(a3);
}

@end