@interface CLFindMyAccessoryFirmwareVersion
- (CLFindMyAccessoryFirmwareVersion)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (CLFindMyAccessoryFirmwareVersion)initWithData:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation CLFindMyAccessoryFirmwareVersion

- (CLFindMyAccessoryFirmwareVersion)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = CLFindMyAccessoryFirmwareVersion;
  v6 = [(CLFindMyAccessoryFirmwareVersion *)&v11 init];
  v7 = v6;
  if (a4 >= 0x13 && v6)
  {
    v8 = malloc_type_malloc(0x13uLL, 0x1000040DD5176B5uLL);
    v7->_version = v8;
    v9 = *(a3 + 15);
    *v8 = *a3;
    *(v8 + 15) = v9;
  }

  return v7;
}

- (CLFindMyAccessoryFirmwareVersion)initWithData:(id)a3
{
  v5 = [a3 bytes];
  v6 = [a3 length];

  return [(CLFindMyAccessoryFirmwareVersion *)self initWithBytes:v5 length:v6];
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
  v4 = [(CLFindMyAccessoryFirmwareVersion *)self vanBurenVersion];
  v5 = [(CLFindMyAccessoryFirmwareVersion *)self rtKitVersion];
  v6 = [(CLFindMyAccessoryFirmwareVersion *)self roseAPVersion];
  v7 = [(CLFindMyAccessoryFirmwareVersion *)self roseDSPVersion];
  v8 = [(CLFindMyAccessoryFirmwareVersion *)self calibrationDataVersion];
  v9 = [(CLFindMyAccessoryFirmwareVersion *)self debugVariant];
  v10 = "NO";
  if (v9)
  {
    v10 = "YES";
  }

  return [v3 stringWithFormat:@"CLFindMyAccessoryFirmwareVersion <%p> VanBurenVersion: %@, RTKitVersion: %@, RoseAPVersion: %lu, RoseDSPVersion: %lu, CalibrationDataVersion: %lu, DebugVariant: %s", self, v4, v5, v6, v7, v8, v10];
}

@end