@interface PKTranscriptionQuery
- (PKTranscriptionQuery)initWithRecognitionSessionManager:(id)manager;
- (id)contextualTextResultsForContextStrokes:(id)strokes completion:(id)completion shouldCancel:(id)cancel;
- (void)dealloc;
- (void)pause;
- (void)start;
- (void)teardown;
@end

@implementation PKTranscriptionQuery

- (PKTranscriptionQuery)initWithRecognitionSessionManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = PKTranscriptionQuery;
  v5 = [(PKQuery *)&v11 initWithRecognitionSessionManager:managerCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E6997C08]);
    session = [(PKRecognitionSessionManager *)managerCopy session];
    v8 = [v6 initWithRecognitionSession:session];
    transcriptionQuery = v5->_transcriptionQuery;
    v5->_transcriptionQuery = v8;
  }

  return v5;
}

- (void)start
{
  transcriptionQuery = [(PKTranscriptionQuery *)self transcriptionQuery];
  [transcriptionQuery start];
}

- (void)pause
{
  transcriptionQuery = [(PKTranscriptionQuery *)self transcriptionQuery];
  [transcriptionQuery pause];
}

- (void)teardown
{
  [(PKTranscriptionQuery *)self pause];

  [(PKTranscriptionQuery *)self setTranscriptionQuery:0];
}

- (void)dealloc
{
  [(PKTranscriptionQuery *)self teardown];
  v3.receiver = self;
  v3.super_class = PKTranscriptionQuery;
  [(PKTranscriptionQuery *)&v3 dealloc];
}

- (id)contextualTextResultsForContextStrokes:(id)strokes completion:(id)completion shouldCancel:(id)cancel
{
  cancelCopy = cancel;
  completionCopy = completion;
  strokesCopy = strokes;
  transcriptionQuery = [(PKTranscriptionQuery *)self transcriptionQuery];
  v12 = [transcriptionQuery contextualTextResultsForContextStrokes:strokesCopy completion:completionCopy shouldCancel:cancelCopy];

  return v12;
}

@end