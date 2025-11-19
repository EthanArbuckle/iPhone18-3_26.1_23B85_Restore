@interface TransactionPickerRemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (_TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController)initWithCoder:(id)a3;
- (_TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation TransactionPickerRemoteViewController

+ (id)serviceViewControllerInterface
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() interfaceWithProtocol_];

  return v2;
}

+ (id)exportedInterface
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = _s12FinanceKitUI35TransactionPickerExportedInterfacesO14remoteProtocolSo14NSXPCInterfaceCyFZ_0();

  return v2;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  v6 = a3;
  sub_23871AA68(a3);
}

- (_TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_23875EA80();
    v7 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController_delegate);
    *v7 = 0;
    v7[1] = 0;
    v8 = a4;
    a3 = sub_23875EA50();
  }

  else
  {
    v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController_delegate);
    *v9 = 0;
    v9[1] = 0;
    v10 = a4;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for TransactionPickerRemoteViewController();
  v11 = [(TransactionPickerRemoteViewController *)&v13 initWithNibName:a3 bundle:a4];

  return v11;
}

- (_TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController)initWithCoder:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController_delegate);
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TransactionPickerRemoteViewController();
  v6 = a3;
  v7 = [(TransactionPickerRemoteViewController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end