@interface MTLCommandQueueDescriptorInternal
- (MTLCommandQueueDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
- (void)setCommitQueue:(id)a3;
- (void)setCompletionQueue:(id)a3;
@end

@implementation MTLCommandQueueDescriptorInternal

- (MTLCommandQueueDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLCommandQueueDescriptorInternal;
  result = [(MTLCommandQueueDescriptorInternal *)&v3 init];
  if (result)
  {
    result->_maxCommandBufferCount = 64;
    result->_qosLevel = 2;
    result->_commitQueue = 0;
    result->_commitSynchronously = 0;
    result->_completionQueue = 0;
    result->_disableCrossQueueHazardTracking = 0;
    result->_disableAsyncCompletionDispatch = 0;
    result->_openGLQueue = 0;
    result->_devicePartition = 0;
    result->_lockParameterBufferSizeToMax = 0;
    result->_logState = 0;
  }

  return result;
}

- (void)dealloc
{
  commitQueue = self->_commitQueue;
  if (commitQueue)
  {
    dispatch_release(commitQueue);
  }

  completionQueue = self->_completionQueue;
  if (completionQueue)
  {
    dispatch_release(completionQueue);
  }

  v5.receiver = self;
  v5.super_class = MTLCommandQueueDescriptorInternal;
  [(MTLCommandQueueDescriptorInternal *)&v5 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setMaxCommandBufferCount:self->_maxCommandBufferCount];
    [v5 setQosLevel:self->_qosLevel];
    [v5 setCommitQueue:self->_commitQueue];
    [v5 setCommitSynchronously:self->_commitSynchronously];
    [v5 setCompletionQueue:self->_completionQueue];
    [v5 setDisableCrossQueueHazardTracking:self->_disableCrossQueueHazardTracking];
    [v5 setDisableAsyncCompletionDispatch:self->_disableAsyncCompletionDispatch];
    [v5 setIsOpenGLQueue:self->_openGLQueue];
    [v5 setDevicePartition:self->_devicePartition];
    [v5 setDisableIOFencing:self->_disableIOFencing];
    [v5 setEnableLowLatencySignalSharedEvent:self->_enableLowLatencySignalSharedEvent];
    [v5 setEnableLowLatencyWaitSharedEvent:self->_enableLowLatencyWaitSharedEvent];
    [v5 setLockParameterBufferSizeToMax:self->_lockParameterBufferSizeToMax];
    [v5 setLogState:self->_logState];
    [v5 setCommitsWithQoS:self->_commitsWithQoS];
  }

  return v5;
}

- (void)setCommitQueue:(id)a3
{
  if (a3)
  {
    dispatch_retain(a3);
  }

  if (self->_commitQueue)
  {
    dispatch_release(a3);
  }

  self->_commitQueue = a3;
}

- (void)setCompletionQueue:(id)a3
{
  if (a3)
  {
    dispatch_retain(a3);
  }

  if (self->_completionQueue)
  {
    dispatch_release(a3);
  }

  self->_completionQueue = a3;
}

- (id)formattedDescription:(unint64_t)a3
{
  v12[22] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v12[0] = v4;
  v12[1] = @"maxCommandBufferCount =";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxCommandBufferCount];
  v6 = 0;
  v12[2] = v5;
  v12[3] = v4;
  v12[4] = @"qosLevel =";
  qosLevel = self->_qosLevel;
  if (qosLevel <= 4)
  {
    v6 = *(&off_1E6EED660 + qosLevel);
  }

  v12[5] = v6;
  v12[6] = v4;
  v12[7] = [MEMORY[0x1E696AEC0] stringWithFormat:@"commitQueue =%p", self->_commitQueue];
  v12[8] = v4;
  v12[9] = @"commitSynchronously =";
  v12[10] = [MEMORY[0x1E696AD98] numberWithBool:self->_commitSynchronously];
  v12[11] = v4;
  v12[12] = [MEMORY[0x1E696AEC0] stringWithFormat:@"completionQueue =%p", self->_completionQueue];
  v12[13] = v4;
  v12[14] = @"disableCrossQueueHazardTracking =";
  v12[15] = [MEMORY[0x1E696AD98] numberWithBool:self->_disableCrossQueueHazardTracking];
  v12[16] = v4;
  v12[17] = @"disableAsyncCompletionDispatch =";
  v12[18] = [MEMORY[0x1E696AD98] numberWithBool:self->_disableAsyncCompletionDispatch];
  v12[19] = v4;
  v12[20] = @"lockParameterBufferSizeToMax =";
  v12[21] = [MEMORY[0x1E696AD98] numberWithBool:self->_lockParameterBufferSizeToMax];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:22];
  v11.receiver = self;
  v11.super_class = MTLCommandQueueDescriptorInternal;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLCommandQueueDescriptorInternal description](&v11, sel_description), objc_msgSend(v8, "componentsJoinedByString:", @" "];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

@end