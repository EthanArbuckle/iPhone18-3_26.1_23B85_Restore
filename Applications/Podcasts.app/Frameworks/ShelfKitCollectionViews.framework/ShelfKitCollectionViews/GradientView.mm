@interface GradientView
+ (Class)layerClass;
- (_TtC23ShelfKitCollectionViews12GradientView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation GradientView

+ (Class)layerClass
{
  sub_124C4(0, &qword_40AB68);

  return swift_getObjCClassFromMetadata();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_254D4C(a3);
}

- (_TtC23ShelfKitCollectionViews12GradientView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_kind) = 0;
  v7 = (self + OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_gradient);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_cornerRadius) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews12GradientView_cornerStyle) = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GradientView();
  return [(GradientView *)&v9 initWithFrame:x, y, width, height];
}

@end