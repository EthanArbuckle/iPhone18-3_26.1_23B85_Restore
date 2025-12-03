@interface AEDConcreteSingleAppModeSession
- (id)initWithSession:(id *)session;
- (void)deactivateWithCompletion:(id)completion;
@end

@implementation AEDConcreteSingleAppModeSession

- (id)initWithSession:(id *)session
{
  v4 = a2;
  if (session)
  {
    v7.receiver = session;
    v7.super_class = AEDConcreteSingleAppModeSession;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    session = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return session;
}

- (void)deactivateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    self = self->_session;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__AEDConcreteSingleAppModeSession_deactivateWithCompletion___block_invoke;
  v6[3] = &unk_278A0C490;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AEDConcreteSingleAppModeSession *)self endWithCompletion:v6];
}

@end