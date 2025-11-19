@interface SRDaemonNotification
+ (void)initialize;
- (id)initWithSensor:(void *)a1;
- (void)dealloc;
@end

@implementation SRDaemonNotification

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogDaemonNotification = os_log_create("com.apple.SensorKit", "SRLogDaemonNotification");
  }
}

- (id)initWithSensor:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = SRDaemonNotification;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  if (v3)
  {
    *(v3 + 4) = [a2 copy];
    objc_initWeak(&location, v3);
    v4 = *(v3 + 4);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__SRDaemonNotification_registerForDaemonNotification__block_invoke;
    v11[3] = &unk_1E83304A8;
    objc_copyWeak(&v12, &location);
    SRRegisterForDarwinNotification(v4, v3 + 2, v11);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__SRDaemonNotification_registerForDaemonNotification__block_invoke_5;
    v9[3] = &unk_1E83304A8;
    objc_copyWeak(&v10, &location);
    SRRegisterForDarwinNotification(@"com.apple.SensorKit.significantTimeChange", v3 + 3, v9);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__SRDaemonNotification_registerForDaemonNotification__block_invoke_8;
    v7[3] = &unk_1E83304A8;
    objc_copyWeak(&v8, &location);
    SRRegisterForDarwinNotification(@"com.apple.SensorKit.resetDatastore", v3 + 4, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  if (self)
  {
    SRUnregisterForNotification(self->_sensorIdentifier, &self->_registrationToken);
    SRUnregisterForNotification(@"com.apple.SensorKit.significantTimeChange", &self->_significantTimeChangeToken);
    SRUnregisterForNotification(@"com.apple.SensorKit.resetDatastore", &self->_resetDatastoreToken);
  }

  self->_sensorIdentifier = 0;
  v3.receiver = self;
  v3.super_class = SRDaemonNotification;
  [(SRDaemonNotification *)&v3 dealloc];
}

uint64_t __53__SRDaemonNotification_registerForDaemonNotification__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v2 = SRLogDaemonNotification;
  if (os_log_type_enabled(SRLogDaemonNotification, OS_LOG_TYPE_DEBUG))
  {
    if (Weak)
    {
      v6 = *(Weak + 4);
    }

    else
    {
      v6 = 0;
    }

    v7 = 138543362;
    v8 = v6;
    _os_log_debug_impl(&dword_1C914D000, v2, OS_LOG_TYPE_DEBUG, "Got a notification for %{public}@ to re-connect to the daemon", &v7, 0xCu);
    if (Weak)
    {
      goto LABEL_3;
    }

LABEL_8:
    v3 = 0;
    goto LABEL_4;
  }

  if (!Weak)
  {
    goto LABEL_8;
  }

LABEL_3:
  v3 = objc_loadWeak(Weak + 3);
LABEL_4:
  result = [v3 daemonNotificationDaemonDidStart:Weak];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __53__SRDaemonNotification_registerForDaemonNotification__block_invoke_5(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v2 = SRLogDaemonNotification;
  if (os_log_type_enabled(SRLogDaemonNotification, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138543362;
    v7 = @"com.apple.SensorKit.significantTimeChange";
    _os_log_debug_impl(&dword_1C914D000, v2, OS_LOG_TYPE_DEBUG, "Got a notification for %{public}@", &v6, 0xCu);
    if (Weak)
    {
      goto LABEL_3;
    }
  }

  else if (Weak)
  {
LABEL_3:
    v3 = objc_loadWeak(Weak + 3);
    goto LABEL_4;
  }

  v3 = 0;
LABEL_4:
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [v3 daemonNotificationDaemonDidChangeTimeSignificantly:Weak];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __53__SRDaemonNotification_registerForDaemonNotification__block_invoke_8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v2 = SRLogDaemonNotification;
  if (os_log_type_enabled(SRLogDaemonNotification, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138543362;
    v7 = @"com.apple.SensorKit.resetDatastore";
    _os_log_debug_impl(&dword_1C914D000, v2, OS_LOG_TYPE_DEBUG, "Got a notification for %{public}@", &v6, 0xCu);
    if (Weak)
    {
      goto LABEL_3;
    }
  }

  else if (Weak)
  {
LABEL_3:
    v3 = objc_loadWeak(Weak + 3);
    goto LABEL_4;
  }

  v3 = 0;
LABEL_4:
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [v3 daemonNotificationDaemonDidResetDatastore:Weak];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end