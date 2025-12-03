@interface GradientView
+ (Class)layerClass;
- (_TtC23ShelfKitCollectionViews12GradientView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation GradientView

+ (Class)layerClass
{
  sub_124C4(0, &qword_40AB68);

  return swift_getObjCClassFromMetadata();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_254D4C(change);
}

- (_TtC23ShelfKitCollectionViews12GradientView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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