@interface CLFindMyAccessoryFirmwareVersion
- (CLFindMyAccessoryFirmwareVersion)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (CLFindMyAccessoryFirmwareVersion)initWithData:(id)data;
- (id)description;
- (void)dealloc;
@end

@implementation CLFindMyAccessoryFirmwareVersion

- (CLFindMyAccessoryFirmwareVersion)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  v11.receiver = self;
  v11.super_class = CLFindMyAccessoryFirmwareVersion;
  v6 = [(CLFindMyAccessoryFirmwareVersion *)&v11 init];
  v7 = v6;
  if (length >= 0x13 && v6)
  {
    v8 = malloc_type_malloc(0x13uLL, 0x1000040DD5176B5uLL);
    v7->_version = v8;
    v9 = *(bytes + 15);
    *v8 = *bytes;
    *(v8 + 15) = v9;
  }

  return v7;
}

- (CLFindMyAccessoryFirmwareVersion)initWithData:(id)data
{
  bytes = [data bytes];
  v6 = [data length];

  return [(CLFindMyAccessoryFirmwareVersion *)self initWithBytes:bytes length:v6];
}

- (void)dealloc
{
  free(self->_version);
  v3.receiver = self;
  v3.super_class = CLFindMyAccessoryFirmwareVersion;
  [(CLFindMyAccessoryFirmwareVersion *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  vanBurenVersion = [(CLFindMyAccessoryFirmwareVersion *)self vanBurenVersion];
  rtKitVersion = [(CLFindMyAccessoryFirmwareVersion *)self rtKitVersion];
  roseAPVersion = [(CLFindMyAccessoryFirmwareVersion *)self roseAPVersion];
  roseDSPVersion = [(CLFindMyAccessoryFirmwareVersion *)self roseDSPVersion];
  calibrationDataVersion = [(CLFindMyAccessoryFirmwareVersion *)self calibrationDataVersion];
  debugVariant = [(CLFindMyAccessoryFirmwareVersion *)self debugVariant];
  v10 = "NO";
  if (debugVariant)
  {
    v10 = "YES";
  }

  return [v3 stringWithFormat:@"CLFindMyAccessoryFirmwareVersion <%p> VanBurenVersion: %@, RTKitVersion: %@, RoseAPVersion: %lu, RoseDSPVersion: %lu, CalibrationDataVersion: %lu, DebugVariant: %s", self, vanBurenVersion, rtKitVersion, roseAPVersion, roseDSPVersion, calibrationDataVersion, v10];
}

@end