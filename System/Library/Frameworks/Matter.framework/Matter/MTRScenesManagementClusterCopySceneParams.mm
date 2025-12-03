@interface MTRScenesManagementClusterCopySceneParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRScenesManagementClusterCopySceneParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRScenesManagementClusterCopySceneParams

- (MTRScenesManagementClusterCopySceneParams)init
{
  v12.receiver = self;
  v12.super_class = MTRScenesManagementClusterCopySceneParams;
  v2 = [(MTRScenesManagementClusterCopySceneParams *)&v12 init];
  v3 = v2;
  if (v2)
  {
    mode = v2->_mode;
    v2->_mode = &unk_284C3E4C8;

    groupIdentifierFrom = v3->_groupIdentifierFrom;
    v3->_groupIdentifierFrom = &unk_284C3E4C8;

    sceneIdentifierFrom = v3->_sceneIdentifierFrom;
    v3->_sceneIdentifierFrom = &unk_284C3E4C8;

    groupIdentifierTo = v3->_groupIdentifierTo;
    v3->_groupIdentifierTo = &unk_284C3E4C8;

    sceneIdentifierTo = v3->_sceneIdentifierTo;
    v3->_sceneIdentifierTo = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRScenesManagementClusterCopySceneParams);
  mode = [(MTRScenesManagementClusterCopySceneParams *)self mode];
  [(MTRScenesManagementClusterCopySceneParams *)v4 setMode:mode];

  groupIdentifierFrom = [(MTRScenesManagementClusterCopySceneParams *)self groupIdentifierFrom];
  [(MTRScenesManagementClusterCopySceneParams *)v4 setGroupIdentifierFrom:groupIdentifierFrom];

  sceneIdentifierFrom = [(MTRScenesManagementClusterCopySceneParams *)self sceneIdentifierFrom];
  [(MTRScenesManagementClusterCopySceneParams *)v4 setSceneIdentifierFrom:sceneIdentifierFrom];

  groupIdentifierTo = [(MTRScenesManagementClusterCopySceneParams *)self groupIdentifierTo];
  [(MTRScenesManagementClusterCopySceneParams *)v4 setGroupIdentifierTo:groupIdentifierTo];

  sceneIdentifierTo = [(MTRScenesManagementClusterCopySceneParams *)self sceneIdentifierTo];
  [(MTRScenesManagementClusterCopySceneParams *)v4 setSceneIdentifierTo:sceneIdentifierTo];

  timedInvokeTimeoutMs = [(MTRScenesManagementClusterCopySceneParams *)self timedInvokeTimeoutMs];
  [(MTRScenesManagementClusterCopySceneParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRScenesManagementClusterCopySceneParams *)self serverSideProcessingTimeout];
  [(MTRScenesManagementClusterCopySceneParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: mode:%@ groupIdentifierFrom:%@; sceneIdentifierFrom:%@; groupIdentifierTo:%@; sceneIdentifierTo:%@; >", v5, self->_mode, self->_groupIdentifierFrom, self->_sceneIdentifierFrom, self->_groupIdentifierTo, self->_sceneIdentifierTo];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v26[0] = 0;
  unsignedShortValue = 0;
  unsignedCharValue = 0;
  unsignedShortValue2 = 0;
  unsignedCharValue2 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  mode = [(MTRScenesManagementClusterCopySceneParams *)self mode];
  v26[0] = [mode unsignedCharValue];

  groupIdentifierFrom = [(MTRScenesManagementClusterCopySceneParams *)self groupIdentifierFrom];
  unsignedShortValue = [groupIdentifierFrom unsignedShortValue];

  sceneIdentifierFrom = [(MTRScenesManagementClusterCopySceneParams *)self sceneIdentifierFrom];
  unsignedCharValue = [sceneIdentifierFrom unsignedCharValue];

  groupIdentifierTo = [(MTRScenesManagementClusterCopySceneParams *)self groupIdentifierTo];
  unsignedShortValue2 = [groupIdentifierTo unsignedShortValue];

  sceneIdentifierTo = [(MTRScenesManagementClusterCopySceneParams *)self sceneIdentifierTo];
  unsignedCharValue2 = [sceneIdentifierTo unsignedCharValue];

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
    v10 = sub_238F271C4(v26, v18, 0x100uLL);
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
    v14 = 0x3C5900000000;
    v12 = 11;
  }

  sub_238EA1758(&v23);
  sub_238EA1790(&v24);
  v15 = v12 | v14;
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
  v7 = [(MTRScenesManagementClusterCopySceneParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x3C7600000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end