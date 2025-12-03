@interface NSUUID
+ (id)crl_uuidByCryptographicHashOfString:(id)string;
- (id)combineUUIDWithUUID:(id)d mixValue:(unsigned int)value;
- (id)crl_combineCryptographicallyWithString:(id)string;
- (int64_t)crl_compare:(id)crl_compare;
@end

@implementation NSUUID

- (int64_t)crl_compare:(id)crl_compare
{
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  crl_compareCopy = crl_compare;
  [(NSUUID *)self getUUIDBytes:&v14];
  [crl_compareCopy getUUIDBytes:&v12];

  v5 = bswap64(v14);
  v6 = bswap64(v12);
  if (v5 == v6 && (v5 = bswap64(v15), v6 = bswap64(v13), v5 == v6))
  {
    v7 = 0;
  }

  else if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 == 0;
  v9 = v7 < 0;
  v10 = -1;
  if (!v9)
  {
    v10 = 1;
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

- (id)combineUUIDWithUUID:(id)d mixValue:(unsigned int)value
{
  dCopy = d;
  [(NSUUID *)self getUUIDBytes:&v15];
  [dCopy getUUIDBytes:&v14];
  v7.i32[1] = v14.i32[1];
  v8 = veorq_s8(v14, v15);
  v13 = v8;
  if (value != -1)
  {
    v8.i32[0] = v13.i32[0];
    v9 = vmovl_u8(*v8.i8).u64[0];
    v7.i32[0] = value;
    v10 = veor_s8(v9, vzip1_s8(v7, v9));
    v13.i32[0] = vuzp1_s8(v10, v10).u32[0];
  }

  v11 = [[NSUUID alloc] initWithUUIDBytes:&v13];

  return v11;
}

+ (id)crl_uuidByCryptographicHashOfString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (!stringCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134E06C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134E080();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134E130();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSUUID(NSUUID_CRLAdditions) crl_uuidByCryptographicHashOfString:]");
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSUUID_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:67 isFatal:0 description:"invalid nil value for '%{public}s'", "string"];

    v4 = &stru_1018BCA28;
  }

  v8 = [@"com.apple.Freeform" stringByAppendingString:v4];
  v9 = [v8 dataUsingEncoding:4];
  v10 = [NSMutableData dataWithLength:32];
  CC_SHA256([v9 bytes], objc_msgSend(v9, "length"), objc_msgSend(v10, "mutableBytes"));
  mutableBytes = [v10 mutableBytes];
  mutableBytes[6] = mutableBytes[6] & 0xF | 0x50;
  mutableBytes[8] = mutableBytes[8] & 0x3F | 0x80;
  if ([v10 length] <= 0xF)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134E158();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134E180();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134E220();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v12);
    }

    v13 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSUUID(NSUUID_CRLAdditions) crl_uuidByCryptographicHashOfString:]");
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSUUID_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:84 isFatal:0 description:"SHA256 hash should return 32(CC_SHA256_DIGEST_LENGTH) bytes."];
  }

  v15 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v10, "bytes")}];

  return v15;
}

- (id)crl_combineCryptographicallyWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    uUIDString = [(NSUUID *)self UUIDString];
    stringCopy = [NSString stringWithFormat:@"%@-%@", uUIDString, stringCopy];

    selfCopy = [objc_opt_class() crl_uuidByCryptographicHashOfString:stringCopy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end