@interface CMMotionAlarm
- (CMMotionAlarm)initWithCoder:(id)a3;
- (CMMotionAlarm)initWithName:(id)a3 type:(unsigned int)a4 duration:(unsigned int)a5 repeats:(BOOL)a6 alarmId:(unint64_t)a7 bundleId:(id)a8 state:(int)a9;
- (id)description;
- (void)copyPropertiesFromAlarm:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMMotionAlarm

- (CMMotionAlarm)initWithName:(id)a3 type:(unsigned int)a4 duration:(unsigned int)a5 repeats:(BOOL)a6 alarmId:(unint64_t)a7 bundleId:(id)a8 state:(int)a9
{
  v11 = a6;
  v72 = *MEMORY[0x1E69E9840];
  if (a6 && a4 != 15 && a4 != 19)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CMMotionAlarm.mm", 44, @"Invalid parameter not satisfying: %@", @"type == kCMMotionAlarmTypeTimer || type == kCMMotionAlarmTypeClassATimer");
  }

  if (!a3)
  {
    v42 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, self, @"CMMotionAlarm.mm", 46, @"Invalid parameter not satisfying: %@", @"name");
  }

  if (a4 >= 0x1C)
  {
    v44 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, a2, self, @"CMMotionAlarm.mm", 47, @"Invalid parameter not satisfying: %@", @"type < kMotionAlarmTypeCount");
  }

  if (!a8)
  {
    v46 = a2;
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E2A540);
    }

    v19 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_FAULT))
    {
      v22 = objc_msgSend_UTF8String(a3, v20, v21);
      v23 = sub_19B717080(a9);
      *buf = 136447490;
      v61 = v22;
      v62 = 1026;
      v63 = a4;
      v64 = 1026;
      v65 = a5;
      v66 = 1026;
      v67 = v11;
      v68 = 2050;
      v69 = a7;
      v70 = 2082;
      v71 = objc_msgSend_UTF8String(v23, v24, v25);
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "Invalid CMMotionAlarm with nil bundle id! name: %{public}s, type: %{public}d, duration %{public}d, repeats: %{public}d, alarmId: %{public}llu, state: %{public}s", buf, 0x32u);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E2A540);
      }

      v29 = objc_msgSend_UTF8String(a3, v27, v28);
      v30 = sub_19B717080(a9);
      v48 = 136447490;
      v49 = v29;
      v50 = 1026;
      v51 = a4;
      v52 = 1026;
      v53 = a5;
      v54 = 1026;
      v55 = v11;
      v56 = 2050;
      v57 = a7;
      v58 = 2082;
      v59 = objc_msgSend_UTF8String(v30, v31, v32);
      v33 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarm initWithName:type:duration:repeats:alarmId:bundleId:state:]", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    sub_19B421798();
    if (sub_19B43242C())
    {
      v36 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v34, v35);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v36, v37, v46, self, @"CMMotionAlarm.mm", 64, @"Invalid parameter not satisfying: %@", @"false");
    }
  }

  v47.receiver = self;
  v47.super_class = CMMotionAlarm;
  v38 = [(CMMotionAlarm *)&v47 init];
  if (v38)
  {
    v39 = a3;
    v38->_duration = a5;
    v38->_type = a4;
    v38->_repeats = v11;
    v38->_name = v39;
    v38->_alarmId = a7;
    v38->_bundleId = a8;
    v38->_state = a9;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v38;
}

- (void)dealloc
{
  self->_manager = 0;

  self->_bundleId = 0;
  v3.receiver = self;
  v3.super_class = CMMotionAlarm;
  [(CMMotionAlarm *)&v3 dealloc];
}

- (CMMotionAlarm)initWithCoder:(id)a3
{
  v20.receiver = self;
  v20.super_class = CMMotionAlarm;
  v4 = [(CMMotionAlarm *)&v20 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_name = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMMotionAlarmName");
    v4->_type = objc_msgSend_decodeIntegerForKey_(a3, v7, @"kCMMotionAlarmType");
    objc_msgSend_decodeDoubleForKey_(a3, v8, @"kCMMotionAlarmDuration");
    v4->_duration = v9;
    v4->_repeats = objc_msgSend_decodeBoolForKey_(a3, v10, @"kCMMotionAlarmRepeats");
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v12, v11, @"kCMMotionAlarmId");
    v4->_alarmId = objc_msgSend_unsignedLongLongValue(v13, v14, v15);
    v16 = objc_opt_class();
    v4->_bundleId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v17, v16, @"kCMMotionAlarmBundleId");
    v4->_state = objc_msgSend_decodeIntegerForKey_(a3, v18, @"kCMMotionAlarmState");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_name, @"kCMMotionAlarmName");
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->_type, @"kCMMotionAlarmType");
  LODWORD(v6) = self->_duration;
  objc_msgSend_encodeDouble_forKey_(a3, v7, @"kCMMotionAlarmDuration", v6);
  objc_msgSend_encodeBool_forKey_(a3, v8, self->_repeats, @"kCMMotionAlarmRepeats");
  v10 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v9, self->_alarmId);
  objc_msgSend_encodeObject_forKey_(a3, v11, v10, @"kCMMotionAlarmId");
  objc_msgSend_encodeObject_forKey_(a3, v12, self->_bundleId, @"kCMMotionAlarmBundleId");
  state = self->_state;

  objc_msgSend_encodeInteger_forKey_(a3, v13, state, @"kCMMotionAlarmState");
}

- (void)copyPropertiesFromAlarm:(id)a3
{
  self->_type = objc_msgSend_type(a3, a2, a3);
  self->_duration = objc_msgSend_duration(a3, v5, v6);
  self->_repeats = objc_msgSend_repeats(a3, v7, v8);
  v11 = objc_msgSend_alarmId(a3, v9, v10);
  objc_msgSend_setAlarmId_(self, v12, v11);
  v15 = objc_msgSend_bundleId(a3, v13, v14);
  objc_msgSend_setBundleId_(self, v16, v15);
  v19 = objc_msgSend_state(a3, v17, v18);

  MEMORY[0x1EEE66B58](self, sel_setState_, v19);
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  repeats = self->_repeats;
  name = self->_name;
  alarmId = self->_alarmId;
  bundleId = self->_bundleId;
  type = self->_type;
  duration = self->_duration;
  v9 = sub_19B717080(self->_state);
  return objc_msgSend_stringWithFormat_(v2, v10, @"Name: %@, Type: %d, Duration: %d, Repeats: %d, AlarmID: %llu, BundleID: %@, AlarmState: %@", name, type, duration, repeats, alarmId, bundleId, v9);
}

@end