@interface ContactPickerViewControllerRepresentable.Coordinator
- (_TtCV13FindMyAppCore40ContactPickerViewControllerRepresentable11Coordinator)init;
- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4;
- (id)searchController:(id)a3 tintColorForRecipient:(id)a4;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3 anchoredToView:(id)a4;
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

- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4
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
    v5 = self;
    v6 = sub_1F0A0();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)searchController:(id)a3 tintColorForRecipient:(id)a4
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_opt_self() systemGrayColor];

  return v4;
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3 anchoredToView:(id)a4
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_C724(v7);
}

@end