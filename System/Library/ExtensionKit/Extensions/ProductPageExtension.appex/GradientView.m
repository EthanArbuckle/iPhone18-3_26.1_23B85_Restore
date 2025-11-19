@interface GradientView
+ (Class)layerClass;
- (_TtC20ProductPageExtension12GradientView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension12GradientView)initWithFrame:(CGRect)a3;
@end

@implementation GradientView

- (_TtC20ProductPageExtension12GradientView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12GradientView_kind) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

+ (Class)layerClass
{
  sub_100016F40(0, &qword_10094C6A8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC20ProductPageExtension12GradientView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end