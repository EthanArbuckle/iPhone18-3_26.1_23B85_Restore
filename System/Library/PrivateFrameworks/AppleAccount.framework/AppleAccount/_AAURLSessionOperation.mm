@interface _AAURLSessionOperation
+ (id)operationWithCompletion:(id)completion;
- (NSData)data;
- (_AAURLSessionOperation)init;
- (_AAURLSessionOperation)initWithCompletion:(id)completion;
- (void)appendData:(id)data;
- (void)invokeCompletionWithResponse:(id)response error:(id)error;
@end

@implementation _AAURLSessionOperation

+ (id)operationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[self alloc] initWithCompletion:completionCopy];

  return v5;
}

- (_AAURLSessionOperation)init
{
  [(_AAURLSessionOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_AAURLSessionOperation)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v10.receiver = self;
  v10.super_class = _AAURLSessionOperation;
  v5 = [(_AAURLSessionOperation *)&v10 init];
  if (v5)
  {
    v6 = [completionCopy copy];
    completion = v5->_completion;
    v5->_completion = v6;

    mutableData = v5->_mutableData;
    v5->_mutableData = 0;
  }

  return v5;
}

- (NSData)data
{
  v2 = [(NSMutableData *)self->_mutableData copy];

  return v2;
}

- (void)appendData:(id)data
{
  mutableData = self->_mutableData;
  if (mutableData)
  {

    [(NSMutableData *)mutableData appendData:data];
  }

  else
  {
    v5 = [data mutableCopy];
    v6 = self->_mutableData;
    self->_mutableData = v5;

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)invokeCompletionWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v12 = responseCopy;
  v8 = errorCopy;
  if ((v12 != 0) != (v8 == 0))
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid exclusivity not satisfying: response ^ error" userInfo:0];
    objc_exception_throw(v11);
  }

  completion = self->_completion;
  data = [(_AAURLSessionOperation *)self data];
  completion[2](completion, data, v12, v8);
}

@end