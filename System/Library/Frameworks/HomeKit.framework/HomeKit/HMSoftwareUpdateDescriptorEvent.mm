@interface HMSoftwareUpdateDescriptorEvent
- (HMSoftwareUpdateDescriptorEvent)initWithDescriptor:(id)a3 eventSource:(id)a4 eventTimestamp:(double)a5;
- (id)encodedData;
@end

@implementation HMSoftwareUpdateDescriptorEvent

- (id)encodedData
{
  v2 = [(HMSoftwareUpdateDescriptorEvent *)self descriptor];
  v3 = [v2 protoPayload];
  v4 = [v3 data];

  return v4;
}

- (HMSoftwareUpdateDescriptorEvent)initWithDescriptor:(id)a3 eventSource:(id)a4 eventTimestamp:(double)a5
{
  v9 = a3;
  v10 = MEMORY[0x1E69A45F0];
  v11 = a4;
  v12 = [[v10 alloc] initWithSource:v11 cachePolicy:2 combineType:2 timestamp:a5];

  v16.receiver = self;
  v16.super_class = HMSoftwareUpdateDescriptorEvent;
  v13 = [(HMEEvent *)&v16 initWithSubclassedEventMetadata:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_descriptor, a3);
  }

  return v14;
}

@end