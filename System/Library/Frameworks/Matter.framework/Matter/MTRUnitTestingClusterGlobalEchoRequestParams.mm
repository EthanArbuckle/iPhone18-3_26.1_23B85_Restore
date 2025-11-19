@interface MTRUnitTestingClusterGlobalEchoRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRUnitTestingClusterGlobalEchoRequestParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUnitTestingClusterGlobalEchoRequestParams

- (MTRUnitTestingClusterGlobalEchoRequestParams)init
{
  v9.receiver = self;
  v9.super_class = MTRUnitTestingClusterGlobalEchoRequestParams;
  v2 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    field1 = v2->_field1;
    v2->_field1 = v3;

    field2 = v2->_field2;
    v2->_field2 = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterGlobalEchoRequestParams);
  v5 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)self field1];
  [(MTRUnitTestingClusterGlobalEchoRequestParams *)v4 setField1:v5];

  v6 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)self field2];
  [(MTRUnitTestingClusterGlobalEchoRequestParams *)v4 setField2:v6];

  v7 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterGlobalEchoRequestParams *)v4 setTimedInvokeTimeoutMs:v7];

  v8 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterGlobalEchoRequestParams *)v4 setServerSideProcessingTimeout:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: field1:%@ field2:%@; >", v5, self->_field1, self->_field2];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v36 = 0;
  v37 = 0;
  v34 = 0uLL;
  LOBYTE(v35) = 0;
  v39 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v32 = v33;
  v5 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)self field1];
  v6 = [v5 name];
  sub_238DB9BD8(v26, [v6 UTF8String], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4));

  v34 = v26[0];
  v7 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)self field1];
  v8 = [v7 myBitmap];

  if (v8)
  {
    v35 = 0;
    v36 = 1;
    v9 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)self field1];
    v10 = [v9 myBitmap];
    v35 = [v10 unsignedIntValue];
  }

  v11 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)self field1];
  v12 = [v11 myEnum];

  if (v12)
  {
    v37 = 1;
    v38 = 0;
    v13 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)self field1];
    v14 = [v13 myEnum];

    if (v14)
    {
      v38 = 256;
      v15 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)self field1];
      v16 = [v15 myEnum];
      LOBYTE(v38) = [v16 unsignedCharValue];
    }
  }

  v17 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)self field2];
  v39 = [v17 unsignedCharValue];

  sub_2393D9C18(0x62FuLL, 0, &v31);
  if (v31)
  {
    sub_2393C7B90(v26);
    v28 = 0;
    v29 = 0;
    v27 = &unk_284BB83A8;
    v30 = 0;
    sub_238EA16C4(&v27, &v31, 0);
    sub_2393C7BF0(v26, &v27, 0xFFFFFFFF);
    v18 = sub_238F315A0(&v34, v26, 0x100uLL);
    v20 = v18;
    if (v18 || (v18 = sub_238DD2EFC(v26, &v31), v20 = v18, v18))
    {
      v21 = v19;
    }

    else
    {
      sub_238DD2F90(a3, &v31);
      v18 = sub_2393C7114(a3, 21, 256);
      v21 = v25;
      v20 = v18;
    }

    v22 = v18 & 0xFFFFFFFF00000000;
    v27 = &unk_284BB83A8;
    sub_238EA1758(&v29);
    sub_238EA1758(&v28);
  }

  else
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v22 = 0xBF9200000000;
    v20 = 11;
  }

  sub_238EA1758(&v31);
  sub_238EA1790(&v32);
  v23 = v20 | v22;
  v24 = v21;
  result.mFile = v24;
  result.mError = v23;
  result.mLine = HIDWORD(v23);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterGlobalEchoRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xBFAF00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end