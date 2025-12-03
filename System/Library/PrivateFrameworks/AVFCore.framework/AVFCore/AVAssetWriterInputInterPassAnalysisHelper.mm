@interface AVAssetWriterInputInterPassAnalysisHelper
- (AVAssetWriterInputInterPassAnalysisHelper)initWithWritingHelper:(id)helper;
- (BOOL)appendPixelBuffer:(__CVBuffer *)buffer withPresentationTime:(id *)time;
- (BOOL)appendTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)group withPresentationTime:(id *)time;
- (int64_t)appendCaption:(id)caption error:(id *)error;
- (int64_t)appendCaptionGroup:(id)group error:(id *)error;
- (int64_t)appendSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
- (void)dealloc;
- (void)markAsFinished;
- (void)markCurrentPassAsFinished;
- (void)requestMediaDataWhenReadyOnQueue:(id)queue usingBlock:(id)block;
- (void)startPassAnalysis;
- (void)stopRequestingMediaData;
@end

@implementation AVAssetWriterInputInterPassAnalysisHelper

- (AVAssetWriterInputInterPassAnalysisHelper)initWithWritingHelper:(id)helper
{
  if (!helper)
  {
    [AVAssetWriterInputInterPassAnalysisHelper initWithWritingHelper:];
  }

  v8.receiver = self;
  v8.super_class = AVAssetWriterInputInterPassAnalysisHelper;
  v5 = -[AVAssetWriterInputHelper initWithConfigurationState:](&v8, sel_initWithConfigurationState_, [helper configurationState]);
  if (v5)
  {
    helperCopy = helper;
    v5->_writingHelper = helperCopy;
    v5->_initialPassDescription = [(AVAssetWriterInputWritingHelper *)helperCopy currentPassDescription];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetWriterInputInterPassAnalysisHelper;
  [(AVAssetWriterInputHelper *)&v3 dealloc];
}

- (void)startPassAnalysis
{
  _assetWriterTrack = [(AVAssetWriterInputWritingHelper *)self->_writingHelper _assetWriterTrack];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__AVAssetWriterInputInterPassAnalysisHelper_startPassAnalysis__block_invoke;
  v4[3] = &unk_1E7463858;
  v4[4] = self;
  [(AVFigAssetWriterTrack *)_assetWriterTrack endPassWithCompletionHandler:v4];
}

uint64_t __62__AVAssetWriterInputInterPassAnalysisHelper_startPassAnalysis__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    v7 = [objc_msgSend(v5 "weakReferenceToAssetWriterInput")];
    if (a3)
    {
      [*(*(a1 + 32) + 24) setCurrentPassDescription:a3];
      [*(*(a1 + 32) + 24) beginPassIfAppropriate];
      v8 = *(*(a1 + 32) + 24);
    }

    else
    {
      v8 = [[AVAssetWriterInputNoMorePassesHelper alloc] initWithWritingHelper:*(*(a1 + 32) + 24)];
    }

    return [v7 _setHelper:v8];
  }

  else
  {

    return [v5 transitionAssetWriterAndAllInputsToFailedStatusWithError:a4];
  }
}

- (void)requestMediaDataWhenReadyOnQueue:(id)queue usingBlock:(id)block
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_markCurrentPassAsFinished);
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector(v7 userInfo:{a2, @"cannot be called between the invocation of %@ and the beginning of the next pass", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (void)stopRequestingMediaData
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_markCurrentPassAsFinished);
  v12 = [v3 exceptionWithName:v4 reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"cannot be called between the invocation of %@ and the beginning of the next pass", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (int64_t)appendSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  if (error)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"not allowed between the invocation of %@ and the beginning of the next pass", NSStringFromSelector(sel_markCurrentPassAsFinished)), 0}];
    *error = AVErrorForClientProgrammingError(v5);
  }

  return 1;
}

- (BOOL)appendPixelBuffer:(__CVBuffer *)buffer withPresentationTime:(id *)time
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_markCurrentPassAsFinished);
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector(v7 userInfo:{a2, @"cannot be called between the invocation of %@ and the beginning of the next pass", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (BOOL)appendTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)group withPresentationTime:(id *)time
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_markCurrentPassAsFinished);
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector(v7 userInfo:{a2, @"cannot be called between the invocation of %@ and the beginning of the next pass", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (int64_t)appendCaption:(id)caption error:(id *)error
{
  if (error)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"not allowed between the invocation of %@ and the beginning of the next pass", NSStringFromSelector(sel_markCurrentPassAsFinished)), 0}];
    *error = AVErrorForClientProgrammingError(v5);
  }

  return 1;
}

- (int64_t)appendCaptionGroup:(id)group error:(id *)error
{
  if (error)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"not allowed between the invocation of %@ and the beginning of the next pass", NSStringFromSelector(sel_markCurrentPassAsFinished)), 0}];
    *error = AVErrorForClientProgrammingError(v5);
  }

  return 1;
}

- (void)markAsFinished
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_markCurrentPassAsFinished);
  v12 = [v3 exceptionWithName:v4 reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"cannot be called between the invocation of %@ and the beginning of the next pass", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (void)markCurrentPassAsFinished
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  v12 = [v3 exceptionWithName:v4 reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"Cannot call %@ more than once for the same pass", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (uint64_t)initWithWritingHelper:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_10();
  return [v0 handleFailureInMethod:@"writingHelper != nil" object:? file:? lineNumber:? description:?];
}

@end