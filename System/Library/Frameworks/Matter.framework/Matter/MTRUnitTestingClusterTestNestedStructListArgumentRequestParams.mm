@interface MTRUnitTestingClusterTestNestedStructListArgumentRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRUnitTestingClusterTestNestedStructListArgumentRequestParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams);
  v5 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)v4 setArg1:v5];

  v6 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)v4 setTimedInvokeTimeoutMs:v6];

  v7 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)v4 setServerSideProcessingTimeout:v7];

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
  v86 = *MEMORY[0x277D85DE8];
  *v68 = 0;
  v69 = 0;
  v70 = 0;
  v74 = 0;
  v75 = 0;
  LOBYTE(v76) = 0;
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v67[0] = 0;
  v67[1] = 0;
  v66 = v67;
  v4 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v5 = [v4 a];
  v68[0] = [v5 unsignedCharValue];

  v6 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v7 = [v6 b];
  v68[1] = [v7 BOOLValue];

  v8 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v9 = [v8 c];
  v10 = [v9 a];
  LOBYTE(v69) = [v10 unsignedCharValue];

  v11 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v12 = [v11 c];
  v13 = [v12 b];
  HIBYTE(v69) = [v13 BOOLValue];

  v14 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v15 = [v14 c];
  v16 = [v15 c];
  v70 = [v16 unsignedCharValue];

  v17 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v18 = [v17 c];
  v19 = [v18 d];
  v20 = v19;
  sub_238DB6950(buf, [v19 bytes], objc_msgSend(v19, "length"));

  v71 = *buf;
  v21 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v22 = [v21 c];
  v23 = [v22 e];
  v24 = v23;
  sub_238DB9BD8(buf, [v23 UTF8String], objc_msgSend(v23, "lengthOfBytesUsingEncoding:", 4));

  v72 = *buf;
  v25 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v26 = [v25 c];
  v27 = [v26 f];
  v73 = [v27 unsignedCharValue];

  v28 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v29 = [v28 c];
  v30 = [v29 g];
  [v30 floatValue];
  v74 = v31;

  v32 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v33 = [v32 c];
  v34 = [v33 h];
  [v34 doubleValue];
  v75 = v35;

  v36 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v37 = [v36 c];
  v38 = [v37 i];
  v39 = v38 == 0;

  if (!v39)
  {
    v76 = 1;
    v40 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
    v41 = [v40 c];
    v42 = [v41 i];
    HIBYTE(v76) = [v42 unsignedCharValue];
  }

  v43 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v44 = [v43 d];
  v45 = [v44 count] == 0;

  if (!v45)
  {
    operator new();
  }

  v77 = 0uLL;
  v46 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v47 = [v46 e];
  v48 = [v47 count] == 0;

  if (!v48)
  {
    operator new();
  }

  v78 = 0uLL;
  v49 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v50 = [v49 f];
  v51 = [v50 count] == 0;

  if (!v51)
  {
    operator new();
  }

  v79 = 0uLL;
  v52 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v53 = [v52 g];
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
      sub_238DD2F90(a3, &v65);
      v55 = sub_2393C7114(a3, 21, 256);
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xB7B600000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end