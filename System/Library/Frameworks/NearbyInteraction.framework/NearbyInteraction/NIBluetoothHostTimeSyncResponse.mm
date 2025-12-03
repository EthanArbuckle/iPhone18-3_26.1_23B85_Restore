@interface NIBluetoothHostTimeSyncResponse
- (NIBluetoothHostTimeSyncResponse)initWithCoder:(id)coder;
- (NIBluetoothHostTimeSyncResponse)initWithDeviceEventCount:(unint64_t)count uwbDeviceTimeUs:(unint64_t)us uwbDeviceTimeUncertainty:(unsigned __int8)uncertainty uwbClockSkewMeasurementAvailable:(unsigned __int8)available deviceMaxPpm:(unsigned __int16)ppm success:(unsigned __int8)success retryDelay:(unsigned __int16)delay;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIBluetoothHostTimeSyncResponse

- (NIBluetoothHostTimeSyncResponse)initWithDeviceEventCount:(unint64_t)count uwbDeviceTimeUs:(unint64_t)us uwbDeviceTimeUncertainty:(unsigned __int8)uncertainty uwbClockSkewMeasurementAvailable:(unsigned __int8)available deviceMaxPpm:(unsigned __int16)ppm success:(unsigned __int8)success retryDelay:(unsigned __int16)delay
{
  v16.receiver = self;
  v16.super_class = NIBluetoothHostTimeSyncResponse;
  result = [(NIBluetoothHostTimeSyncResponse *)&v16 init];
  if (result)
  {
    result->_deviceEventCount = count;
    result->_uwbDeviceTimeUs = us;
    result->_uwbDeviceTimeUncertainty = uncertainty;
    result->_uwbClockSkewMeasurementAvailable = available;
    result->_deviceMaxPpm = ppm;
    result->_success = success;
    result->_retryDelay = delay;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LOWORD(v6) = self->_retryDelay;
  return [v4 initWithDeviceEventCount:self->_deviceEventCount uwbDeviceTimeUs:self->_uwbDeviceTimeUs uwbDeviceTimeUncertainty:self->_uwbDeviceTimeUncertainty uwbClockSkewMeasurementAvailable:self->_uwbClockSkewMeasurementAvailable deviceMaxPpm:self->_deviceMaxPpm success:self->_success retryDelay:v6];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_deviceEventCount forKey:@"deviceEventCount"];
  [coderCopy encodeInt64:self->_uwbDeviceTimeUs forKey:@"uwbDeviceTimeUs"];
  [coderCopy encodeInt:self->_uwbDeviceTimeUncertainty forKey:@"uwbDeviceTimeUncertainty"];
  [coderCopy encodeInt:self->_uwbClockSkewMeasurementAvailable forKey:@"uwbClockSkewMeasurementAvailable"];
  [coderCopy encodeInt:self->_deviceMaxPpm forKey:@"deviceMaxPpm"];
  [coderCopy encodeInt:self->_success forKey:@"success"];
  [coderCopy encodeInt:self->_retryDelay forKey:@"retryDelay"];
}

- (NIBluetoothHostTimeSyncResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self)
  {
    self->_deviceEventCount = [coderCopy decodeInt64ForKey:@"deviceEventCount"];
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