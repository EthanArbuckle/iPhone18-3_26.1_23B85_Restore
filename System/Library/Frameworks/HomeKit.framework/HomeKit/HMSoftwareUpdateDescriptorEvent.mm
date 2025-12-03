@interface HMSoftwareUpdateDescriptorEvent
- (HMSoftwareUpdateDescriptorEvent)initWithDescriptor:(id)descriptor eventSource:(id)source eventTimestamp:(double)timestamp;
- (id)encodedData;
@end

@implementation HMSoftwareUpdateDescriptorEvent

- (id)encodedData
{
  descriptor = [(HMSoftwareUpdateDescriptorEvent *)self descriptor];
  protoPayload = [descriptor protoPayload];
  data = [protoPayload data];

  return data;
}

- (HMSoftwareUpdateDescriptorEvent)initWithDescriptor:(id)descriptor eventSource:(id)source eventTimestamp:(double)timestamp
{
  descriptorCopy = descriptor;
  v10 = MEMORY[0x1E69A45F0];
  sourceCopy = source;
  v12 = [[v10 alloc] initWithSource:sourceCopy cachePolicy:2 combineType:2 timestamp:timestamp];

  v16.receiver = self;
  v16.super_class = HMSoftwareUpdateDescriptorEvent;
  v13 = [(HMEEvent *)&v16 initWithSubclassedEventMetadata:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_descriptor, descriptor);
  }

  return v14;
}

@end