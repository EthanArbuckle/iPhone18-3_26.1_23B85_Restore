@interface DuplicatesUIHelper
- (_TtC10ContactsUI18DuplicatesUIHelper)init;
- (_TtC10ContactsUI18DuplicatesUIHelper)initWithDelegate:(id)delegate;
- (id)duplicateContactsListViewController:(BOOL)controller;
@end

@implementation DuplicatesUIHelper

- (_TtC10ContactsUI18DuplicatesUIHelper)initWithDelegate:(id)delegate
{
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate) = delegate;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DuplicatesUIHelper();
  swift_unknownObjectRetain();
  return [(DuplicatesUIHelper *)&v4 init];
}

- (id)duplicateContactsListViewController:(BOOL)controller
{
  selfCopy = self;
  v5 = sub_199B1D09C(controller);

  return v5;
}

- (_TtC10ContactsUI18DuplicatesUIHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end