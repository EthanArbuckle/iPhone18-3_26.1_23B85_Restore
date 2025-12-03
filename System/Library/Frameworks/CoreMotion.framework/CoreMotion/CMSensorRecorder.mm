@interface CMSensorRecorder
+ (BOOL)isAccelerometerRecordingAvailable;
+ (BOOL)isGyroRecordingAvailable;
+ (BOOL)isPressureRecordingAvailable;
- (BOOL)validateTimesFromDate:(id *)date toDate:(id)toDate;
- (id)accelerometerDataSinceId:(unint64_t)id;
- (id)gyroDataSinceId:(unint64_t)id;
- (id)pressureDataSinceId:(unint64_t)id;
@end

@implementation CMSensorRecorder

+ (BOOL)isAccelerometerRecordingAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isRecordingAvailableForType_, 0);
}

+ (BOOL)isGyroRecordingAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isRecordingAvailableForType_, 1);
}

+ (BOOL)isPressureRecordingAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isRecordingAvailableForType_, 2);
}

- (id)accelerometerDataSinceId:(unint64_t)id
{
  v4 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v5, v4);
  v6 = [CMSensorDataList alloc];
  v8 = objc_msgSend_initWithIdentifier_andType_(v6, v7, id, 0);

  return v8;
}

- (id)gyroDataSinceId:(unint64_t)id
{
  v4 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v5, v4);
  v6 = [CMSensorDataList alloc];
  v8 = objc_msgSend_initWithIdentifier_andType_(v6, v7, id, 1);

  return v8;
}

- (id)pressureDataSinceId:(unint64_t)id
{
  v4 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v5, v4);
  v6 = [CMSensorDataList alloc];
  v8 = objc_msgSend_initWithIdentifier_andType_(v6, v7, id, 2);

  return v8;
}

- (BOOL)validateTimesFromDate:(id *)date toDate:(id)toDate
{
  if (!date)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CMSensorRecorder.mm", 640, @"Invalid parameter not satisfying: %@", @"startTime");
  }

  if (*date)
  {
    if (toDate)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, date);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CMSensorRecorder.mm", 641, @"Invalid parameter not satisfying: %@", @"*startTime");
    if (toDate)
    {
      goto LABEL_5;
    }
  }

  v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, date);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CMSensorRecorder.mm", 642, @"Invalid parameter not satisfying: %@", @"endTime");
LABEL_5:
  objc_msgSend_timeIntervalSinceDate_(toDate, a2, *date);
  if (v10 < 0.0)
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CMSensorRecorder.mm", 644, @"startTime must be <= to endTime");
  }

  Current = CFAbsoluteTimeGetCurrent();
  objc_msgSend_timeIntervalSinceReferenceDate(*date, v12, v13);
  if (Current - v16 >= 259200.0)
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CMSensorRecorder.mm", 645, @"startTime must be within 3 days of today.");
  }

  objc_msgSend_timeIntervalSinceDate_(toDate, v14, *date);
  v20 = v19;
  if (v19 > 43200.0)
  {
    *date = objc_msgSend_dateByAddingTimeInterval_(toDate, v17, v18, -43200.0);
  }

  return v20 > 43200.0;
}

@end