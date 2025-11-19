@interface ADAcousticIDHelper
- (ADAcousticIDHelperDelegate)delegate;
- (BOOL)hasRelatedCommandForRefId:(id)a3;
- (BOOL)shouldSendFingerprintForDuration:(double)a3;
- (id)cancelSessionCommand;
- (id)searchCommandForFingerprintData:(id)a3 withDuration:(double)a4;
- (void)_addOutstandingSearchId:(id)a3;
- (void)failCurrentSession;
- (void)handleCommandFailed:(id)a3;
- (void)handleRetrySearch:(id)a3;
- (void)handleSearchCompleted:(id)a3;
- (void)reset;
- (void)startNewAcousticIDSessionWithRequestId:(id)a3 refId:(id)a4;
@end

@implementation ADAcousticIDHelper

- (ADAcousticIDHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)failCurrentSession
{
  if (self->_currentSession && !self->_sessionIsComplete)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained acousticIDHelper:self didCompleteSessionSuccessfully:0];
  }

  [(ADAcousticIDHelper *)self reset];
}

- (BOOL)shouldSendFingerprintForDuration:(double)a3
{
  v5 = [(ADAcousticIDHelper *)self currentSession];
  v6 = v5 && ![(ADAcousticIDHelper *)self sessionIsComplete]&& self->_minimumFingerprintDuration <= a3;

  return v6;
}

- (void)handleCommandFailed:(id)a3
{
  v5 = [a3 refId];
  if ([(ADAcousticIDHelper *)self hasRelatedCommandForRefId:?])
  {
    [(ADAcousticIDHelper *)self _removeOutstandingSearchForRefId:v5];
    if (!self->_sessionIsComplete)
    {
      self->_sessionIsComplete = 1;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained acousticIDHelper:self didCompleteSessionSuccessfully:0];
    }
  }
}

- (void)handleRetrySearch:(id)a3
{
  v4 = a3;
  v5 = [v4 refId];
  [(ADAcousticIDHelper *)self _removeOutstandingSearchForRefId:v5];

  [v4 minimumDurationForRetry];
  v7 = v6;

  self->_minimumFingerprintDuration = v7;
}

- (void)handleSearchCompleted:(id)a3
{
  v7 = a3;
  v5 = [v7 refId];
  [(ADAcousticIDHelper *)self _removeOutstandingSearchForRefId:v5];
  if (!self->_sessionIsComplete)
  {
    objc_storeStrong(&self->_completed, a3);
    self->_sessionIsComplete = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained acousticIDHelper:self didCompleteSessionSuccessfully:1];
  }
}

- (BOOL)hasRelatedCommandForRefId:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_outstandingSearches containsObject:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SAAIStartSession *)self->_currentSession aceId];
    v5 = [v6 isEqualToString:v4];
  }

  return v5;
}

- (id)cancelSessionCommand
{
  v3 = objc_alloc_init(SAAICancelSession);
  v4 = [(SAAIStartSession *)self->_currentSession aceId];
  [v3 setRefId:v4];

  return v3;
}

- (id)searchCommandForFingerprintData:(id)a3 withDuration:(double)a4
{
  v6 = a3;
  v7 = objc_alloc_init(SAAISearch);
  [v7 setFingerprint:v6];

  [v7 setDuration:a4];
  v8 = SiriCoreUUIDStringCreate();
  [v7 setAceId:v8];

  v9 = [(SAAIStartSession *)self->_currentSession refId];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(SAAIStartSession *)self->_currentSession aceId];
  }

  v12 = v11;

  [v7 setRefId:v12];
  v13 = [v7 aceId];
  [(ADAcousticIDHelper *)self _addOutstandingSearchId:v13];

  return v7;
}

- (void)startNewAcousticIDSessionWithRequestId:(id)a3 refId:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ADAcousticIDHelper *)self reset];
  v8 = objc_alloc_init(SAAIStartSession);
  [v8 setAcousticIdSessionId:v7];

  v9 = SiriCoreUUIDStringCreate();
  [v8 setAceId:v9];

  [v8 setRefId:v6];
  currentSession = self->_currentSession;
  self->_currentSession = v8;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained acousticIDHelperDidStartSession:self];
}

- (void)reset
{
  [(ADAcousticIDHelper *)self _clearOutstandingSearchIds];
  completed = self->_completed;
  self->_completed = 0;

  self->_sessionIsComplete = 0;
  self->_minimumFingerprintDuration = 0.0;
  currentSession = self->_currentSession;
  self->_currentSession = 0;
}

- (void)_addOutstandingSearchId:(id)a3
{
  v4 = a3;
  outstandingSearches = self->_outstandingSearches;
  v8 = v4;
  if (!outstandingSearches)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_outstandingSearches;
    self->_outstandingSearches = v6;

    v4 = v8;
    outstandingSearches = self->_outstandingSearches;
  }

  [(NSMutableSet *)outstandingSearches addObject:v4];
}

@end