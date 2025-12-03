@interface AVCaptureSynchronizedPointCloudData
- (AVPointCloudData)pointCloudData;
- (id)_initWithPointCloudDataBuffer:(id)buffer timestamp:(id *)timestamp pointCloudDataWasDropped:(BOOL)dropped droppedReason:(int64_t)reason;
- (void)dealloc;
@end

@implementation AVCaptureSynchronizedPointCloudData

- (id)_initWithPointCloudDataBuffer:(id)buffer timestamp:(id *)timestamp pointCloudDataWasDropped:(BOOL)dropped droppedReason:(int64_t)reason
{
  v12.receiver = self;
  v12.super_class = AVCaptureSynchronizedPointCloudData;
  v11 = *timestamp;
  v9 = [(AVCaptureSynchronizedData *)&v12 _initWithTimestamp:&v11];
  if (v9)
  {
    v9[2] = buffer;
    *(v9 + 24) = dropped;
    v9[4] = reason;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureSynchronizedPointCloudData;
  [(AVCaptureSynchronizedData *)&v3 dealloc];
}

- (AVPointCloudData)pointCloudData
{
  v2 = self->_pointCloudData;

  return v2;
}

@end