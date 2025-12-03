@interface CLHidManager
- (CLHidManager)initWithDelegate:(id)delegate queue:(id)queue;
- (id)clientDeviceMatchingDict:(id)dict;
- (id)clientDeviceMatchingHIDDevice:(id)device;
- (id)deviceForMatchingDictionary:(id)dictionary;
- (id)hidDeviceFromEnumeratedDevicesMatching:(id)matching;
- (void)activateClientDevice:(id)device;
- (void)dealloc;
- (void)sendMonitorUpdateForDevice:(id)device added:(BOOL)added;
- (void)unregisterForDeviceMatching:(id)matching;
@end

@implementation CLHidManager

- (CLHidManager)initWithDelegate:(id)delegate queue:(id)queue
{
  v33 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = CLHidManager;
  v6 = [(CLHidManager *)&v28 init];
  if (v6)
  {
    *(v6 + 4) = objc_opt_new();
    *(v6 + 1) = delegate;
    *(v6 + 2) = queue;
    v7 = objc_alloc(MEMORY[0x1E69A2958]);
    v9 = objc_msgSend_initWithOptions_(v7, v8, 8);
    *(v6 + 3) = v9;
    objc_msgSend_setDeviceMatching_(v9, v10, MEMORY[0x1E695E0F8]);
    objc_msgSend_setDispatchQueue_(*(v6 + 3), v11, *(v6 + 2));
    v12 = *(v6 + 3);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_19B6EDE50;
    v27[3] = &unk_1E7535018;
    v27[4] = v6;
    objc_msgSend_setDeviceNotificationHandler_(v12, v13, v27);
    objc_msgSend_activate(*(v6 + 3), v14, v15);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
    }

    v16 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
    {
      v19 = objc_msgSend_devices(*(v6 + 3), v17, v18);
      *buf = 138412290;
      v32 = v19;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "[CLHidManager] enumerated these devices: %@", buf, 0xCu);
    }

    v20 = sub_19B420058();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
      }

      v23 = objc_msgSend_devices(*(v6 + 3), v21, v22);
      v29 = 138412290;
      v30 = v23;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLHidManager initWithDelegate:queue:]", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  objc_msgSend_cancel(self->_manager, a2, v2);
  objc_msgSend_close(self->_manager, v4, v5);

  objc_msgSend_removeAllObjects(self->_clientDevices, v6, v7);
  v8.receiver = self;
  v8.super_class = CLHidManager;
  [(CLHidManager *)&v8 dealloc];
}

- (void)sendMonitorUpdateForDevice:(id)device added:(BOOL)added
{
  v7 = objc_msgSend_delegateQueue(self, a2, device);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6EE040;
  block[3] = &unk_1E7534FF0;
  block[4] = self;
  block[5] = device;
  addedCopy = added;
  dispatch_async(v7, block);
}

- (id)deviceForMatchingDictionary:(id)dictionary
{
  v5 = objc_msgSend_hidDeviceFromEnumeratedDevicesMatching_(self, a2, dictionary);
  v8 = objc_msgSend_clientDeviceMatchingDict_(self, v6, dictionary);
  if (!v8)
  {
    v9 = [CLHidDevice alloc];
    v8 = objc_msgSend_initWithHidDevice_matchingDict_(v9, v10, v5, dictionary);
    v13 = objc_msgSend_clientDevices(self, v11, v12);
    objc_msgSend_addObject_(v13, v14, v8);
    objc_msgSend_activateClientDevice_(self, v15, v8);
  }

  if (v5)
  {
    objc_msgSend_sendMonitorUpdateForDevice_added_(self, v7, v8, 1);
  }

  return v8;
}

- (void)activateClientDevice:(id)device
{
  if (objc_msgSend_hidDevice(device, a2, device))
  {
    v7 = objc_msgSend_hidDevice(device, v5, v6);
    v10 = objc_msgSend_delegateQueue(self, v8, v9);
    objc_msgSend_setDispatchQueue_(v7, v11, v10);
    v14 = objc_msgSend_hidDevice(device, v12, v13);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B6EE2A8;
    v26[3] = &unk_1E7535068;
    v26[4] = self;
    v26[5] = device;
    v26[6] = self;
    objc_msgSend_setInputReportHandler_(v14, v15, v26);
    v18 = objc_msgSend_hidDevice(device, v16, v17);
    objc_msgSend_open(v18, v19, v20);
    v23 = objc_msgSend_hidDevice(device, v21, v22);
    objc_msgSend_activate(v23, v24, v25);
  }
}

- (id)clientDeviceMatchingDict:(id)dict
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = objc_msgSend_clientDevices(self, a2, dict);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v20, v28, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_msgSend_matching(v12, v7, v8);
        if (objc_msgSend_isEqual_(v13, v14, dict))
        {
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
          }

          v15 = off_1ED71C838;
          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            dictCopy = dict;
            _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "[CLHidManager], matched CLHidDevice for %@", buf, 0xCu);
          }

          v16 = sub_19B420058();
          if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
            }

            v24 = 138412290;
            dictCopy2 = dict;
            v17 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CLHidManager clientDeviceMatchingDict:]", "CoreLocation: %s\n", v17);
            if (v17 != buf)
            {
              free(v17);
            }
          }

          goto LABEL_22;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v20, v28, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)hidDeviceFromEnumeratedDevicesMatching:(id)matching
{
  v43 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = objc_msgSend_manager(self, a2, matching);
  obj = objc_msgSend_devices(v4, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v33, v42, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v34;
    while (1)
    {
      v12 = 0;
LABEL_4:
      if (*v34 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v33 + 1) + 8 * v12);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(matching, v9, &v29, v41, 16);
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = *v30;
LABEL_8:
      v17 = 0;
      while (1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(matching);
        }

        v18 = *(*(&v29 + 1) + 8 * v17);
        v19 = objc_msgSend_propertyForKey_(v13, v9, v18);
        v21 = objc_msgSend_objectForKey_(matching, v20, v18);
        if (!objc_msgSend_isEqual_(v19, v22, v21))
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(matching, v9, &v29, v41, 16);
          if (v15)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      if (++v12 != v10)
      {
        goto LABEL_4;
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v33, v42, 16);
      v13 = 0;
      if (!v10)
      {
        goto LABEL_31;
      }
    }

LABEL_18:
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
    }

    v23 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      matchingCopy = matching;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_INFO, "[CLHidManager], matched device for %@", buf, 0xCu);
    }

    v24 = sub_19B420058();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
      }

      v37 = 138412290;
      matchingCopy2 = matching;
      v25 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLHidManager hidDeviceFromEnumeratedDevicesMatching:]", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_31:
  v26 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)clientDeviceMatchingHIDDevice:(id)device
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = objc_msgSend_clientDevices(self, a2, device);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v33, v38, 16);
  if (v5)
  {
    v8 = v5;
    v28 = *v34;
    do
    {
      v9 = 0;
LABEL_4:
      if (*v34 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v33 + 1) + 8 * v9);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = objc_msgSend_matching(v10, v6, v7);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v29, v37, 16);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v15 = *v30;
LABEL_8:
      v16 = 0;
      while (1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        v18 = objc_msgSend_propertyForKey_(device, v6, v17);
        v21 = objc_msgSend_matching(v10, v19, v20);
        v23 = objc_msgSend_objectForKey_(v21, v22, v17);
        if (!objc_msgSend_isEqual_(v18, v24, v23))
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v6, &v29, v37, 16);
          if (v14)
          {
            goto LABEL_8;
          }

          goto LABEL_19;
        }
      }

      if (++v9 != v8)
      {
        goto LABEL_4;
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v33, v38, 16);
      v10 = 0;
    }

    while (v8);
  }

  else
  {
    v10 = 0;
  }

LABEL_19:
  v25 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)unregisterForDeviceMatching:(id)matching
{
  v4 = objc_msgSend_clientDevices(self, a2, matching);

  objc_msgSend_removeObject_(v4, v5, matching);
}

@end