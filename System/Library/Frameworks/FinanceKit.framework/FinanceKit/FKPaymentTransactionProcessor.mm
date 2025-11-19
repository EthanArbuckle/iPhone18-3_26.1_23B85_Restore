@interface FKPaymentTransactionProcessor
+ (id)makeTransactionProcessor;
- (void)deleteAllTransactionsForPrimaryAccountIdentifier:(id)a3;
- (void)deleteTransactionWithIdentifier:(id)a3 forPrimaryAccountIdentifier:(id)a4;
- (void)insertOrUpdateTransaction:(id)a3 forPrimaryAccountIdentifier:(id)a4;
@end

@implementation FKPaymentTransactionProcessor

+ (id)makeTransactionProcessor
{
  v2 = [objc_allocWithZone(FKPaymentTransactionProcessor) init];

  return v2;
}

- (void)insertOrUpdateTransaction:(id)a3 forPrimaryAccountIdentifier:(id)a4
{
  v6 = sub_1B7800868();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1B72FA77C(v9, v6, v8);
}

- (void)deleteTransactionWithIdentifier:(id)a3 forPrimaryAccountIdentifier:(id)a4
{
  v5 = sub_1B7800868();
  v7 = v6;
  v8 = sub_1B7800868();
  v10 = v9;
  v11 = self;
  sub_1B72FA940(v5, v7, v8, v10);
}

- (void)deleteAllTransactionsForPrimaryAccountIdentifier:(id)a3
{
  v4 = sub_1B7800868();
  v6 = v5;
  v7 = self;
  sub_1B72FAB14(v4, v6);
}

@end