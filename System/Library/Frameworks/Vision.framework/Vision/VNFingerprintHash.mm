@interface VNFingerprintHash
- (BOOL)isEqual:(id)equal;
- (NSData)BOOLeanBytesData;
- (NSData)hashData;
- (NSString)hashString;
- (VNFingerprintHash)initWithBooleanBytes:(const char *)bytes length:(unint64_t)length;
- (VNFingerprintHash)initWithBooleanBytesData:(id)data;
- (VNFingerprintHash)initWithCoder:(id)coder;
- (VNFingerprintHash)initWithHashData:(id)data;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNFingerprintHash

- (VNFingerprintHash)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bits"];

  if (v5)
  {
    self = [(VNFingerprintHash *)self initWithHashData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hashData = [(VNFingerprintHash *)self hashData];
  [coderCopy encodeObject:hashData forKey:@"bits"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      hashData = [(VNFingerprintHash *)self hashData];
      hashData2 = [(VNFingerprintHash *)v5 hashData];

      v8 = [hashData isEqual:hashData2];
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
  hashData = [(VNFingerprintHash *)self hashData];
  v3 = [hashData hash];

  return v3;
}

- (VNFingerprintHash)initWithHashData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = VNFingerprintHash;
  v5 = [(VNFingerprintHash *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    hashData_DO_NOT_DIRECTLY_ACCESS = v5->_hashData_DO_NOT_DIRECTLY_ACCESS;
    v5->_hashData_DO_NOT_DIRECTLY_ACCESS = v6;
  }

  return v5;
}

- (VNFingerprintHash)initWithBooleanBytesData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = VNFingerprintHash;
  v5 = [(VNFingerprintHash *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS = v5->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS;
    v5->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS = v6;
  }

  return v5;
}

- (VNFingerprintHash)initWithBooleanBytes:(const char *)bytes length:(unint64_t)length
{
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:bytes length:length];
  v6 = [(VNFingerprintHash *)self initWithBooleanBytesData:v5];

  return v6;
}

- (NSString)hashString
{
  hashData = [(VNFingerprintHash *)self hashData];
  v3 = [hashData length];
  bytes = [hashData bytes];
  for (i = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:2 * v3]; v3; --v3)
  {
    v6 = *bytes++;
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

  bytes = [(NSData *)v4 bytes];
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v5 >> 3];
  mutableBytes = [v6 mutableBytes];
  if (!mutableBytes)
  {
    v7 = +[VNError errorForMemoryAllocationFailure];
    goto LABEL_4;
  }

  if (v5)
  {
    v12 = 128;
    do
    {
      if (*bytes++)
      {
        v14 = *mutableBytes | v12;
      }

      else
      {
        v14 = *mutableBytes & ~v12;
      }

      *mutableBytes = v14;
      if (v12 >= 2)
      {
        v12 >>= 1;
      }

      else
      {
        ++mutableBytes;
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
    data = hashData_DO_NOT_DIRECTLY_ACCESS;
    goto LABEL_18;
  }

  data = [MEMORY[0x1E695DEF0] data];
LABEL_18:

  return data;
}

- (NSData)BOOLeanBytesData
{
  BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS = self->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS;
  if (BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS)
  {
    goto LABEL_14;
  }

  v4 = self->_hashData_DO_NOT_DIRECTLY_ACCESS;
  bytes = [(NSData *)v4 bytes];
  if (bytes)
  {
    v6 = 8 * [(NSData *)v4 length];
    v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v6];
    mutableBytes = [v7 mutableBytes];
    if (mutableBytes)
    {
      if (v6)
      {
        LOBYTE(v9) = 0x80;
        do
        {
          v10 = (v9 & *bytes) != 0;
          v9 = v9 >> 1;
          *mutableBytes++ = v10;
          if (!v9)
          {
            ++bytes;
            LOBYTE(v9) = 0x80;
          }

          --v6;
        }

        while (v6);
      }

      bytes = v7;
    }

    else
    {
      v12 = +[VNError errorForMemoryAllocationFailure];
      bytes = 0;
    }
  }

  else
  {
    v11 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"bit data must not be nil"];
  }

  v13 = [bytes copy];
  v14 = self->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS;
  self->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS = v13;

  BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS = self->_BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS;
  if (BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS)
  {
LABEL_14:
    data = BOOLeanBytesData_DO_NOT_DIRECTLY_ACCESS;
  }

  else
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  return data;
}

@end