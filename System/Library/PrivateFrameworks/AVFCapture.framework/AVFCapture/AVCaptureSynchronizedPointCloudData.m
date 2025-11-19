@interface AVCaptureSynchronizedPointCloudData
- (AVPointCloudData)pointCloudData;
- (id)_initWithPointCloudDataBuffer:(id)a3 timestamp:(id *)a4 pointCloudDataWasDropped:(BOOL)a5 droppedReason:(int64_t)a6;
- (void)dealloc;
@end

@implementation AVCaptureSynchronizedPointCloudData

- (id)_initWithPointCloudDataBuffer:(id)a3 timestamp:(id *)a4 pointCloudDataWasDropped:(BOOL)a5 droppedReason:(int64_t)a6
{
  v12.receiver = self;
  v12.super_class = AVCaptureSynchronizedPointCloudData;
  v11 = *a4;
  v9 = [(AVCaptureSynchronizedData *)&v12 _initWithTimestamp:&v11];
  if (v9)
  {
    v9[2] = a3;
    *(v9 + 24) = a5;
    v9[4] = a6;
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