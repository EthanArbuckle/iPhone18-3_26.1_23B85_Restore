@interface PKTranscriptionQuery
- (PKTranscriptionQuery)initWithRecognitionSessionManager:(id)a3;
- (id)contextualTextResultsForContextStrokes:(id)a3 completion:(id)a4 shouldCancel:(id)a5;
- (void)dealloc;
- (void)pause;
- (void)start;
- (void)teardown;
@end

@implementation PKTranscriptionQuery

- (PKTranscriptionQuery)initWithRecognitionSessionManager:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKTranscriptionQuery;
  v5 = [(PKQuery *)&v11 initWithRecognitionSessionManager:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E6997C08]);
    v7 = [(PKRecognitionSessionManager *)v4 session];
    v8 = [v6 initWithRecognitionSession:v7];
    transcriptionQuery = v5->_transcriptionQuery;
    v5->_transcriptionQuery = v8;
  }

  return v5;
}

- (void)start
{
  v2 = [(PKTranscriptionQuery *)self transcriptionQuery];
  [v2 start];
}

- (void)pause
{
  v2 = [(PKTranscriptionQuery *)self transcriptionQuery];
  [v2 pause];
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

- (id)contextualTextResultsForContextStrokes:(id)a3 completion:(id)a4 shouldCancel:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKTranscriptionQuery *)self transcriptionQuery];
  v12 = [v11 contextualTextResultsForContextStrokes:v10 completion:v9 shouldCancel:v8];

  return v12;
}

@end