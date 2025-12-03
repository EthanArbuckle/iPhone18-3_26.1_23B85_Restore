@interface APUISystemApertureView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC18ActivityProgressUI22APUISystemApertureView)init;
- (_TtC18ActivityProgressUI22APUISystemApertureView)initWithCoder:(id)coder;
- (_TtC18ActivityProgressUI22APUISystemApertureView)initWithFrame:(CGRect)frame;
@end

@implementation APUISystemApertureView

- (_TtC18ActivityProgressUI22APUISystemApertureView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for APUISystemApertureView();
  return [(APUISystemApertureView *)&v3 initWithFrame:0.0, 0.0, 23.0, 23.0];
}

- (_TtC18ActivityProgressUI22APUISystemApertureView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x58);
  selfCopy = self;
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v5 = *((swift_isaMask & self->super.super.super.isa) + 0x58);
  selfCopy = self;
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

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  v4 = 48.3333;
  if ((mode + 1) < 5)
  {
    v4 = 23.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtC18ActivityProgressUI22APUISystemApertureView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end