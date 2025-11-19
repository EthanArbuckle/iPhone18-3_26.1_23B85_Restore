@interface HKWorkoutMirroringDataUpdate
- (HKWorkoutMirroringDataUpdate)initWithData:(id)a3 completion:(id)a4;
@end

@implementation HKWorkoutMirroringDataUpdate

- (HKWorkoutMirroringDataUpdate)initWithData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HKWorkoutMirroringDataUpdate;
  v8 = [(HKWorkoutMirroringDataUpdate *)&v16 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v8->_UUID;
    v8->_UUID = v9;

    v11 = [v6 copy];
    data = v8->_data;
    v8->_data = v11;

    v13 = [v7 copy];
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v13;
  }

  return v8;
}

@end