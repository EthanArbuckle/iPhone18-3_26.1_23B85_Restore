@interface HMSoftwareUpdateProgressEvent
- (HMSoftwareUpdateProgressEvent)initWithProgress:(id)progress eventSource:(id)source eventTimestamp:(double)timestamp;
- (id)encodedData;
@end

@implementation HMSoftwareUpdateProgressEvent

- (id)encodedData
{
  progress = [(HMSoftwareUpdateProgressEvent *)self progress];
  protoPayload = [progress protoPayload];
  data = [protoPayload data];

  return data;
}

- (HMSoftwareUpdateProgressEvent)initWithProgress:(id)progress eventSource:(id)source eventTimestamp:(double)timestamp
{
  progressCopy = progress;
  v10 = MEMORY[0x1E69A45F0];
  sourceCopy = source;
  v12 = [[v10 alloc] initWithSource:sourceCopy cachePolicy:1 combineType:2 timestamp:timestamp];

  v16.receiver = self;
  v16.super_class = HMSoftwareUpdateProgressEvent;
  v13 = [(HMEEvent *)&v16 initWithSubclassedEventMetadata:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_progress, progress);
  }

  return v14;
}

@end