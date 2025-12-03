@interface CardView
- (_TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView)initWithFrame:(CGRect)frame;
- (void)didTapFrom:(id)from;
@end

@implementation CardView

- (_TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tintView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_viewConstraints) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_view) = 0;
  v10 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tapAction);
  *v10 = 0;
  v10[1] = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  height = [(CardView *)&v13 initWithFrame:x, y, width, height];
  sub_1003668A0();

  return height;
}

- (void)didTapFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  if ([fromCopy state] == 3 && (v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tapAction)) != 0)
  {

    v5(v6);

    sub_10001F63C(v5);
  }

  else
  {
  }
}

@end