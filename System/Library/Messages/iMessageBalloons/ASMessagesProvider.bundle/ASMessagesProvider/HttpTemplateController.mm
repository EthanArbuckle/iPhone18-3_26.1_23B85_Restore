@interface HttpTemplateController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC18ASMessagesProvider22HttpTemplateController)init;
- (void)dealloc;
- (void)textFieldDidChange:(id)a3;
@end

@implementation HttpTemplateController

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for HttpTemplateController();
  [(HttpTemplateController *)&v6 dealloc];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  sub_769240();
  v9 = a3;
  v10 = self;
  sub_65FBC0(v9, location, length);
  LOBYTE(length) = v11;

  return length & 1;
}

- (void)textFieldDidChange:(id)a3
{
  v4 = sub_756CE0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756CC0();
  if (*(&self->super.isa + OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_hasRequiredParameters) == 1)
  {
    v8 = self;
    sub_65F89C();
  }

  (*(v5 + 8))(v7, v4);
}

- (_TtC18ASMessagesProvider22HttpTemplateController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end