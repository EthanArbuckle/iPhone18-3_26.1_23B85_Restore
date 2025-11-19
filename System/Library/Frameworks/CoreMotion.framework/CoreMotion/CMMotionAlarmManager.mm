@interface CMMotionAlarmManager
+ (id)defaultManager;
- (BOOL)acknowledgeAlarm:(id)a3 error:(id *)a4;
- (BOOL)acknowledgeAlarmWithName:(id)a3 error:(id *)a4;
- (BOOL)launchRemoteAppWithError:(id *)a3;
- (BOOL)unregisterAlarm:(id)a3 error:(id *)a4;
- (BOOL)unregisterAlarmWithName:(id)a3 error:(id *)a4;
- (CMMotionAlarmManager)initWithName:(id)a3;
- (void)dealloc;
@end

@implementation CMMotionAlarmManager

- (CMMotionAlarmManager)initWithName:(id)a3
{
  v6.receiver = self;
  v6.super_class = CMMotionAlarmManager;
  v4 = [(CMMotionAlarmManager *)&v6 init];
  if (v4)
  {
    v4->_name = a3;
  }

  return v4;
}

- (void)dealloc
{
  self->_name = 0;
  v3.receiver = self;
  v3.super_class = CMMotionAlarmManager;
  [(CMMotionAlarmManager *)&v3 dealloc];
}

+ (id)defaultManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B67D3C0;
  block[3] = &unk_1E7532988;
  block[4] = a1;
  if (qword_1ED71D310 != -1)
  {
    dispatch_once(&qword_1ED71D310, block);
  }

  return qword_1ED71D318;
}

- (BOOL)unregisterAlarmWithName:(id)a3 error:(id *)a4
{
  v7 = [CMMotionAlarm alloc];
  v9 = objc_msgSend_initWithName_type_duration_repeats_(v7, v8, a3, 9, 0xFFFFFFFFLL, 0);
  objc_msgSend_setManager_(v9, v10, self);
  v13 = objc_msgSend_instance(CMMotionAlarmManagerInternal, v11, v12);
  LOBYTE(a4) = objc_msgSend__unregisterAlarm_error_(v13, v14, v9, a4);

  return a4;
}

- (BOOL)acknowledgeAlarmWithName:(id)a3 error:(id *)a4
{
  v5 = objc_msgSend_instance(CMMotionAlarmManagerInternal, a2, a3);

  return MEMORY[0x1EEE66B58](v5, sel__acknowledgeAlarm_error_, a3);
}

- (BOOL)launchRemoteAppWithError:(id *)a3
{
  v5 = objc_msgSend_instance(CMMotionAlarmManagerInternal, a2, a3);
  objc_msgSend_delegate(self, v6, v7);

  return MEMORY[0x1EEE66B58](v5, sel__launchRemoteAppWithError_delegate_, a3);
}

- (BOOL)unregisterAlarm:(id)a3 error:(id *)a4
{
  v5 = objc_msgSend_name(a3, a2, a3);

  return MEMORY[0x1EEE66B58](self, sel_unregisterAlarmWithName_error_, v5);
}

- (BOOL)acknowledgeAlarm:(id)a3 error:(id *)a4
{
  v5 = objc_msgSend_name(a3, a2, a3);

  return MEMORY[0x1EEE66B58](self, sel_acknowledgeAlarmWithName_error_, v5);
}

@end