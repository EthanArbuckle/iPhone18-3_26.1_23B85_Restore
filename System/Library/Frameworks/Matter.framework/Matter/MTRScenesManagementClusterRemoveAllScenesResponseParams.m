@interface MTRScenesManagementClusterRemoveAllScenesResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)a3;
- (MTRScenesManagementClusterRemoveAllScenesResponseParams)init;
- (MTRScenesManagementClusterRemoveAllScenesResponseParams)initWithDecodableStruct:(const DecodableType *)a3;
- (MTRScenesManagementClusterRemoveAllScenesResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRScenesManagementClusterRemoveAllScenesResponseParams

- (MTRScenesManagementClusterRemoveAllScenesResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTRScenesManagementClusterRemoveAllScenesResponseParams;
  v2 = [(MTRScenesManagementClusterRemoveAllScenesResponseParams *)&v7 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    groupID = v3->_groupID;
    v3->_groupID = &unk_284C3E4C8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRScenesManagementClusterRemoveAllScenesResponseParams);
  v5 = [(MTRScenesManagementClusterRemoveAllScenesResponseParams *)self status];
  [(MTRScenesManagementClusterRemoveAllScenesResponseParams *)v4 setStatus:v5];

  v6 = [(MTRScenesManagementClusterRemoveAllScenesResponseParams *)self groupID];
  [(MTRScenesManagementClusterRemoveAllScenesResponseParams *)v4 setGroupID:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ groupID:%@; >", v5, self->_status, self->_groupID];;

  return v6;
}

- (MTRScenesManagementClusterRemoveAllScenesResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = MTRScenesManagementClusterRemoveAllScenesResponseParams;
  v7 = [(MTRScenesManagementClusterRemoveAllScenesResponseParams *)&v16 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:98 commandID:3 error:a4];
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v14, *(v15 + 1), *(v15 + 3));
    v8 = sub_2393C6FD0(v14, 256);
    if (!v8)
    {
      v12[0] = 0;
      v13 = 0;
      v8 = sub_238F11258(v12, v14);
      if (!v8)
      {
        v8 = [(MTRScenesManagementClusterRemoveAllScenesResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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
  sub_238EA1758(&v15);
LABEL_10:

  return v10;
}

- (MTRScenesManagementClusterRemoveAllScenesResponseParams)initWithDecodableStruct:(const DecodableType *)a3
{
  v10.receiver = self;
  v10.super_class = MTRScenesManagementClusterRemoveAllScenesResponseParams;
  v4 = [(MTRScenesManagementClusterRemoveAllScenesResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRScenesManagementClusterRemoveAllScenesResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3->var0];
  [(MTRScenesManagementClusterRemoveAllScenesResponseParams *)self setStatus:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&a3[2].var0];
  [(MTRScenesManagementClusterRemoveAllScenesResponseParams *)self setGroupID:v6];

  v7 = 0;
  v8 = 0;
  result.mFile = v8;
  result.mError = v7;
  result.mLine = HIDWORD(v7);
  return result;
}

@end