@interface CardView
- (_TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView)initWithFrame:(CGRect)a3;
- (void)didTapFrom:(id)a3;
@end

@implementation CardView

- (_TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tintView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_viewConstraints) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_view) = 0;
  v10 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tapAction);
  *v10 = 0;
  v10[1] = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(CardView *)&v13 initWithFrame:x, y, width, height];
  sub_598BF4();

  return v11;
}

- (void)didTapFrom:(id)a3
{
  v4 = a3;
  v7 = self;
  if ([v4 state] == &dword_0 + 3 && (v5 = *(&v7->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tapAction)) != 0)
  {

    v5(v6);

    sub_F704(v5);
  }

  else
  {
  }
}

@end