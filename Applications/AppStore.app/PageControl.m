@interface PageControl
- (_TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl)initWithCoder:(id)a3;
- (_TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl)initWithFrame:(CGRect)a3;
@end

@implementation PageControl

- (_TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *&self->delegate[OBJC_IVAR____TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for PageControl();
  return [(PageControl *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for PageControl();
  v5 = a3;
  v6 = [(PageControl *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end