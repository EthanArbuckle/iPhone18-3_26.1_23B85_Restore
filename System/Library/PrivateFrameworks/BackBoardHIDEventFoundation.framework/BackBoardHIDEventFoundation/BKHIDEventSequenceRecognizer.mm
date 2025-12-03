@interface BKHIDEventSequenceRecognizer
+ (id)recognizerForEventDescriptor:(id)descriptor;
+ (id)recognizerForEventDescriptors:(id)descriptors;
- (int64_t)processEvent:(__IOHIDEvent *)event shouldConsume:(BOOL *)consume;
@end

@implementation BKHIDEventSequenceRecognizer

+ (id)recognizerForEventDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v5 = objc_alloc_init(self);
  v6 = [descriptorsCopy copy];

  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

+ (id)recognizerForEventDescriptor:(id)descriptor
{
  v10[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v5 = objc_alloc_init(self);
  v10[0] = descriptorCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = v5[3];
  v5[3] = v6;

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (int64_t)processEvent:(__IOHIDEvent *)event shouldConsume:(BOOL *)consume
{
  v7 = [(NSArray *)self->_descriptors objectAtIndexedSubscript:self->_descriptorIndex];
  LODWORD(event) = [v7 matchesHIDEvent:event];

  descriptorIndex = self->_descriptorIndex;
  if (event)
  {
    self->_descriptorIndex = ++descriptorIndex;
    if (self->_shouldConsumeEvents)
    {
      *consume = 1;
    }
  }

  if (descriptorIndex < [(NSArray *)self->_descriptors count])
  {
    return 0;
  }

  self->_descriptorIndex = 0;
  return 1;
}

@end