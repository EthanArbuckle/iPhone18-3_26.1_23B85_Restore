@interface TransactionPickerHostViewController
- (_TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController)initWithCoder:(id)a3;
- (_TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_UIRemoteViewController)_containedRemoteViewController;
@end

@implementation TransactionPickerHostViewController

- (_TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController)initWithCoder:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_delegate);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_remoteViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_transactionPickerCancellable) = 0;
  result = sub_23875F520();
  __break(1u);
  return result;
}

- (_TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_remoteViewController);

  return v3;
}

@end