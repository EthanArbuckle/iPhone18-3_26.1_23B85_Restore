@interface BKSHIDEventDeliveryPolicy
- (BOOL)isEqual:(id)equal;
- (id)_initWithPolicyObservation:(id)observation;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation BKSHIDEventDeliveryPolicy

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__BKSHIDEventDeliveryPolicy_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

void __55__BKSHIDEventDeliveryPolicy_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSStringFromBKSHIDEventDeferringPolicyStatus(*(*(a1 + 40) + 16));
  [v1 appendString:v2 withName:@"status"];
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deferringPolicyStatus];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = self->_deferringPolicyStatus == v8[2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initWithPolicyObservation:(id)observation
{
  observationCopy = observation;
  v7.receiver = self;
  v7.super_class = BKSHIDEventDeliveryPolicy;
  v5 = [(BKSHIDEventDeliveryPolicy *)&v7 init];
  if (v5)
  {
    v5->_deferringPolicyStatus = [observationCopy policyStatus];
    v5->_finalStringTokenInChain = [observationCopy isFinalStringToken];
  }

  return v5;
}

@end