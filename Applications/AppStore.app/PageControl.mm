@interface PageControl
- (_TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl)initWithCoder:(id)coder;
- (_TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl)initWithFrame:(CGRect)frame;
@end

@implementation PageControl

- (_TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *&self->delegate[OBJC_IVAR____TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for PageControl();
  return [(PageControl *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl)initWithCoder:(id)coder
{
  *&self->delegate[OBJC_IVAR____TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl_delegate] = 0;
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