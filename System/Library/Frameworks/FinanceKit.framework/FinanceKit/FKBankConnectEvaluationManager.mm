@interface FKBankConnectEvaluationManager
- (FKBankConnectEvaluationManager)init;
@end

@implementation FKBankConnectEvaluationManager

- (FKBankConnectEvaluationManager)init
{
  v6.receiver = self;
  v6.super_class = FKBankConnectEvaluationManager;
  v2 = [(FKBankConnectEvaluationManager *)&v6 init];
  if (v2)
  {
    v3 = +[_TtC10FinanceKit28BankConnectEvaluationManager makeManager];
    wrappedManager = v2->_wrappedManager;
    v2->_wrappedManager = v3;
  }

  return v2;
}

@end