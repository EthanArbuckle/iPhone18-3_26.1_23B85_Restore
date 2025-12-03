@interface MTRCommissionerControlClusterReverseOpenCommissioningWindowParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRCommissionerControlClusterReverseOpenCommissioningWindowParams)init;
- (MTRCommissionerControlClusterReverseOpenCommissioningWindowParams)initWithDecodableStruct:(const void *)struct;
- (MTRCommissionerControlClusterReverseOpenCommissioningWindowParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommissionerControlClusterReverseOpenCommissioningWindowParams

- (MTRCommissionerControlClusterReverseOpenCommissioningWindowParams)init
{
  v12.receiver = self;
  v12.super_class = MTRCommissionerControlClusterReverseOpenCommissioningWindowParams;
  v2 = [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)&v12 init];
  v3 = v2;
  if (v2)
  {
    commissioningTimeout = v2->_commissioningTimeout;
    v2->_commissioningTimeout = &unk_284C3E4C8;

    data = [MEMORY[0x277CBEA90] data];
    pakePasscodeVerifier = v3->_pakePasscodeVerifier;
    v3->_pakePasscodeVerifier = data;

    discriminator = v3->_discriminator;
    v3->_discriminator = &unk_284C3E4C8;

    iterations = v3->_iterations;
    v3->_iterations = &unk_284C3E4C8;

    data2 = [MEMORY[0x277CBEA90] data];
    salt = v3->_salt;
    v3->_salt = data2;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams);
  commissioningTimeout = [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)self commissioningTimeout];
  [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)v4 setCommissioningTimeout:commissioningTimeout];

  pakePasscodeVerifier = [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)self pakePasscodeVerifier];
  [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)v4 setPakePasscodeVerifier:pakePasscodeVerifier];

  discriminator = [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)self discriminator];
  [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)v4 setDiscriminator:discriminator];

  iterations = [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)self iterations];
  [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)v4 setIterations:iterations];

  salt = [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)self salt];
  [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)v4 setSalt:salt];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  commissioningTimeout = self->_commissioningTimeout;
  v7 = [(NSData *)self->_pakePasscodeVerifier base64EncodedStringWithOptions:0];
  discriminator = self->_discriminator;
  iterations = self->_iterations;
  v10 = [(NSData *)self->_salt base64EncodedStringWithOptions:0];
  v11 = [v3 stringWithFormat:@"<%@: commissioningTimeout:%@ pakePasscodeVerifier:%@; discriminator:%@; iterations:%@; salt:%@; >", v5, commissioningTimeout, v7, discriminator, iterations, v10];;

  return v11;
}

- (MTRCommissionerControlClusterReverseOpenCommissioningWindowParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v21.receiver = self;
  v21.super_class = MTRCommissionerControlClusterReverseOpenCommissioningWindowParams;
  v7 = [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)&v21 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:1873 commandID:2 error:error];
  if (v20)
  {
    sub_2393C5AAC(v19);
    sub_2393C5ADC(v19, *(v20 + 1), *(v20 + 3));
    v8 = sub_2393C6FD0(v19, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v17 = 0;
      v16 = 0;
      v18 = 0;
      v8 = sub_238F0045C(&v12, v19);
      if (!v8)
      {
        v8 = [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)v7 _setFieldsFromDecodableStruct:&v12];
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
  sub_238EA1758(&v20);
LABEL_10:

  return v10;
}

- (MTRCommissionerControlClusterReverseOpenCommissioningWindowParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRCommissionerControlClusterReverseOpenCommissioningWindowParams;
  v4 = [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*struct];
  [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)self setCommissioningTimeout:v5];

  v6 = [MEMORY[0x277CBEA90] dataWithBytes:*(struct + 1) length:*(struct + 2)];
  [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)self setPakePasscodeVerifier:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 12)];
  [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)self setDiscriminator:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(struct + 7)];
  [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)self setIterations:v8];

  v9 = [MEMORY[0x277CBEA90] dataWithBytes:*(struct + 4) length:*(struct + 5)];
  [(MTRCommissionerControlClusterReverseOpenCommissioningWindowParams *)self setSalt:v9];

  v10 = 0;
  v11 = 0;
  result.mFile = v11;
  result.mError = v10;
  result.mLine = HIDWORD(v10);
  return result;
}

@end