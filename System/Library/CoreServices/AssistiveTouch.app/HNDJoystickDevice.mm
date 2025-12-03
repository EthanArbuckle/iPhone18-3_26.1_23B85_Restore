@interface HNDJoystickDevice
- (void)dealloc;
- (void)handleReportCallback:(int)callback report:(char *)report reportLength:(int64_t)length;
@end

@implementation HNDJoystickDevice

- (void)dealloc
{
  [(AXDispatchTimer *)self->_repeatTimer cancel];
  v3.receiver = self;
  v3.super_class = HNDJoystickDevice;
  [(HNDDevice *)&v3 dealloc];
}

- (void)handleReportCallback:(int)callback report:(char *)report reportLength:(int64_t)length
{
  if (!self->_repeatTimer)
  {
    v11 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    repeatTimer = self->_repeatTimer;
    self->_repeatTimer = v11;
  }

  LOBYTE(v5) = *report;
  LOBYTE(v6) = report[1];
  v13 = (self->super._maxX - self->super._minX) * 0.5;
  v14 = (v5 - v13) / v13;
  v15 = (self->super._maxY - self->super._minY) * 0.5;
  v16 = (v6 - v15) / v15;
  v17 = [objc_allocWithZone(HNDEvent) init];
  [v17 setType:3];
  [v17 setDeltaX:v14 * 15.0];
  [v17 setDeltaY:v16 * 15.0];
  delegate = [(HNDDevice *)self delegate];
  [delegate device:self didPostEvent:v17];

  [(AXDispatchTimer *)self->_repeatTimer cancel];
  if (fabs(v14) > 0.1 || fabs(v16) > 0.1)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = malloc_type_malloc(length, 0xA52EB772uLL);
    memcpy(v24[3], report, length);
    v19 = self->_repeatTimer;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100068B34;
    v21[3] = &unk_1001D5748;
    callbackCopy = callback;
    v21[4] = self;
    v21[5] = &v23;
    v21[6] = length;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100068B88;
    v20[3] = &unk_1001D4B88;
    v20[4] = &v23;
    [(AXDispatchTimer *)v19 afterDelay:v21 processBlock:v20 cancelBlock:0.02];
    _Block_object_dispose(&v23, 8);
  }
}

@end