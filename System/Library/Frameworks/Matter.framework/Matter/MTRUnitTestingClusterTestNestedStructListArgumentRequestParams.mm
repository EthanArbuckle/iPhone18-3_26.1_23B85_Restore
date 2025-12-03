@interface MTRUnitTestingClusterTestNestedStructListArgumentRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRUnitTestingClusterTestNestedStructListArgumentRequestParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestNestedStructListArgumentRequestParams

- (MTRUnitTestingClusterTestNestedStructListArgumentRequestParams)init
{
  v8.receiver = self;
  v8.super_class = MTRUnitTestingClusterTestNestedStructListArgumentRequestParams;
  v2 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)&v8 init];
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
  v4 = objc_alloc_init(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams);
  arg1 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)v4 setArg1:arg1];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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
  v86 = *MEMORY[0x277D85DE8];
  *v68 = 0;
  v69 = 0;
  unsignedCharValue = 0;
  v74 = 0;
  v75 = 0;
  LOBYTE(v76) = 0;
  v71 = 0u;
  v72 = 0u;
  unsignedCharValue2 = 0;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v67[0] = 0;
  v67[1] = 0;
  v66 = v67;
  arg1 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v5 = [arg1 a];
  v68[0] = [v5 unsignedCharValue];

  arg12 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v7 = [arg12 b];
  v68[1] = [v7 BOOLValue];

  arg13 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v9 = [arg13 c];
  v10 = [v9 a];
  LOBYTE(v69) = [v10 unsignedCharValue];

  arg14 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v12 = [arg14 c];
  v13 = [v12 b];
  HIBYTE(v69) = [v13 BOOLValue];

  arg15 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v15 = [arg15 c];
  v15C = [v15 c];
  unsignedCharValue = [v15C unsignedCharValue];

  arg16 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v18 = [arg16 c];
  v19 = [v18 d];
  v20 = v19;
  sub_238DB6950(buf, [v19 bytes], objc_msgSend(v19, "length"));

  v71 = *buf;
  arg17 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v22 = [arg17 c];
  v23 = [v22 e];
  v24 = v23;
  sub_238DB9BD8(buf, [v23 UTF8String], objc_msgSend(v23, "lengthOfBytesUsingEncoding:", 4));

  v72 = *buf;
  arg18 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v26 = [arg18 c];
  v27 = [v26 f];
  unsignedCharValue2 = [v27 unsignedCharValue];

  arg19 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v29 = [arg19 c];
  v30 = [v29 g];
  [v30 floatValue];
  v74 = v31;

  arg110 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v33 = [arg110 c];
  v34 = [v33 h];
  [v34 doubleValue];
  v75 = v35;

  arg111 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v37 = [arg111 c];
  v38 = [v37 i];
  v39 = v38 == 0;

  if (!v39)
  {
    v76 = 1;
    arg112 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
    v41 = [arg112 c];
    v42 = [v41 i];
    HIBYTE(v76) = [v42 unsignedCharValue];
  }

  arg113 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v44 = [arg113 d];
  v45 = [v44 count] == 0;

  if (!v45)
  {
    operator new();
  }

  v77 = 0uLL;
  arg114 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v47 = [arg114 e];
  v48 = [v47 count] == 0;

  if (!v48)
  {
    operator new();
  }

  v78 = 0uLL;
  arg115 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v50 = [arg115 f];
  v51 = [v50 count] == 0;

  if (!v51)
  {
    operator new();
  }

  v79 = 0uLL;
  arg116 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v53 = [arg116 g];
  v54 = [v53 count] == 0;

  if (!v54)
  {
    operator new();
  }

  v80 = 0uLL;
  sub_2393D9C18(0x62FuLL, 0, &v65);
  if (v65)
  {
    sub_2393C7B90(buf);
    v83 = 0;
    v84 = 0;
    v82 = &unk_284BB83A8;
    v85 = 0;
    sub_238EA16C4(&v82, &v65, 0);
    sub_2393C7BF0(buf, &v82, 0xFFFFFFFF);
    v55 = sub_238F30BC8(v68, buf, 0x100uLL);
    v57 = v55;
    if (v55 || (v55 = sub_238DD2EFC(buf, &v65), v57 = v55, v55))
    {
      v58 = v56;
    }

    else
    {
      sub_238DD2F90(reader, &v65);
      v55 = sub_2393C7114(reader, 21, 256);
      v58 = v63;
      v57 = v55;
    }

    v59 = v55 & 0xFFFFFFFF00000000;
    v82 = &unk_284BB83A8;
    sub_238EA1758(&v84);
    sub_238EA1758(&v83);
  }

  else
  {
    v59 = 0xB79900000000;
    v58 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v57 = 11;
  }

  sub_238EA1758(&v65);
  sub_238EA1790(&v66);
  v60 = *MEMORY[0x277D85DE8];
  v61 = v57 | v59;
  v62 = v58;
  result.mFile = v62;
  result.mError = v61;
  result.mLine = HIDWORD(v61);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xB7B600000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end