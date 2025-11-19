@interface MPAsyncBlockOperation
- (MPAsyncBlockOperation)initWithStartHandler:(id)a3;
@end

@implementation MPAsyncBlockOperation

- (MPAsyncBlockOperation)initWithStartHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPAsyncBlockOperation;
  v5 = [(MPAsyncOperation *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    startHandler = v5->_startHandler;
    v5->_startHandler = v6;
  }

  return v5;
}

@end