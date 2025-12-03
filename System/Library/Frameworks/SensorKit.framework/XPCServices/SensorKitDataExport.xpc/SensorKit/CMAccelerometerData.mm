@interface CMAccelerometerData
- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream;
@end

@implementation CMAccelerometerData

- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream
{
  [(CMAccelerometerData *)self acceleration];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CMAccelerometerData *)self timestamp];
  LODWORD(result) = snprintf_l(byte_1000169FF, 0x8AuLL, 0, "{acceleration: {x: %0.*g, y: %0.*g, z: %0.*g}, timestamp: %ld}", 17, v6, 17, v8, 17, v10, v11);
  if (result <= 0)
  {
    return result;
  }

  return [stream write:byte_1000169FF maxLength:result];
}

@end