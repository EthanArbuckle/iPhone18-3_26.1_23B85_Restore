@interface PageControl
- (_TtC22SubscribePageExtensionP33_1716A80D629D077B00382A9108BDDA4211PageControl)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtensionP33_1716A80D629D077B00382A9108BDDA4211PageControl)initWithFrame:(CGRect)frame;
@end

@implementation PageControl

- (_TtC22SubscribePageExtensionP33_1716A80D629D077B00382A9108BDDA4211PageControl)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *&self->delegate[OBJC_IVAR____TtC22SubscribePageExtensionP33_1716A80D629D077B00382A9108BDDA4211PageControl_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for PageControl();
  return [(PageControl *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC22SubscribePageExtensionP33_1716A80D629D077B00382A9108BDDA4211PageControl)initWithCoder:(id)coder
{
  *&self->delegate[OBJC_IVAR____TtC22SubscribePageExtensionP33_1716A80D629D077B00382A9108BDDA4211PageControl_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for PageControl();
  coderCopy = coder;
  v6 = [(PageControl *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end