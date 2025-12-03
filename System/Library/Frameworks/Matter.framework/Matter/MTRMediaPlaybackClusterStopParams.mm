@interface MTRMediaPlaybackClusterStopParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRMediaPlaybackClusterStopParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRMediaPlaybackClusterStopParams

- (MTRMediaPlaybackClusterStopParams)init
{
  v7.receiver = self;
  v7.super_class = MTRMediaPlaybackClusterStopParams;
  v2 = [(MTRMediaPlaybackClusterStopParams *)&v7 init];
  v3 = v2;
  if (v2)
  {
    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRMediaPlaybackClusterStopParams);
  timedInvokeTimeoutMs = [(MTRMediaPlaybackClusterStopParams *)self timedInvokeTimeoutMs];
  [(MTRMediaPlaybackClusterStopParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRMediaPlaybackClusterStopParams *)self serverSideProcessingTimeout];
  [(MTRMediaPlaybackClusterStopParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@: >", v4];

  return v5;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  sub_2393D9C18(0x62FuLL, 0, &v17);
  if (v17)
  {
    sub_2393C7B90(v12);
    v14 = 0;
    v15 = 0;
    v13 = &unk_284BB83A8;
    v16 = 0;
    sub_238EA16C4(&v13, &v17, 0);
    sub_2393C7BF0(v12, &v13, 0xFFFFFFFF);
    v4 = sub_238EFFEF0(&v20, v12, 0x100uLL);
    v6 = v4;
    if (v4 || (v4 = sub_238DD2EFC(v12, &v17), v6 = v4, v4))
    {
      v7 = v5;
    }

    else
    {
      sub_238DD2F90(reader, &v17);
      v4 = sub_2393C7114(reader, 21, 256);
      v7 = v11;
      v6 = v4;
    }

    v8 = v4 & 0xFFFFFFFF00000000;
    v13 = &unk_284BB83A8;
    sub_238EA1758(&v15);
    sub_238EA1758(&v14);
  }

  else
  {
    v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v8 = 0x725C00000000;
    v6 = 11;
  }

  sub_238EA1758(&v17);
  sub_238EA1790(&v18);
  v9 = v8 | v6;
  v10 = v7;
  result.mFile = v10;
  result.mError = v9;
  result.mLine = HIDWORD(v9);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRMediaPlaybackClusterStopParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x727900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end