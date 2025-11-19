void sub_FF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_101C(uint64_t a1)
{
  v2 = CoreRCPluginLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "System going to sleep", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 64) & 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = *(WeakRetained + 6);
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9) sleepDisplay];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }

    v4[64] = 1;
  }
}

void sub_1174(uint64_t a1)
{
  v2 = CoreRCPluginLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "System is awake", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 64) == 1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = *(WeakRetained + 6);
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9) wakeDisplay];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }

    v4[64] = 0;
  }
}

void sub_12CC(void *a1, io_iterator_t a2)
{
  v3 = a1;
  while (1)
  {
    v4 = IOIteratorNext(a2);
    if (v4)
    {
      v5 = v4;
      do
      {
        if (!v3[5])
        {
          v6 = [[CoreRCManager alloc] initWithSerialQueue:v3[1]];
          v7 = v3[5];
          v3[5] = v6;

          v8 = v3[5];
          if (!v8)
          {
            v9 = CoreRCPluginLog();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              sub_3F04(&v10, v11, v9);
            }

            v8 = v3[5];
          }

          [v8 setDelegate:v3];
        }

        IOObjectRelease(v5);
        v5 = IOIteratorNext(a2);
      }

      while (v5);
    }

    if (IOIteratorIsValid(a2))
    {
      break;
    }

    IOIteratorReset(a2);
  }
}

void sub_13C4(void *a1, io_iterator_t a2)
{
  v3 = a1;
  while (1)
  {
    v4 = IOIteratorNext(a2);
    if (v4)
    {
      v5 = v4;
      do
      {
        entryID = 0;
        memset(name, 0, 128);
        IORegistryEntryGetName(v5, name);
        IORegistryEntryGetRegistryEntryID(v5, &entryID);
        v6 = CoreRCPluginLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v9 = entryID;
          v10 = 2080;
          v11 = name;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "serviceNotificationAnalyticsEDID service published: 0x%llX : %s", buf, 0x16u);
        }

        [v3 sendEDIDAnalyticsForService:v5];
        IOObjectRelease(v5);
        v5 = IOIteratorNext(a2);
      }

      while (v5);
    }

    if (IOIteratorIsValid(a2))
    {
      break;
    }

    IOIteratorReset(a2);
  }
}

void sub_1534(void *a1, io_iterator_t a2)
{
  v3 = a1;
  while (1)
  {
    v4 = IOIteratorNext(a2);
    if (v4)
    {
      v5 = v4;
      do
      {
        entryID = 0;
        memset(name, 0, 128);
        IORegistryEntryGetName(v5, name);
        IORegistryEntryGetRegistryEntryID(v5, &entryID);
        v6 = CoreRCPluginLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v9 = entryID;
          v10 = 2080;
          v11 = name;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "serviceNotificationAnalyticsPCON service published: 0x%llX : %s", buf, 0x16u);
        }

        [v3 sendPCONAnalyticsForService:v5];
        IOObjectRelease(v5);
        v5 = IOIteratorNext(a2);
      }

      while (v5);
    }

    if (IOIteratorIsValid(a2))
    {
      break;
    }

    IOIteratorReset(a2);
  }
}

void sub_2030(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

id sub_2050()
{

  return [v0 setObject:v1 forKey:?];
}

void *sub_2A9C(void *result)
{
  v1 = result;
  v2 = result[4];
  if (*(v2 + 16) && *(v2 + 24) && *(v2 + 34) == 1)
  {
    v3 = CoreRCPluginLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Reasserting active source", v4, 2u);
    }

    result = [*(v1[4] + 24) makeActiveSourceWithTVMenus:1 error:0];
    v2 = v1[4];
  }

  *(v2 + 35) = 0;
  *(v1[4] + 34) = 0;
  return result;
}

void sub_36C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CoreRCPluginLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) displayId];
    v9 = *(a1 + 40);
    v10 = [v6 debugDescription];
    *buf = 67109890;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v5;
    v29 = 2080;
    v30 = [v10 UTF8String];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "(%d:%@) Brightness notification: %@  %s", buf, 0x26u);
  }

  if ([v5 isEqual:kCABrightnessSyncNotificationWillChangePowerState])
  {
    v11 = [v6 objectForKeyedSubscript:kCABrightnessSyncNotificationEventState];
    if ([v11 intValue])
    {
    }

    else
    {
      v12 = [v6 objectForKeyedSubscript:@"syncNotificationHotplugState"];
      v13 = [v12 intValue];

      if (v13 == 1)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_3994;
        block[3] = &unk_8370;
        v14 = *(a1 + 48);
        v22 = *(a1 + 56);
        dispatch_sync(v14, block);
        v15 = v22;
        goto LABEL_12;
      }
    }
  }

  if (![v5 isEqual:kCABrightnessSyncNotificationDidChangePowerState])
  {
    goto LABEL_13;
  }

  v15 = [v6 objectForKeyedSubscript:kCABrightnessSyncNotificationEventState];
  if ([v15 intValue] != 1)
  {
LABEL_12:

    goto LABEL_13;
  }

  v16 = [v6 objectForKeyedSubscript:@"syncNotificationHotplugState"];
  v17 = [v16 intValue];

  if (v17 == 1)
  {
    v18 = *(a1 + 48);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_39A4;
    v19[3] = &unk_8370;
    v20 = *(a1 + 64);
    dispatch_async(v18, v19);
    v15 = v20;
    goto LABEL_12;
  }

LABEL_13:
}

id CoreRCPluginLog()
{
  if (qword_CF10 != -1)
  {
    sub_46F4();
  }

  v1 = qword_CF08;

  return v1;
}

void sub_3A60(id a1)
{
  qword_CF08 = os_log_create("com.apple.CoreRCPlugin", "default");

  _objc_release_x1();
}

void sub_3D30()
{
  v0 = CoreRCPluginLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_2030(&dword_0, v1, v2, "Error adding DCP driver matching notification 0x%x", v3, v4, v5, v6, 0);
  }
}

void sub_3DCC()
{
  v0 = CoreRCPluginLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_2030(&dword_0, v1, v2, "Failed to add IOAVVideoInterface matching notification for analytics 0x%x", v3, v4, v5, v6, 0);
  }
}

void sub_3E68()
{
  v0 = CoreRCPluginLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_2030(&dword_0, v1, v2, "Failed to add IODPDevice matching notification for analytics 0x%x", v3, v4, v5, v6, 0);
  }
}

void sub_3F04(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Create CoreRC Manager Failed", buf, 2u);
}

void sub_3F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CoreRCPlugin.m" lineNumber:247 description:{@"Same bus re-added %@", a3}];
}

void sub_3FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CoreRCPlugin.m" lineNumber:248 description:{@"Same bus re-added %@", a3}];
}

void sub_4240(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CoreRCDisplay.m" lineNumber:67 description:{@"cecBus is null", 0}];
}

void sub_42B4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CoreRCDisplay.m" lineNumber:68 description:{@"queue is null", 0}];
}

void sub_4328()
{
  v0 = CoreRCPluginLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_3364();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_43C8(uint64_t a1)
{
  *(a1 + 34) = 1;
  v1 = CoreRCPluginLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "HPD low at init, deferring active source", v2, 2u);
  }
}

void sub_4438(uint64_t a1)
{
  *(a1 + 34) = 1;
  v1 = CoreRCPluginLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_3364();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_4610()
{
  v0 = CoreRCPluginLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_3364();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}