@interface PalmspringCrashlogManager
- (BOOL)startWithDispatchQueue:(id)a3;
- (PalmspringCrashlogManager)initWithDevice:(id)a3;
- (id)extractCrashlogWithInfoEntry:(id)a3 payload:(unsigned int)a4 err:(id *)a5;
- (id)getInfoReportWithError:(id *)a3;
- (int)clearFirmwareCrashlogWithID:(unsigned __int8)a3 error:(id *)a4;
- (int)collectErrorStatsWithError:(id *)a3;
- (int)extractCrashlogsWithError:(id *)a3;
- (int)getPayloadSize:(unsigned int *)a3 error:(id *)a4;
- (int)setCommandForReportID:(int)a3 command:(unsigned __int8)a4 error:(id *)a5;
- (int)setReadOffset:(unsigned __int8)a3 offset:(unsigned int)a4 error:(id *)a5;
- (void)dealloc;
- (void)inputReportHandler:(id)a3 timestamp:(unint64_t)a4 type:(int64_t)a5 reportID:(int64_t)a6 report:(id)a7;
- (void)stop;
@end

@implementation PalmspringCrashlogManager

- (PalmspringCrashlogManager)initWithDevice:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    sub_467C(a2, self);
  }

  v29.receiver = self;
  v29.super_class = PalmspringCrashlogManager;
  v7 = [(PalmspringCrashlogManager *)&v29 init];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    v11 = os_log_create("com.apple.hid.AppleTopCase", [v9 UTF8String]);
    log = v7->_log;
    v7->_log = v11;

    v13 = v7->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_46F8(v13, a2);
    }

    objc_storeStrong(&v7->_device, a3);
    [(HIDDevice *)v7->_device open];
    v28 = 0;
    v14 = [(PalmspringCrashlogManager *)v7 getInfoReportWithError:&v28];
    v15 = v28;
    v16 = v7->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v24 = "supports";
      *location = 136315650;
      if (!v14)
      {
        v24 = "does not support";
      }

      *&location[4] = v24;
      v31 = 2112;
      v32 = v6;
      v33 = 2112;
      v34 = v15;
      _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "device %s crashlogs: device %@, err %@", location, 0x20u);
      if (v14)
      {
        goto LABEL_8;
      }
    }

    else if (v14)
    {
LABEL_8:
      objc_initWeak(location, v7);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_FE4;
      v26[3] = &unk_C320;
      objc_copyWeak(&v27, location);
      [(HIDDevice *)v7->_device setInputReportHandler:v26];
      v7->_autoExtract = 1;
      v17 = objc_alloc_init(NSMutableArray);
      extractionHistory = v7->_extractionHistory;
      v7->_extractionHistory = v17;

      crc16_init(v19, v20, v21, v22);
      v23 = v7;
      objc_destroyWeak(&v27);
      objc_destroyWeak(location);
LABEL_14:

      goto LABEL_15;
    }

    [(HIDDevice *)v7->_device close];
    v23 = 0;
    goto LABEL_14;
  }

  v23 = 0;
LABEL_15:

  return v23;
}

- (id)getInfoReportWithError:(id *)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_47A0(log);
  }

  v6 = +[PalmspringCrashlogInfo maxInfoReportSize];
  v7 = &v12 - ((v6 + 15) & 0x1FFFFFFF0);
  v12 = v6;
  if (([(HIDDevice *)self->_device getReport:v7 reportLength:&v12 withIdentifier:13 forType:2 error:a3]& 1) != 0)
  {
    v8 = [PalmspringCrashlogInfo alloc];
    v9 = [NSData dataWithBytes:v7 length:v12];
    v10 = [(PalmspringCrashlogInfo *)v8 initWithData:v9];
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_4830(a3);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)startWithDispatchQueue:(id)a3
{
  v5 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_47A0(log);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v5)
  {
LABEL_3:
    objc_storeStrong(&self->_queue, a3);
    [(HIDDevice *)self->_device setDispatchQueue:self->_queue];
    [(HIDDevice *)self->_device activate];
    goto LABEL_7;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_48B4();
  }

LABEL_7:

  return v5 != 0;
}

- (void)stop
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_47A0(log);
  }

  if (self->_queue)
  {
    [(HIDDevice *)self->_device cancel];
  }
}

- (void)dealloc
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_47A0(log);
  }

  [(HIDDevice *)self->_device close];
  v4.receiver = self;
  v4.super_class = PalmspringCrashlogManager;
  [(PalmspringCrashlogManager *)&v4 dealloc];
}

- (void)inputReportHandler:(id)a3 timestamp:(unint64_t)a4 type:(int64_t)a5 reportID:(int64_t)a6 report:(id)a7
{
  v10 = a3;
  v11 = a7;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_47A0(log);
  }

  if (a6 == 12)
  {
    v13 = [v11 bytes];
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v13[1];
      *buf = 67109120;
      v19 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "HID Crashlog input report, info received: 0x%02x", buf, 8u);
    }

    if (self->_autoExtract)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_14DC;
      block[3] = &unk_C348;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

- (int)extractCrashlogsWithError:(id *)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_47A0(log);
  }

  v6 = -536870198;
  v43 = a3;
  v7 = [(PalmspringCrashlogManager *)self getInfoReportWithError:a3];
  if (v7)
  {
    v44 = v7;
    v62 = 0;
    v61 = 0;
    v8 = [(PalmspringCrashlogManager *)self getPayloadSize:&v62 error:&v61];
    v9 = v61;
    if (v8)
    {
      v62 = 2048;
    }

    v10 = self->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_48F0(v8 == 0, &v62, v10);
    }

    v48 = objc_alloc_init(NSDateFormatter);
    [v48 setDateFormat:@"yyyy-MM-dd-HH:mm:ss"];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v44;
    v47 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
    if (v47)
    {
      v46 = *v58;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v58 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v57 + 1) + 8 * v11);
          v56 = 0;
          v13 = [(PalmspringCrashlogManager *)self extractCrashlogWithInfoEntry:v12 payload:v62 err:&v56];
          v14 = v56;

          v15 = self->_log;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v68 = v13;
            v69 = 1024;
            v70 = 0;
            v71 = 2112;
            v72 = v14;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Extraction of crashlog %@: result 0x%08X, err %@", buf, 0x1Cu);
          }

          v52 = v13;
          v49 = v11;
          if (v13)
          {
            if (self->_crashlogExtractedAction)
            {
              v16 = self->_log;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                sub_4994(&v54, v55, v16);
              }

              (*(self->_crashlogExtractedAction + 2))();
            }

            v65[0] = @"crashlogData";
            v17 = [v13 data];
            v66[0] = v17;
            v65[1] = @"crashlogName";
            v18 = [v13 info];
            v19 = [v18 name];
            v66[1] = v19;
            v65[2] = @"crashlogType";
            v20 = [v13 info];
            v21 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v20 type]);
            v66[2] = v21;
            v22 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:3];
            [(PalmspringCrashlogManager *)self setLastCrashlog:v22];

            v13 = v52;
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, @"com.apple.hidswdebug.AppleDeviceManagementHIDFilter.CrashlogExtracted", 0, 0, 2uLL);
            v24 = [v12 uniqueID];
            v53 = 0;
            v25 = [(PalmspringCrashlogManager *)self clearFirmwareCrashlogWithID:v24 error:&v53];
            v26 = v53;
          }

          else
          {
            v26 = v14;
            v25 = 3758097098;
          }

          v63[0] = @"InfoEntry";
          v27 = [NSString stringWithFormat:@"%@", v12];
          v64[0] = v27;
          v63[1] = @"Crashlog";
          v28 = [v13 blobVersion];
          v29 = [v13 data];
          v30 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Blob version: %d, length: %lu", v28, [v29 length]);
          v64[1] = v30;
          v63[2] = @"Timestamp";
          v31 = +[NSDate date];
          v32 = [v48 stringFromDate:v31];
          v64[2] = v32;
          v63[3] = @"Result";
          v51 = v25;
          v33 = [NSNumber numberWithInt:v25];
          v64[3] = v33;
          v63[4] = @"Error";
          v50 = v26;
          v34 = [v26 description];
          v35 = [NSString stringWithFormat:@"%@", v34];
          v64[4] = v35;
          v36 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:5];

          if ([(NSMutableArray *)self->_extractionHistory count]>= 0x64)
          {
            do
            {
              [(NSMutableArray *)self->_extractionHistory removeObjectAtIndex:0];
            }

            while ([(NSMutableArray *)self->_extractionHistory count]> 0x63);
          }

          [(NSMutableArray *)self->_extractionHistory addObject:v36];

          if (v51)
          {
            v9 = v50;
            goto LABEL_29;
          }

          v9 = v50;
          v11 = v49 + 1;
        }

        while ((v49 + 1) != v47);
        v47 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }
    }

    v51 = 0;
LABEL_29:

    if (v43)
    {
      v37 = v9;
      *v43 = v9;
    }

    v38 = self->_log;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      v40 = NSStringFromSelector(a2);
      *buf = 138412802;
      v68 = v40;
      v69 = 1024;
      v70 = v51;
      v71 = 2112;
      v72 = v9;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%@ result 0x%08X, err %@", buf, 0x1Cu);
    }

    v7 = v44;
    v6 = v51;
  }

  return v6;
}

- (id)extractCrashlogWithInfoEntry:(id)a3 payload:(unsigned int)a4 err:(id *)a5
{
  v9 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_49D4(log, a2);
  }

  if (-[PalmspringCrashlogManager setReadOffset:offset:error:](self, "setReadOffset:offset:error:", [v9 uniqueID], 0, a5))
  {
    v11 = 0;
    goto LABEL_36;
  }

  v38 = &v35;
  v12 = a4 + 1;
  v13 = objc_alloc_init(NSMutableData);
  v14 = [v13 length];
  if (v14 >= [v9 headerAndRawBlobSize])
  {
LABEL_30:
    v11 = [[PalmspringCrashlog alloc] initWithInfoEntry:v9 data:v13];
    goto LABEL_35;
  }

  v16 = 0;
  v37 = NSLocalizedDescriptionKey;
  *&v15 = 67109378;
  v36 = v15;
  *&v15 = 134218752;
  v35 = v15;
  while (1)
  {
    v39 = v12;
    v17 = [(HIDDevice *)self->_device getReport:&v35 - ((v12 + 15) & 0x1FFFFFFF0) reportLength:&v39 withIdentifier:12 forType:2 error:a5, v35];
    if (v17)
    {
      v18 = v39 < 2;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      [v13 appendBytes:&v35 - ((v12 + 15) & 0x1FFFFFFF0) + 1 length:v39 - 1];
      v22 = self->_log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v26 = v39 - 1;
        v27 = v22;
        v28 = [v9 uniqueID];
        v29 = [v13 length];
        v30 = [v9 headerAndRawBlobSize];
        *buf = v35;
        *v43 = v26;
        *&v43[8] = 1024;
        *&v43[10] = v28;
        v44 = 2048;
        v45 = v29;
        v46 = 1024;
        v47 = v30;
        _os_log_debug_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "Extracted %ld bytes of crashlog %d (%ld / %d)", buf, 0x22u);
      }

      v16 = 0;
      goto LABEL_24;
    }

    v19 = v17 ^ 1;
    if (!a5)
    {
      v19 = 1;
    }

    if ((v19 & 1) == 0 && !*a5)
    {
      v40 = v37;
      v41 = @"get report for crashlog information returned no crashlog data";
      v20 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *a5 = [[NSError alloc] initWithDomain:@"PalmspringCrashlogManager" code:-536870166 userInfo:v20];
    }

    ++v16;
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      if (a5)
      {
        v25 = *a5;
      }

      else
      {
        v25 = 0;
      }

      *buf = v36;
      *v43 = v16;
      *&v43[4] = 2112;
      *&v43[6] = v25;
      _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "get report failed to extract crashlog data, increasing failure count: # of failures %d, err %@", buf, 0x12u);
    }

    if (v16 == 3)
    {
      break;
    }

    if (-[PalmspringCrashlogManager setReadOffset:offset:error:](self, "setReadOffset:offset:error:", [v9 uniqueID], objc_msgSend(v13, "length"), a5))
    {
      v31 = self->_log;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        if (a5)
        {
          v34 = *a5;
        }

        else
        {
          v34 = 0;
        }

        *buf = 138412290;
        *v43 = v34;
        _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "Failed to set read offset back to where it was, exiting crashlog extraction: err %@", buf, 0xCu);
      }

      goto LABEL_34;
    }

LABEL_24:
    v24 = [v13 length];
    if (v24 >= [v9 headerAndRawBlobSize])
    {
      goto LABEL_30;
    }
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_4A88();
  }

LABEL_34:
  v11 = 0;
LABEL_35:

LABEL_36:

  return v11;
}

- (int)clearFirmwareCrashlogWithID:(unsigned __int8)a3 error:(id *)a4
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_4AC4(log, a2);
  }

  v12 = -500;
  v13 = a3;
  if (([(HIDDevice *)self->_device setReport:&v12 reportLength:3 withIdentifier:12 forType:2 error:a4]& 1) != 0)
  {
    return 0;
  }

  v9 = -536870212;
  v10 = self->_log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_4B7C(a3, a4, v10);
  }

  return v9;
}

- (int)getPayloadSize:(unsigned int *)a3 error:(id *)a4
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_47A0(log);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else if (a3)
  {
    goto LABEL_3;
  }

  sub_4C08(a2, self);
LABEL_3:
  v9 = [(PalmspringCrashlogManager *)self setCommandForReportID:12 command:4 error:a4];
  if (!v9)
  {
    memset(v12, 0, 5);
    v11 = 5;
    if (([(HIDDevice *)self->_device getReport:v12 reportLength:&v11 withIdentifier:12 forType:2 error:a4]& 1) != 0)
    {
      if (v11 == 5)
      {
        if (*(v12 + 1) <= 0x4000u)
        {
          v9 = 0;
          *a3 = *(v12 + 1);
        }

        else
        {
          v9 = -536870211;
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_4CF8((v12 + 1));
          }
        }
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_4CBC();
        }

        return -536870911;
      }
    }

    else
    {
      v9 = -536870198;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_4C80();
      }
    }
  }

  return v9;
}

- (int)setReadOffset:(unsigned __int8)a3 offset:(unsigned int)a4 error:(id *)a5
{
  v7 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    v14 = log;
    v15 = NSStringFromSelector(a2);
    *buf = 138412802;
    *v21 = v15;
    *&v21[8] = 1024;
    *v22 = v7;
    *&v22[4] = 1024;
    *&v22[6] = a4;
    _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%@, crashlog ID %u, offset %u", buf, 0x18u);
  }

  v17 = -244;
  v18 = v7;
  v19 = a4;
  if (([(HIDDevice *)self->_device setReport:&v17 reportLength:7 withIdentifier:12 forType:2 error:a5]& 1) != 0)
  {
    return 0;
  }

  v11 = -536870198;
  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if (a5)
    {
      v16 = *a5;
    }

    else
    {
      v16 = 0;
    }

    *buf = 67109634;
    *v21 = a4;
    *&v21[4] = 1024;
    *&v21[6] = v7;
    *v22 = 2112;
    *&v22[2] = v16;
    _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "set report failed when trying to set read offset to %d for crashlog with ID %d: error %@", buf, 0x18u);
  }

  return v11;
}

- (int)setCommandForReportID:(int)a3 command:(unsigned __int8)a4 error:(id *)a5
{
  v6 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    v14 = log;
    v15 = NSStringFromSelector(a2);
    *buf = 138412802;
    *v19 = v15;
    *&v19[8] = 1024;
    *v20 = a3;
    *&v20[4] = 1024;
    *&v20[6] = v6;
    _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%@, report ID %u, command %u", buf, 0x18u);
  }

  v17[0] = a3;
  v17[1] = v6;
  if (([(HIDDevice *)self->_device setReport:v17 reportLength:2 withIdentifier:a3 forType:2 error:a5]& 1) != 0)
  {
    return 0;
  }

  v11 = -536870212;
  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if (a5)
    {
      v16 = *a5;
    }

    else
    {
      v16 = 0;
    }

    *buf = 67109634;
    *v19 = a3;
    *&v19[4] = 1024;
    *&v19[6] = v6;
    *v20 = 2112;
    *&v20[2] = v16;
    _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "set report failed to set command for report ID %d to %d: error %@", buf, 0x18u);
  }

  return v11;
}

- (int)collectErrorStatsWithError:(id *)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_47A0(log);
  }

  return [(PalmspringCrashlogManager *)self setCommandForReportID:14 command:238 error:a3];
}

@end