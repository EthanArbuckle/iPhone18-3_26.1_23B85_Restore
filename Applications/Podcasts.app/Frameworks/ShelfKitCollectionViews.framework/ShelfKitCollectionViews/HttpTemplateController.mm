@interface HttpTemplateController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC23ShelfKitCollectionViews22HttpTemplateController)init;
- (void)dealloc;
- (void)textFieldDidChange:(id)change;
@end

@implementation HttpTemplateController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(HttpTemplateController *)&v7 dealloc];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  sub_30C0D8();
  fieldCopy = field;
  selfCopy = self;
  sub_25A4B8(fieldCopy, location, length);
  LOBYTE(length) = v11;

  return length & 1;
}

- (void)textFieldDidChange:(id)change
{
  v4 = sub_3019D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3019C8();
  if (*(&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews22HttpTemplateController_hasRequiredParameters) == 1)
  {
    selfCopy = self;
    sub_25A12C();
  }

  (*(v5 + 8))(v7, v4);
}

- (_TtC23ShelfKitCollectionViews22HttpTemplateController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end