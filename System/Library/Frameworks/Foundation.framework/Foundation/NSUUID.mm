@interface NSUUID
+ (NSUUID)UUID;
+ (NSUUID)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (NSComparisonResult)compare:(NSUUID *)otherUUID;
- (NSUUID)init;
- (NSUUID)initWithCoder:(id)a3;
- (__CFString)_cfUUIDString;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSUUID

+ (NSUUID)UUID
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (unint64_t)hash
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  [(NSUUID *)self getUUIDBytes:v3];
  return CFHashBytes();
}

+ (NSUUID)allocWithZone:(_NSZone *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (NSUUID == a1 || objc_opt_class() == a1)
  {
    v6 = objc_opt_self();

    return NSAllocateObject(v6, 0, a3);
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___NSUUID;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (NSUUID)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSUUID;
  return [(NSUUID *)&v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self == a3)
  {
    return 1;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  [(NSUUID *)self getUUIDBytes:&v9];
  v7 = 0;
  v8 = 0;
  [a3 getUUIDBytes:&v7];
  return v9 == v7 && v10 == v8;
}

- (NSComparisonResult)compare:(NSUUID *)otherUUID
{
  v14 = *MEMORY[0x1E69E9840];
  if (self == otherUUID)
  {
    return 0;
  }

  v11 = 0uLL;
  [(NSUUID *)self getUUIDBytes:&v11];
  v10 = 0uLL;
  [(NSUUID *)otherUUID getUUIDBytes:&v10];
  v4 = 0;
  v12 = v10;
  v13 = v11;
  for (i = 15; i != -1; --i)
  {
    v6 = *(&v13 + i) - *(&v12 + i);
    v4 = v4 & (((v6 - 1) & ~v6) >> 8) | v6;
  }

  v7 = v4 < 0;
  v8 = (v4 != 0);
  if (v7)
  {
    return -1;
  }

  else
  {
    return v8;
  }
}

- (__CFString)_cfUUIDString
{
  v2 = [(NSUUID *)self UUIDString];
  v3 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = 0;
  [(NSUUID *)self getUUIDBytes:v5];
  return [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithUUIDBytes:", v5}];
}

- (void)encodeWithCoder:(id)a3
{
  v5[2] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"-[NSUUID encodeWithCoder]: NSUUIDs cannot be encoded by non-keyed coders" userInfo:0]);
  }

  v5[0] = 0;
  v5[1] = 0;
  [(NSUUID *)self getUUIDBytes:v5];
  [a3 encodeBytes:v5 length:16 forKey:@"NS.uuidbytes"];
}

- (NSUUID)initWithCoder:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"-[NSUUID initWithCoder]: NSUUIDs cannot be decoded by non-keyed coders" userInfo:0]);
  }

  v9 = 0;
  v5 = [a3 decodeBytesForKey:@"NS.uuidbytes" returnedLength:&v9];
  if (v5)
  {
    if (v9 == 16)
    {
      return [(NSUUID *)self initWithUUIDBytes:v5];
    }

    if (dyld_program_sdk_at_least())
    {
      v10 = @"NSLocalizedDescription";
      v11 = @"UUID bytes were not the expected length";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v8 = 4864;
      goto LABEL_9;
    }

    return [(NSUUID *)self init];
  }

  if (!dyld_program_sdk_at_least())
  {
    return [(NSUUID *)self init];
  }

  v12 = @"NSLocalizedDescription";
  v13[0] = @"UUID bytes not found in archive";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = 4865;
LABEL_9:
  [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", v8, v7)}];

  return 0;
}

@end