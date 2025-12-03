@interface AWAttentionSampler
- (AWAttentionSampler)init;
- (AWAttentionSampler)initWithOptions:(id)options;
- (CGRect)lastFaceBounds;
- (id)description;
- (void)finishDeadlineComputationWithOptions:(id)options;
- (void)setUnitTestMode;
- (void)startDeadlineComputation;
- (void)updateSamplingDeadline:(unint64_t)deadline forClient:(id)client;
@end

@implementation AWAttentionSampler

- (void)startDeadlineComputation
{
  dispatch_assert_queue_V2(self->_queue);
  self->_nextDeadline = -1;
  sampleLogger = self->_sampleLogger;

  [(AWSampleLogger *)sampleLogger startUpdate];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = "true";
  if (self->_samplingSuppressedMask)
  {
    v8 = "true";
  }

  else
  {
    v8 = "false";
  }

  if (!self->_unitTestSampling)
  {
    v7 = "false";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p> (samplingSuppressed: %s unitTestSampling: %s)", v5, self, v8, v7];

  return v9;
}

- (CGRect)lastFaceBounds
{
  x = self->_lastFaceBounds.origin.x;
  y = self->_lastFaceBounds.origin.y;
  width = self->_lastFaceBounds.size.width;
  height = self->_lastFaceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AWAttentionSampler)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (!optionsCopy)
  {
    goto LABEL_5;
  }

  v6 = [optionsCopy valueForKey:@"eventMask"];

  if (v6)
  {
    v7 = [v5 valueForKey:@"eventMask"];
    unsignedLongValue = [v7 unsignedLongValue];

    if (unsignedLongValue == 128)
    {
      v6 = [[AWPearlAttentionSampler alloc] initWithOptions:v5];
      goto LABEL_6;
    }

LABEL_5:
    v6 = 0;
  }

LABEL_6:

  return &v6->super;
}

- (void)finishDeadlineComputationWithOptions:(id)options
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = self->_nextDeadline != -1;
  [AWAttentionSampler shouldSample:"shouldSample:withDeadline:withOptions:" withDeadline:v4 withOptions:?];
  sampleLogger = self->_sampleLogger;

  [(AWSampleLogger *)sampleLogger shouldSample:v4];
}

- (void)updateSamplingDeadline:(unint64_t)deadline forClient:(id)client
{
  queue = self->_queue;
  clientCopy = client;
  dispatch_assert_queue_V2(queue);
  nextDeadline = self->_nextDeadline;
  if (nextDeadline == -1 || nextDeadline < deadline)
  {
    self->_nextDeadline = deadline;
  }

  [(AWSampleLogger *)self->_sampleLogger updateDataForClient:clientCopy deadline:deadline];
}

- (void)setUnitTestMode
{
  sampleLogger = self->_sampleLogger;
  self->_sampleLogger = 0;

  self->_unitTestSampling = 1;
}

- (AWAttentionSampler)init
{
  v9.receiver = self;
  v9.super_class = AWAttentionSampler;
  v2 = [(AWAttentionSampler *)&v9 init];
  if (v2)
  {
    v3 = awQueue(1);
    queue = v2->_queue;
    v2->_queue = v3;

    stateChangedCallback = v2->_stateChangedCallback;
    v2->_stateChangedCallback = &__block_literal_global_1568;

    v6 = +[AWSampleLogger sharedLogger];
    sampleLogger = v2->_sampleLogger;
    v2->_sampleLogger = v6;

    v2->_samplingSuppressedMask = 0;
  }

  return v2;
}

@end