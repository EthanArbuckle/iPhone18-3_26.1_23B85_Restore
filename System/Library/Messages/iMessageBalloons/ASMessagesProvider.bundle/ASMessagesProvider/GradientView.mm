@interface GradientView
+ (Class)layerClass;
- (_TtC18ASMessagesProvider12GradientView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider12GradientView)initWithFrame:(CGRect)frame;
@end

@implementation GradientView

- (_TtC18ASMessagesProvider12GradientView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider12GradientView_kind) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

+ (Class)layerClass
{
  sub_BE70(0, &qword_956A10);

  return swift_getObjCClassFromMetadata();
}

- (_TtC18ASMessagesProvider12GradientView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end