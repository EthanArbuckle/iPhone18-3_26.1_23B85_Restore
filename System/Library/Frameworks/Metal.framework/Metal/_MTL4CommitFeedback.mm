@interface _MTL4CommitFeedback
+ (void)initialize;
- (MTLLogContainer)logs;
- (NSError)error;
- (_MTL4CommitFeedback)initWithQueue:(id)queue commitOptions:(id)options internalCompletionHandler:(id)handler;
- (void)commandBufferComplete:(unint64_t)complete completionTime:(unint64_t)time error:(id)error executeHandlers:(BOOL)handlers;
- (void)dealloc;
- (void)setLogs:(id)logs;
@end

@implementation _MTL4CommitFeedback

+ (void)initialize
{
  if (!mach_timebase_info(&info))
  {
    LODWORD(v2) = info.numer;
    LODWORD(v3) = info.denom;
    *&time_scale = v2 / v3 * 0.000000001;
  }
}

- (_MTL4CommitFeedback)initWithQueue:(id)queue commitOptions:(id)options internalCompletionHandler:(id)handler
{
  v11.receiver = self;
  v11.super_class = _MTL4CommitFeedback;
  v8 = [(_MTL4CommitFeedback *)&v11 init];
  if (v8)
  {
    v8->_queue = queue;
    v8->_commitFeedbackDispatch = [options commitFeedbackDispatch];
    [options setCommitFeedbackDispatch:0];
    v8->_internalCompletionHandler = _Block_copy(handler);
    v8->_gpuStartTime = -1;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_errors = v9;
    v8->_logs = 0;
    if (!v9)
    {

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  self->_error = 0;

  self->_errors = 0;
  internalCompletionHandler = self->_internalCompletionHandler;
  if (internalCompletionHandler)
  {
    _Block_release(internalCompletionHandler);
    self->_internalCompletionHandler = 0;
  }

  self->_commitFeedbackDispatch = 0;
  self->_logs = 0;

  self->_queue = 0;
  v4.receiver = self;
  v4.super_class = _MTL4CommitFeedback;
  [(_MTL4CommitFeedback *)&v4 dealloc];
}

- (NSError)error
{
  v2 = self->_error;

  return v2;
}

- (MTLLogContainer)logs
{
  if (self->_logs)
  {
    return self->_logs;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)setLogs:(id)logs
{
  logsCopy = logs;

  self->_logs = logs;
}

- (void)commandBufferComplete:(unint64_t)complete completionTime:(unint64_t)time error:(id)error executeHandlers:(BOOL)handlers
{
  handlersCopy = handlers;
  gpuStartTime = self->_gpuStartTime;
  gpuEndTime = self->_gpuEndTime;
  if (gpuStartTime >= complete)
  {
    gpuStartTime = complete;
  }

  if (gpuEndTime <= time)
  {
    gpuEndTime = time;
  }

  self->_gpuStartTime = gpuStartTime;
  self->_gpuEndTime = gpuEndTime;
  if (error)
  {
    [(NSMutableArray *)self->_errors addObject:error];
  }

  if (handlersCopy)
  {
    if ([(NSMutableArray *)self->_errors count])
    {
      v10 = MEMORY[0x1E695DF20];
      v11 = [(NSMutableArray *)self->_errors objectAtIndex:0];
      v12 = *MEMORY[0x1E696AA08];
      v13 = [v10 dictionaryWithObjectsAndKeys:{v11, *MEMORY[0x1E696AA08], self->_errors, *MEMORY[0x1E696A750], 0}];
      self->_error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(-[NSMutableArray objectAtIndex:](self->_errors code:"objectAtIndex:" userInfo:{0), "domain"), 1, v13}];
    }

    internalCompletionHandler = self->_internalCompletionHandler;
    if (internalCompletionHandler)
    {
      internalCompletionHandler[2]();
      _Block_release(self->_internalCompletionHandler);
      self->_internalCompletionHandler = 0;
    }

    commitFeedbackDispatch = self->_commitFeedbackDispatch;

    [(_MTL4CommitFeedbackDispatch *)commitFeedbackDispatch executeBlocksWithCommitFeedback:self];
  }
}

@end