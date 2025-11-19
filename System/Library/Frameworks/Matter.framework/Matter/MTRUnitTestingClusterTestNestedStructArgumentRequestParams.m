@interface MTRUnitTestingClusterTestNestedStructArgumentRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRUnitTestingClusterTestNestedStructArgumentRequestParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestNestedStructArgumentRequestParams

- (MTRUnitTestingClusterTestNestedStructArgumentRequestParams)init
{
  v8.receiver = self;
  v8.super_class = MTRUnitTestingClusterTestNestedStructArgumentRequestParams;
  v2 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)&v8 init];
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
  v4 = objc_alloc_init(MTRUnitTestingClusterTestNestedStructArgumentRequestParams);
  v5 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)v4 setArg1:v5];

  v6 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)v4 setTimedInvokeTimeoutMs:v6];

  v7 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)v4 setServerSideProcessingTimeout:v7];

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
  *v77 = 0;
  v78 = 0;
  v79 = 0;
  v83 = 0;
  v84 = 0;
  LOBYTE(v85) = 0;
  v80 = 0u;
  v81 = 0u;
  v82 = 0;
  v86 = 0;
  v76[0] = 0;
  v76[1] = 0;
  v75 = v76;
  v5 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  v6 = [v5 a];
  v77[0] = [v6 unsignedCharValue];

  v7 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  v8 = [v7 b];
  v77[1] = [v8 BOOLValue];

  v9 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  v10 = [v9 c];
  v11 = [v10 a];
  LOBYTE(v78) = [v11 unsignedCharValue];

  v12 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  v13 = [v12 c];
  v14 = [v13 b];
  HIBYTE(v78) = [v14 BOOLValue];

  v15 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  v16 = [v15 c];
  v17 = [v16 c];
  v79 = [v17 unsignedCharValue];

  v18 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  v19 = [v18 c];
  v20 = [v19 d];
  sub_238DB6950(v69, [v20 bytes], objc_msgSend(v20, "length"));

  v80 = v69[0];
  v21 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  v22 = [v21 c];
  v23 = [v22 e];
  sub_238DB9BD8(v69, [v23 UTF8String], objc_msgSend(v23, "lengthOfBytesUsingEncoding:", 4));

  v81 = v69[0];
  v24 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  v25 = [v24 c];
  v26 = [v25 f];
  v82 = [v26 unsignedCharValue];

  v27 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  v28 = [v27 c];
  v29 = [v28 g];
  [v29 floatValue];
  v83 = v30;

  v31 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  v32 = [v31 c];
  v33 = [v32 h];
  [v33 doubleValue];
  v84 = v34;

  v35 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  v36 = [v35 c];
  v37 = [v36 i];

  if (v37)
  {
    v85 = 1;
    v38 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
    v39 = [v38 c];
    v40 = [v39 i];
    HIBYTE(v85) = [v40 unsignedCharValue];
  }

  v41 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
  v42 = [v41 d];

  if (v42)
  {
    v86 = 1;
    v87 = 0u;
    v88 = 0u;
    v43 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
    v44 = [v43 d];
    v45 = [v44 name];
    sub_238DB9BD8(v69, [v45 UTF8String], objc_msgSend(v45, "lengthOfBytesUsingEncoding:", 4));

    v87 = v69[0];
    v46 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
    v47 = [v46 d];
    v48 = [v47 myBitmap];

    if (v48)
    {
      LODWORD(v88) = 0;
      BYTE4(v88) = 1;
      v49 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
      v50 = [v49 d];
      v51 = [v50 myBitmap];
      LODWORD(v88) = [v51 unsignedIntValue];
    }

    v52 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
    v53 = [v52 d];
    v54 = [v53 myEnum];

    if (v54)
    {
      BYTE8(v88) = 1;
      *(&v88 + 9) = 0;
      v55 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
      v56 = [v55 d];
      v57 = [v56 myEnum];

      if (v57)
      {
        *(&v88 + 9) = 256;
        v58 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self arg1];
        v59 = [v58 d];
        v60 = [v59 myEnum];
        BYTE9(v88) = [v60 unsignedCharValue];
      }
    }
  }

  sub_2393D9C18(0x62FuLL, 0, &v74);
  if (v74)
  {
    sub_2393C7B90(v69);
    v71 = 0;
    v72 = 0;
    v70 = &unk_284BB83A8;
    v73 = 0;
    sub_238EA16C4(&v70, &v74, 0);
    sub_2393C7BF0(v69, &v70, 0xFFFFFFFF);
    v61 = sub_238F309F8(v77, v69, 0x100uLL);
    v63 = v61;
    if (v61 || (v61 = sub_238DD2EFC(v69, &v74), v63 = v61, v61))
    {
      v64 = v62;
    }

    else
    {
      sub_238DD2F90(a3, &v74);
      v61 = sub_2393C7114(a3, 21, 256);
      v64 = v68;
      v63 = v61;
    }

    v65 = v61 & 0xFFFFFFFF00000000;
    v70 = &unk_284BB83A8;
    sub_238EA1758(&v72);
    sub_238EA1758(&v71);
  }

  else
  {
    v65 = 0xB4BE00000000;
    v64 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v63 = 11;
  }

  sub_238EA1758(&v74);
  sub_238EA1790(&v75);
  v66 = v63 | v65;
  v67 = v64;
  result.mFile = v67;
  result.mError = v66;
  result.mLine = HIDWORD(v66);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterTestNestedStructArgumentRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xB4DB00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end