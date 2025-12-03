@interface CMGyroData
- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream;
@end

@implementation CMGyroData

- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream
{
  [(CMGyroData *)self rotationRate];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CMGyroData *)self timestamp];
  LODWORD(result) = snprintf_l(byte_100016880, 0x8AuLL, 0, "{rotationRate: {x: %0.*g, y: %0.*g, z: %0.*g}, timestamp: %ld}", 17, v6, 17, v8, 17, v10, v11);
  if (result <= 0)
  {
    return result;
  }

  return [stream write:byte_100016880 maxLength:result];
}

@end