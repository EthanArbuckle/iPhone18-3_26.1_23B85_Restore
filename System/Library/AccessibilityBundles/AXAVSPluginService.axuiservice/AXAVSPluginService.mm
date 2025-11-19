void sub_11DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_11FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateDisplayOnState];
    WeakRetained = v2;
  }
}

void sub_1420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _monitorAVSSupport];
}

void sub_1488(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if ((byte_88B8 & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return;
      }

      AXPerformBlockAsynchronouslyOnMainThread();
    }

    byte_88B8 = 1;
  }
}

void sub_18E0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = +[AXUIDisplayManager sharedDisplayManager];
  v7 = [v6 showAlertWithText:v5 subtitleText:v8 iconImage:0 type:6 priority:30 duration:*(a1 + 32) forService:3.0];
}

id sub_1DE0(uint64_t a1)
{
  result = [*(a1 + 32) avsShouldBeOn];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _monitorAVSSupport];
  }

  return result;
}

void sub_1E2C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [NSNumber numberWithInt:a1];
  v6 = [NSNumber numberWithUnsignedLongLong:*a2];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Display status ambiguous: notify_get_state status %@ != NOTIFY_STATUS_OK and state == %@", &v7, 0x16u);
}

udioFromFile:v12];
  }

  else if (a4 == 10000)
  {
    v11 = AXLogAVS();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1F44(v11);
    }

    [(AXAVSPluginService *)self _monitorAVSSupport];
  }

  return 0;
}

- (BOOL)_deviceSupportsVoiceTriggersWhileDisplayOff
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 isBatteryMonitoringEnabled];
  [v2 setBatteryMonitoringEnabled:1];
  v4 = [v2 batteryState];
  [v2 setBatteryMonitoringEnabled:v3];

  return (v4 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (BOOL)avsShouldBeOn
{
  v3 = +[AXSettings sharedInstance];
  if (![v3 isAdaptiveVoiceShortcutsEnabled])
  {
    v6 = 0;
LABEL_8:

    return v6;
  }

  v4 = +[AVSStore shortcuts];
  v5 = [v4 count];

  if (v5)
  {
    v3 = [(AXAVSPluginService *)self displayOnMonitor];
    if ([v3 isDisplayOn])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(AXAVSPluginService *)self _deviceSupportsVoiceTriggersWhileDisplayOff];
    }

    goto LABEL_8;
  }

  return 0;
}

- (void)_monitorAVSSupport
{
  v3 = +[AVSTriggerController sharedInstance];
  v4 = [(AXAVSPluginService *)self avsShouldBeOn];
  v5 = AXLogAVS();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "AVS support enabled", buf, 2u);
    }

    [v3 startListening];
    [(AXAVSPluginService *)self _showContentViewController:0];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_18E0;
    v7[3] = &unk_4240;
    v7[4] = self;
    [v3 setDisplayAlertHandler:v7];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "AVS support disabled", buf, 2u);
    }

    [v3 stopListening];
    [(AXAVSPluginService *)self _hideContentViewController];
  }
}

- (void)_monitorAVSPausingSupport
{
  if (byte_88B8 == 1)
  {
    v11 = v2;
    v12 = v3;
    v5 = +[AVSTriggerController sharedInstance];
    v6 = [(AXAVSPluginService *)self avsShouldBeOn];
    v7 = AXLogAVS();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AVS support should resume", buf, 2u);
      }

      [v5 resumeListening];
    }

    else
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AVS support should be pausing", v9, 2u);
      }

      [v5 pauseListening];
    }
  }
}

- (void)_pipeAudioFromFile:(id)a3
{
  v3 = a3;
  v4 = AXLogAVS();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Will pipe audio from file to AVS", &v19, 2u);
  }

  v5 = +[AVSTriggerController sharedInstance];
  [v5 startListening];
  v6 = [NSURL fileURLWithPath:v3];

  v7 = [[AVAudioFile alloc] initForReading:v6 commonFormat:3 interleaved:0 error:0];
  v8 = [v7 length];
  v9 = [v7 processingFormat];
  [v9 sampleRate];
  v11 = v10;

  v12 = [v7 length];
  v13 = [AVAudioPCMBuffer alloc];
  v14 = [v7 processingFormat];
  v15 = [v13 initWithPCMFormat:v14 frameCapacity:v8];

  if ([v7 readIntoBuffer:v15 error:0])
  {
    v16 = v12 / v11;
    [v5 handleAudioBufferInput:v15 time:mach_absolute_time()];
    v17 = AXLogAVS();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = v16;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Audio length is %f seconds, will sleep for that duration", &v19, 0xCu);
    }

    [NSThread sleepForTimeInterval:v16];
    [v5 stopListening];
    v18 = AXLogAVS();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Finished piping audio from file to AVS", &v19, 2u);
    }
  }

  else
  {
    v18 = AXLogAVS();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1F88(v18);
    }
  }
}

@end