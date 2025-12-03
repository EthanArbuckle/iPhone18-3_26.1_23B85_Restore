@interface PageControlView.Coordinator
- (_TtCV10FitnessApp15PageControlView11Coordinator)init;
- (void)updateCurrentPageWithSender:(id)sender;
@end

@implementation PageControlView.Coordinator

- (void)updateCurrentPageWithSender:(id)sender
{

  senderCopy = sender;
  selfCopy = self;
  [senderCopy currentPage];

  sub_100140278(&qword_1008E0EA0);
  Binding.wrappedValue.setter();
}

- (_TtCV10FitnessApp15PageControlView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end