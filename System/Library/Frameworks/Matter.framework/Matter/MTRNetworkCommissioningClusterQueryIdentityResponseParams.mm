@interface MTRNetworkCommissioningClusterQueryIdentityResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRNetworkCommissioningClusterQueryIdentityResponseParams)init;
- (MTRNetworkCommissioningClusterQueryIdentityResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRNetworkCommissioningClusterQueryIdentityResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterQueryIdentityResponseParams

- (MTRNetworkCommissioningClusterQueryIdentityResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTRNetworkCommissioningClusterQueryIdentityResponseParams;
  v2 = [(MTRNetworkCommissioningClusterQueryIdentityResponseParams *)&v7 init];
  if (v2)
  {
    data = [MEMORY[0x277CBEA90] data];
    identity = v2->_identity;
    v2->_identity = data;

    possessionSignature = v2->_possessionSignature;
    v2->_possessionSignature = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterQueryIdentityResponseParams);
  identity = [(MTRNetworkCommissioningClusterQueryIdentityResponseParams *)self identity];
  [(MTRNetworkCommissioningClusterQueryIdentityResponseParams *)v4 setIdentity:identity];

  possessionSignature = [(MTRNetworkCommissioningClusterQueryIdentityResponseParams *)self possessionSignature];
  [(MTRNetworkCommissioningClusterQueryIdentityResponseParams *)v4 setPossessionSignature:possessionSignature];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_identity base64EncodedStringWithOptions:0];
  v7 = [(NSData *)self->_possessionSignature base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: identity:%@ possessionSignature:%@; >", v5, v6, v7];;

  return v8;
}

- (MTRNetworkCommissioningClusterQueryIdentityResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = MTRNetworkCommissioningClusterQueryIdentityResponseParams;
  v7 = [(MTRNetworkCommissioningClusterQueryIdentityResponseParams *)&v16 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:49 commandID:10 error:error];
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v14, *(v15 + 1), *(v15 + 3));
    v8 = sub_2393C6FD0(v14, 256);
    if (!v8)
    {
      v12 = 0uLL;
      v13 = 0;
      v8 = sub_238F20A0C(&v12, v14);
      if (!v8)
      {
        v8 = [(MTRNetworkCommissioningClusterQueryIdentityResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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
  sub_238EA1758(&v15);
LABEL_10:

  return v10;
}

- (MTRNetworkCommissioningClusterQueryIdentityResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRNetworkCommissioningClusterQueryIdentityResponseParams;
  v4 = [(MTRNetworkCommissioningClusterQueryIdentityResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRNetworkCommissioningClusterQueryIdentityResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:*struct length:*(struct + 1)];
  [(MTRNetworkCommissioningClusterQueryIdentityResponseParams *)self setIdentity:v5];

  v7 = *(struct + 16);
  v6 = struct + 16;
  if (v7 == 1)
  {
    v8 = sub_238DE36B8(v6);
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:*v8 length:v8[1]];
    [(MTRNetworkCommissioningClusterQueryIdentityResponseParams *)self setPossessionSignature:v9];
  }

  else
  {
    [(MTRNetworkCommissioningClusterQueryIdentityResponseParams *)self setPossessionSignature:0];
  }

  v10 = 0;
  v11 = 0;
  result.mFile = v11;
  result.mError = v10;
  result.mLine = HIDWORD(v10);
  return result;
}

@end