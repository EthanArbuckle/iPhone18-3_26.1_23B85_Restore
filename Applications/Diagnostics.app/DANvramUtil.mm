@interface DANvramUtil
+ (id)sharedInstance;
- (void)_clearNVRamVariable:(id)variable;
- (void)_writeNVRamVariable:(id)variable value:(id)value;
- (void)setNextBootRecovery;
- (void)syncASTDefaultsToNVRam;
@end

@implementation DANvramUtil

+ (id)sharedInstance
{
  if (qword_100202D38 != -1)
  {
    sub_100158750();
  }

  v3 = qword_100202D30;

  return v3;
}

- (void)syncASTDefaultsToNVRam
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DANvramUtil: syncASTDefaultsToNVRam", buf, 2u);
  }

  v4 = ASTDomain;
  v5 = ASTServerKey;
  v6 = ASTCustomServerKey;
  v7 = [[NSUserDefaults alloc] initWithSuiteName:ASTDomain];
  v8 = [v7 objectForKey:v5];
  v9 = [v7 objectForKey:v6];
  v10 = [NSString stringWithFormat:@"%@.%@", v4, v5];
  v11 = [NSString stringWithFormat:@"%@.%@", v4, v6];
  if (v8 && ([v8 isEqualToNumber:&off_1001CC260] & 1) == 0)
  {
    v12 = [v8 description];
    [(DANvramUtil *)self _writeNVRamVariable:v10 value:v12];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(DANvramUtil *)self _clearNVRamVariable:v10];
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  if (([v9 isEqualToString:&stru_1001C9EA8] & 1) == 0)
  {
    [(DANvramUtil *)self _writeNVRamVariable:v11 value:v9];
    goto LABEL_11;
  }

LABEL_9:
  [(DANvramUtil *)self _clearNVRamVariable:v11];
LABEL_11:
}

- (void)setNextBootRecovery
{
  [(DANvramUtil *)self clearNextBootCheckerBoardPersistent];

  [(DANvramUtil *)self _writeNVRamVariable:@"auto-boot" value:@"0"];
}

- (void)_writeNVRamVariable:(id)variable value:(id)value
{
  variableCopy = variable;
  valueCopy = value;
  v7 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v7)
  {
    v8 = v7;
    v9 = IORegistryEntrySetCFProperty(v7, variableCopy, valueCopy);
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "failed";
      v12 = 138412802;
      v13 = variableCopy;
      if (!v9)
      {
        v11 = "succeeded.";
      }

      v14 = 2080;
      v15 = v11;
      v16 = 1024;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DANvramUtil: Writing %@ to nvram %s with result %x", &v12, 0x1Cu);
    }

    IOObjectRelease(v8);
  }
}

- (void)_clearNVRamVariable:(id)variable
{
  variableCopy = variable;
  v4 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v4)
  {
    v5 = v4;
    v6 = IORegistryEntrySetCFProperty(v4, @"IONVRAM-DELETE-PROPERTY", variableCopy);
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "failed";
      v9 = 138412802;
      v10 = variableCopy;
      if (!v6)
      {
        v8 = "succeeded.";
      }

      v11 = 2080;
      v12 = v8;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DANvramUtil: Deleting %@ from nvram %s with result %x", &v9, 0x1Cu);
    }

    IOObjectRelease(v5);
  }
}

@end