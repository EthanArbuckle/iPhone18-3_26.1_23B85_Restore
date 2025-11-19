@interface AEDConcreteSingleAppModeSession
- (id)initWithSession:(id *)a1;
- (void)deactivateWithCompletion:(id)a3;
@end

@implementation AEDConcreteSingleAppModeSession

- (id)initWithSession:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = AEDConcreteSingleAppModeSession;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

- (void)deactivateWithCompletion:(id)a3
{
  v4 = a3;
  if (self)
  {
    self = self->_session;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__AEDConcreteSingleAppModeSession_deactivateWithCompletion___block_invoke;
  v6[3] = &unk_278A0C490;
  v7 = v4;
  v5 = v4;
  [(AEDConcreteSingleAppModeSession *)self endWithCompletion:v6];
}

@end