@interface MTRScenesManagementClusterCopySceneResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct;
- (MTRScenesManagementClusterCopySceneResponseParams)init;
- (MTRScenesManagementClusterCopySceneResponseParams)initWithDecodableStruct:(const DecodableType *)struct;
- (MTRScenesManagementClusterCopySceneResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRScenesManagementClusterCopySceneResponseParams

- (MTRScenesManagementClusterCopySceneResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTRScenesManagementClusterCopySceneResponseParams;
  v2 = [(MTRScenesManagementClusterCopySceneResponseParams *)&v8 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    groupIdentifierFrom = v3->_groupIdentifierFrom;
    v3->_groupIdentifierFrom = &unk_284C3E4C8;

    sceneIdentifierFrom = v3->_sceneIdentifierFrom;
    v3->_sceneIdentifierFrom = &unk_284C3E4C8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRScenesManagementClusterCopySceneResponseParams);
  status = [(MTRScenesManagementClusterCopySceneResponseParams *)self status];
  [(MTRScenesManagementClusterCopySceneResponseParams *)v4 setStatus:status];

  groupIdentifierFrom = [(MTRScenesManagementClusterCopySceneResponseParams *)self groupIdentifierFrom];
  [(MTRScenesManagementClusterCopySceneResponseParams *)v4 setGroupIdentifierFrom:groupIdentifierFrom];

  sceneIdentifierFrom = [(MTRScenesManagementClusterCopySceneResponseParams *)self sceneIdentifierFrom];
  [(MTRScenesManagementClusterCopySceneResponseParams *)v4 setSceneIdentifierFrom:sceneIdentifierFrom];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ groupIdentifierFrom:%@; sceneIdentifierFrom:%@; >", v5, self->_status, self->_groupIdentifierFrom, self->_sceneIdentifierFrom];;

  return v6;
}

- (MTRScenesManagementClusterCopySceneResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = MTRScenesManagementClusterCopySceneResponseParams;
  v7 = [(MTRScenesManagementClusterCopySceneResponseParams *)&v17 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:98 commandID:64 error:error];
  if (v16)
  {
    sub_2393C5AAC(v15);
    sub_2393C5ADC(v15, *(v16 + 1), *(v16 + 3));
    v8 = sub_2393C6FD0(v15, 256);
    if (!v8)
    {
      v12[0] = 0;
      v13 = 0;
      v14 = 0;
      v8 = sub_238F26B08(v12, v15);
      if (!v8)
      {
        v8 = [(MTRScenesManagementClusterCopySceneResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRScenesManagementClusterCopySceneResponseParams)initWithDecodableStruct:(const DecodableType *)struct
{
  v10.receiver = self;
  v10.super_class = MTRScenesManagementClusterCopySceneResponseParams;
  v4 = [(MTRScenesManagementClusterCopySceneResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRScenesManagementClusterCopySceneResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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

- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:struct->var0];
  [(MTRScenesManagementClusterCopySceneResponseParams *)self setStatus:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&struct[2].var0];
  [(MTRScenesManagementClusterCopySceneResponseParams *)self setGroupIdentifierFrom:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:struct[4].var0];
  [(MTRScenesManagementClusterCopySceneResponseParams *)self setSceneIdentifierFrom:v7];

  v8 = 0;
  v9 = 0;
  result.mFile = v9;
  result.mError = v8;
  result.mLine = HIDWORD(v8);
  return result;
}

@end