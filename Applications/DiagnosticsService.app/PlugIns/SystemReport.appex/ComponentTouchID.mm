@interface ComponentTouchID
- (BOOL)isPresent;
- (id)mesaModuleSerialNumber;
- (id)mesaSensorProvisioningState;
- (id)mesaSensorSerialNumber;
- (id)serialNumber;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentTouchID

- (BOOL)isPresent
{
  v3 = [(ComponentTouchID *)self serialNumber];
  if (findDeviceWithName("mesa") && isValidSerialNumber(v3))
  {
    valid = 1;
  }

  else
  {
    v5 = [(ComponentTouchID *)self mesaSensorSerialNumber];
    valid = isValidSerialNumber(v5);
  }

  return valid;
}

- (void)populateAttributes:(id)a3
{
  v4 = a3;
  v5 = [(ComponentTouchID *)self serialNumber];
  [v4 setObject:v5 forKeyedSubscript:@"serialNumber"];

  v6 = [(ComponentTouchID *)self mesaSensorProvisioningState];
  [v4 setObject:v6 forKeyedSubscript:@"mesaSensorProvisioningState"];

  v7 = [(ComponentTouchID *)self mesaSensorSerialNumber];
  [v4 setObject:v7 forKeyedSubscript:@"mesaSensorSerialNumber"];

  v8 = [(ComponentTouchID *)self mesaModuleSerialNumber];
  [v4 setObject:v8 forKeyedSubscript:@"mesaModuleSerialNumber"];
}

- (id)serialNumber
{
  v2 = MGCopyAnswer();
  v3 = stringOrNull(v2);

  return v3;
}

- (id)mesaSensorProvisioningState
{
  v7 = 0;
  if (sub_10003E248(&v7))
  {
    v2 = DiagnosticsKitLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Unable to get current mesa provisioning state", v6, 2u);
    }

    v3 = 0;
    v7 = 0;
  }

  else
  {
    v3 = v7;
  }

  v4 = [NSNumber numberWithUnsignedInt:v3];

  return v4;
}

- (id)mesaSensorSerialNumber
{
  v7 = 128;
  if (sub_100002684(v10, &v7))
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v3 = [NSData dataWithBytes:v10 length:v7];
    v2 = byteString(v3, 1);
    v4 = DiagnosticsKitLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Mesa sensor serial number: %@", buf, 0xCu);
    }
  }

  v5 = stringOrNull(v2);

  return v5;
}

- (id)mesaModuleSerialNumber
{
  v7 = 128;
  if (sub_10000247C(v10, &v7))
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v3 = [NSData dataWithBytes:v10 length:v7];
    v2 = [[NSString alloc] initWithData:v3 encoding:4];
    v4 = DiagnosticsKitLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Mesa Module serial number: %@", buf, 0xCu);
    }
  }

  v5 = stringOrNull(v2);

  return v5;
}

@end