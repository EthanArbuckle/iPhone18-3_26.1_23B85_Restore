@interface CardView
- (_TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView)initWithFrame:(CGRect)frame;
- (void)didTapFrom:(id)from;
@end

@implementation CardView

- (_TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(CardView *)&v13 initWithFrame:x, y, width, height];
  sub_1005FAF70();

  return height;
}

- (void)didTapFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  if ([fromCopy state] == 3 && (v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tapAction)) != 0)
  {

    v5(v6);

    sub_1000167E0(v5);
  }

  else
  {
  }
}

@end