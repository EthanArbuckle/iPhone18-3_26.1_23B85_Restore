@interface HMSoftwareUpdateProgressEvent
- (HMSoftwareUpdateProgressEvent)initWithProgress:(id)a3 eventSource:(id)a4 eventTimestamp:(double)a5;
- (id)encodedData;
@end

@implementation HMSoftwareUpdateProgressEvent

- (id)encodedData
{
  v2 = [(HMSoftwareUpdateProgressEvent *)self progress];
  v3 = [v2 protoPayload];
  v4 = [v3 data];

  return v4;
}

- (HMSoftwareUpdateProgressEvent)initWithProgress:(id)a3 eventSource:(id)a4 eventTimestamp:(double)a5
{
  v9 = a3;
  v10 = MEMORY[0x1E69A45F0];
  v11 = a4;
  v12 = [[v10 alloc] initWithSource:v11 cachePolicy:1 combineType:2 timestamp:a5];

  v16.receiver = self;
  v16.super_class = HMSoftwareUpdateProgressEvent;
  v13 = [(HMEEvent *)&v16 initWithSubclassedEventMetadata:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_progress, a3);
  }

  return v14;
}

@end