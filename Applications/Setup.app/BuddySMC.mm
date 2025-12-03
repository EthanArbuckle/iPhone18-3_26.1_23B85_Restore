@interface BuddySMC
+ (unsigned)_connectToService;
- (BOOL)hasKey:(id)key;
- (BOOL)writeNumber:(unsigned __int8)number forKey:(id)key;
- (BuddySMC)init;
- (id)numberForKey:(id)key;
- (int)_valueForKey:(id)key outputData:(void *)data outputSize:(unsigned int *)size;
- (int)_writeData:(void *)data writeDataSize:(unint64_t)size forKey:(id)key;
- (unsigned)_stringToKey:(const char *)key;
- (void)dealloc;
@end

@implementation BuddySMC

- (BuddySMC)init
{
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BuddySMC;
  location = [(BuddySMC *)&v5 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = +[BuddySMC _connectToService];
    [location setPort:v2];
  }

  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (void)dealloc
{
  selfCopy = self;
  v10 = a2;
  connect = [(BuddySMC *)self port];
  if (connect)
  {
    v7 = IOConnectCallScalarMethod([(BuddySMC *)selfCopy port], 1u, 0, 0, 0, 0);
    if (v7)
    {
      v4 = _BYLoggingFacility();
      v3 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100082D54(v12, v7);
        _os_log_error_impl(&_mh_execute_header, v4, v3, "Failed to close client service: %d", v12, 8u);
      }

      objc_storeStrong(&v4, 0);
    }

    else
    {
      v7 = IOServiceClose(connect);
      if (v7)
      {
        oslog = _BYLoggingFacility();
        v5 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_100082D54(buf, v7);
          _os_log_error_impl(&_mh_execute_header, oslog, v5, "Failed to close service: %d", buf, 8u);
        }

        objc_storeStrong(&oslog, 0);
      }

      else
      {
        [(BuddySMC *)selfCopy setPort:0];
      }
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v2.receiver = selfCopy;
  v2.super_class = BuddySMC;
  [(BuddySMC *)&v2 dealloc];
}

- (BOOL)hasKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = 0;
  v7 = [(BuddySMC *)selfCopy _valueForKey:location[0] outputData:v8 outputSize:&v4]== 0;
  objc_storeStrong(location, 0);
  return v7;
}

- (id)numberForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v10 = 0;
  v9 = [(BuddySMC *)selfCopy _valueForKey:location[0] outputData:v16 outputSize:&v10];
  if (v9)
  {
    oslog = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000EA778(buf, location[0], v9);
      _os_log_error_impl(&_mh_execute_header, oslog, v7, "Failed to read key %@: %d", buf, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    v13 = 0;
    v6 = 1;
  }

  else
  {
    switch(v10)
    {
      case 1:
        v13 = [NSNumber numberWithChar:SLOBYTE(v16[0])];
        v6 = 1;
        break;
      case 2:
        v13 = [NSNumber numberWithInt:LOWORD(v16[0])];
        v6 = 1;
        break;
      case 4:
        v13 = [NSNumber numberWithInt:v16[0]];
        v6 = 1;
        break;
      default:
        v5 = _BYLoggingFacility();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1000EA778(v14, location[0], v10);
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unsupported value for key %@; size is %d", v14, 0x12u);
        }

        objc_storeStrong(&v5, 0);
        v13 = 0;
        v6 = 1;
        break;
    }
  }

  objc_storeStrong(location, 0);
  v3 = v13;

  return v3;
}

- (BOOL)writeNumber:(unsigned __int8)number forKey:(id)key
{
  selfCopy = self;
  v10 = a2;
  numberCopy = number;
  location = 0;
  objc_storeStrong(&location, key);
  v7 = [(BuddySMC *)selfCopy _writeData:&numberCopy writeDataSize:1 forKey:location];
  if (v7)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10021E7D8(buf, numberCopy, location, v7);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to write value %u to key %@: %d", buf, 0x18u);
    }

    objc_storeStrong(&oslog, 0);
    v12 = 0;
    v6 = 1;
  }

  else
  {
    v12 = 1;
    v6 = 1;
  }

  objc_storeStrong(&location, 0);
  return v12 & 1;
}

+ (unsigned)_connectToService
{
  selfCopy = self;
  v15 = a2;
  v2 = IOServiceMatching("AppleSMC");
  service = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  connect = 0;
  if (service)
  {
    v9 = IOServiceOpen(service, mach_task_self_, 0, &connect);
    IOObjectRelease(service);
    if (!v9 && connect)
    {
      v9 = IOConnectCallScalarMethod(connect, 0, 0, 0, 0, 0);
      if (v9)
      {
        v6 = _BYLoggingFacility();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100082D54(v18, v9);
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to open client service: %d", v18, 8u);
        }

        objc_storeStrong(&v6, 0);
        return 0;
      }

      else
      {
        return connect;
      }
    }

    else
    {
      v8 = _BYLoggingFacility();
      v7 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100082D54(v19, v9);
        _os_log_error_impl(&_mh_execute_header, v8, v7, "Failed to open service: %d", v19, 8u);
      }

      objc_storeStrong(&v8, 0);
      return 0;
    }
  }

  else
  {
    oslog = _BYLoggingFacility();
    v11 = 16;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v3 = oslog;
      v4 = v11;
      sub_10006AA68(buf);
      _os_log_error_impl(&_mh_execute_header, v3, v4, "Failed to get matching service", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    return 0;
  }
}

- (int)_valueForKey:(id)key outputData:(void *)data outputSize:(unsigned int *)size
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  dataCopy = data;
  sizeCopy = size;
  v20 = -[BuddySMC _stringToKey:](selfCopy, "_stringToKey:", [location[0] UTF8String]);
  v19 = 0;
  outputStructCnt = 168;
  v17 = 120;
  memset(__b, 0, sizeof(__b));
  memset(outputStruct, 0, sizeof(outputStruct));
  __b[0] = v20;
  BYTE2(__b[10]) = 9;
  v16 = IOConnectCallStructMethod([(BuddySMC *)selfCopy port], 2u, __b, 0xA8uLL, outputStruct, &outputStructCnt);
  if (v16 || LOBYTE(outputStruct[10]))
  {
    oslog = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000EA778(buf, location[0], v16);
      _os_log_error_impl(&_mh_execute_header, oslog, v14, "Failed to fetch info for key %@: %d", buf, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    v25 = -536870212;
    v13 = 1;
  }

  else
  {
    v19 = outputStruct[7];
    if (v17 >= outputStruct[7])
    {
      if (sizeCopy)
      {
        *sizeCopy = v19;
      }

      memset(__b, 0, sizeof(__b));
      memset(outputStruct, 0, sizeof(outputStruct));
      __b[0] = v20;
      __b[7] = v19;
      BYTE2(__b[10]) = 5;
      v16 = IOConnectCallStructMethod([(BuddySMC *)selfCopy port], 2u, __b, 0xA8uLL, outputStruct, &outputStructCnt);
      if (v16 || LOBYTE(outputStruct[10]))
      {
        v10 = _BYLoggingFacility();
        v9 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000EA778(v27, location[0], v16);
          _os_log_error_impl(&_mh_execute_header, v10, v9, "Failed to read info for key %@: %d", v27, 0x12u);
        }

        objc_storeStrong(&v10, 0);
        if (v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = -536870212;
        }

        v13 = 1;
      }

      else if (v17 >= outputStruct[7])
      {
        __memcpy_chk();
        v25 = v16;
        v13 = 1;
      }

      else
      {
        v8 = _BYLoggingFacility();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10021EED8(v26, location[0], outputStruct[7], v17);
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unexpected size found for key %@ when reading; %u vs %lu", v26, 0x1Cu);
        }

        objc_storeStrong(&v8, 0);
        v25 = -536870206;
        v13 = 1;
      }
    }

    else
    {
      v12 = _BYLoggingFacility();
      v11 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10021EED8(v28, location[0], outputStruct[7], v17);
        _os_log_error_impl(&_mh_execute_header, v12, v11, "Unexpected size found for key %@ when fetching information; %u vs %lu", v28, 0x1Cu);
      }

      objc_storeStrong(&v12, 0);
      v25 = -536870206;
      v13 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v25;
}

- (int)_writeData:(void *)data writeDataSize:(unint64_t)size forKey:(id)key
{
  selfCopy = self;
  v14 = a2;
  dataCopy = data;
  sizeCopy = size;
  location = 0;
  objc_storeStrong(&location, key);
  v10 = -[BuddySMC _stringToKey:](selfCopy, "_stringToKey:", [location UTF8String]);
  outputStructCnt = 80;
  memset(__b, 0, sizeof(__b));
  memset(outputStruct, 0, sizeof(outputStruct));
  __b[0] = v10;
  BYTE2(__b[10]) = 6;
  __b[7] = sizeCopy;
  for (i = 0; ; ++i)
  {
    v5 = 0;
    if (i < 32)
    {
      v5 = i < sizeCopy;
    }

    if (!v5)
    {
      break;
    }

    *(&__b[12] + i) = dataCopy[i];
  }

  v7 = IOConnectCallStructMethod([(BuddySMC *)selfCopy port], 2u, __b, 0x50uLL, outputStruct, &outputStructCnt);
  if (v7 || outputStruct[40])
  {
    NSLog(@"Write failed for key '%@' (0x%X, 0x%X)\n", location, v7, outputStruct[40]);
    v16 = -536870212;
  }

  else
  {
    NSLog(@"Write succeed for key '%@', value returned = 0x%X", location, 0);
    v16 = 0;
  }

  objc_storeStrong(&location, 0);
  return v16;
}

- (unsigned)_stringToKey:(const char *)key
{
  v5 = 0;
  for (i = 0; i < 4; ++i)
  {
    v5 = (v5 << 8) | key[i];
  }

  return v5;
}

@end