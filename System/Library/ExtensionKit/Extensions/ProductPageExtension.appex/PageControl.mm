@interface PageControl
- (_TtC20ProductPageExtensionP33_F7854DF1AF16A1A2A8136C94AC46A1AB11PageControl)initWithCoder:(id)a3;
- (_TtC20ProductPageExtensionP33_F7854DF1AF16A1A2A8136C94AC46A1AB11PageControl)initWithFrame:(CGRect)a3;
@end

@implementation PageControl

- (_TtC20ProductPageExtensionP33_F7854DF1AF16A1A2A8136C94AC46A1AB11PageControl)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *&self->delegate[OBJC_IVAR____TtC20ProductPageExtensionP33_F7854DF1AF16A1A2A8136C94AC46A1AB11PageControl_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for PageControl();
  return [(PageControl *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC20ProductPageExtensionP33_F7854DF1AF16A1A2A8136C94AC46A1AB11PageControl)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC20ProductPageExtensionP33_F7854DF1AF16A1A2A8136C94AC46A1AB11PageControl_delegate] = 0;
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