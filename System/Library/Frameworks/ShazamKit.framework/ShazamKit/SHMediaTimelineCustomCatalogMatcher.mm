@interface SHMediaTimelineCustomCatalogMatcher
- (SHMatcherDelegate)delegate;
- (SHMediaTimelineCustomCatalogMatcher)initWithCustomCatalog:(id)catalog;
- (void)callDelegateWithSyntheticMatchForResponse:(id)response;
- (void)dealloc;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
- (void)mediaTimeline:(id)timeline hasUpdatedInScopeMediaItems:(id)items;
- (void)restartTimelineWithMediaItems:(id)items;
- (void)startRecognitionForRequest:(id)request;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)d;
@end

@implementation SHMediaTimelineCustomCatalogMatcher

- (void)dealloc
{
  [(SHMediaTimelineCustomCatalogMatcher *)self stopRecognition];
  v3.receiver = self;
  v3.super_class = SHMediaTimelineCustomCatalogMatcher;
  [(SHMediaTimelineCustomCatalogMatcher *)&v3 dealloc];
}

- (SHMediaTimelineCustomCatalogMatcher)initWithCustomCatalog:(id)catalog
{
  catalogCopy = catalog;
  v9.receiver = self;
  v9.super_class = SHMediaTimelineCustomCatalogMatcher;
  v5 = [(SHMediaTimelineCustomCatalogMatcher *)&v9 init];
  if (v5)
  {
    v6 = [[SHCustomCatalogMatcher alloc] initWithCustomCatalog:catalogCopy];
    customCatalogMatcher = v5->_customCatalogMatcher;
    v5->_customCatalogMatcher = v6;

    [(SHCustomCatalogMatcher *)v5->_customCatalogMatcher setDelegate:v5];
  }

  return v5;
}

- (void)startRecognitionForRequest:(id)request
{
  requestCopy = request;
  requestID = [requestCopy requestID];
  [(SHMediaTimelineCustomCatalogMatcher *)self setTimelineRequestID:requestID];

  customCatalogMatcher = [(SHMediaTimelineCustomCatalogMatcher *)self customCatalogMatcher];
  [customCatalogMatcher startRecognitionForRequest:requestCopy];
}

- (void)stopRecognitionForRequestID:(id)d
{
  dCopy = d;
  timelineRequestID = [(SHMediaTimelineCustomCatalogMatcher *)self timelineRequestID];
  v6 = [timelineRequestID isEqual:dCopy];

  if (v6)
  {

    [(SHMediaTimelineCustomCatalogMatcher *)self stopRecognition];
  }
}

- (void)stopRecognition
{
  contextTimeline = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
  [contextTimeline stopGenerating];

  [(SHMediaTimelineCustomCatalogMatcher *)self setContextTimeline:0];

  [(SHMediaTimelineCustomCatalogMatcher *)self setTimelineRequestID:0];
}

- (void)mediaTimeline:(id)timeline hasUpdatedInScopeMediaItems:(id)items
{
  itemsCopy = items;
  timelineCopy = timeline;
  v8 = [SHMatch alloc];
  querySignature = [timelineCopy querySignature];

  v12 = [(SHMatch *)v8 initWithMediaItems:itemsCopy forSignature:querySignature];
  v10 = [[SHMatcherResponse alloc] initWithRecordingIntermission:v12 recordingSignatureOffset:0 retrySeconds:0 match:0 signature:0.0 runningAssociatedRequestID:0.0 error:0.0];
  delegate = [(SHMediaTimelineCustomCatalogMatcher *)self delegate];
  [delegate matcher:self didProduceResponse:v10];
}

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  responseCopy = response;
  result = [responseCopy result];
  if (result == 1)
  {
    match = [responseCopy match];
    [(SHMediaTimelineCustomCatalogMatcher *)self restartTimelineWithMediaItems:match];

    goto LABEL_9;
  }

  if (result == 2)
  {
    contextTimeline = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
    if (!contextTimeline)
    {
LABEL_11:
      contextTimeline2 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
      [contextTimeline2 stopGenerating];

      [(SHMediaTimelineCustomCatalogMatcher *)self setContextTimeline:0];
      delegate = [(SHMediaTimelineCustomCatalogMatcher *)self delegate];
      [delegate matcher:self didProduceResponse:responseCopy];

      goto LABEL_12;
    }

    v10 = contextTimeline;
    contextTimeline3 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
    if ([contextTimeline3 isFinished])
    {

      goto LABEL_11;
    }

    signature = [responseCopy signature];
    [signature duration];
    v15 = v14;

    if (v15 >= 12.0)
    {
      goto LABEL_11;
    }

LABEL_9:
    [(SHMediaTimelineCustomCatalogMatcher *)self callDelegateWithSyntheticMatchForResponse:responseCopy];
    goto LABEL_12;
  }

  v6 = responseCopy;
  if (result != 3)
  {
    goto LABEL_13;
  }

  delegate2 = [(SHMediaTimelineCustomCatalogMatcher *)self delegate];
  [delegate2 matcher:self didProduceResponse:responseCopy];

  contextTimeline4 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
  [contextTimeline4 stopGenerating];

LABEL_12:
  v6 = responseCopy;
LABEL_13:
}

- (void)callDelegateWithSyntheticMatchForResponse:(id)response
{
  responseCopy = response;
  contextTimeline = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
  inScopeMediaItems = [contextTimeline inScopeMediaItems];

  v6 = [SHMatch alloc];
  signature = [responseCopy signature];
  v8 = [(SHMatch *)v6 initWithMediaItems:inScopeMediaItems forSignature:signature];

  v9 = [SHMatcherResponse alloc];
  [responseCopy recordingIntermission];
  v11 = v10;
  [responseCopy recordingSignatureOffset];
  v13 = v12;
  [responseCopy retrySeconds];
  v15 = v14;
  runningAssociatedRequestID = [responseCopy runningAssociatedRequestID];
  error = [responseCopy error];

  v18 = [(SHMatcherResponse *)v9 initWithRecordingIntermission:v8 recordingSignatureOffset:0 retrySeconds:runningAssociatedRequestID match:error signature:v11 runningAssociatedRequestID:v13 error:v15];
  delegate = [(SHMediaTimelineCustomCatalogMatcher *)self delegate];
  [delegate matcher:self didProduceResponse:v18];
}

- (void)restartTimelineWithMediaItems:(id)items
{
  itemsCopy = items;
  contextTimeline = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
  [contextTimeline stopGenerating];

  v6 = [[SHMediaTimeline alloc] initWithMatch:itemsCopy];
  [(SHMediaTimelineCustomCatalogMatcher *)self setContextTimeline:v6];

  contextTimeline2 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
  [contextTimeline2 setDelegate:self];

  contextTimeline3 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
  [contextTimeline3 startGenerating];
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end