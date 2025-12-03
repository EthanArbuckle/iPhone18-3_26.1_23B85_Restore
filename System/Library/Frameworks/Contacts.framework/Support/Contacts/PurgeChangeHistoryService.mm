@interface PurgeChangeHistoryService
+ (BOOL)purgeChangeHistoryWithError:(id *)error;
+ (void)run;
@end

@implementation PurgeChangeHistoryService

+ (void)run
{
  v3 = +[CNContactsDaemonLogs purgeHistory];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [self activityIdentifier]);
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is running to purge change history.", buf, 0xCu);
  }

  v10 = 0;
  v5 = [self purgeChangeHistoryWithError:&v10];
  v6 = v10;
  v7 = +[CNContactsDaemonLogs purgeHistory];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [self activityIdentifier]);
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ has finished purging change history.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10002C4CC(self, v6, v8);
  }
}

+ (BOOL)purgeChangeHistoryWithError:(id *)error
{
  error = 0;
  v4 = ABAddressBookCreateWithOptions(0, &error);
  if (v4)
  {
    SequenceNumberForClearingChanges = ABChangeHistoryGetSequenceNumberForClearingChanges();
    if (SequenceNumberForClearingChanges < 1)
    {
      v7 = +[CNContactsDaemonLogs purgeHistory];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "No change history was purged";
        v9 = v7;
        v10 = 2;
        goto LABEL_12;
      }
    }

    else
    {
      v6 = SequenceNumberForClearingChanges;
      ABChangeHistoryClearChangesToSequenceNumber();
      v7 = +[CNContactsDaemonLogs purgeHistory];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v17 = v6;
        v8 = "Purged change history to sequence number %d";
        v9 = v7;
        v10 = 8;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }

    CFRelease(v4);
    return v4 != 0;
  }

  errorCopy = error;
  if (error)
  {
    errorCopy2 = error;
    *error = errorCopy;
  }

  v13 = +[CNContactsDaemonLogs purgeHistory];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10002C590(errorCopy, v13);
  }

  return v4 != 0;
}

@end