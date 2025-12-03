@interface MTRScenesManagementClusterAddSceneParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRScenesManagementClusterAddSceneParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRScenesManagementClusterAddSceneParams

- (MTRScenesManagementClusterAddSceneParams)init
{
  v13.receiver = self;
  v13.super_class = MTRScenesManagementClusterAddSceneParams;
  v2 = [(MTRScenesManagementClusterAddSceneParams *)&v13 init];
  v3 = v2;
  if (v2)
  {
    groupID = v2->_groupID;
    v2->_groupID = &unk_284C3E4C8;

    sceneID = v3->_sceneID;
    v3->_sceneID = &unk_284C3E4C8;

    transitionTime = v3->_transitionTime;
    v3->_transitionTime = &unk_284C3E4C8;

    sceneName = v3->_sceneName;
    v3->_sceneName = &stru_284BD0DD8;

    array = [MEMORY[0x277CBEA60] array];
    extensionFieldSetStructs = v3->_extensionFieldSetStructs;
    v3->_extensionFieldSetStructs = array;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRScenesManagementClusterAddSceneParams);
  groupID = [(MTRScenesManagementClusterAddSceneParams *)self groupID];
  [(MTRScenesManagementClusterAddSceneParams *)v4 setGroupID:groupID];

  sceneID = [(MTRScenesManagementClusterAddSceneParams *)self sceneID];
  [(MTRScenesManagementClusterAddSceneParams *)v4 setSceneID:sceneID];

  transitionTime = [(MTRScenesManagementClusterAddSceneParams *)self transitionTime];
  [(MTRScenesManagementClusterAddSceneParams *)v4 setTransitionTime:transitionTime];

  sceneName = [(MTRScenesManagementClusterAddSceneParams *)self sceneName];
  [(MTRScenesManagementClusterAddSceneParams *)v4 setSceneName:sceneName];

  extensionFieldSetStructs = [(MTRScenesManagementClusterAddSceneParams *)self extensionFieldSetStructs];
  [(MTRScenesManagementClusterAddSceneParams *)v4 setExtensionFieldSetStructs:extensionFieldSetStructs];

  timedInvokeTimeoutMs = [(MTRScenesManagementClusterAddSceneParams *)self timedInvokeTimeoutMs];
  [(MTRScenesManagementClusterAddSceneParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRScenesManagementClusterAddSceneParams *)self serverSideProcessingTimeout];
  [(MTRScenesManagementClusterAddSceneParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: groupID:%@ sceneID:%@; transitionTime:%@; sceneName:%@; extensionFieldSetStructs:%@; >", v5, self->_groupID, self->_sceneID, self->_transitionTime, self->_sceneName, self->_extensionFieldSetStructs];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v31 = *MEMORY[0x277D85DE8];
  unsignedShortValue = 0;
  unsignedCharValue = 0;
  memset(v25, 0, sizeof(v25));
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  groupID = [(MTRScenesManagementClusterAddSceneParams *)self groupID];
  unsignedShortValue = [groupID unsignedShortValue];

  sceneID = [(MTRScenesManagementClusterAddSceneParams *)self sceneID];
  unsignedCharValue = [sceneID unsignedCharValue];

  transitionTime = [(MTRScenesManagementClusterAddSceneParams *)self transitionTime];
  *v25 = [transitionTime unsignedIntValue];

  sceneName = [(MTRScenesManagementClusterAddSceneParams *)self sceneName];
  v8 = sceneName;
  sub_238DB9BD8(buf, [sceneName UTF8String], objc_msgSend(sceneName, "lengthOfBytesUsingEncoding:", 4));

  *&v25[4] = *buf;
  extensionFieldSetStructs = [(MTRScenesManagementClusterAddSceneParams *)self extensionFieldSetStructs];
  v10 = [extensionFieldSetStructs count] == 0;

  if (!v10)
  {
    operator new();
  }

  *&v25[20] = 0uLL;
  sub_2393D9C18(0x62FuLL, 0, &v20);
  if (v20)
  {
    sub_2393C7B90(buf);
    v28 = 0;
    v29 = 0;
    v27 = &unk_284BB83A8;
    v30 = 0;
    sub_238EA16C4(&v27, &v20, 0);
    sub_2393C7BF0(buf, &v27, 0xFFFFFFFF);
    v12 = sub_238F26820(&unsignedShortValue, buf, 0x100uLL);
    v13 = v12;
    if (v12 || (v12 = sub_238DD2EFC(buf, &v20), v13 = v12, v12))
    {
      v14 = v11;
    }

    else
    {
      sub_238DD2F90(reader, &v20);
      v12 = sub_2393C7114(reader, 21, 256);
      v14 = v18;
      v13 = v12;
    }

    v27 = &unk_284BB83A8;
    sub_238EA1758(&v29);
    sub_238EA1758(&v28);
  }

  else
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v12 = 0x371500000000;
    v13 = 11;
  }

  sub_238EA1758(&v20);
  sub_238EA1790(&v21);
  v15 = *MEMORY[0x277D85DE8];
  v16 = v12 & 0xFFFFFFFF00000000 | v13;
  v17 = v14;
  result.mFile = v17;
  result.mError = v16;
  result.mLine = HIDWORD(v16);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRScenesManagementClusterAddSceneParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x373200000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end