@interface MTRUnitTestingClusterTestComplexNullableOptionalRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRUnitTestingClusterTestComplexNullableOptionalRequestParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestComplexNullableOptionalRequestParams

- (MTRUnitTestingClusterTestComplexNullableOptionalRequestParams)init
{
  v19.receiver = self;
  v19.super_class = MTRUnitTestingClusterTestComplexNullableOptionalRequestParams;
  v2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)&v19 init];
  v3 = v2;
  if (v2)
  {
    nullableInt = v2->_nullableInt;
    v2->_nullableInt = 0;

    optionalInt = v3->_optionalInt;
    v3->_optionalInt = 0;

    nullableOptionalInt = v3->_nullableOptionalInt;
    v3->_nullableOptionalInt = 0;

    nullableString = v3->_nullableString;
    v3->_nullableString = 0;

    optionalString = v3->_optionalString;
    v3->_optionalString = 0;

    nullableOptionalString = v3->_nullableOptionalString;
    v3->_nullableOptionalString = 0;

    nullableStruct = v3->_nullableStruct;
    v3->_nullableStruct = 0;

    optionalStruct = v3->_optionalStruct;
    v3->_optionalStruct = 0;

    nullableOptionalStruct = v3->_nullableOptionalStruct;
    v3->_nullableOptionalStruct = 0;

    nullableList = v3->_nullableList;
    v3->_nullableList = 0;

    optionalList = v3->_optionalList;
    v3->_optionalList = 0;

    nullableOptionalList = v3->_nullableOptionalList;
    v3->_nullableOptionalList = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams);
  v5 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableInt];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableInt:v5];

  v6 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalInt];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setOptionalInt:v6];

  v7 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalInt];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableOptionalInt:v7];

  v8 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableString];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableString:v8];

  v9 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalString];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setOptionalString:v9];

  v10 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalString];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableOptionalString:v10];

  v11 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableStruct:v11];

  v12 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setOptionalStruct:v12];

  v13 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableOptionalStruct:v13];

  v14 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableList];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableList:v14];

  v15 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalList];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setOptionalList:v15];

  v16 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalList];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableOptionalList:v16];

  v17 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setTimedInvokeTimeoutMs:v17];

  v18 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setServerSideProcessingTimeout:v18];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nullableInt:%@ optionalInt:%@; nullableOptionalInt:%@; nullableString:%@; optionalString:%@; nullableOptionalString:%@; nullableStruct:%@; optionalStruct:%@; nullableOptionalStruct:%@; nullableList:%@; optionalList:%@; nullableOptionalList:%@; >", v5, self->_nullableInt, self->_optionalInt, self->_nullableOptionalInt, self->_nullableString, self->_optionalString, self->_nullableOptionalString, self->_nullableStruct, self->_optionalStruct, self->_nullableOptionalStruct, self->_nullableList, self->_optionalList, self->_nullableOptionalList];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v174 = *MEMORY[0x277D85DE8];
  LOBYTE(v136) = 0;
  v137 = 0;
  v138 = 0;
  v140 = 0;
  LOBYTE(v142) = 0;
  v143 = 0;
  v144 = 0;
  v146 = 0;
  LOBYTE(v149[0]) = 0;
  v151 = 0;
  v152 = 0;
  v155 = 0;
  LOBYTE(v159) = 0;
  v161 = 0;
  v162 = 0;
  v165 = 0;
  v135[0] = 0;
  v135[1] = 0;
  v134 = v135;
  v5 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableInt];
  v6 = v5 == 0;

  if (v6)
  {
    if (v137 == 1)
    {
      v137 = 0;
    }
  }

  else
  {
    v136 = 0;
    v137 = 1;
    v7 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableInt];
    v136 = [v7 unsignedShortValue];
  }

  v8 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalInt];
  v9 = v8 == 0;

  if (!v9)
  {
    v138 = 1;
    v139 = 0;
    v10 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalInt];
    v139 = [v10 unsignedShortValue];
  }

  v11 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalInt];
  v12 = v11 == 0;

  if (!v12)
  {
    v140 = 1;
    v141 = 0;
    v13 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalInt];
    v14 = v13 == 0;

    if (v14)
    {
      if (BYTE2(v141) == 1)
      {
        BYTE2(v141) = 0;
      }
    }

    else
    {
      LOWORD(v141) = 0;
      BYTE2(v141) = 1;
      v15 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalInt];
      LOWORD(v141) = [v15 unsignedShortValue];
    }
  }

  v16 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableString];
  v17 = v16 == 0;

  if (v17)
  {
    if (v143 == 1)
    {
      v143 = 0;
    }
  }

  else
  {
    v142 = 0uLL;
    v143 = 1;
    v18 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableString];
    v19 = v18;
    sub_238DB9BD8(buf, [v18 UTF8String], objc_msgSend(v18, "lengthOfBytesUsingEncoding:", 4));

    v142 = *buf;
  }

  v20 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalString];
  v21 = v20 == 0;

  if (!v21)
  {
    v144 = 1;
    v145 = 0uLL;
    v22 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalString];
    v23 = v22;
    sub_238DB9BD8(buf, [v22 UTF8String], objc_msgSend(v22, "lengthOfBytesUsingEncoding:", 4));

    v145 = *buf;
  }

  v24 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalString];
  v25 = v24 == 0;

  if (!v25)
  {
    v146 = 1;
    v148 = 0;
    v147 = 0uLL;
    v26 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalString];
    v27 = v26 == 0;

    if (v27)
    {
      if (v148 == 1)
      {
        LOBYTE(v148) = 0;
      }
    }

    else
    {
      v147 = 0uLL;
      LOBYTE(v148) = 1;
      v28 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalString];
      v29 = v28;
      sub_238DB9BD8(buf, [v28 UTF8String], objc_msgSend(v28, "lengthOfBytesUsingEncoding:", 4));

      v147 = *buf;
    }
  }

  v30 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
  v31 = v30 == 0;

  if (v31)
  {
    if (v151 == 1)
    {
      v151 = 0;
    }
  }

  else
  {
    v150 = 0u;
    memset(v149, 0, sizeof(v149));
    v151 = 1;
    v32 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v33 = [v32 a];
    LOBYTE(v149[0]) = [v33 unsignedCharValue];

    v34 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v35 = [v34 b];
    BYTE1(v149[0]) = [v35 BOOLValue];

    v36 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v37 = [v36 c];
    BYTE2(v149[0]) = [v37 unsignedCharValue];

    v38 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v39 = [v38 d];
    v40 = v39;
    sub_238DB6950(buf, [v39 bytes], objc_msgSend(v39, "length"));

    *&v149[1] = *buf;
    v41 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v42 = [v41 e];
    v43 = v42;
    sub_238DB9BD8(buf, [v42 UTF8String], objc_msgSend(v42, "lengthOfBytesUsingEncoding:", 4));

    *&v149[3] = *buf;
    v44 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v45 = [v44 f];
    LOBYTE(v149[5]) = [v45 unsignedCharValue];

    v46 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v47 = [v46 g];
    [v47 floatValue];
    HIDWORD(v149[5]) = v48;

    v49 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v50 = [v49 h];
    [v50 doubleValue];
    *&v150 = v51;

    v52 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v53 = [v52 i];
    LOBYTE(v50) = v53 == 0;

    if ((v50 & 1) == 0)
    {
      WORD4(v150) = 1;
      v54 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
      v55 = [v54 i];
      BYTE9(v150) = [v55 unsignedCharValue];
    }
  }

  v56 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
  v57 = v56 == 0;

  if (!v57)
  {
    v152 = 1;
    memset(v153, 0, sizeof(v153));
    v154 = 0u;
    v58 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v59 = [v58 a];
    LOBYTE(v153[0]) = [v59 unsignedCharValue];

    v60 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v61 = [v60 b];
    BYTE1(v153[0]) = [v61 BOOLValue];

    v62 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v63 = [v62 c];
    BYTE2(v153[0]) = [v63 unsignedCharValue];

    v64 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v65 = [v64 d];
    v66 = v65;
    sub_238DB6950(buf, [v65 bytes], objc_msgSend(v65, "length"));

    *(v153 + 8) = *buf;
    v67 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v68 = [v67 e];
    v69 = v68;
    sub_238DB9BD8(buf, [v68 UTF8String], objc_msgSend(v68, "lengthOfBytesUsingEncoding:", 4));

    *(&v153[1] + 8) = *buf;
    v70 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v71 = [v70 f];
    BYTE8(v153[2]) = [v71 unsignedCharValue];

    v72 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v73 = [v72 g];
    [v73 floatValue];
    HIDWORD(v153[2]) = v74;

    v75 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v76 = [v75 h];
    [v76 doubleValue];
    *&v154 = v77;

    v78 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v79 = [v78 i];
    LOBYTE(v76) = v79 == 0;

    if ((v76 & 1) == 0)
    {
      WORD4(v154) = 1;
      v80 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
      v81 = [v80 i];
      BYTE9(v154) = [v81 unsignedCharValue];
    }
  }

  v82 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
  v83 = v82 == 0;

  if (!v83)
  {
    v155 = 1;
    v157 = 0u;
    memset(v156, 0, sizeof(v156));
    v158 = 0;
    v84 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
    v85 = v84 == 0;

    if (v85)
    {
      if (v158 == 1)
      {
        LOBYTE(v158) = 0;
      }
    }

    else
    {
      v157 = 0u;
      memset(v156, 0, sizeof(v156));
      LOBYTE(v158) = 1;
      v86 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v87 = [v86 a];
      LOBYTE(v156[0]) = [v87 unsignedCharValue];

      v88 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v89 = [v88 b];
      BYTE1(v156[0]) = [v89 BOOLValue];

      v90 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v91 = [v90 c];
      BYTE2(v156[0]) = [v91 unsignedCharValue];

      v92 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v93 = [v92 d];
      v94 = v93;
      sub_238DB6950(buf, [v93 bytes], objc_msgSend(v93, "length"));

      *&v156[1] = *buf;
      v95 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v96 = [v95 e];
      v97 = v96;
      sub_238DB9BD8(buf, [v96 UTF8String], objc_msgSend(v96, "lengthOfBytesUsingEncoding:", 4));

      *&v156[3] = *buf;
      v98 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v99 = [v98 f];
      LOBYTE(v156[5]) = [v99 unsignedCharValue];

      v100 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v101 = [v100 g];
      [v101 floatValue];
      HIDWORD(v156[5]) = v102;

      v103 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v104 = [v103 h];
      [v104 doubleValue];
      *&v157 = v105;

      v106 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v107 = [v106 i];
      LOBYTE(v104) = v107 == 0;

      if ((v104 & 1) == 0)
      {
        WORD4(v157) = 1;
        v108 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
        v109 = [v108 i];
        BYTE9(v157) = [v109 unsignedCharValue];
      }
    }
  }

  v110 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableList];
  v111 = v110 == 0;

  if (v111)
  {
    if (v161 == 1)
    {
      v161 = 0;
    }
  }

  else
  {
    v159 = 0;
    v160 = 0;
    v161 = 1;
    v112 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableList];
    v113 = [v112 count] == 0;

    if (!v113)
    {
      operator new();
    }

    v159 = 0;
    v160 = 0;
  }

  v114 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalList];
  v115 = v114 == 0;

  if (!v115)
  {
    v162 = 1;
    v163 = 0;
    v164 = 0;
    v116 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalList];
    v117 = [v116 count] == 0;

    if (!v117)
    {
      operator new();
    }

    v163 = 0;
    v164 = 0;
  }

  v118 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalList];
  v119 = v118 == 0;

  if (!v119)
  {
    v165 = 1;
    v167 = 0;
    v168 = 0;
    v166 = 0;
    v120 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalList];
    v121 = v120 == 0;

    if (v121)
    {
      if (v168 == 1)
      {
        LOBYTE(v168) = 0;
      }
    }

    else
    {
      v166 = 0;
      v167 = 0;
      LOBYTE(v168) = 1;
      v122 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalList];
      v123 = [v122 count] == 0;

      if (!v123)
      {
        operator new();
      }

      v166 = 0;
      v167 = 0;
    }
  }

  sub_2393D9C18(0x62FuLL, 0, &v133);
  if (v133)
  {
    sub_2393C7B90(buf);
    v171 = 0;
    v172 = 0;
    v170 = &unk_284BB83A8;
    v173 = 0;
    sub_238EA16C4(&v170, &v133, 0);
    sub_2393C7BF0(buf, &v170, 0xFFFFFFFF);
    v124 = sub_238F30FA8(&v136, buf, 0x100uLL);
    v126 = v124;
    if (v124 || (v124 = sub_238DD2EFC(buf, &v133), v126 = v124, v124))
    {
      v127 = v125;
    }

    else
    {
      sub_238DD2F90(a3, &v133);
      v124 = sub_2393C7114(a3, 21, 256);
      v127 = v129;
      v126 = v124;
    }

    v128 = v124 & 0xFFFFFFFF00000000;
    v170 = &unk_284BB83A8;
    sub_238EA1758(&v172);
    sub_238EA1758(&v171);
  }

  else
  {
    v128 = 0xBC5A00000000;
    v127 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v126 = 11;
  }

  sub_238EA1758(&v133);
  sub_238EA1790(&v134);
  v130 = *MEMORY[0x277D85DE8];
  v131 = v126 | v128;
  v132 = v127;
  result.mFile = v132;
  result.mError = v131;
  result.mLine = HIDWORD(v131);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xBC7700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end