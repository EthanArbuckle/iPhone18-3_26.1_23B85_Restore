@interface PageControl.Coordinator
- (_TtCV10ContactsUI11PageControl11Coordinator)init;
- (void)updateCurrentPageWithSender:(id)sender;
@end

@implementation PageControl.Coordinator

- (void)updateCurrentPageWithSender:(id)sender
{

  senderCopy = sender;
  selfCopy = self;
  [senderCopy currentPage];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72770);
  sub_199DF997C();
}

- (_TtCV10ContactsUI11PageControl11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end