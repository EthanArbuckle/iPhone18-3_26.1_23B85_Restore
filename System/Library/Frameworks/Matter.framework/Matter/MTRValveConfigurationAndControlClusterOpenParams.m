@interface MTRValveConfigurationAndControlClusterOpenParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRValveConfigurationAndControlClusterOpenParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRValveConfigurationAndControlClusterOpenParams

- (MTRValveConfigurationAndControlClusterOpenParams)init
{
  v9.receiver = self;
  v9.super_class = MTRValveConfigurationAndControlClusterOpenParams;
  v2 = [(MTRValveConfigurationAndControlClusterOpenParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    openDuration = v2->_openDuration;
    v2->_openDuration = 0;

    targetLevel = v3->_targetLevel;
    v3->_targetLevel = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRValveConfigurationAndControlClusterOpenParams);
  v5 = [(MTRValveConfigurationAndControlClusterOpenParams *)self openDuration];
  [(MTRValveConfigurationAndControlClusterOpenParams *)v4 setOpenDuration:v5];

  v6 = [(MTRValveConfigurationAndControlClusterOpenParams *)self targetLevel];
  [(MTRValveConfigurationAndControlClusterOpenParams *)v4 setTargetLevel:v6];

  v7 = [(MTRValveConfigurationAndControlClusterOpenParams *)self timedInvokeTimeoutMs];
  [(MTRValveConfigurationAndControlClusterOpenParams *)v4 setTimedInvokeTimeoutMs:v7];

  v8 = [(MTRValveConfigurationAndControlClusterOpenParams *)self serverSideProcessingTimeout];
  [(MTRValveConfigurationAndControlClusterOpenParams *)v4 setServerSideProcessingTimeout:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: openDuration:%@ targetLevel:%@; >", v5, self->_openDuration, self->_targetLevel];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v26[0] = 0;
  LOBYTE(v28) = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v5 = [(MTRValveConfigurationAndControlClusterOpenParams *)self openDuration];

  if (v5)
  {
    v26[0] = 1;
    v27 = 0;
    v6 = [(MTRValveConfigurationAndControlClusterOpenParams *)self openDuration];

    if (v6)
    {
      LODWORD(v27) = 0;
      BYTE4(v27) = 1;
      v7 = [(MTRValveConfigurationAndControlClusterOpenParams *)self openDuration];
      LODWORD(v27) = [v7 unsignedIntValue];
    }
  }

  v8 = [(MTRValveConfigurationAndControlClusterOpenParams *)self targetLevel];

  if (v8)
  {
    v28 = 1;
    v9 = [(MTRValveConfigurationAndControlClusterOpenParams *)self targetLevel];
    HIBYTE(v28) = [v9 unsignedCharValue];
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
    v10 = sub_238F328CC(v26, v18, 0x100uLL);
    v12 = v10;
    if (v10 || (v10 = sub_238DD2EFC(v18, &v23), v12 = v10, v10))
    {
      v13 = v11;
    }

    else
    {
      sub_238DD2F90(a3, &v23);
      v10 = sub_2393C7114(a3, 21, 256);
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
    v14 = 0x3E4E00000000;
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRValveConfigurationAndControlClusterOpenParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (a3)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *a3 = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (a3 && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x3E6B00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end