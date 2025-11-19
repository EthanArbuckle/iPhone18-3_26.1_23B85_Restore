@interface MTRAccessControlClusterReviewFabricRestrictionsResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)a3;
- (MTRAccessControlClusterReviewFabricRestrictionsResponseParams)init;
- (MTRAccessControlClusterReviewFabricRestrictionsResponseParams)initWithDecodableStruct:(const DecodableType *)a3;
- (MTRAccessControlClusterReviewFabricRestrictionsResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRAccessControlClusterReviewFabricRestrictionsResponseParams

- (MTRAccessControlClusterReviewFabricRestrictionsResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRAccessControlClusterReviewFabricRestrictionsResponseParams;
  v2 = [(MTRAccessControlClusterReviewFabricRestrictionsResponseParams *)&v6 init];
  v3 = v2;
  if (v2)
  {
    token = v2->_token;
    v2->_token = &unk_284C3E4C8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRAccessControlClusterReviewFabricRestrictionsResponseParams);
  v5 = [(MTRAccessControlClusterReviewFabricRestrictionsResponseParams *)self token];
  [(MTRAccessControlClusterReviewFabricRestrictionsResponseParams *)v4 setToken:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: token:%@ >", v5, self->_token];;

  return v6;
}

- (MTRAccessControlClusterReviewFabricRestrictionsResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = MTRAccessControlClusterReviewFabricRestrictionsResponseParams;
  v7 = [(MTRAccessControlClusterReviewFabricRestrictionsResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:31 commandID:1 error:a4];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12 = 0;
      v8 = sub_238EFD2E8(&v12, v13);
      if (!v8)
      {
        v8 = [(MTRAccessControlClusterReviewFabricRestrictionsResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, a4);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTRAccessControlClusterReviewFabricRestrictionsResponseParams)initWithDecodableStruct:(const DecodableType *)a3
{
  v10.receiver = self;
  v10.super_class = MTRAccessControlClusterReviewFabricRestrictionsResponseParams;
  v4 = [(MTRAccessControlClusterReviewFabricRestrictionsResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRAccessControlClusterReviewFabricRestrictionsResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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

- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&a3->var0];
  [(MTRAccessControlClusterReviewFabricRestrictionsResponseParams *)self setToken:v4];

  v5 = 0;
  v6 = 0;
  result.mFile = v6;
  result.mError = v5;
  result.mLine = HIDWORD(v5);
  return result;
}

@end