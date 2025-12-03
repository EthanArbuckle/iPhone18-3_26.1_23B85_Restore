@interface MTRScenesManagementClusterRemoveSceneResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct;
- (MTRScenesManagementClusterRemoveSceneResponseParams)init;
- (MTRScenesManagementClusterRemoveSceneResponseParams)initWithDecodableStruct:(const DecodableType *)struct;
- (MTRScenesManagementClusterRemoveSceneResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRScenesManagementClusterRemoveSceneResponseParams

- (MTRScenesManagementClusterRemoveSceneResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTRScenesManagementClusterRemoveSceneResponseParams;
  v2 = [(MTRScenesManagementClusterRemoveSceneResponseParams *)&v8 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    groupID = v3->_groupID;
    v3->_groupID = &unk_284C3E4C8;

    sceneID = v3->_sceneID;
    v3->_sceneID = &unk_284C3E4C8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRScenesManagementClusterRemoveSceneResponseParams);
  status = [(MTRScenesManagementClusterRemoveSceneResponseParams *)self status];
  [(MTRScenesManagementClusterRemoveSceneResponseParams *)v4 setStatus:status];

  groupID = [(MTRScenesManagementClusterRemoveSceneResponseParams *)self groupID];
  [(MTRScenesManagementClusterRemoveSceneResponseParams *)v4 setGroupID:groupID];

  sceneID = [(MTRScenesManagementClusterRemoveSceneResponseParams *)self sceneID];
  [(MTRScenesManagementClusterRemoveSceneResponseParams *)v4 setSceneID:sceneID];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ groupID:%@; sceneID:%@; >", v5, self->_status, self->_groupID, self->_sceneID];;

  return v6;
}

- (MTRScenesManagementClusterRemoveSceneResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = MTRScenesManagementClusterRemoveSceneResponseParams;
  v7 = [(MTRScenesManagementClusterRemoveSceneResponseParams *)&v17 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:98 commandID:2 error:error];
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
        v8 = [(MTRScenesManagementClusterRemoveSceneResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRScenesManagementClusterRemoveSceneResponseParams)initWithDecodableStruct:(const DecodableType *)struct
{
  v10.receiver = self;
  v10.super_class = MTRScenesManagementClusterRemoveSceneResponseParams;
  v4 = [(MTRScenesManagementClusterRemoveSceneResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRScenesManagementClusterRemoveSceneResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRScenesManagementClusterRemoveSceneResponseParams *)self setStatus:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&struct[2].var0];
  [(MTRScenesManagementClusterRemoveSceneResponseParams *)self setGroupID:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:struct[4].var0];
  [(MTRScenesManagementClusterRemoveSceneResponseParams *)self setSceneID:v7];

  v8 = 0;
  v9 = 0;
  result.mFile = v9;
  result.mError = v8;
  result.mLine = HIDWORD(v8);
  return result;
}

@end