@interface NSUUID(HealthKit)
+ (id)hk_UUIDWithData:()HealthKit;
+ (id)hk_v3UUIDWithNameSpace:()HealthKit name:;
- (id)hk_dataForUUIDBytes;
- (id)hk_shortRepresentation;
- (uint64_t)hk_compare:()HealthKit;
@end

@implementation NSUUID(HealthKit)

- (id)hk_dataForUUIDBytes
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  [self getUUIDBytes:v4];
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:16];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

+ (id)hk_UUIDWithData:()HealthKit
{
  v3 = a3;
  if ([v3 length] == 16)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v3, "bytes")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)hk_v3UUIDWithNameSpace:()HealthKit name:
{
  v5 = MEMORY[0x1E695DF88];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithData:v7];

  [v8 appendData:v6];
  hk_MD5 = [v8 hk_MD5];

  v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:16];
  v18 = 0;
  [hk_MD5 getBytes:&v18 range:{0, 6}];
  [v10 replaceBytesInRange:0 withBytes:6 length:{&v18, 6}];
  v17 = 0;
  [hk_MD5 getBytes:&v17 range:{6, 1}];
  v17 = v17 & 0xF | 0x30;
  [v10 replaceBytesInRange:6 withBytes:1 length:{&v17, 1}];
  v16 = 0;
  [hk_MD5 getBytes:&v16 range:{7, 1}];
  [v10 replaceBytesInRange:7 withBytes:1 length:{&v16, 1}];
  v15 = 0;
  [hk_MD5 getBytes:&v15 range:{8, 1}];
  v15 = v15 & 0x3F | 0x80;
  [v10 replaceBytesInRange:8 withBytes:1 length:{&v15, 1}];
  v14 = 0;
  [hk_MD5 getBytes:&v14 range:{9, 1}];
  [v10 replaceBytesInRange:9 withBytes:1 length:{&v14, 1}];
  v13 = 0;
  [hk_MD5 getBytes:&v13 range:{10, 6}];
  [v10 replaceBytesInRange:10 withBytes:6 length:{&v13, 6}];
  v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v10, "bytes")}];

  return v11;
}

- (uint64_t)hk_compare:()HealthKit
{
  v12 = *MEMORY[0x1E69E9840];
  *uu1 = 0;
  v11 = 0;
  *uu2 = 0;
  v9 = 0;
  v4 = a3;
  [self getUUIDBytes:uu1];
  [v4 getUUIDBytes:uu2];

  v5 = uuid_compare(uu1, uu2);
  if (v5 < 0)
  {
    result = -1;
  }

  else
  {
    result = v5 != 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)hk_shortRepresentation
{
  uUIDString = [self UUIDString];
  v2 = [uUIDString substringFromIndex:{objc_msgSend(uUIDString, "length") - 4}];

  return v2;
}

@end