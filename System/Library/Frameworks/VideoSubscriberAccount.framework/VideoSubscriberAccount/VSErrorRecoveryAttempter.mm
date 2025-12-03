@interface VSErrorRecoveryAttempter
- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index;
- (VSErrorRecoveryAttempter)init;
- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index delegate:(id)delegate didRecoverSelector:(SEL)selector contextInfo:(void *)info;
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

    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    recoveryAttemptingQueue = v3->_recoveryAttemptingQueue;
    v3->_recoveryAttemptingQueue = mainQueue;
  }

  return v3;
}

- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index delegate:(id)delegate didRecoverSelector:(SEL)selector contextInfo:(void *)info
{
  errorCopy = error;
  delegateCopy = delegate;
  recoveryAttemptingQueue = [(VSErrorRecoveryAttempter *)self recoveryAttemptingQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105__VSErrorRecoveryAttempter_attemptRecoveryFromError_optionIndex_delegate_didRecoverSelector_contextInfo___block_invoke;
  v17[3] = &unk_278B74E60;
  v17[4] = self;
  v18 = errorCopy;
  v19 = delegateCopy;
  indexCopy = index;
  selectorCopy = selector;
  infoCopy = info;
  v15 = delegateCopy;
  v16 = errorCopy;
  [recoveryAttemptingQueue addOperationWithBlock:v17];
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

- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index
{
  errorCopy = error;
  options = [(VSErrorRecoveryAttempter *)self options];
  v8 = [options objectAtIndex:index];

  attemptHandler = [v8 attemptHandler];
  v10 = attemptHandler;
  if (attemptHandler)
  {
    v11 = (*(attemptHandler + 16))(attemptHandler, errorCopy);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end