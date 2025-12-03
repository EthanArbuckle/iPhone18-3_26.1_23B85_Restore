@interface MTROperationalCredentialsClusterSignVIDVerificationResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTROperationalCredentialsClusterSignVIDVerificationResponseParams)init;
- (MTROperationalCredentialsClusterSignVIDVerificationResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTROperationalCredentialsClusterSignVIDVerificationResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROperationalCredentialsClusterSignVIDVerificationResponseParams

- (MTROperationalCredentialsClusterSignVIDVerificationResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTROperationalCredentialsClusterSignVIDVerificationResponseParams;
  v2 = [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    fabricIndex = v2->_fabricIndex;
    v2->_fabricIndex = &unk_284C3E4C8;

    fabricBindingVersion = v3->_fabricBindingVersion;
    v3->_fabricBindingVersion = &unk_284C3E4C8;

    data = [MEMORY[0x277CBEA90] data];
    signature = v3->_signature;
    v3->_signature = data;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterSignVIDVerificationResponseParams);
  fabricIndex = [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)self fabricIndex];
  [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)v4 setFabricIndex:fabricIndex];

  fabricBindingVersion = [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)self fabricBindingVersion];
  [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)v4 setFabricBindingVersion:fabricBindingVersion];

  signature = [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)self signature];
  [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)v4 setSignature:signature];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  fabricIndex = self->_fabricIndex;
  fabricBindingVersion = self->_fabricBindingVersion;
  v8 = [(NSData *)self->_signature base64EncodedStringWithOptions:0];
  v9 = [v3 stringWithFormat:@"<%@: fabricIndex:%@ fabricBindingVersion:%@; signature:%@; >", v5, fabricIndex, fabricBindingVersion, v8];;

  return v9;
}

- (MTROperationalCredentialsClusterSignVIDVerificationResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = MTROperationalCredentialsClusterSignVIDVerificationResponseParams;
  v7 = [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)&v17 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:62 commandID:14 error:error];
  if (v16)
  {
    sub_2393C5AAC(v15);
    sub_2393C5ADC(v15, *(v16 + 1), *(v16 + 3));
    v8 = sub_2393C6FD0(v15, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v8 = sub_238F224A0(&v12, v15);
      if (!v8)
      {
        v8 = [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v16);
LABEL_10:

  return v10;
}

- (MTROperationalCredentialsClusterSignVIDVerificationResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTROperationalCredentialsClusterSignVIDVerificationResponseParams;
  v4 = [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*struct];
  [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)self setFabricIndex:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 1)];
  [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)self setFabricBindingVersion:v6];

  v7 = [MEMORY[0x277CBEA90] dataWithBytes:*(struct + 1) length:*(struct + 2)];
  [(MTROperationalCredentialsClusterSignVIDVerificationResponseParams *)self setSignature:v7];

  v8 = 0;
  v9 = 0;
  result.mFile = v9;
  result.mError = v8;
  result.mLine = HIDWORD(v8);
  return result;
}

@end