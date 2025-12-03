@interface HttpTemplateController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC20ProductPageExtension22HttpTemplateController)init;
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
  sub_10076FF9C();
  fieldCopy = field;
  selfCopy = self;
  sub_10068F54C(fieldCopy, location, length);
  LOBYTE(length) = v11;

  return length & 1;
}

- (void)textFieldDidChange:(id)change
{
  v4 = sub_10075D7BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D79C();
  if (*(&self->super.isa + OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_hasRequiredParameters) == 1)
  {
    selfCopy = self;
    sub_10068F228();
  }

  (*(v5 + 8))(v7, v4);
}

- (_TtC20ProductPageExtension22HttpTemplateController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end