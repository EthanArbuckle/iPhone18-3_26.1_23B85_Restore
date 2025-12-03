@interface VCIDRSchedulerItem
- (VCIDRSchedulerItem)init;
- (id)description;
- (int64_t)compareBudget:(id)budget;
- (void)addStream:(id)stream;
- (void)dealloc;
@end

@implementation VCIDRSchedulerItem

- (VCIDRSchedulerItem)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCIDRSchedulerItem;
  v2 = [(VCIDRSchedulerItem *)&v4 init];
  if (v2)
  {
    v2->_streams = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_framePosition = -1;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCIDRSchedulerItem;
  [(VCIDRSchedulerItem *)&v3 dealloc];
}

- (void)addStream:(id)stream
{
  [(NSMutableArray *)self->_streams addObject:?];
  weightFactor = self->_weightFactor;
  if (weightFactor <= [stream weightFactor])
  {
    weightFactor = [stream weightFactor];
  }

  else
  {
    weightFactor = self->_weightFactor;
  }

  self->_weightFactor = weightFactor;
}

- (int64_t)compareBudget:(id)budget
{
  budgetInCaptureFrames = self->_budgetInCaptureFrames;
  if (budgetInCaptureFrames > [budget budgetInCaptureFrames])
  {
    return -1;
  }

  v7 = self->_budgetInCaptureFrames;
  return v7 != [budget budgetInCaptureFrames];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  budgetInCaptureFrames = self->_budgetInCaptureFrames;
  weightFactor = self->_weightFactor;
  if (self->_framePosition == -1)
  {
    v6 = @"N/A";
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", self->_framePosition];
  }

  return [v3 stringWithFormat:@"IDR Scheduler Item: Budget=%d (frames) weightFactor:%d framePosition:%@ streams:%@", budgetInCaptureFrames, weightFactor, v6, self->_streams];
}

@end