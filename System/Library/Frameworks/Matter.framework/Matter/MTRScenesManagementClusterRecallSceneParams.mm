@interface MTRScenesManagementClusterRecallSceneParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRScenesManagementClusterRecallSceneParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRScenesManagementClusterRecallSceneParams

- (MTRScenesManagementClusterRecallSceneParams)init
{
  v10.receiver = self;
  v10.super_class = MTRScenesManagementClusterRecallSceneParams;
  v2 = [(MTRScenesManagementClusterRecallSceneParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    groupID = v2->_groupID;
    v2->_groupID = &unk_284C3E4C8;

    sceneID = v3->_sceneID;
    v3->_sceneID = &unk_284C3E4C8;

    transitionTime = v3->_transitionTime;
    v3->_transitionTime = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRScenesManagementClusterRecallSceneParams);
  groupID = [(MTRScenesManagementClusterRecallSceneParams *)self groupID];
  [(MTRScenesManagementClusterRecallSceneParams *)v4 setGroupID:groupID];

  sceneID = [(MTRScenesManagementClusterRecallSceneParams *)self sceneID];
  [(MTRScenesManagementClusterRecallSceneParams *)v4 setSceneID:sceneID];

  transitionTime = [(MTRScenesManagementClusterRecallSceneParams *)self transitionTime];
  [(MTRScenesManagementClusterRecallSceneParams *)v4 setTransitionTime:transitionTime];

  timedInvokeTimeoutMs = [(MTRScenesManagementClusterRecallSceneParams *)self timedInvokeTimeoutMs];
  [(MTRScenesManagementClusterRecallSceneParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRScenesManagementClusterRecallSceneParams *)self serverSideProcessingTimeout];
  [(MTRScenesManagementClusterRecallSceneParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: groupID:%@ sceneID:%@; transitionTime:%@; >", v5, self->_groupID, self->_sceneID, self->_transitionTime];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedShortValue = 0;
  unsignedCharValue = 0;
  v28 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  groupID = [(MTRScenesManagementClusterRecallSceneParams *)self groupID];
  unsignedShortValue = [groupID unsignedShortValue];

  sceneID = [(MTRScenesManagementClusterRecallSceneParams *)self sceneID];
  unsignedCharValue = [sceneID unsignedCharValue];

  transitionTime = [(MTRScenesManagementClusterRecallSceneParams *)self transitionTime];

  if (transitionTime)
  {
    v28 = 1;
    v29 = 0;
    transitionTime2 = [(MTRScenesManagementClusterRecallSceneParams *)self transitionTime];

    if (transitionTime2)
    {
      LODWORD(v29) = 0;
      BYTE4(v29) = 1;
      transitionTime3 = [(MTRScenesManagementClusterRecallSceneParams *)self transitionTime];
      LODWORD(v29) = [transitionTime3 unsignedIntValue];
    }
  }

  sub_2393D9C18(0x62FuLL, 0, &v23);
  if (v23)
  {
    sub_2393C7B90(v18);
    v20 = 0;
    v21 = 0;
    v19 = &unk_284BB83A8;
    v22 = 0;
    sub_238EA16C4(&v19, &v23, 0);
    sub_2393C7BF0(v18, &v19, 0xFFFFFFFF);
    v10 = sub_238F26ED4(&unsignedShortValue, v18, 0x100uLL);
    v12 = v10;
    if (v10 || (v10 = sub_238DD2EFC(v18, &v23), v12 = v10, v10))
    {
      v13 = v11;
    }

    else
    {
      sub_238DD2F90(reader, &v23);
      v10 = sub_2393C7114(reader, 21, 256);
      v13 = v17;
      v12 = v10;
    }

    v14 = v10 & 0xFFFFFFFF00000000;
    v19 = &unk_284BB83A8;
    sub_238EA1758(&v21);
    sub_238EA1758(&v20);
  }

  else
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v14 = 0x3B2200000000;
    v12 = 11;
  }

  sub_238EA1758(&v23);
  sub_238EA1790(&v24);
  v15 = v14 | v12;
  v16 = v13;
  result.mFile = v16;
  result.mError = v15;
  result.mLine = HIDWORD(v15);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRScenesManagementClusterRecallSceneParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (value)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *value = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (value && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x3B3F00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end