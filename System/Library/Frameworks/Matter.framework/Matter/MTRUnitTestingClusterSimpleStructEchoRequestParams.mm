@interface MTRUnitTestingClusterSimpleStructEchoRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRUnitTestingClusterSimpleStructEchoRequestParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterSimpleStructEchoRequestParams

- (MTRUnitTestingClusterSimpleStructEchoRequestParams)init
{
  v8.receiver = self;
  v8.super_class = MTRUnitTestingClusterSimpleStructEchoRequestParams;
  v2 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    arg1 = v2->_arg1;
    v2->_arg1 = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterSimpleStructEchoRequestParams);
  arg1 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)v4 setArg1:arg1];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: arg1:%@ >", v5, self->_arg1];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v43 = 0;
  unsignedCharValue = 0;
  v48 = 0;
  v49 = 0;
  LOBYTE(v50) = 0;
  v45 = 0u;
  v46 = 0u;
  unsignedCharValue2 = 0;
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  arg1 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v6 = [arg1 a];
  LOBYTE(v43) = [v6 unsignedCharValue];

  arg12 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v8 = [arg12 b];
  HIBYTE(v43) = [v8 BOOLValue];

  arg13 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v10 = [arg13 c];
  unsignedCharValue = [v10 unsignedCharValue];

  arg14 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v12 = [arg14 d];
  sub_238DB6950(v35, [v12 bytes], objc_msgSend(v12, "length"));

  v45 = v35[0];
  arg15 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v14 = [arg15 e];
  sub_238DB9BD8(v35, [v14 UTF8String], objc_msgSend(v14, "lengthOfBytesUsingEncoding:", 4));

  v46 = v35[0];
  arg16 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v16 = [arg16 f];
  unsignedCharValue2 = [v16 unsignedCharValue];

  arg17 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v18 = [arg17 g];
  [v18 floatValue];
  v48 = v19;

  arg18 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v21 = [arg18 h];
  [v21 doubleValue];
  v49 = v22;

  arg19 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v24 = [arg19 i];

  if (v24)
  {
    v50 = 1;
    arg110 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
    v26 = [arg110 i];
    HIBYTE(v50) = [v26 unsignedCharValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v40);
  if (v40)
  {
    sub_2393C7B90(v35);
    v37 = 0;
    v38 = 0;
    v36 = &unk_284BB83A8;
    v39 = 0;
    sub_238EA16C4(&v36, &v40, 0);
    sub_2393C7BF0(v35, &v36, 0xFFFFFFFF);
    v27 = sub_238F303DC(&v43, v35, 0x100uLL);
    v29 = v27;
    if (v27 || (v27 = sub_238DD2EFC(v35, &v40), v29 = v27, v27))
    {
      v30 = v28;
    }

    else
    {
      sub_238DD2F90(reader, &v40);
      v27 = sub_2393C7114(reader, 21, 256);
      v30 = v34;
      v29 = v27;
    }

    v31 = v27 & 0xFFFFFFFF00000000;
    v36 = &unk_284BB83A8;
    sub_238EA1758(&v38);
    sub_238EA1758(&v37);
  }

  else
  {
    v30 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v31 = 0xBCC500000000;
    v29 = 11;
  }

  sub_238EA1758(&v40);
  sub_238EA1790(&v41);
  v32 = v29 | v31;
  v33 = v30;
  result.mFile = v33;
  result.mError = v32;
  result.mLine = HIDWORD(v32);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xBCE200000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end