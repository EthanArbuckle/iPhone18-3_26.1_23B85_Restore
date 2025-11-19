@interface MTRUnitTestingClusterSimpleStructEchoRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRUnitTestingClusterSimpleStructEchoRequestParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterSimpleStructEchoRequestParams);
  v5 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)v4 setArg1:v5];

  v6 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)v4 setTimedInvokeTimeoutMs:v6];

  v7 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)v4 setServerSideProcessingTimeout:v7];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v43 = 0;
  v44 = 0;
  v48 = 0;
  v49 = 0;
  LOBYTE(v50) = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  v5 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v6 = [v5 a];
  LOBYTE(v43) = [v6 unsignedCharValue];

  v7 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v8 = [v7 b];
  HIBYTE(v43) = [v8 BOOLValue];

  v9 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v10 = [v9 c];
  v44 = [v10 unsignedCharValue];

  v11 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v12 = [v11 d];
  sub_238DB6950(v35, [v12 bytes], objc_msgSend(v12, "length"));

  v45 = v35[0];
  v13 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v14 = [v13 e];
  sub_238DB9BD8(v35, [v14 UTF8String], objc_msgSend(v14, "lengthOfBytesUsingEncoding:", 4));

  v46 = v35[0];
  v15 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v16 = [v15 f];
  v47 = [v16 unsignedCharValue];

  v17 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v18 = [v17 g];
  [v18 floatValue];
  v48 = v19;

  v20 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v21 = [v20 h];
  [v21 doubleValue];
  v49 = v22;

  v23 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
  v24 = [v23 i];

  if (v24)
  {
    v50 = 1;
    v25 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self arg1];
    v26 = [v25 i];
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
      sub_238DD2F90(a3, &v40);
      v27 = sub_2393C7114(a3, 21, 256);
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterSimpleStructEchoRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xBCE200000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end