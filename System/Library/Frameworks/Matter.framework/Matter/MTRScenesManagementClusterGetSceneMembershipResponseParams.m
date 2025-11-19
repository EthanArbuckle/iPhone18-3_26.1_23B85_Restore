@interface MTRScenesManagementClusterGetSceneMembershipResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRScenesManagementClusterGetSceneMembershipResponseParams)init;
- (MTRScenesManagementClusterGetSceneMembershipResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRScenesManagementClusterGetSceneMembershipResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRScenesManagementClusterGetSceneMembershipResponseParams

- (MTRScenesManagementClusterGetSceneMembershipResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTRScenesManagementClusterGetSceneMembershipResponseParams;
  v2 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    capacity = v3->_capacity;
    v3->_capacity = 0;

    groupID = v3->_groupID;
    v3->_groupID = &unk_284C3E4C8;

    sceneList = v3->_sceneList;
    v3->_sceneList = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRScenesManagementClusterGetSceneMembershipResponseParams);
  v5 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self status];
  [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)v4 setStatus:v5];

  v6 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self capacity];
  [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)v4 setCapacity:v6];

  v7 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self groupID];
  [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)v4 setGroupID:v7];

  v8 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self sceneList];
  [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)v4 setSceneList:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ capacity:%@; groupID:%@; sceneList:%@; >", v5, self->_status, self->_capacity, self->_groupID, self->_sceneList];;

  return v6;
}

- (MTRScenesManagementClusterGetSceneMembershipResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = MTRScenesManagementClusterGetSceneMembershipResponseParams;
  v7 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)&v18 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:98 commandID:6 error:a4];
  if (v17)
  {
    sub_2393C5AAC(v16);
    sub_2393C5ADC(v16, *(v17 + 1), *(v17 + 3));
    v8 = sub_2393C6FD0(v16, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = sub_238F270C4(&v12, v16);
      if (!v8)
      {
        v8 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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
  sub_238EA1758(&v17);
LABEL_10:

  return v10;
}

- (MTRScenesManagementClusterGetSceneMembershipResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRScenesManagementClusterGetSceneMembershipResponseParams;
  v4 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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

- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*a3];
  [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self setStatus:v5];

  if (*(a3 + 2))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a3 + 1)];
    [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self setCapacity:v6];
  }

  else
  {
    [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self setCapacity:0];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a3 + 2)];
  [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self setGroupID:v7];

  v9 = *(a3 + 8);
  v8 = a3 + 8;
  if (v9 != 1)
  {
    [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self setSceneList:0];
LABEL_13:
    v14 = 0;
    v15 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v10 = objc_opt_new();
  v11 = sub_238DE36B8(v8);
  sub_2393C5AAC(v20);
  v18 = 0;
  v19 = 0;
  sub_2393C5BDC(v20, v11);
  while (sub_238E0D91C(&v18))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v20[72]];
    [v10 addObject:v12];
  }

  if (v18 == 33 || (v13 = v18, !v18))
  {
    [(MTRScenesManagementClusterGetSceneMembershipResponseParams *)self setSceneList:v10, v18];

    goto LABEL_13;
  }

  v14 = v19;
  v15 = v18 & 0xFFFFFFFF00000000;

LABEL_14:
  v16 = v13 | v15;
  v17 = v14;
  result.mFile = v17;
  result.mError = v16;
  result.mLine = HIDWORD(v16);
  return result;
}

@end