@interface PKQuery
- (PKQuery)initWithRecognitionSessionManager:(id)a3;
- (PKRecognitionSessionManager)sessionManager;
- (id)delegate;
@end

@implementation PKQuery

- (PKQuery)initWithRecognitionSessionManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKQuery;
  v5 = [(PKQuery *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sessionManager, v4);
  }

  return v6;
}

- (PKRecognitionSessionManager)sessionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionManager);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end