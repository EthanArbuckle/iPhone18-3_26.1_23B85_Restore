@interface HKWorkoutMirroringDataUpdate
- (HKWorkoutMirroringDataUpdate)initWithData:(id)data completion:(id)completion;
@end

@implementation HKWorkoutMirroringDataUpdate

- (HKWorkoutMirroringDataUpdate)initWithData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = HKWorkoutMirroringDataUpdate;
  v8 = [(HKWorkoutMirroringDataUpdate *)&v16 init];
  if (v8)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v8->_UUID;
    v8->_UUID = uUID;

    v11 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v11;

    v13 = [completionCopy copy];
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v13;
  }

  return v8;
}

@end