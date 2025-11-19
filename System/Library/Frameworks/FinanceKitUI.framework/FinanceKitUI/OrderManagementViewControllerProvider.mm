@interface OrderManagementViewControllerProvider
+ (id)makeViewController;
- (_TtC12FinanceKitUI37OrderManagementViewControllerProvider)init;
@end

@implementation OrderManagementViewControllerProvider

+ (id)makeViewController
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = objc_allocWithZone(type metadata accessor for OrderManagementViewController());
  v3 = sub_238669FD0();

  return v3;
}

- (_TtC12FinanceKitUI37OrderManagementViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for OrderManagementViewControllerProvider();
  v3 = [(OrderManagementViewControllerProvider *)&v5 init];

  return v3;
}

@end