@interface _AAURLSessionOperation
+ (id)operationWithCompletion:(id)a3;
- (NSData)data;
- (_AAURLSessionOperation)init;
- (_AAURLSessionOperation)initWithCompletion:(id)a3;
- (void)appendData:(id)a3;
- (void)invokeCompletionWithResponse:(id)a3 error:(id)a4;
@end

@implementation _AAURLSessionOperation

+ (id)operationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCompletion:v4];

  return v5;
}

- (_AAURLSessionOperation)init
{
  [(_AAURLSessionOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_AAURLSessionOperation)initWithCompletion:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _AAURLSessionOperation;
  v5 = [(_AAURLSessionOperation *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (void)appendData:(id)a3
{
  mutableData = self->_mutableData;
  if (mutableData)
  {

    [(NSMutableData *)mutableData appendData:a3];
  }

  else
  {
    v5 = [a3 mutableCopy];
    v6 = self->_mutableData;
    self->_mutableData = v5;

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)invokeCompletionWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = v6;
  v8 = v7;
  if ((v12 != 0) != (v8 == 0))
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid exclusivity not satisfying: response ^ error" userInfo:0];
    objc_exception_throw(v11);
  }

  completion = self->_completion;
  v10 = [(_AAURLSessionOperation *)self data];
  completion[2](completion, v10, v12, v8);
}

@end