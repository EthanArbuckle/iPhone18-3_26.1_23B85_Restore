@interface SHMediaTimelineCustomCatalogMatcher
- (SHMatcherDelegate)delegate;
- (SHMediaTimelineCustomCatalogMatcher)initWithCustomCatalog:(id)a3;
- (void)callDelegateWithSyntheticMatchForResponse:(id)a3;
- (void)dealloc;
- (void)matcher:(id)a3 didProduceResponse:(id)a4;
- (void)mediaTimeline:(id)a3 hasUpdatedInScopeMediaItems:(id)a4;
- (void)restartTimelineWithMediaItems:(id)a3;
- (void)startRecognitionForRequest:(id)a3;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)a3;
@end

@implementation SHMediaTimelineCustomCatalogMatcher

- (void)dealloc
{
  [(SHMediaTimelineCustomCatalogMatcher *)self stopRecognition];
  v3.receiver = self;
  v3.super_class = SHMediaTimelineCustomCatalogMatcher;
  [(SHMediaTimelineCustomCatalogMatcher *)&v3 dealloc];
}

- (SHMediaTimelineCustomCatalogMatcher)initWithCustomCatalog:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SHMediaTimelineCustomCatalogMatcher;
  v5 = [(SHMediaTimelineCustomCatalogMatcher *)&v9 init];
  if (v5)
  {
    v6 = [[SHCustomCatalogMatcher alloc] initWithCustomCatalog:v4];
    customCatalogMatcher = v5->_customCatalogMatcher;
    v5->_customCatalogMatcher = v6;

    [(SHCustomCatalogMatcher *)v5->_customCatalogMatcher setDelegate:v5];
  }

  return v5;
}

- (void)startRecognitionForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 requestID];
  [(SHMediaTimelineCustomCatalogMatcher *)self setTimelineRequestID:v5];

  v6 = [(SHMediaTimelineCustomCatalogMatcher *)self customCatalogMatcher];
  [v6 startRecognitionForRequest:v4];
}

- (void)stopRecognitionForRequestID:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaTimelineCustomCatalogMatcher *)self timelineRequestID];
  v6 = [v5 isEqual:v4];

  if (v6)
  {

    [(SHMediaTimelineCustomCatalogMatcher *)self stopRecognition];
  }
}

- (void)stopRecognition
{
  v3 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
  [v3 stopGenerating];

  [(SHMediaTimelineCustomCatalogMatcher *)self setContextTimeline:0];

  [(SHMediaTimelineCustomCatalogMatcher *)self setTimelineRequestID:0];
}

- (void)mediaTimeline:(id)a3 hasUpdatedInScopeMediaItems:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SHMatch alloc];
  v9 = [v7 querySignature];

  v12 = [(SHMatch *)v8 initWithMediaItems:v6 forSignature:v9];
  v10 = [[SHMatcherResponse alloc] initWithRecordingIntermission:v12 recordingSignatureOffset:0 retrySeconds:0 match:0 signature:0.0 runningAssociatedRequestID:0.0 error:0.0];
  v11 = [(SHMediaTimelineCustomCatalogMatcher *)self delegate];
  [v11 matcher:self didProduceResponse:v10];
}

- (void)matcher:(id)a3 didProduceResponse:(id)a4
{
  v18 = a4;
  v5 = [v18 result];
  if (v5 == 1)
  {
    v12 = [v18 match];
    [(SHMediaTimelineCustomCatalogMatcher *)self restartTimelineWithMediaItems:v12];

    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v9 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
    if (!v9)
    {
LABEL_11:
      v16 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
      [v16 stopGenerating];

      [(SHMediaTimelineCustomCatalogMatcher *)self setContextTimeline:0];
      v17 = [(SHMediaTimelineCustomCatalogMatcher *)self delegate];
      [v17 matcher:self didProduceResponse:v18];

      goto LABEL_12;
    }

    v10 = v9;
    v11 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
    if ([v11 isFinished])
    {

      goto LABEL_11;
    }

    v13 = [v18 signature];
    [v13 duration];
    v15 = v14;

    if (v15 >= 12.0)
    {
      goto LABEL_11;
    }

LABEL_9:
    [(SHMediaTimelineCustomCatalogMatcher *)self callDelegateWithSyntheticMatchForResponse:v18];
    goto LABEL_12;
  }

  v6 = v18;
  if (v5 != 3)
  {
    goto LABEL_13;
  }

  v7 = [(SHMediaTimelineCustomCatalogMatcher *)self delegate];
  [v7 matcher:self didProduceResponse:v18];

  v8 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
  [v8 stopGenerating];

LABEL_12:
  v6 = v18;
LABEL_13:
}

- (void)callDelegateWithSyntheticMatchForResponse:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
  v20 = [v5 inScopeMediaItems];

  v6 = [SHMatch alloc];
  v7 = [v4 signature];
  v8 = [(SHMatch *)v6 initWithMediaItems:v20 forSignature:v7];

  v9 = [SHMatcherResponse alloc];
  [v4 recordingIntermission];
  v11 = v10;
  [v4 recordingSignatureOffset];
  v13 = v12;
  [v4 retrySeconds];
  v15 = v14;
  v16 = [v4 runningAssociatedRequestID];
  v17 = [v4 error];

  v18 = [(SHMatcherResponse *)v9 initWithRecordingIntermission:v8 recordingSignatureOffset:0 retrySeconds:v16 match:v17 signature:v11 runningAssociatedRequestID:v13 error:v15];
  v19 = [(SHMediaTimelineCustomCatalogMatcher *)self delegate];
  [v19 matcher:self didProduceResponse:v18];
}

- (void)restartTimelineWithMediaItems:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
  [v5 stopGenerating];

  v6 = [[SHMediaTimeline alloc] initWithMatch:v4];
  [(SHMediaTimelineCustomCatalogMatcher *)self setContextTimeline:v6];

  v7 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
  [v7 setDelegate:self];

  v8 = [(SHMediaTimelineCustomCatalogMatcher *)self contextTimeline];
  [v8 startGenerating];
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end