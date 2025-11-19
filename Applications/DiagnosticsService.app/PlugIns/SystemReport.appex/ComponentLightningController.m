@interface ComponentLightningController
- (BOOL)base64EncodeData:(id)a3 result:(id *)a4;
- (BOOL)isPresent;
- (id)accessoryManagerESN;
- (id)deviceID;
- (id)registryESN;
- (id)reverseByteOrder:(id)a3;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentLightningController

- (BOOL)isPresent
{
  v2 = [@"tristar" UTF8String];

  return findDeviceWithName(v2);
}

- (void)populateAttributes:(id)a3
{
  v4 = a3;
  v5 = [(ComponentLightningController *)self registryESN];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = [(ComponentLightningController *)self accessoryManagerESN];
    if (v8)
    {
      v6 = v8;
      v7 = 1;
    }

    else
    {
      v6 = +[NSNull null];
      v7 = 2;
    }
  }

  v12 = v6;
  [v4 setObject:v6 forKeyedSubscript:@"esn"];
  v9 = [NSNumber numberWithUnsignedInteger:v7];
  [v4 setObject:v9 forKeyedSubscript:@"source"];

  v10 = [(ComponentLightningController *)self deviceID];
  v11 = stringOrNull(v10);
  [v4 setObject:v11 forKeyedSubscript:@"deviceID"];
}

- (id)registryESN
{
  v3 = [DAComponentUtil getIORegistryName:@"tristar" property:@"esn" optionalKey:0];
  if (v3)
  {
    v4 = [(ComponentLightningController *)self reverseByteOrder:v3];

    v3 = [v4 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  return v3;
}

- (id)accessoryManagerESN
{
  v5 = 0;
  MFAAComponentAuthCreateSignature();
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to get esn from MFAAComponentAuthCreateSignature()", v4, 2u);
  }

  return 0;
}

- (id)deviceID
{
  v2 = [DAComponentUtil getIORegistryName:@"AppleHPMDevice" property:@"Device ID" optionalKey:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)base64EncodeData:(id)a3 result:(id *)a4
{
  v5 = [a3 base64EncodedStringWithOptions:0];
  *a4 = v5;
  return v5 != 0;
}

- (id)reverseByteOrder:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [v3 bytes];
  if (v4)
  {
    v6 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = v4;
    do
    {
      *v6++ = (v7--)[(v5 - 1)];
    }

    while (v7);
  }

  v8 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];

  return v8;
}

@end