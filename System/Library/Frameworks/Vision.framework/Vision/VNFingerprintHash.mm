@interface VNFingerprintHash
- (BOOL)isEqual:(id)a3;
- (NSData)BOOLeanBytesData;
- (NSData)hashData;
- (NSString)hashString;
- (VNFingerprintHash)initWithBooleanBytes:(const char *)a3 length:(unint64_t)a4;
- (VNFingerprintHash)initWithBooleanBytesData:(id)a3;
- (VNFingerprintHash)initWithCoder:(id)a3;
- (VNFingerprintHash)initWithHashData:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNFingerprintHash

- (VNFingerprintHash)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bits"];

  if (v5)
  {
    self = [(VNFingerprintHash *)self initWithHashData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VNFingerprintHash *)self hashData];
  [v4 encodeObject:v5 forKey:@"bits"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNFingerprintHash *)self hashData];
      v7 = [(VNFingerprintHash *)v5 hashData];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(VNFingerprintHash *)self hashData];
  v3 = [v2 hash];

  return v3;
}

- (VNFingerprintHash)initWithHashData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VNFingerprintHash;
  v5 = [(VNFingerprintHash *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    hashData_DO_NOT_DIRECTLY_ACCESS = v5->_hashData_DO_NOT_DIRECTLY_ACCESS;
    v5->_hashData_DO_NOT_DIRECTLY_ACCESS = v6;
  }

  return v5;
}

- (VNFingerprintHash)initWithBooleanBytesData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VNFingerprintHash;
  v5 = [(VNFingerprintHash *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS = v5->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS;
    v5->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS = v6;
  }

  return v5;
}

- (VNFingerprintHash)initWithBooleanBytes:(const char *)a3 length:(unint64_t)a4
{
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a4];
  v6 = [(VNFingerprintHash *)self initWithBooleanBytesData:v5];

  return v6;
}

- (NSString)hashString
{
  v2 = [(VNFingerprintHash *)self hashData];
  v3 = [v2 length];
  v4 = [v2 bytes];
  for (i = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:2 * v3]; v3; --v3)
  {
    v6 = *v4++;
    [i appendFormat:@"%02X", v6];
  }

  return i;
}

- (NSData)hashData
{
  hashData_DO_NOT_DIRECTLY_ACCESS = self->_hashData_DO_NOT_DIRECTLY_ACCESS;
  if (hashData_DO_NOT_DIRECTLY_ACCESS)
  {
    goto LABEL_17;
  }

  v4 = self->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS;
  v5 = [(NSData *)v4 length];
  if ((v5 & 7) != 0)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot encode BOOLean byte data of length %lu because it is not a multiple of 8.", v5];
    v7 = [VNError errorForInvalidOperationWithLocalizedDescription:v6];
LABEL_4:
    v8 = v7;
    v9 = 0;
    goto LABEL_16;
  }

  v10 = [(NSData *)v4 bytes];
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v5 >> 3];
  v11 = [v6 mutableBytes];
  if (!v11)
  {
    v7 = +[VNError errorForMemoryAllocationFailure];
    goto LABEL_4;
  }

  if (v5)
  {
    v12 = 128;
    do
    {
      if (*v10++)
      {
        v14 = *v11 | v12;
      }

      else
      {
        v14 = *v11 & ~v12;
      }

      *v11 = v14;
      if (v12 >= 2)
      {
        v12 >>= 1;
      }

      else
      {
        ++v11;
        v12 = 128;
      }

      --v5;
    }

    while (v5);
  }

  v9 = [v6 copy];
LABEL_16:

  v15 = [v9 copy];
  v16 = self->_hashData_DO_NOT_DIRECTLY_ACCESS;
  self->_hashData_DO_NOT_DIRECTLY_ACCESS = v15;

  hashData_DO_NOT_DIRECTLY_ACCESS = self->_hashData_DO_NOT_DIRECTLY_ACCESS;
  if (hashData_DO_NOT_DIRECTLY_ACCESS)
  {
LABEL_17:
    v17 = hashData_DO_NOT_DIRECTLY_ACCESS;
    goto LABEL_18;
  }

  v17 = [MEMORY[0x1E695DEF0] data];
LABEL_18:

  return v17;
}

- (NSData)BOOLeanBytesData
{
  BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS = self->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS;
  if (BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS)
  {
    goto LABEL_14;
  }

  v4 = self->_hashData_DO_NOT_DIRECTLY_ACCESS;
  v5 = [(NSData *)v4 bytes];
  if (v5)
  {
    v6 = 8 * [(NSData *)v4 length];
    v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v6];
    v8 = [v7 mutableBytes];
    if (v8)
    {
      if (v6)
      {
        LOBYTE(v9) = 0x80;
        do
        {
          v10 = (v9 & *v5) != 0;
          v9 = v9 >> 1;
          *v8++ = v10;
          if (!v9)
          {
            ++v5;
            LOBYTE(v9) = 0x80;
          }

          --v6;
        }

        while (v6);
      }

      v5 = v7;
    }

    else
    {
      v12 = +[VNError errorForMemoryAllocationFailure];
      v5 = 0;
    }
  }

  else
  {
    v11 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"bit data must not be nil"];
  }

  v13 = [v5 copy];
  v14 = self->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS;
  self->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS = v13;

  BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS = self->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS;
  if (BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS)
  {
LABEL_14:
    v15 = BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS;
  }

  else
  {
    v15 = [MEMORY[0x1E695DEF0] data];
  }

  return v15;
}

@end