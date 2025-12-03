@interface TransactionPickerRemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (_TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController)initWithCoder:(id)coder;
- (_TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewServiceDidTerminateWithError:(id)error;
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

  interfaceWithProtocol_ = [objc_opt_self() interfaceWithProtocol_];

  return interfaceWithProtocol_;
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

- (void)viewServiceDidTerminateWithError:(id)error
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  errorCopy = error;
  sub_23871AA68(error);
}

- (_TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_23875EA80();
    v7 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController_delegate);
    *v7 = 0;
    v7[1] = 0;
    bundleCopy = bundle;
    name = sub_23875EA50();
  }

  else
  {
    v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController_delegate);
    *v9 = 0;
    v9[1] = 0;
    bundleCopy2 = bundle;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for TransactionPickerRemoteViewController();
  v11 = [(TransactionPickerRemoteViewController *)&v13 initWithNibName:name bundle:bundle];

  return v11;
}

- (_TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController)initWithCoder:(id)coder
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
  coderCopy = coder;
  v7 = [(TransactionPickerRemoteViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end