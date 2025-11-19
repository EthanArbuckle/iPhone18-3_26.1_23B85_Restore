@interface QRCodeView
- (_TtC11Diagnostics10QRCodeView)initWithCoder:(id)a3;
- (_TtC11Diagnostics10QRCodeView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation QRCodeView

- (_TtC11Diagnostics10QRCodeView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for QRCodeView();
  v4 = a3;
  v5 = [(QRCodeView *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    [(QRCodeView *)v7 setOpaque:0, v9.receiver, v9.super_class];
  }

  return v6;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for QRCodeView();
  v2 = v3.receiver;
  [(QRCodeView *)&v3 layoutSubviews];
  [v2 setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  _s11Diagnostics10QRCodeViewC4drawyySo6CGRectVF_0();
}

- (_TtC11Diagnostics10QRCodeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end