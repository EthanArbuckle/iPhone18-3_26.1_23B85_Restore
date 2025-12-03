@interface CMRecordedRotationRateData
- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream;
@end

@implementation CMRecordedRotationRateData

- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream
{
  [(CMRecordedRotationRateData *)self rotationRate];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NSDate *)[(CMRecordedRotationRateData *)self startDate] timeIntervalSinceReferenceDate];
  v12 = v11;
  [(CMRecordedRotationRateData *)self timestamp];
  LODWORD(result) = snprintf_l(byte_100016A89, 0xB7uLL, 0, "{rotationRate: {x: %0.*g, y: %0.*g, z: %0.*g}, start: %0.*g, timestamp: %0.*g}", 17, v6, 17, v8, 17, v10, 17, v12, 17, v13);
  if (result <= 0)
  {
    return result;
  }

  return [stream write:byte_100016A89 maxLength:result];
}

@end