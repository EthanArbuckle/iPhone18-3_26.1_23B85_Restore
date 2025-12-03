@interface ComponentWiFi
- (BOOL)isPresent;
- (id)serialNumber;
- (id)wifiAddress;
- (id)wifiDeviceCount;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentWiFi

- (BOOL)isPresent
{
  wifiDeviceCount = [(ComponentWiFi *)self wifiDeviceCount];
  v3 = [wifiDeviceCount intValue] > 0;

  return v3;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  wifiAddress = [(ComponentWiFi *)self wifiAddress];
  [attributesCopy setObject:wifiAddress forKeyedSubscript:@"wifiAddress"];

  serialNumber = [(ComponentWiFi *)self serialNumber];
  [attributesCopy setObject:serialNumber forKeyedSubscript:@"serialNumber"];
}

- (id)wifiDeviceCount
{
  v2 = objc_alloc_init(CWFInterface);
  v3 = v2;
  if (v2)
  {
    [v2 activate];
    interfaceNames = [v3 interfaceNames];
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [interfaceNames count]);
  }

  else
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "WiFiManagerClientCreate failed", v8, 2u);
    }

    v5 = &off_1000C8CD8;
  }

  return v5;
}

- (id)wifiAddress
{
  v2 = MGCopyAnswer();
  v3 = stringOrNull(v2);

  return v3;
}

- (id)serialNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

@end