@interface HttpTemplateController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC18ASMessagesProvider22HttpTemplateController)init;
- (void)dealloc;
- (void)textFieldDidChange:(id)change;
@end

@implementation HttpTemplateController

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for HttpTemplateController();
  [(HttpTemplateController *)&v6 dealloc];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  sub_769240();
  fieldCopy = field;
  selfCopy = self;
  sub_65FBC0(fieldCopy, location, length);
  LOBYTE(length) = v11;

  return length & 1;
}

- (void)textFieldDidChange:(id)change
{
  v4 = sub_756CE0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756CC0();
  if (*(&self->super.isa + OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_hasRequiredParameters) == 1)
  {
    selfCopy = self;
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