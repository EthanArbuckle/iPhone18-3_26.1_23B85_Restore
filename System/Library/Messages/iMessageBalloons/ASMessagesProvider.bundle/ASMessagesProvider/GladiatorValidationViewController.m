@interface GladiatorValidationViewController
- (_TtC18ASMessagesProvider33GladiatorValidationViewController)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider33GladiatorValidationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC18ASMessagesProvider33GladiatorValidationViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation GladiatorValidationViewController

- (_TtC18ASMessagesProvider33GladiatorValidationViewController)initWithCoder:(id)a3
{
  v4 = sub_75AC10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider33GladiatorValidationViewController_gladiator;
  sub_7657C0();
  *(&self->super.super.super.super.isa + v8) = sub_7657B0();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider33GladiatorValidationViewController_rules;
  sub_75AC00();
  v10 = sub_75ABF0();
  (*(v5 + 8))(v7, v4);
  *(&self->super.super.super.super.isa + v9) = v10;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = a3;
  v11 = self;
  v12 = sub_286948(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = a3;
  v11 = self;
  sub_286D9C();

  (*(v7 + 8))(v9, v6);
}

- (_TtC18ASMessagesProvider33GladiatorValidationViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider33GladiatorValidationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end