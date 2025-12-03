@interface MTRTargetNavigatorClusterNavigateTargetParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRTargetNavigatorClusterNavigateTargetParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTargetNavigatorClusterNavigateTargetParams

- (MTRTargetNavigatorClusterNavigateTargetParams)init
{
  v9.receiver = self;
  v9.super_class = MTRTargetNavigatorClusterNavigateTargetParams;
  v2 = [(MTRTargetNavigatorClusterNavigateTargetParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    target = v2->_target;
    v2->_target = &unk_284C3E4C8;

    data = v3->_data;
    v3->_data = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTargetNavigatorClusterNavigateTargetParams);
  target = [(MTRTargetNavigatorClusterNavigateTargetParams *)self target];
  [(MTRTargetNavigatorClusterNavigateTargetParams *)v4 setTarget:target];

  data = [(MTRTargetNavigatorClusterNavigateTargetParams *)self data];
  [(MTRTargetNavigatorClusterNavigateTargetParams *)v4 setData:data];

  timedInvokeTimeoutMs = [(MTRTargetNavigatorClusterNavigateTargetParams *)self timedInvokeTimeoutMs];
  [(MTRTargetNavigatorClusterNavigateTargetParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRTargetNavigatorClusterNavigateTargetParams *)self serverSideProcessingTimeout];
  [(MTRTargetNavigatorClusterNavigateTargetParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: target:%@ data:%@; >", v5, self->_target, self->_data];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v24[0] = 0;
  v25 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  target = [(MTRTargetNavigatorClusterNavigateTargetParams *)self target];
  v24[0] = [target unsignedCharValue];

  data = [(MTRTargetNavigatorClusterNavigateTargetParams *)self data];

  if (data)
  {
    v25 = 1;
    v26 = 0uLL;
    data2 = [(MTRTargetNavigatorClusterNavigateTargetParams *)self data];
    sub_238DB9BD8(v16, [data2 UTF8String], objc_msgSend(data2, "lengthOfBytesUsingEncoding:", 4));

    v26 = v16[0];
  }

  sub_2393D9C18(0x62FuLL, 0, &v21);
  if (v21)
  {
    sub_2393C7B90(v16);
    v18 = 0;
    v19 = 0;
    v17 = &unk_284BB83A8;
    v20 = 0;
    sub_238EA16C4(&v17, &v21, 0);
    sub_2393C7BF0(v16, &v17, 0xFFFFFFFF);
    v8 = sub_238F1736C(v24, v16, 0x100uLL);
    v10 = v8;
    if (v8 || (v8 = sub_238DD2EFC(v16, &v21), v10 = v8, v8))
    {
      v11 = v9;
    }

    else
    {
      sub_238DD2F90(reader, &v21);
      v8 = sub_2393C7114(reader, 21, 256);
      v11 = v15;
      v10 = v8;
    }

    v12 = v8 & 0xFFFFFFFF00000000;
    v17 = &unk_284BB83A8;
    sub_238EA1758(&v19);
    sub_238EA1758(&v18);
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v12 = 0x711800000000;
    v10 = 11;
  }

  sub_238EA1758(&v21);
  sub_238EA1790(&v22);
  v13 = v12 | v10;
  v14 = v11;
  result.mFile = v14;
  result.mError = v13;
  result.mLine = HIDWORD(v13);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRTargetNavigatorClusterNavigateTargetParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x713500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end