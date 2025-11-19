@interface MTRUnitTestingClusterTestStructArrayArgumentRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRUnitTestingClusterTestStructArrayArgumentRequestParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestStructArrayArgumentRequestParams

- (MTRUnitTestingClusterTestStructArrayArgumentRequestParams)init
{
  v16.receiver = self;
  v16.super_class = MTRUnitTestingClusterTestStructArrayArgumentRequestParams;
  v2 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    arg1 = v2->_arg1;
    v2->_arg1 = v3;

    v5 = [MEMORY[0x277CBEA60] array];
    arg2 = v2->_arg2;
    v2->_arg2 = v5;

    v7 = [MEMORY[0x277CBEA60] array];
    arg3 = v2->_arg3;
    v2->_arg3 = v7;

    v9 = [MEMORY[0x277CBEA60] array];
    arg4 = v2->_arg4;
    v2->_arg4 = v9;

    arg5 = v2->_arg5;
    v2->_arg5 = &unk_284C3E4C8;

    arg6 = v2->_arg6;
    v2->_arg6 = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestStructArrayArgumentRequestParams);
  v5 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg1];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setArg1:v5];

  v6 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg2];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setArg2:v6];

  v7 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg3];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setArg3:v7];

  v8 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg4];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setArg4:v8];

  v9 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg5];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setArg5:v9];

  v10 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg6];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setArg6:v10];

  v11 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setTimedInvokeTimeoutMs:v11];

  v12 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setServerSideProcessingTimeout:v12];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: arg1:%@ arg2:%@; arg3:%@; arg4:%@; arg5:%@; arg6:%@; >", v5, self->_arg1, self->_arg2, self->_arg3, self->_arg4, self->_arg5, self->_arg6];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v4 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg1];
  v5 = [v4 count] == 0;

  if (!v5)
  {
    operator new();
  }

  v26 = 0uLL;
  v6 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg2];
  v7 = [v6 count] == 0;

  if (!v7)
  {
    operator new();
  }

  v27 = 0uLL;
  v8 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg3];
  v9 = [v8 count] == 0;

  if (!v9)
  {
    operator new();
  }

  v28 = 0uLL;
  v10 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg4];
  v11 = [v10 count] == 0;

  if (!v11)
  {
    operator new();
  }

  v29 = 0uLL;
  v15 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg5];
  LOBYTE(v30) = [v15 unsignedCharValue];

  v16 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg6];
  HIBYTE(v30) = [v16 BOOLValue];

  sub_2393D9C18(0x62FuLL, 0, &v23);
  if (v23)
  {
    sub_2393C7B90(buf);
    v33 = 0;
    v34 = 0;
    v32 = &unk_284BB83A8;
    v35 = 0;
    sub_238EA16C4(&v32, &v23, 0);
    sub_2393C7BF0(buf, &v32, 0xFFFFFFFF);
    v18 = sub_238F30180(&v26, buf, 0x100uLL);
    v19 = v18;
    if (v18 || (v18 = sub_238DD2EFC(buf, &v23), v19 = v18, v18))
    {
      v20 = v17;
    }

    else
    {
      sub_238DD2F90(a3, &v23);
      v18 = sub_2393C7114(a3, 21, 256);
      v20 = v21;
      v19 = v18;
    }

    v32 = &unk_284BB83A8;
    sub_238EA1758(&v34);
    sub_238EA1758(&v33);
  }

  else
  {
    v18 = 0xB19900000000;
    v20 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v19 = 11;
  }

  sub_238EA1758(&v23);
  sub_238EA1790(&v24);
  v12 = *MEMORY[0x277D85DE8];
  v13 = v18 & 0xFFFFFFFF00000000 | v19;
  v14 = v20;
  result.mFile = v14;
  result.mError = v13;
  result.mLine = HIDWORD(v13);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xB1B600000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end