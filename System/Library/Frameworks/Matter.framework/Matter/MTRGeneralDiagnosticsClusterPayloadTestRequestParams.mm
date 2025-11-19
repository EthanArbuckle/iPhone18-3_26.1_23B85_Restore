@interface MTRGeneralDiagnosticsClusterPayloadTestRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRGeneralDiagnosticsClusterPayloadTestRequestParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGeneralDiagnosticsClusterPayloadTestRequestParams

- (MTRGeneralDiagnosticsClusterPayloadTestRequestParams)init
{
  v10.receiver = self;
  v10.super_class = MTRGeneralDiagnosticsClusterPayloadTestRequestParams;
  v2 = [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    enableKey = v2->_enableKey;
    v2->_enableKey = v3;

    value = v2->_value;
    v2->_value = &unk_284C3E4C8;

    count = v2->_count;
    v2->_count = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGeneralDiagnosticsClusterPayloadTestRequestParams);
  v5 = [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)self enableKey];
  [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)v4 setEnableKey:v5];

  v6 = [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)self value];
  [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)v4 setValue:v6];

  v7 = [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)self getCount];
  [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)v4 setCount:v7];

  v8 = [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)self timedInvokeTimeoutMs];
  [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)v4 setTimedInvokeTimeoutMs:v8];

  v9 = [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)self serverSideProcessingTimeout];
  [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)v4 setServerSideProcessingTimeout:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_enableKey base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: enableKey:%@ value:%@; count:%@; >", v5, v6, self->_value, self->_count];;

  return v7;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v26 = 0;
  v24 = 0uLL;
  v25 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  v5 = [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)self enableKey];
  sub_238DB6950(v16, [v5 bytes], objc_msgSend(v5, "length"));

  v24 = v16[0];
  v6 = [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)self value];
  v25 = [v6 unsignedCharValue];

  v7 = [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)self getCount];
  v26 = [v7 unsignedShortValue];

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
    v8 = sub_238F1887C(&v24, v16, 0x100uLL);
    v10 = v8;
    if (v8 || (v8 = sub_238DD2EFC(v16, &v21), v10 = v8, v8))
    {
      v11 = v9;
    }

    else
    {
      sub_238DD2F90(a3, &v21);
      v8 = sub_2393C7114(a3, 21, 256);
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
    v12 = 0x1BEB00000000;
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRGeneralDiagnosticsClusterPayloadTestRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x1C0800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end