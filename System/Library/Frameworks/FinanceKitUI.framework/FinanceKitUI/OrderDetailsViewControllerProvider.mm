@interface OrderDetailsViewControllerProvider
+ (id)makeViewControllerWithOrderTypeIdentifier:(id)identifier orderIdentifier:(id)orderIdentifier fulfillmentIdentifier:(id)fulfillmentIdentifier;
- (_TtC12FinanceKitUI34OrderDetailsViewControllerProvider)init;
@end

@implementation OrderDetailsViewControllerProvider

+ (id)makeViewControllerWithOrderTypeIdentifier:(id)identifier orderIdentifier:(id)orderIdentifier fulfillmentIdentifier:(id)fulfillmentIdentifier
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_23875EA80();
  v8 = v7;
  v9 = sub_23875EA80();
  v11 = v10;
  if (fulfillmentIdentifier)
  {
    fulfillmentIdentifier = sub_23875EA80();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_allocWithZone(type metadata accessor for OrderDetailsViewController());
  v15 = &v14[qword_27DF0FBE0];
  *v15 = v6;
  v15[1] = v8;
  v16 = &v14[qword_27DF0FBE8];
  *v16 = v9;
  v16[1] = v11;
  v17 = &v14[qword_27DF0FBF0];
  *v17 = fulfillmentIdentifier;
  v17[1] = v13;
  v18 = sub_238669FD0();

  return v18;
}

- (_TtC12FinanceKitUI34OrderDetailsViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for OrderDetailsViewControllerProvider();
  v3 = [(OrderDetailsViewControllerProvider *)&v5 init];

  return v3;
}

@end