@interface NIBluetoothHostTimeSyncResponse
- (NIBluetoothHostTimeSyncResponse)initWithCoder:(id)a3;
- (NIBluetoothHostTimeSyncResponse)initWithDeviceEventCount:(unint64_t)a3 uwbDeviceTimeUs:(unint64_t)a4 uwbDeviceTimeUncertainty:(unsigned __int8)a5 uwbClockSkewMeasurementAvailable:(unsigned __int8)a6 deviceMaxPpm:(unsigned __int16)a7 success:(unsigned __int8)a8 retryDelay:(unsigned __int16)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIBluetoothHostTimeSyncResponse

- (NIBluetoothHostTimeSyncResponse)initWithDeviceEventCount:(unint64_t)a3 uwbDeviceTimeUs:(unint64_t)a4 uwbDeviceTimeUncertainty:(unsigned __int8)a5 uwbClockSkewMeasurementAvailable:(unsigned __int8)a6 deviceMaxPpm:(unsigned __int16)a7 success:(unsigned __int8)a8 retryDelay:(unsigned __int16)a9
{
  v16.receiver = self;
  v16.super_class = NIBluetoothHostTimeSyncResponse;
  result = [(NIBluetoothHostTimeSyncResponse *)&v16 init];
  if (result)
  {
    result->_deviceEventCount = a3;
    result->_uwbDeviceTimeUs = a4;
    result->_uwbDeviceTimeUncertainty = a5;
    result->_uwbClockSkewMeasurementAvailable = a6;
    result->_deviceMaxPpm = a7;
    result->_success = a8;
    result->_retryDelay = a9;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:\n", v5];

  [v6 appendFormat:@"deviceEventCount:%llu\n", self->_deviceEventCount];
  [v6 appendFormat:@"uwbDeviceTimeUs:%llu\n", self->_uwbDeviceTimeUs];
  [v6 appendFormat:@"uwbDeviceTimeUncertainty:%u\n", self->_uwbDeviceTimeUncertainty];
  [v6 appendFormat:@"uwbClockSkewMeasurementAvailable:%u\n", self->_uwbClockSkewMeasurementAvailable];
  [v6 appendFormat:@"deviceMaxPpm:%u\n", self->_deviceMaxPpm];
  [v6 appendFormat:@"success:%u\n", self->_success];
  [v6 appendFormat:@"retryDelay:%u>", self->_retryDelay];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LOWORD(v6) = self->_retryDelay;
  return [v4 initWithDeviceEventCount:self->_deviceEventCount uwbDeviceTimeUs:self->_uwbDeviceTimeUs uwbDeviceTimeUncertainty:self->_uwbDeviceTimeUncertainty uwbClockSkewMeasurementAvailable:self->_uwbClockSkewMeasurementAvailable deviceMaxPpm:self->_deviceMaxPpm success:self->_success retryDelay:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_deviceEventCount forKey:@"deviceEventCount"];
  [v4 encodeInt64:self->_uwbDeviceTimeUs forKey:@"uwbDeviceTimeUs"];
  [v4 encodeInt:self->_uwbDeviceTimeUncertainty forKey:@"uwbDeviceTimeUncertainty"];
  [v4 encodeInt:self->_uwbClockSkewMeasurementAvailable forKey:@"uwbClockSkewMeasurementAvailable"];
  [v4 encodeInt:self->_deviceMaxPpm forKey:@"deviceMaxPpm"];
  [v4 encodeInt:self->_success forKey:@"success"];
  [v4 encodeInt:self->_retryDelay forKey:@"retryDelay"];
}

- (NIBluetoothHostTimeSyncResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    self->_deviceEventCount = [v4 decodeInt64ForKey:@"deviceEventCount"];
    self->_uwbDeviceTimeUs = [v5 decodeInt64ForKey:@"uwbDeviceTimeUs"];
    self->_uwbDeviceTimeUncertainty = [v5 decodeIntForKey:@"uwbDeviceTimeUncertainty"];
    self->_uwbClockSkewMeasurementAvailable = [v5 decodeIntForKey:@"uwbClockSkewMeasurementAvailable"];
    self->_deviceMaxPpm = [v5 decodeIntForKey:@"deviceMaxPpm"];
    self->_success = [v5 decodeIntForKey:@"success"];
    self->_retryDelay = [v5 decodeIntForKey:@"retryDelay"];
  }

  return self;
}

@end