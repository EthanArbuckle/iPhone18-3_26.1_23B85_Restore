@interface HSTRecordingManager
- (BOOL)saveRecording:(id)recording;
- (BOOL)writeRecordingToPath:(id)path;
- (HSTRecordingManager)initWithPlaybackQueue:(id)queue;
- (id).cxx_construct;
- (id)HSTRecordingManagerProxy_saveRecording:(id)recording;
- (id)_recordingNameWithSuffix:(id)suffix;
- (id)preferenceValueForKey:(id)key;
- (id)preferences;
- (void)setPreferenceValue:(id)value forKey:(id)key;
- (void)stage:(id)stage postedNotification:(id)notification;
@end

@implementation HSTRecordingManager

- (HSTRecordingManager)initWithPlaybackQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = HSTRecordingManager;
  v5 = [(HSRecordingPlaybackStage *)&v10 initWithPlaybackQueue:queueCopy];
  v6 = v5;
  if (v5)
  {
    [(HSStage *)v5 addStageObserver:v5];
    v9[0] = 0xAAAAAAAAAAAAAAAALL;
    v9[1] = 0xAAAAAAAAAAAAAAAALL;
    HSUtil::ObjectLock::ObjectLock(v9, v6);
    [(HSRecordingPlaybackStage *)v6 recordingSetMaxSize:v6->_state.maxSizeMB << 20];
    v7 = v6;
    HSUtil::ObjectLock::~ObjectLock(v9);
  }

  return v6;
}

- (BOOL)writeRecordingToPath:(id)path
{
  pathCopy = path;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v5;
  v8[2] = v5;
  v8[0] = v5;
  HSUtil::File::File(v8, [pathCopy UTF8String], 420);
  if ((v9 & 1) == 0)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTRecordingManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTRecordingManager writeRecordingToPath:];
    }

    goto LABEL_8;
  }

  if (![(HSRecordingPlaybackStage *)self recordingCopyDataTo:v8 + 8])
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTRecordingManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTRecordingManager writeRecordingToPath:];
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:
  HSUtil::File::~File(v8);

  return v6;
}

- (id)_recordingNameWithSuffix:(id)suffix
{
  suffix = [NSString stringWithFormat:@"TouchRecording-%@.hscoder", suffix];

  return suffix;
}

- (BOOL)saveRecording:(id)recording
{
  recordingCopy = recording;
  if (!recordingCopy)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HSTRecordingManager.mm" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [NSString stringWithUTF8String:"/private/var/tmp/com.apple.hid.HIDSensing.Recordings"];
  v21 = NSFilePosixPermissions;
  v22 = &off_1124D0;
  v8 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v9 = [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:v8 error:0];

  if ((v9 & 1) == 0)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTRecordingManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTRecordingManager saveRecording:];
    }

    goto LABEL_11;
  }

  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x400uLL, "%s/recording.XXX", "/private/var/tmp/com.apple.hid.HIDSensing.Recordings");
  v10 = mkstemp(__b);
  if (v10 < 0)
  {
    memset(v19, 170, sizeof(v19));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTRecordingManager.mm", v19);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTRecordingManager saveRecording:];
    }

LABEL_11:
    v14 = 0;
    goto LABEL_16;
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[1] = v11;
  v17[2] = v11;
  v17[0] = v11;
  HSUtil::File::File(v17, v10);
  if ([(HSRecordingPlaybackStage *)self recordingCopyDataTo:v17 + 8])
  {
    HSUtil::File::flush(v17);
    v12 = [NSString stringWithUTF8String:__b];
    HSAccessProvider::MoveFile(v12, recordingCopy, v13);

    v14 = 1;
  }

  else
  {
    memset(v19, 170, sizeof(v19));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTRecordingManager.mm", v19);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTRecordingManager saveRecording:];
    }

    v14 = 0;
  }

  HSUtil::File::~File(v17);
LABEL_16:

  return v14;
}

- (void)stage:(id)stage postedNotification:(id)notification
{
  stageCopy = stage;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  HSUtil::ObjectLock::ObjectLock(&v8, self);
  if (stageCopy == self && (v6 = [(HSRecordingPlaybackStage *)self mode]== 1, self->_state.recording != v6))
  {
    self->_state.recording = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  [v9 unlock];
  LOBYTE(v8) = 0;
  if (v7)
  {
    [(HSStage *)self postNotification:HSPreferenceChangedNotification, v8];
  }

  HSUtil::ObjectLock::~ObjectLock(&v8);
}

- (id)preferences
{
  {
    v4 = [[HSPreference alloc] initWithKey:@"recordingEnabled" name:@"Record" description:@"Record the input and state of the Touch pipeline"];
    v6[0] = v4;
    v5 = [[HSPreference alloc] initWithKey:@"maxSize" name:@"Max Size (MB)" description:@"Maximum size of recording"];
    v6[1] = v5;
    [HSTRecordingManager preferences]::prefs = [NSArray arrayWithObjects:v6 count:2];
  }

  v2 = [HSTRecordingManager preferences]::prefs;

  return v2;
}

- (id)preferenceValueForKey:(id)key
{
  keyCopy = key;
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  HSUtil::ObjectLock::ObjectLock(v8, self);
  if ([keyCopy isEqualToString:@"recordingEnabled"])
  {
    v5 = [NSNumber numberWithBool:self->_state.recording];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"maxSize"])
  {
    v5 = [NSNumber numberWithUnsignedLong:self->_state.maxSizeMB];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  HSUtil::ObjectLock::~ObjectLock(v8);

  return v6;
}

- (void)setPreferenceValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  HSUtil::ObjectLock::ObjectLock(&v12, self);
  if ([keyCopy isEqualToString:@"recordingEnabled"])
  {
    v8 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v8)
      {
        bOOLValue = [v8 BOOLValue];
        self->_state.recording = bOOLValue;
        [(HSRecordingPlaybackStage *)self setMode:bOOLValue];
LABEL_9:
        v11 = 1;
LABEL_12:

        goto LABEL_14;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([keyCopy isEqualToString:@"maxSize"])
  {
    v8 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v8)
      {
        unsignedIntegerValue = [v8 unsignedIntegerValue];
        self->_state.maxSizeMB = unsignedIntegerValue;
        [(HSRecordingPlaybackStage *)self recordingSetMaxSize:unsignedIntegerValue << 20];
        goto LABEL_9;
      }

LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }

LABEL_10:

    v8 = 0;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_14:
  [v13 unlock];
  LOBYTE(v12) = 0;
  if (v11)
  {
    [(HSStage *)self postNotification:HSPreferenceChangedNotification, v12];
  }

  HSUtil::ObjectLock::~ObjectLock(&v12);
}

- (id).cxx_construct
{
  *(self + 168) = 0;
  *(self + 22) = 1;
  return self;
}

- (id)HSTRecordingManagerProxy_saveRecording:(id)recording
{
  v3 = HSProxySynth::HSTRecordingManagerProxy_saveRecording_call1<BOOL>(self, recording);

  return v3;
}

- (void)writeRecordingToPath:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)writeRecordingToPath:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)saveRecording:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)saveRecording:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)saveRecording:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)saveRecording:(uint64_t)a1 .cold.4(uint64_t a1, NSObject *a2)
{
  v3 = (*(*a1 + 16))(a1);
  v4 = 136446210;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "HSAccessProvider::MoveFile failed: %{public}s", &v4, 0xCu);
}

@end