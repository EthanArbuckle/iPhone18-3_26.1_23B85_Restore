@interface GradientView
+ (Class)layerClass;
- (_TtC8AppStore12GradientView)initWithCoder:(id)coder;
- (_TtC8AppStore12GradientView)initWithFrame:(CGRect)frame;
@end

@implementation GradientView

- (_TtC8AppStore12GradientView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12GradientView_colors) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12GradientView_kind) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (Class)layerClass
{
  sub_100005744(0, &qword_100978A80);

  return swift_getObjCClassFromMetadata();
}

- (_TtC8AppStore12GradientView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end