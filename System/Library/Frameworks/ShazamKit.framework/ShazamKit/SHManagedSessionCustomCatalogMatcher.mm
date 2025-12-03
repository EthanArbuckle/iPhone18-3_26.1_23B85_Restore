@interface SHManagedSessionCustomCatalogMatcher
- (SHManagedSessionCustomCatalogMatcher)initWithCustomCatalog:(id)catalog;
- (SHMatcherDelegate)delegate;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
- (void)startRecognitionForRequest:(id)request;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)d;
@end

@implementation SHManagedSessionCustomCatalogMatcher

- (SHManagedSessionCustomCatalogMatcher)initWithCustomCatalog:(id)catalog
{
  catalogCopy = catalog;
  v9.receiver = self;
  v9.super_class = SHManagedSessionCustomCatalogMatcher;
  v5 = [(SHManagedSessionCustomCatalogMatcher *)&v9 init];
  if (v5)
  {
    _createMatcher = [catalogCopy _createMatcher];
    customCatalogMatcher = v5->_customCatalogMatcher;
    v5->_customCatalogMatcher = _createMatcher;

    [(SHMatcher *)v5->_customCatalogMatcher setDelegate:v5];
  }

  return v5;
}

- (void)startRecognitionForRequest:(id)request
{
  requestCopy = request;
  requestID = [requestCopy requestID];
  currentRequestID = self->_currentRequestID;
  self->_currentRequestID = requestID;

  customCatalogMatcher = [(SHManagedSessionCustomCatalogMatcher *)self customCatalogMatcher];
  [customCatalogMatcher startRecognitionForRequest:requestCopy];
}

- (void)stopRecognition
{
  customCatalogMatcher = [(SHManagedSessionCustomCatalogMatcher *)self customCatalogMatcher];
  [customCatalogMatcher stopRecognition];
}

- (void)stopRecognitionForRequestID:(id)d
{
  dCopy = d;
  customCatalogMatcher = [(SHManagedSessionCustomCatalogMatcher *)self customCatalogMatcher];
  [customCatalogMatcher stopRecognitionForRequestID:dCopy];
}

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  responseCopy = response;
  matcherCopy = matcher;
  v8 = [SHMatcherResponse alloc];
  [responseCopy recordingIntermission];
  v10 = v9;
  [responseCopy recordingSignatureOffset];
  v12 = v11;
  [responseCopy retrySeconds];
  v14 = v13;
  match = [responseCopy match];
  signature = [responseCopy signature];
  currentRequestID = [(SHManagedSessionCustomCatalogMatcher *)self currentRequestID];
  error = [responseCopy error];

  v20 = [(SHMatcherResponse *)v8 initWithRecordingIntermission:match recordingSignatureOffset:signature retrySeconds:currentRequestID match:error signature:v10 runningAssociatedRequestID:v12 error:v14];
  delegate = [(SHManagedSessionCustomCatalogMatcher *)self delegate];
  [delegate matcher:matcherCopy didProduceResponse:v20];
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end