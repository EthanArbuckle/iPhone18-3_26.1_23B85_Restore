@interface NCMotionObservation
+ (id)observationWithInterval:(double)a3 updateHandler:(id)a4 calibrationHandler:(id)a5;
- (NCMotionObservation)initWithInterval:(double)a3 updateHandler:(id)a4 calibrationHandler:(id)a5;
@end

@implementation NCMotionObservation

+ (id)observationWithInterval:(double)a3 updateHandler:(id)a4 calibrationHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 alloc];
  updated = objc_msgSend_initWithInterval_updateHandler_calibrationHandler_(v10, v11, v9, v8, a3);

  return updated;
}

- (NCMotionObservation)initWithInterval:(double)a3 updateHandler:(id)a4 calibrationHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = NCMotionObservation;
  v10 = [(NCMotionObservation *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_updateInterval = a3;
    v12 = MEMORY[0x23EEBBDF0](v8);
    updateHandler = v11->_updateHandler;
    v11->_updateHandler = v12;

    v14 = MEMORY[0x23EEBBDF0](v9);
    calibrationHandler = v11->_calibrationHandler;
    v11->_calibrationHandler = v14;
  }

  return v11;
}

@end