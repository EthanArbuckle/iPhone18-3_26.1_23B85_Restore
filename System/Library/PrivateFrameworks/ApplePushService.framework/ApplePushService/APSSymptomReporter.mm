@interface APSSymptomReporter
- (APSSymptomReporter)init;
- (void)reportClientIPAddress:(id)address forInterfaceOfName:(id)name;
- (void)reportConnectionFailureOnConnectionType:(int64_t)type;
- (void)reportConnectionSuccessOnConnectionType:(int64_t)type;
- (void)reportSymptomToAutoBugCapture:(id)capture subType:(id)type;
@end

@implementation APSSymptomReporter

- (APSSymptomReporter)init
{
  v9.receiver = self;
  v9.super_class = APSSymptomReporter;
  v2 = [(APSSymptomReporter *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.aps.symptom-reporter-queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2->_queue;
    v6 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(v5, v6);

    v7 = v2;
  }

  return v2;
}

- (void)reportSymptomToAutoBugCapture:(id)capture subType:(id)type
{
  captureCopy = capture;
  typeCopy = type;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D918;
  block[3] = &unk_100186330;
  block[4] = self;
  v12 = captureCopy;
  v13 = typeCopy;
  v9 = typeCopy;
  v10 = captureCopy;
  dispatch_async(queue, block);
}

- (void)reportConnectionFailureOnConnectionType:(int64_t)type
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DAC8;
  block[3] = &unk_1001863D0;
  block[4] = type;
  dispatch_async(queue, block);
}

- (void)reportConnectionSuccessOnConnectionType:(int64_t)type
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DCC8;
  block[3] = &unk_1001863D0;
  block[4] = type;
  dispatch_async(queue, block);
}

- (void)reportClientIPAddress:(id)address forInterfaceOfName:(id)name
{
  addressCopy = address;
  nameCopy = name;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001DF1C;
  v11[3] = &unk_1001864D8;
  v12 = nameCopy;
  v13 = addressCopy;
  v9 = addressCopy;
  v10 = nameCopy;
  dispatch_async(queue, v11);
}

@end