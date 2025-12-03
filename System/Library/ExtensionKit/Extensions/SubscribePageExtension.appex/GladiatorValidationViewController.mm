@interface GladiatorValidationViewController
- (_TtC22SubscribePageExtension33GladiatorValidationViewController)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension33GladiatorValidationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC22SubscribePageExtension33GladiatorValidationViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation GladiatorValidationViewController

- (_TtC22SubscribePageExtension33GladiatorValidationViewController)initWithCoder:(id)coder
{
  v4 = sub_100744DB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension33GladiatorValidationViewController_gladiator;
  sub_10074F804();
  *(&self->super.super.super.super.isa + v8) = sub_10074F7F4();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension33GladiatorValidationViewController_rules;
  sub_100744DA4();
  v10 = sub_100744D94();
  (*(v5 + 8))(v7, v4);
  *(&self->super.super.super.super.isa + v9) = v10;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100261A04(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  viewCopy = view;
  selfCopy = self;
  sub_100261E58();

  (*(v7 + 8))(v9, v6);
}

- (_TtC22SubscribePageExtension33GladiatorValidationViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension33GladiatorValidationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end