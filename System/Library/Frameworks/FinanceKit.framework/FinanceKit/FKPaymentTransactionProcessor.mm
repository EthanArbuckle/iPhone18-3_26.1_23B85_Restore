@interface FKPaymentTransactionProcessor
+ (id)makeTransactionProcessor;
- (void)deleteAllTransactionsForPrimaryAccountIdentifier:(id)identifier;
- (void)deleteTransactionWithIdentifier:(id)identifier forPrimaryAccountIdentifier:(id)accountIdentifier;
- (void)insertOrUpdateTransaction:(id)transaction forPrimaryAccountIdentifier:(id)identifier;
@end

@implementation FKPaymentTransactionProcessor

+ (id)makeTransactionProcessor
{
  v2 = [objc_allocWithZone(FKPaymentTransactionProcessor) init];

  return v2;
}

- (void)insertOrUpdateTransaction:(id)transaction forPrimaryAccountIdentifier:(id)identifier
{
  v6 = sub_1B7800868();
  v8 = v7;
  transactionCopy = transaction;
  selfCopy = self;
  sub_1B72FA77C(transactionCopy, v6, v8);
}

- (void)deleteTransactionWithIdentifier:(id)identifier forPrimaryAccountIdentifier:(id)accountIdentifier
{
  v5 = sub_1B7800868();
  v7 = v6;
  v8 = sub_1B7800868();
  v10 = v9;
  selfCopy = self;
  sub_1B72FA940(v5, v7, v8, v10);
}

- (void)deleteAllTransactionsForPrimaryAccountIdentifier:(id)identifier
{
  v4 = sub_1B7800868();
  v6 = v5;
  selfCopy = self;
  sub_1B72FAB14(v4, v6);
}

@end