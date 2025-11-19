@interface SHManagedSessionCustomCatalogDriverDaemonDelegate
- (SHSessionDriverDelegate)sessionDriverDelegate;
- (void)matcher:(id)a3 didProduceResponse:(id)a4;
@end

@implementation SHManagedSessionCustomCatalogDriverDaemonDelegate

- (void)matcher:(id)a3 didProduceResponse:(id)a4
{
  v16 = a4;
  if ([v16 result] == 2)
  {
    v5 = [v16 signature];
    v6 = [v5 _ID];
    matchingSignatureID = self->_matchingSignatureID;
    self->_matchingSignatureID = v6;

    v8 = [v16 runningAssociatedRequestID];
    inflightRequestID = self->_inflightRequestID;
    self->_inflightRequestID = v8;

    v10 = [(SHManagedSessionCustomCatalogDriverDaemonDelegate *)self sessionDriverDelegate];
    v11 = [v16 signature];
    [v10 matchSignature:v11];
  }

  else
  {
    v12 = [v16 error];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [SHError errorWithCode:500 underlyingError:0];
    }

    v10 = v14;

    v11 = [(SHManagedSessionCustomCatalogDriverDaemonDelegate *)self sessionDriverDelegate];
    v15 = [v16 signature];
    [v11 sessionDriverEncounteredUnrecoverableError:v10 forSignature:v15];
  }
}

- (SHSessionDriverDelegate)sessionDriverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionDriverDelegate);

  return WeakRetained;
}

@end