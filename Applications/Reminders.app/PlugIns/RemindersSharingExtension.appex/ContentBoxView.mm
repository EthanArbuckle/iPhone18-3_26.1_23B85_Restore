@interface ContentBoxView
- (_TtC25RemindersSharingExtensionP33_3DFB6299A640D80BFB905592CB930ECE14ContentBoxView)initWithArrangedSubviews:(id)isa;
- (_TtC25RemindersSharingExtensionP33_3DFB6299A640D80BFB905592CB930ECE14ContentBoxView)initWithCoder:(id)coder;
- (_TtC25RemindersSharingExtensionP33_3DFB6299A640D80BFB905592CB930ECE14ContentBoxView)initWithFrame:(CGRect)frame;
- (_TtC25RemindersSharingExtensionP33_E7C88EEEC50FCCEB875B4EAFA19CA59B14ContentBoxView)initWithArrangedSubviews:(id)isa;
- (_TtC25RemindersSharingExtensionP33_E7C88EEEC50FCCEB875B4EAFA19CA59B14ContentBoxView)initWithCoder:(id)coder;
- (_TtC25RemindersSharingExtensionP33_E7C88EEEC50FCCEB875B4EAFA19CA59B14ContentBoxView)initWithFrame:(CGRect)frame;
@end

@implementation ContentBoxView

- (_TtC25RemindersSharingExtensionP33_E7C88EEEC50FCCEB875B4EAFA19CA59B14ContentBoxView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ContentBoxView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC25RemindersSharingExtensionP33_E7C88EEEC50FCCEB875B4EAFA19CA59B14ContentBoxView)initWithArrangedSubviews:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100016A40();
    sub_10004C720();
    isa = sub_10004C710().super.isa;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(ContentBoxView *)&v8 initWithArrangedSubviews:isa];

  return v6;
}

- (_TtC25RemindersSharingExtensionP33_E7C88EEEC50FCCEB875B4EAFA19CA59B14ContentBoxView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(ContentBoxView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC25RemindersSharingExtensionP33_3DFB6299A640D80BFB905592CB930ECE14ContentBoxView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ContentBoxView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC25RemindersSharingExtensionP33_3DFB6299A640D80BFB905592CB930ECE14ContentBoxView)initWithArrangedSubviews:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100009FF0(0, &qword_1000674B8, UIView_ptr);
    sub_10004C720();
    isa = sub_10004C710().super.isa;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(ContentBoxView *)&v8 initWithArrangedSubviews:isa];

  return v6;
}

- (_TtC25RemindersSharingExtensionP33_3DFB6299A640D80BFB905592CB930ECE14ContentBoxView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(ContentBoxView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end