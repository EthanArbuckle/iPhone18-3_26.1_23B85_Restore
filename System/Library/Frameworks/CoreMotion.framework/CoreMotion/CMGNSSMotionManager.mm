@interface CMGNSSMotionManager
- (CMGNSSMotionManager)init;
- (uint64_t)isGNSSMotionAvailable;
- (void)dealloc;
- (void)startGNSSMotionUpdatesWithUpdateFrequency:(int64_t)frequency;
- (void)stopGNSSMotionUpdates;
@end

@implementation CMGNSSMotionManager

- (uint64_t)isGNSSMotionAvailable
{
  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  return ((dword_1ED71C97C - 174) < 0xF) & (0x4003u >> (dword_1ED71C97C + 82));
}

- (CMGNSSMotionManager)init
{
  v4.receiver = self;
  v4.super_class = CMGNSSMotionManager;
  v2 = [(CMGNSSMotionManager *)&v4 init];
  if (v2)
  {
    v2->_queue = dispatch_queue_create("com.apple.CoreMotion.CMGNSSMotionManagerPrivateQueue", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  sub_19B42C54C(&self->_locationdConnection, 0);
  v3.receiver = self;
  v3.super_class = CMGNSSMotionManager;
  [(CMGNSSMotionManager *)&v3 dealloc];
}

- (void)startGNSSMotionUpdatesWithUpdateFrequency:(int64_t)frequency
{
  v21 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isGNSSMotionAvailable(self, a2, frequency) & 1) == 0)
  {
    if (qword_1EAFE2B18 != -1)
    {
      dispatch_once(&qword_1EAFE2B18, &unk_1F0E295A0);
    }

    v8 = qword_1EAFE2B20;
    if (os_log_type_enabled(qword_1EAFE2B20, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "self.isGNSSMotionAvailable";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:GNSSMotion is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2B18 != -1)
      {
        dispatch_once(&qword_1EAFE2B18, &unk_1F0E295A0);
      }
    }

    v9 = qword_1EAFE2B20;
    if (os_signpost_enabled(qword_1EAFE2B20))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "self.isGNSSMotionAvailable";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GNSSMotion is unavailable", "{msg%{public}.0s:GNSSMotion is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2B18 != -1)
      {
        dispatch_once(&qword_1EAFE2B18, &unk_1F0E295A0);
      }
    }

    v10 = qword_1EAFE2B20;
    if (os_log_type_enabled(qword_1EAFE2B20, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "self.isGNSSMotionAvailable";
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GNSSMotion is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v5 = 0xA040201u >> (8 * frequency);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B674EE0;
  block[3] = &unk_1E75337D0;
  if (frequency >= 4)
  {
    LOBYTE(v5) = 1;
  }

  v12 = v5;
  block[4] = self;
  dispatch_sync(queue, block);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)stopGNSSMotionUpdates
{
  v18 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isGNSSMotionAvailable(self, a2, v2) & 1) == 0)
  {
    if (qword_1EAFE2B18 != -1)
    {
      dispatch_once(&qword_1EAFE2B18, &unk_1F0E295A0);
    }

    v6 = qword_1EAFE2B20;
    if (os_log_type_enabled(qword_1EAFE2B20, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "self.isGNSSMotionAvailable";
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:GNSSMotion is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2B18 != -1)
      {
        dispatch_once(&qword_1EAFE2B18, &unk_1F0E295A0);
      }
    }

    v7 = qword_1EAFE2B20;
    if (os_signpost_enabled(qword_1EAFE2B20))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "self.isGNSSMotionAvailable";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GNSSMotion is unavailable", "{msg%{public}.0s:GNSSMotion is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2B18 != -1)
      {
        dispatch_once(&qword_1EAFE2B18, &unk_1F0E295A0);
      }
    }

    v8 = qword_1EAFE2B20;
    if (os_log_type_enabled(qword_1EAFE2B20, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "self.isGNSSMotionAvailable";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GNSSMotion is unavailable, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6752BC;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

@end