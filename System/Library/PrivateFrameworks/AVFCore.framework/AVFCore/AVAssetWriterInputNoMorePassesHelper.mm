@interface AVAssetWriterInputNoMorePassesHelper
- (AVAssetWriterInputNoMorePassesHelper)initWithWritingHelper:(id)a3;
- (BOOL)appendPixelBuffer:(__CVBuffer *)a3 withPresentationTime:(id *)a4;
- (BOOL)appendTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)a3 withPresentationTime:(id *)a4;
- (int64_t)appendCaption:(id)a3 error:(id *)a4;
- (int64_t)appendCaptionGroup:(id)a3 error:(id *)a4;
- (int64_t)appendSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (void)dealloc;
- (void)markCurrentPassAsFinished;
- (void)requestMediaDataWhenReadyOnQueue:(id)a3 usingBlock:(id)a4;
- (void)stopRequestingMediaData;
@end

@implementation AVAssetWriterInputNoMorePassesHelper

- (AVAssetWriterInputNoMorePassesHelper)initWithWritingHelper:(id)a3
{
  if (!a3)
  {
    [AVAssetWriterInputNoMorePassesHelper initWithWritingHelper:];
  }

  v7.receiver = self;
  v7.super_class = AVAssetWriterInputNoMorePassesHelper;
  v5 = -[AVAssetWriterInputHelper initWithConfigurationState:](&v7, sel_initWithConfigurationState_, [a3 configurationState]);
  if (v5)
  {
    v5->_writingHelper = a3;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetWriterInputNoMorePassesHelper;
  [(AVAssetWriterInputHelper *)&v3 dealloc];
}

- (void)requestMediaDataWhenReadyOnQueue:(id)a3 usingBlock:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_currentPassDescription);
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"cannot be called when no media data is being requested.  Check the value of %@.", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (void)stopRequestingMediaData
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_currentPassDescription);
  v12 = [v3 exceptionWithName:v4 reason:AVMethodExceptionReasonWithClassAndSelector(v5 userInfo:{a2, @"cannot be called when no media data is being requested.  Check the value of %@.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (int64_t)appendSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  if (a4)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"not allowed when no media data is being requested.  Check the value of %@.", NSStringFromSelector(sel_currentPassDescription)), 0}];
    *a4 = AVErrorForClientProgrammingError(v5);
  }

  return 1;
}

- (BOOL)appendPixelBuffer:(__CVBuffer *)a3 withPresentationTime:(id *)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_currentPassDescription);
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"cannot be called when no media data is being requested.  Check the value of %@.", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (BOOL)appendTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)a3 withPresentationTime:(id *)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_currentPassDescription);
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"cannot be called when no media data is being requested.  Check the value of %@.", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (int64_t)appendCaption:(id)a3 error:(id *)a4
{
  if (a4)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"not allowed when no media data is being requested.  Check the value of %@.", NSStringFromSelector(sel_currentPassDescription)), 0}];
    *a4 = AVErrorForClientProgrammingError(v5);
  }

  return 1;
}

- (int64_t)appendCaptionGroup:(id)a3 error:(id *)a4
{
  if (a4)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"not allowed when no media data is being requested.  Check the value of %@.", NSStringFromSelector(sel_currentPassDescription)), 0}];
    *a4 = AVErrorForClientProgrammingError(v5);
  }

  return 1;
}

- (void)markCurrentPassAsFinished
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v11 = [v3 exceptionWithName:v4 reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"cannot be called after the final pass", v6, v7, v8, v9, v10, v12), 0}];
  objc_exception_throw(v11);
}

- (uint64_t)initWithWritingHelper:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_10();
  return [v0 handleFailureInMethod:@"writingHelper != nil" object:? file:? lineNumber:? description:?];
}

@end