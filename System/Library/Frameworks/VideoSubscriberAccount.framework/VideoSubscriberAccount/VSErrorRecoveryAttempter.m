@interface VSErrorRecoveryAttempter
- (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4;
- (VSErrorRecoveryAttempter)init;
- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 delegate:(id)a5 didRecoverSelector:(SEL)a6 contextInfo:(void *)a7;
@end

@implementation VSErrorRecoveryAttempter

- (VSErrorRecoveryAttempter)init
{
  v8.receiver = self;
  v8.super_class = VSErrorRecoveryAttempter;
  v2 = [(VSErrorRecoveryAttempter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    options = v2->_options;
    v2->_options = MEMORY[0x277CBEBF8];

    v5 = [MEMORY[0x277CCABD8] mainQueue];
    recoveryAttemptingQueue = v3->_recoveryAttemptingQueue;
    v3->_recoveryAttemptingQueue = v5;
  }

  return v3;
}

- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 delegate:(id)a5 didRecoverSelector:(SEL)a6 contextInfo:(void *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = [(VSErrorRecoveryAttempter *)self recoveryAttemptingQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105__VSErrorRecoveryAttempter_attemptRecoveryFromError_optionIndex_delegate_didRecoverSelector_contextInfo___block_invoke;
  v17[3] = &unk_278B74E60;
  v17[4] = self;
  v18 = v12;
  v19 = v13;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v15 = v13;
  v16 = v12;
  [v14 addOperationWithBlock:v17];
}

id __105__VSErrorRecoveryAttempter_attemptRecoveryFromError_optionIndex_delegate_didRecoverSelector_contextInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attemptRecoveryFromError:*(a1 + 40) optionIndex:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = *(a1 + 72);

      return [result v4];
    }
  }

  return result;
}

- (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(VSErrorRecoveryAttempter *)self options];
  v8 = [v7 objectAtIndex:a4];

  v9 = [v8 attemptHandler];
  v10 = v9;
  if (v9)
  {
    v11 = (*(v9 + 16))(v9, v6);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end