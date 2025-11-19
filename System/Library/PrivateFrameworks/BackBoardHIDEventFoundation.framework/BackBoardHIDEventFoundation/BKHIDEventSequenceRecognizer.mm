@interface BKHIDEventSequenceRecognizer
+ (id)recognizerForEventDescriptor:(id)a3;
+ (id)recognizerForEventDescriptors:(id)a3;
- (int64_t)processEvent:(__IOHIDEvent *)a3 shouldConsume:(BOOL *)a4;
@end

@implementation BKHIDEventSequenceRecognizer

+ (id)recognizerForEventDescriptors:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 copy];

  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

+ (id)recognizerForEventDescriptor:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = v5[3];
  v5[3] = v6;

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (int64_t)processEvent:(__IOHIDEvent *)a3 shouldConsume:(BOOL *)a4
{
  v7 = [(NSArray *)self->_descriptors objectAtIndexedSubscript:self->_descriptorIndex];
  LODWORD(a3) = [v7 matchesHIDEvent:a3];

  descriptorIndex = self->_descriptorIndex;
  if (a3)
  {
    self->_descriptorIndex = ++descriptorIndex;
    if (self->_shouldConsumeEvents)
    {
      *a4 = 1;
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