@interface ContactPickerViewControllerRepresentable.Coordinator
- (_TtCV13FindMyAppCore40ContactPickerViewControllerRepresentable11Coordinator)init;
- (id)searchController:(id)controller composeRecipientForAddress:(id)address;
- (id)searchController:(id)controller tintColorForRecipient:(id)recipient;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view;
@end

@implementation ContactPickerViewControllerRepresentable.Coordinator

- (_TtCV13FindMyAppCore40ContactPickerViewControllerRepresentable11Coordinator)init
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)searchController:(id)controller composeRecipientForAddress:(id)address
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B7900();
  if (swift_weakLoadStrong())
  {
    selfCopy = self;
    v6 = sub_1F0A0();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)searchController:(id)controller tintColorForRecipient:(id)recipient
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  systemGrayColor = [objc_opt_self() systemGrayColor];

  return systemGrayColor;
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  viewCopy = view;
  selfCopy = self;
  sub_C724(controllerCopy);
}

@end