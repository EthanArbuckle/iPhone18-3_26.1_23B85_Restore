@interface DSIOHIDDevice
+ (id)deviceMatchingAccessories:(id)a3 identifierMask:(unint64_t)a4;
+ (id)deviceWithAccessory:(unint64_t)a3 identifierMask:(unint64_t)a4;
- (BOOL)reportWithID:(int64_t)a3 reportType:(int)a4 object:(char *)a5 length:(int64_t *)a6;
- (DSIOHIDDevice)initWithDeviceIdentifiers:(id)a3 identifierMask:(unint64_t)a4;
- (id)_sharedSerialQueue;
- (id)serialNumber;
- (id)stringFromHIDReport:(int64_t)a3;
- (void)dealloc;
- (void)serialNumber;
@end

@implementation DSIOHIDDevice

+ (id)deviceWithAccessory:(unint64_t)a3 identifierMask:(unint64_t)a4
{
  v6 = [DSIODeviceIdentifier identifierForAccessoryModel:a3];
  v7 = [a1 alloc];
  v11 = v6;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [v7 initWithDeviceIdentifiers:v8 identifierMask:a4];

  return v9;
}

+ (id)deviceMatchingAccessories:(id)a3 identifierMask:(unint64_t)a4
{
  v16 = a1;
  v4 = a3;
  v5 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = +[DSIODeviceIdentifier identifierForAccessoryModel:](DSIODeviceIdentifier, "identifierForAccessoryModel:", [v11 intValue]);
        if (v12)
        {
          [v5 addObject:v12];
        }

        else
        {
          v13 = DiagnosticLogHandleForCategory(6);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v23 = v11;
            _os_log_fault_impl(&dword_0, v13, OS_LOG_TYPE_FAULT, "Identifier not found for accessory %@", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  v14 = [[v16 alloc] initWithDeviceIdentifiers:v5 identifierMask:a4];

  return v14;
}

- (DSIOHIDDevice)initWithDeviceIdentifiers:(id)a3 identifierMask:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v41.receiver = self;
  v41.super_class = DSIOHIDDevice;
  v7 = [(DSIOHIDDevice *)&v41 init];
  if (!v7)
  {
LABEL_36:
    v30 = v7;
    goto LABEL_40;
  }

  v8 = IOHIDManagerCreate(kCFAllocatorDefault, 0);
  v34 = v7;
  v7->_manager = v8;
  IOHIDManagerOpen(v8, 0);
  v9 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v35 = v6;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *v38;
  do
  {
    v13 = 0;
    do
    {
      if (*v38 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v37 + 1) + 8 * v13);
      v15 = objc_alloc_init(NSMutableDictionary);
      if (v4)
      {
        v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 usagePage]);
        [v15 setObject:v18 forKeyedSubscript:@"DeviceUsagePage"];

        if ((v4 & 2) == 0)
        {
LABEL_9:
          if ((v4 & 4) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      else if ((v4 & 2) == 0)
      {
        goto LABEL_9;
      }

      v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 usage]);
      [v15 setObject:v19 forKeyedSubscript:@"DeviceUsage"];

      if ((v4 & 4) == 0)
      {
LABEL_10:
        if ((v4 & 8) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 productID]);
        [v15 setObject:v16 forKeyedSubscript:@"ProductID"];

        goto LABEL_12;
      }

LABEL_16:
      v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 vendorID]);
      [v15 setObject:v20 forKeyedSubscript:@"VendorID"];

      if ((v4 & 8) != 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      v17 = [v15 copy];
      [v9 addObject:v17];

      v13 = v13 + 1;
    }

    while (v11 != v13);
    v21 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    v11 = v21;
  }

  while (v21);
LABEL_19:

  v7 = v34;
  manager = v34->_manager;
  if (!manager)
  {
    v24 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [DSIOHIDDevice initWithDeviceIdentifiers:identifierMask:];
    }

    v6 = v35;
    goto LABEL_33;
  }

  IOHIDManagerSetDeviceMatchingMultiple(manager, v9);
  v23 = IOHIDManagerCopyDevices(v34->_manager);
  v6 = v35;
  if (!v23)
  {
LABEL_34:
    if (!v34->_device)
    {
      v24 = DiagnosticLogHandleForCategory(6);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = obj;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Could not find accessory matching identifiers: %@", buf, 0xCu);
      }

      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v24 = v23;
  if ([(__CFSet *)v23 count]>= 2)
  {
    v25 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(DSIOHIDDevice *)obj initWithDeviceIdentifiers:v24 identifierMask:v25];
    }
  }

  v26 = [v24 anyObject];
  v34->_device = v26;
  if (!v26)
  {
LABEL_33:

    goto LABEL_34;
  }

  v27 = IOHIDDeviceOpen(v26, 0);
  if (v27)
  {
    v28 = v27;
    v29 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [DSIOHIDDevice initWithDeviceIdentifiers:v28 identifierMask:v29];
    }

    goto LABEL_29;
  }

  v32 = [DSIODeviceIdentifier identifierForIOHIDDevice:v34->_device];
  if (v32)
  {
    v33 = v32;
    v34->_deviceModel = [v32 accessoryModel];

    goto LABEL_33;
  }

  v29 = DiagnosticLogHandleForCategory(6);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [DSIOHIDDevice initWithDeviceIdentifiers:identifierMask:];
  }

LABEL_29:

LABEL_39:
  v30 = 0;
LABEL_40:

  return v30;
}

- (void)dealloc
{
  device = self->_device;
  if (device)
  {
    if (IOHIDDeviceClose(device, 0))
    {
      v4 = DiagnosticLogHandleForCategory(6);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [DSIOHIDDevice dealloc];
      }
    }

    self->_device = 0;
  }

  manager = self->_manager;
  if (manager)
  {
    IOHIDManagerClose(manager, 0);
    CFRelease(self->_manager);
  }

  v6.receiver = self;
  v6.super_class = DSIOHIDDevice;
  [(DSIOHIDDevice *)&v6 dealloc];
}

- (id)serialNumber
{
  Property = IOHIDDeviceGetProperty(self->_device, @"SerialNumber");
  if (Property)
  {
    v3 = Property;
    v4 = CFGetTypeID(Property);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
      goto LABEL_13;
    }

    v7 = CFGetTypeID(v3);
    if (v7 == CFNumberGetTypeID())
    {
      v5 = [NSString stringWithFormat:@"%@", v3];
      goto LABEL_13;
    }

    v8 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(DSIOHIDDevice *)v3 serialNumber];
    }
  }

  else
  {
    v6 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DSIOHIDDevice serialNumber];
    }
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (id)stringFromHIDReport:(int64_t)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  objc_initWeak(&location, self);
  v5 = [(DSIOHIDDevice *)self _sharedSerialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __37__DSIOHIDDevice_stringFromHIDReport___block_invoke;
  v8[3] = &unk_181A0;
  objc_copyWeak(v9, &location);
  v9[1] = a3;
  v8[4] = &v11;
  dispatch_sync(v5, v8);

  v6 = v12[5];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __37__DSIOHIDDevice_stringFromHIDReport___block_invoke(uint64_t a1)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *report = 0u;
  v9 = 0u;
  pReportLength = 129;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && IOHIDDeviceGetReport(WeakRetained[2], kIOHIDReportTypeFeature, *(a1 + 48), report, &pReportLength))
  {
    v4 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37__DSIOHIDDevice_stringFromHIDReport___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [[NSString alloc] initWithBytes:&report[1] length:strnlen(&report[1] encoding:{0x80uLL), 4}];
    v6 = *(*(a1 + 32) + 8);
    v4 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (BOOL)reportWithID:(int64_t)a3 reportType:(int)a4 object:(char *)a5 length:(int64_t *)a6
{
  objc_initWeak(&location, self);
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x2020000000;
  v20 = 0;
  v11 = [(DSIOHIDDevice *)self _sharedSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __55__DSIOHIDDevice_reportWithID_reportType_object_length___block_invoke;
  block[3] = &unk_181C8;
  objc_copyWeak(v16, &location);
  v17 = a4;
  block[4] = &v18;
  v16[1] = a3;
  v16[2] = a5;
  v16[3] = a6;
  dispatch_sync(v11, block);

  if (*(v19[0] + 24))
  {
    v12 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DSIOHIDDevice reportWithID:v19 reportType:v12 object:? length:?];
    }

    v13 = *(v19[0] + 24) == 0;
  }

  else
  {
    v13 = 1;
  }

  objc_destroyWeak(v16);
  _Block_object_dispose(&v18, 8);
  objc_destroyWeak(&location);
  return v13;
}

void __55__DSIOHIDDevice_reportWithID_reportType_object_length___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    *(*(*(a1 + 32) + 8) + 24) = IOHIDDeviceGetReport(WeakRetained[2], *(a1 + 72), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    WeakRetained = v3;
  }
}

- (id)_sharedSerialQueue
{
  if (_sharedSerialQueue_onceToken != -1)
  {
    [DSIOHIDDevice _sharedSerialQueue];
  }

  v3 = _sharedSerialQueue_serialQueue;

  return v3;
}

void __35__DSIOHIDDevice__sharedSerialQueue__block_invoke(id a1)
{
  _sharedSerialQueue_serialQueue = dispatch_queue_create("DSIOHIDDevice report", 0);

  _objc_release_x1();
}

- (void)initWithDeviceIdentifiers:(os_log_t)log identifierMask:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Multiple devices found when matching identifiers (%@) to devices (%@); using one", &v3, 0x16u);
}

- (void)initWithDeviceIdentifiers:(int)a1 identifierMask:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to open IOHIDDevice %d", v2, 8u);
}

- (void)serialNumber
{
  v3 = 134217984;
  v4 = CFGetTypeID(a1);
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unable to parse serial number with type = %lu.", &v3, 0xCu);
}

- (void)reportWithID:(uint64_t)a1 reportType:(NSObject *)a2 object:length:.cold.1(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unable to retieve HID report. Status code: %d", v3, 8u);
}

@end