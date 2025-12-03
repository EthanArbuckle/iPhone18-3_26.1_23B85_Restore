@interface NSUUID
+ (id)lib_UUIDWithLegacyJobID:(int64_t)d;
+ (id)lib_shortLogKey;
+ (id)lib_shortLogKeyWithAPIVersion:(int64_t)version;
- (NSString)lib_logUUID;
- (int64_t)lib_legacyJobID;
- (unint64_t)lib_signpostId;
- (void)_lib_getBytes:(void *)bytes count:(unint64_t)count;
@end

@implementation NSUUID

+ (id)lib_UUIDWithLegacyJobID:(int64_t)d
{
  v5[0] = d;
  v5[1] = 0;
  v3 = [[NSUUID alloc] initWithUUIDBytes:v5];

  return v3;
}

- (int64_t)lib_legacyJobID
{
  v3 = 0;
  [(NSUUID *)self _lib_getBytes:&v3 count:8];
  return v3;
}

- (NSString)lib_logUUID
{
  v4 = 0;
  [(NSUUID *)self _lib_getBytes:&v4 count:4];
  v2 = [NSString stringWithFormat:@"%08X", v4];

  return v2;
}

- (unint64_t)lib_signpostId
{
  v3 = 0;
  [(NSUUID *)self _lib_getBytes:&v3 count:4];
  return v3;
}

+ (id)lib_shortLogKey
{
  v2 = +[NSUUID UUID];
  uUIDString = [v2 UUIDString];
  v4 = [uUIDString componentsSeparatedByString:@"-"];
  firstObject = [v4 firstObject];

  return firstObject;
}

+ (id)lib_shortLogKeyWithAPIVersion:(int64_t)version
{
  lib_shortLogKey = [self lib_shortLogKey];
  version = [NSString stringWithFormat:@"%@_SK%ld", lib_shortLogKey, version];

  return version;
}

- (void)_lib_getBytes:(void *)bytes count:(unint64_t)count
{
  __src[0] = 0;
  __src[1] = 0;
  [(NSUUID *)self getUUIDBytes:__src];
  if (count >= 0x11)
  {
    [NSException raise:NSRangeException format:@"%@: count %lu exceeds available length: %lu", self, count, 16];
  }

  memcpy(bytes, __src, count);
}

@end