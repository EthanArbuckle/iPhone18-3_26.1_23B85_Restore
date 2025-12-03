@interface ADAcousticIDHelper
- (ADAcousticIDHelperDelegate)delegate;
- (BOOL)hasRelatedCommandForRefId:(id)id;
- (BOOL)shouldSendFingerprintForDuration:(double)duration;
- (id)cancelSessionCommand;
- (id)searchCommandForFingerprintData:(id)data withDuration:(double)duration;
- (void)_addOutstandingSearchId:(id)id;
- (void)failCurrentSession;
- (void)handleCommandFailed:(id)failed;
- (void)handleRetrySearch:(id)search;
- (void)handleSearchCompleted:(id)completed;
- (void)reset;
- (void)startNewAcousticIDSessionWithRequestId:(id)id refId:(id)refId;
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

- (BOOL)shouldSendFingerprintForDuration:(double)duration
{
  currentSession = [(ADAcousticIDHelper *)self currentSession];
  v6 = currentSession && ![(ADAcousticIDHelper *)self sessionIsComplete]&& self->_minimumFingerprintDuration <= duration;

  return v6;
}

- (void)handleCommandFailed:(id)failed
{
  refId = [failed refId];
  if ([(ADAcousticIDHelper *)self hasRelatedCommandForRefId:?])
  {
    [(ADAcousticIDHelper *)self _removeOutstandingSearchForRefId:refId];
    if (!self->_sessionIsComplete)
    {
      self->_sessionIsComplete = 1;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained acousticIDHelper:self didCompleteSessionSuccessfully:0];
    }
  }
}

- (void)handleRetrySearch:(id)search
{
  searchCopy = search;
  refId = [searchCopy refId];
  [(ADAcousticIDHelper *)self _removeOutstandingSearchForRefId:refId];

  [searchCopy minimumDurationForRetry];
  v7 = v6;

  self->_minimumFingerprintDuration = v7;
}

- (void)handleSearchCompleted:(id)completed
{
  completedCopy = completed;
  refId = [completedCopy refId];
  [(ADAcousticIDHelper *)self _removeOutstandingSearchForRefId:refId];
  if (!self->_sessionIsComplete)
  {
    objc_storeStrong(&self->_completed, completed);
    self->_sessionIsComplete = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained acousticIDHelper:self didCompleteSessionSuccessfully:1];
  }
}

- (BOOL)hasRelatedCommandForRefId:(id)id
{
  idCopy = id;
  if (([(NSMutableSet *)self->_outstandingSearches containsObject:idCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    aceId = [(SAAIStartSession *)self->_currentSession aceId];
    v5 = [aceId isEqualToString:idCopy];
  }

  return v5;
}

- (id)cancelSessionCommand
{
  v3 = objc_alloc_init(SAAICancelSession);
  aceId = [(SAAIStartSession *)self->_currentSession aceId];
  [v3 setRefId:aceId];

  return v3;
}

- (id)searchCommandForFingerprintData:(id)data withDuration:(double)duration
{
  dataCopy = data;
  v7 = objc_alloc_init(SAAISearch);
  [v7 setFingerprint:dataCopy];

  [v7 setDuration:duration];
  v8 = SiriCoreUUIDStringCreate();
  [v7 setAceId:v8];

  refId = [(SAAIStartSession *)self->_currentSession refId];
  v10 = refId;
  if (refId)
  {
    aceId = refId;
  }

  else
  {
    aceId = [(SAAIStartSession *)self->_currentSession aceId];
  }

  v12 = aceId;

  [v7 setRefId:v12];
  aceId2 = [v7 aceId];
  [(ADAcousticIDHelper *)self _addOutstandingSearchId:aceId2];

  return v7;
}

- (void)startNewAcousticIDSessionWithRequestId:(id)id refId:(id)refId
{
  refIdCopy = refId;
  idCopy = id;
  [(ADAcousticIDHelper *)self reset];
  v8 = objc_alloc_init(SAAIStartSession);
  [v8 setAcousticIdSessionId:idCopy];

  v9 = SiriCoreUUIDStringCreate();
  [v8 setAceId:v9];

  [v8 setRefId:refIdCopy];
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

- (void)_addOutstandingSearchId:(id)id
{
  idCopy = id;
  outstandingSearches = self->_outstandingSearches;
  v8 = idCopy;
  if (!outstandingSearches)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_outstandingSearches;
    self->_outstandingSearches = v6;

    idCopy = v8;
    outstandingSearches = self->_outstandingSearches;
  }

  [(NSMutableSet *)outstandingSearches addObject:idCopy];
}

@end