@interface MTRScenesManagementClusterRemoveSceneResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)a3;
- (MTRScenesManagementClusterRemoveSceneResponseParams)init;
- (MTRScenesManagementClusterRemoveSceneResponseParams)initWithDecodableStruct:(const DecodableType *)a3;
- (MTRScenesManagementClusterRemoveSceneResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRScenesManagementClusterRemoveSceneResponseParams);
  v5 = [(MTRScenesManagementClusterRemoveSceneResponseParams *)self status];
  [(MTRScenesManagementClusterRemoveSceneResponseParams *)v4 setStatus:v5];

  v6 = [(MTRScenesManagementClusterRemoveSceneResponseParams *)self groupID];
  [(MTRScenesManagementClusterRemoveSceneResponseParams *)v4 setGroupID:v6];

  v7 = [(MTRScenesManagementClusterRemoveSceneResponseParams *)self sceneID];
  [(MTRScenesManagementClusterRemoveSceneResponseParams *)v4 setSceneID:v7];

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

- (MTRScenesManagementClusterRemoveSceneResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = MTRScenesManagementClusterRemoveSceneResponseParams;
  v7 = [(MTRScenesManagementClusterRemoveSceneResponseParams *)&v17 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:98 commandID:2 error:a4];
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

    sub_238DD3F98(v8, v9, a4);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v16);
LABEL_10:

  return v10;
}

- (MTRScenesManagementClusterRemoveSceneResponseParams)initWithDecodableStruct:(const DecodableType *)a3
{
  v10.receiver = self;
  v10.super_class = MTRScenesManagementClusterRemoveSceneResponseParams;
  v4 = [(MTRScenesManagementClusterRemoveSceneResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRScenesManagementClusterRemoveSceneResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  [(MTRScenesManagementClusterRemoveSceneResponseParams *)self setStatus:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&a3[2].var0];
  [(MTRScenesManagementClusterRemoveSceneResponseParams *)self setGroupID:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3[4].var0];
  [(MTRScenesManagementClusterRemoveSceneResponseParams *)self setSceneID:v7];

  v8 = 0;
  v9 = 0;
  result.mFile = v9;
  result.mError = v8;
  result.mLine = HIDWORD(v8);
  return result;
}

@end