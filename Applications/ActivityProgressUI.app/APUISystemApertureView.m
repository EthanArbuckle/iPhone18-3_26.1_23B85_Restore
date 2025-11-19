@interface APUISystemApertureView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC18ActivityProgressUI22APUISystemApertureView)init;
- (_TtC18ActivityProgressUI22APUISystemApertureView)initWithCoder:(id)a3;
- (_TtC18ActivityProgressUI22APUISystemApertureView)initWithFrame:(CGRect)a3;
@end

@implementation APUISystemApertureView

- (_TtC18ActivityProgressUI22APUISystemApertureView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for APUISystemApertureView();
  return [(APUISystemApertureView *)&v3 initWithFrame:0.0, 0.0, 23.0, 23.0];
}

- (_TtC18ActivityProgressUI22APUISystemApertureView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x58);
  v4 = self;
  LOBYTE(v3) = v3();

  v5 = 48.3333;
  if ((v3 & 1) == 0)
  {
    v5 = 23.0;
  }

  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v5 = *((swift_isaMask & self->super.super.super.isa) + 0x58);
  v6 = self;
  LOBYTE(v5) = v5();

  v7 = 48.3333;
  if ((v5 & 1) == 0)
  {
    v7 = 23.0;
  }

  v8 = v7;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  v4 = 48.3333;
  if ((a4 + 1) < 5)
  {
    v4 = 23.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtC18ActivityProgressUI22APUISystemApertureView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end