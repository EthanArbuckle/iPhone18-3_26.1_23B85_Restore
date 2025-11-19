@interface CardView
- (_TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView)initWithFrame:(CGRect)a3;
- (void)didTapFrom:(id)a3;
@end

@implementation CardView

- (_TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tintView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_viewConstraints) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_view) = 0;
  v10 = (&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tapAction);
  *v10 = 0;
  v10[1] = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(CardView *)&v13 initWithFrame:x, y, width, height];
  sub_1005FAF70();

  return v11;
}

- (void)didTapFrom:(id)a3
{
  v4 = a3;
  v7 = self;
  if ([v4 state] == 3 && (v5 = *(&v7->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tapAction)) != 0)
  {

    v5(v6);

    sub_1000167E0(v5);
  }

  else
  {
  }
}

@end