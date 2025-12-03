@interface CRLProgressObserver
- (CRLProgressObserver)initWithValueInterval:(double)interval queue:(id)queue handler:(id)handler;
- (void)handleValue:(double)value maxValue:(double)maxValue isIndeterminate:(BOOL)indeterminate;
@end

@implementation CRLProgressObserver

- (CRLProgressObserver)initWithValueInterval:(double)interval queue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = CRLProgressObserver;
  v11 = [(CRLProgressObserver *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_valueInterval = interval;
    objc_storeStrong(&v11->_queue, queue);
    v13 = [handlerCopy copy];
    handler = v12->_handler;
    v12->_handler = v13;

    v12->_lastHandledValue = 0.0;
  }

  return v12;
}

- (void)handleValue:(double)value maxValue:(double)maxValue isIndeterminate:(BOOL)indeterminate
{
  if (self->_lastHandledIndeterminate != indeterminate || (v9 = vabdd_f64(value, self->_lastHandledValue), [(CRLProgressObserver *)self valueInterval], v9 >= v10) || value >= maxValue && self->_lastHandledValue < maxValue)
  {
    self->_lastHandledIndeterminate = indeterminate;
    self->_lastHandledValue = value;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D2108;
    block[3] = &unk_10183AB38;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

@end