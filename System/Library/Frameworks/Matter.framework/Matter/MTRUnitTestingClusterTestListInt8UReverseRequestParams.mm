@interface MTRUnitTestingClusterTestListInt8UReverseRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRUnitTestingClusterTestListInt8UReverseRequestParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestListInt8UReverseRequestParams

- (MTRUnitTestingClusterTestListInt8UReverseRequestParams)init
{
  v8.receiver = self;
  v8.super_class = MTRUnitTestingClusterTestListInt8UReverseRequestParams;
  v2 = [(MTRUnitTestingClusterTestListInt8UReverseRequestParams *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    arg1 = v2->_arg1;
    v2->_arg1 = array;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestListInt8UReverseRequestParams);
  arg1 = [(MTRUnitTestingClusterTestListInt8UReverseRequestParams *)self arg1];
  [(MTRUnitTestingClusterTestListInt8UReverseRequestParams *)v4 setArg1:arg1];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterTestListInt8UReverseRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestListInt8UReverseRequestParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRUnitTestingClusterTestListInt8UReverseRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterTestListInt8UReverseRequestParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0uLL;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  arg1 = [(MTRUnitTestingClusterTestListInt8UReverseRequestParams *)self arg1];
  v5 = [arg1 count] == 0;

  if (!v5)
  {
    operator new();
  }

  v18 = 0uLL;
  sub_2393D9C18(0x62FuLL, 0, &v15);
  if (v15)
  {
    sub_2393C7B90(buf);
    v21 = 0;
    v22 = 0;
    v20 = &unk_284BB83A8;
    v23 = 0;
    sub_238EA16C4(&v20, &v15, 0);
    sub_2393C7BF0(buf, &v20, 0xFFFFFFFF);
    v6 = sub_238F30B80(&v18, buf, 0x100uLL);
    v8 = v6;
    if (v6 || (v6 = sub_238DD2EFC(buf, &v15), v8 = v6, v6))
    {
      v9 = v7;
    }

    else
    {
      sub_238DD2F90(reader, &v15);
      v6 = sub_2393C7114(reader, 21, 256);
      v9 = v14;
      v8 = v6;
    }

    v10 = v6 & 0xFFFFFFFF00000000;
    v20 = &unk_284BB83A8;
    sub_238EA1758(&v22);
    sub_238EA1758(&v21);
  }

  else
  {
    v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v10 = 0xB99C00000000;
    v8 = 11;
  }

  sub_238EA1758(&v15);
  sub_238EA1790(&v16);
  v11 = *MEMORY[0x277D85DE8];
  v12 = v10 | v8;
  v13 = v9;
  result.mFile = v13;
  result.mError = v12;
  result.mLine = HIDWORD(v12);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterTestListInt8UReverseRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xB9B900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end