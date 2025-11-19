@interface FMPlusSignButton
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (_TtC6FindMy16FMPlusSignButton)initWithCoder:(id)a3;
- (_TtC6FindMy16FMPlusSignButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation FMPlusSignButton

- (_TtC6FindMy16FMPlusSignButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMy16FMPlusSignButton_isRTLLanguage) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000EEAD0();
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = type metadata accessor for FMPlusSignButton();
  v25.receiver = self;
  v25.super_class = v8;
  v9 = self;
  [(FMPlusSignButton *)&v25 titleRectForContentRect:x, y, width, height];
  v13 = v12;
  v15 = v14;
  if (*(&v9->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMy16FMPlusSignButton_isRTLLanguage) == 1)
  {
    v24.receiver = v9;
    v24.super_class = v8;
    [(FMPlusSignButton *)&v24 imageRectForContentRect:x, y, width, height];
    v17 = v16;

    v18 = width - v17 + -5.0;
    v19 = 0.0;
  }

  else
  {
    v20 = v10;
    v21 = v11;

    v18 = v21;
    v19 = v20 + 5.0;
  }

  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v18;
  result.origin.y = v22;
  result.origin.x = v19;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21.receiver = self;
  v21.super_class = type metadata accessor for FMPlusSignButton();
  v7 = v21.receiver;
  [(FMPlusSignButton *)&v21 imageRectForContentRect:x, y, width, height];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (*(v7 + OBJC_IVAR____TtC6FindMy16FMPlusSignButton_isRTLLanguage) == 1)
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    MaxX = CGRectGetMaxX(v22);

    v16 = MaxX - v12;
  }

  else
  {
    v17 = v8;

    v16 = v17;
  }

  v18 = v10 + 1.0;
  v19 = v12;
  v20 = v14;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v16;
  return result;
}

- (_TtC6FindMy16FMPlusSignButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end