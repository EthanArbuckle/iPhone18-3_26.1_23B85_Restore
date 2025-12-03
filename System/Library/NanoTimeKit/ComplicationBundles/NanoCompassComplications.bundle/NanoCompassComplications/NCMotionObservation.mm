@interface NCMotionObservation
+ (id)observationWithInterval:(double)interval updateHandler:(id)handler calibrationHandler:(id)calibrationHandler;
- (NCMotionObservation)initWithInterval:(double)interval updateHandler:(id)handler calibrationHandler:(id)calibrationHandler;
@end

@implementation NCMotionObservation

+ (id)observationWithInterval:(double)interval updateHandler:(id)handler calibrationHandler:(id)calibrationHandler
{
  calibrationHandlerCopy = calibrationHandler;
  handlerCopy = handler;
  v10 = [self alloc];
  updated = objc_msgSend_initWithInterval_updateHandler_calibrationHandler_(v10, v11, handlerCopy, calibrationHandlerCopy, interval);

  return updated;
}

- (NCMotionObservation)initWithInterval:(double)interval updateHandler:(id)handler calibrationHandler:(id)calibrationHandler
{
  handlerCopy = handler;
  calibrationHandlerCopy = calibrationHandler;
  v17.receiver = self;
  v17.super_class = NCMotionObservation;
  v10 = [(NCMotionObservation *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_updateInterval = interval;
    v12 = MEMORY[0x23EEBBDF0](handlerCopy);
    updateHandler = v11->_updateHandler;
    v11->_updateHandler = v12;

    v14 = MEMORY[0x23EEBBDF0](calibrationHandlerCopy);
    calibrationHandler = v11->_calibrationHandler;
    v11->_calibrationHandler = v14;
  }

  return v11;
}

@end