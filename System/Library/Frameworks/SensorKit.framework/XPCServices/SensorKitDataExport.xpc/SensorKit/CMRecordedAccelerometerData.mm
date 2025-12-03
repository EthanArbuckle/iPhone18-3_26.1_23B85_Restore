@interface CMRecordedAccelerometerData
- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream;
@end

@implementation CMRecordedAccelerometerData

- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream
{
  [(CMRecordedAccelerometerData *)self acceleration];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NSDate *)[(CMRecordedAccelerometerData *)self startDate] timeIntervalSinceReferenceDate];
  v12 = v11;
  [(CMRecordedAccelerometerData *)self timestamp];
  LODWORD(result) = snprintf_l(byte_100016938, 0xC7uLL, 0, "{acceleration: {x: %0.*g, y: %0.*g, z: %0.*g}, start: %0.*g, timestamp: %0.*g, identifier: %llu}", 17, v6, 17, v8, 17, v10, 17, v12, 17, v13, [(CMRecordedAccelerometerData *)self identifier]);
  if (result <= 0)
  {
    return result;
  }

  return [stream write:byte_100016938 maxLength:result];
}

@end