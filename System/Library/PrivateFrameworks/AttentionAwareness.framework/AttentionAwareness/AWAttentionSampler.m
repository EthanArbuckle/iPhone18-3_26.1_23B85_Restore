@interface AWAttentionSampler
- (AWAttentionSampler)init;
- (AWAttentionSampler)initWithOptions:(id)a3;
- (CGRect)lastFaceBounds;
- (id)description;
- (void)finishDeadlineComputationWithOptions:(id)a3;
- (void)setUnitTestMode;
- (void)startDeadlineComputation;
- (void)updateSamplingDeadline:(unint64_t)a3 forClient:(id)a4;
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

- (AWAttentionSampler)initWithOptions:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = [v4 valueForKey:@"eventMask"];

  if (v6)
  {
    v7 = [v5 valueForKey:@"eventMask"];
    v8 = [v7 unsignedLongValue];

    if (v8 == 128)
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

- (void)finishDeadlineComputationWithOptions:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = self->_nextDeadline != -1;
  [AWAttentionSampler shouldSample:"shouldSample:withDeadline:withOptions:" withDeadline:v4 withOptions:?];
  sampleLogger = self->_sampleLogger;

  [(AWSampleLogger *)sampleLogger shouldSample:v4];
}

- (void)updateSamplingDeadline:(unint64_t)a3 forClient:(id)a4
{
  queue = self->_queue;
  v9 = a4;
  dispatch_assert_queue_V2(queue);
  nextDeadline = self->_nextDeadline;
  if (nextDeadline == -1 || nextDeadline < a3)
  {
    self->_nextDeadline = a3;
  }

  [(AWSampleLogger *)self->_sampleLogger updateDataForClient:v9 deadline:a3];
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