@interface SHManagedSessionCustomCatalogDriverDaemonDelegate
- (SHSessionDriverDelegate)sessionDriverDelegate;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
@end

@implementation SHManagedSessionCustomCatalogDriverDaemonDelegate

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy result] == 2)
  {
    signature = [responseCopy signature];
    v6 = [signature _ID];
    matchingSignatureID = self->_matchingSignatureID;
    self->_matchingSignatureID = v6;

    runningAssociatedRequestID = [responseCopy runningAssociatedRequestID];
    inflightRequestID = self->_inflightRequestID;
    self->_inflightRequestID = runningAssociatedRequestID;

    sessionDriverDelegate = [(SHManagedSessionCustomCatalogDriverDaemonDelegate *)self sessionDriverDelegate];
    signature2 = [responseCopy signature];
    [sessionDriverDelegate matchSignature:signature2];
  }

  else
  {
    error = [responseCopy error];
    v13 = error;
    if (error)
    {
      v14 = error;
    }

    else
    {
      v14 = [SHError errorWithCode:500 underlyingError:0];
    }

    sessionDriverDelegate = v14;

    signature2 = [(SHManagedSessionCustomCatalogDriverDaemonDelegate *)self sessionDriverDelegate];
    signature3 = [responseCopy signature];
    [signature2 sessionDriverEncounteredUnrecoverableError:sessionDriverDelegate forSignature:signature3];
  }
}

- (SHSessionDriverDelegate)sessionDriverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionDriverDelegate);

  return WeakRetained;
}

@end