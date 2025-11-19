@interface GroupedTransactionsViewDataProvider
- (void)performFetchAndStartObservingNotifications;
@end

@implementation GroupedTransactionsViewDataProvider

- (void)performFetchAndStartObservingNotifications
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *self->transactionChangesObserver;
  sub_238453D6C(&qword_27DF09A38, type metadata accessor for GroupedTransactionsViewDataProvider);
  swift_retain_n();
  sub_23875A2C0();
  v4 = *self->transactionChangesObserver;
  sub_23875A2A0();
  sub_238450C60();
}

@end