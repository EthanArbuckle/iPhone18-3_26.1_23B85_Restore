@interface CKKSWrappedAESSIVKey
+ (id)zeroedKey;
- (CKKSWrappedAESSIVKey)init;
- (CKKSWrappedAESSIVKey)initWithBase64:(id)a3;
- (CKKSWrappedAESSIVKey)initWithBytes:(char *)a3 len:(unint64_t)a4;
- (CKKSWrappedAESSIVKey)initWithCoder:(id)a3;
- (CKKSWrappedAESSIVKey)initWithData:(id)a3;
- (id)base64WrappedKey;
- (id)wrappedData;
@end

@implementation CKKSWrappedAESSIVKey

- (CKKSWrappedAESSIVKey)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CKKSWrappedAESSIVKey;
  v5 = [(CKKSBaseAESSIVKey *)&v10 init];
  if (v5)
  {
    v9 = 0;
    v6 = [v4 decodeBytesForKey:@"wrappedkey" returnedLength:&v9];
    if (v6)
    {
      if (v9 >= 0x50)
      {
        v7 = 80;
      }

      else
      {
        v7 = v9;
      }

      memcpy(v5->super.key, v6, v7);
    }
  }

  return v5;
}

- (id)base64WrappedKey
{
  v2 = [(CKKSWrappedAESSIVKey *)self wrappedData];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

- (id)wrappedData
{
  v2 = [[NSData alloc] initWithBytes:self->super.key length:self->super.size];

  return v2;
}

- (CKKSWrappedAESSIVKey)initWithData:(id)a3
{
  v4 = a3;
  if ([v4 length] != 80)
  {
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"length (%lu) was not %d", [v4 length], 80);
    v8 = [NSException exceptionWithName:@"WrongKeySizeException" reason:v7 userInfo:0];
    v9 = v8;

    objc_exception_throw(v8);
  }

  v10.receiver = self;
  v10.super_class = CKKSWrappedAESSIVKey;
  v5 = -[CKKSBaseAESSIVKey initWithBytes:len:](&v10, "initWithBytes:len:", [v4 bytes], objc_msgSend(v4, "length"));

  return v5;
}

- (CKKSWrappedAESSIVKey)initWithBase64:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKKSWrappedAESSIVKey;
  v5 = [(CKKSBaseAESSIVKey *)&v11 initWithBase64:v4];
  v6 = v5;
  if (v5 && v5->super.size != 80)
  {
    v8 = [NSString stringWithFormat:@"length (%lu) was not %d", v5->super.size, 80];
    v9 = [NSException exceptionWithName:@"WrongKeySizeException" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  return v6;
}

- (CKKSWrappedAESSIVKey)initWithBytes:(char *)a3 len:(unint64_t)a4
{
  if (a4 != 80)
  {
    v5 = [NSString stringWithFormat:@"length (%lu) was not %d", a4, 80];
    v6 = [NSException exceptionWithName:@"WrongKeySizeException" reason:v5 userInfo:0];
    v7 = v6;

    objc_exception_throw(v6);
  }

  v8.receiver = self;
  v8.super_class = CKKSWrappedAESSIVKey;
  return [(CKKSBaseAESSIVKey *)&v8 initWithBytes:a3 len:?];
}

- (CKKSWrappedAESSIVKey)init
{
  v3.receiver = self;
  v3.super_class = CKKSWrappedAESSIVKey;
  result = [(CKKSBaseAESSIVKey *)&v3 init];
  if (result)
  {
    result->super.size = 80;
  }

  return result;
}

+ (id)zeroedKey
{
  v2 = [NSMutableData dataWithLength:80];
  v3 = [[CKKSWrappedAESSIVKey alloc] initWithData:v2];

  return v3;
}

@end