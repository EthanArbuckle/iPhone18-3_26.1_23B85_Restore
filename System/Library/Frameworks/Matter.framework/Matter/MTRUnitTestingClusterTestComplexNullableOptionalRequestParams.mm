@interface MTRUnitTestingClusterTestComplexNullableOptionalRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRUnitTestingClusterTestComplexNullableOptionalRequestParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams);
  nullableInt = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableInt];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableInt:nullableInt];

  optionalInt = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalInt];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setOptionalInt:optionalInt];

  nullableOptionalInt = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalInt];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableOptionalInt:nullableOptionalInt];

  nullableString = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableString];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableString:nullableString];

  optionalString = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalString];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setOptionalString:optionalString];

  nullableOptionalString = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalString];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableOptionalString:nullableOptionalString];

  nullableStruct = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableStruct:nullableStruct];

  optionalStruct = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setOptionalStruct:optionalStruct];

  nullableOptionalStruct = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableOptionalStruct:nullableOptionalStruct];

  nullableList = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableList];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableList:nullableList];

  optionalList = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalList];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setOptionalList:optionalList];

  nullableOptionalList = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalList];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setNullableOptionalList:nullableOptionalList];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v174 = *MEMORY[0x277D85DE8];
  LOBYTE(unsignedShortValue) = 0;
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
  nullableInt = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableInt];
  v6 = nullableInt == 0;

  if (v6)
  {
    if (v137 == 1)
    {
      v137 = 0;
    }
  }

  else
  {
    unsignedShortValue = 0;
    v137 = 1;
    nullableInt2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableInt];
    unsignedShortValue = [nullableInt2 unsignedShortValue];
  }

  optionalInt = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalInt];
  v9 = optionalInt == 0;

  if (!v9)
  {
    v138 = 1;
    unsignedShortValue2 = 0;
    optionalInt2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalInt];
    unsignedShortValue2 = [optionalInt2 unsignedShortValue];
  }

  nullableOptionalInt = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalInt];
  v12 = nullableOptionalInt == 0;

  if (!v12)
  {
    v140 = 1;
    v141 = 0;
    nullableOptionalInt2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalInt];
    v14 = nullableOptionalInt2 == 0;

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
      nullableOptionalInt3 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalInt];
      LOWORD(v141) = [nullableOptionalInt3 unsignedShortValue];
    }
  }

  nullableString = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableString];
  v17 = nullableString == 0;

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
    nullableString2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableString];
    v19 = nullableString2;
    sub_238DB9BD8(buf, [nullableString2 UTF8String], objc_msgSend(nullableString2, "lengthOfBytesUsingEncoding:", 4));

    v142 = *buf;
  }

  optionalString = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalString];
  v21 = optionalString == 0;

  if (!v21)
  {
    v144 = 1;
    v145 = 0uLL;
    optionalString2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalString];
    v23 = optionalString2;
    sub_238DB9BD8(buf, [optionalString2 UTF8String], objc_msgSend(optionalString2, "lengthOfBytesUsingEncoding:", 4));

    v145 = *buf;
  }

  nullableOptionalString = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalString];
  v25 = nullableOptionalString == 0;

  if (!v25)
  {
    v146 = 1;
    v148 = 0;
    v147 = 0uLL;
    nullableOptionalString2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalString];
    v27 = nullableOptionalString2 == 0;

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
      nullableOptionalString3 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalString];
      v29 = nullableOptionalString3;
      sub_238DB9BD8(buf, [nullableOptionalString3 UTF8String], objc_msgSend(nullableOptionalString3, "lengthOfBytesUsingEncoding:", 4));

      v147 = *buf;
    }
  }

  nullableStruct = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
  v31 = nullableStruct == 0;

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
    nullableStruct2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v33 = [nullableStruct2 a];
    LOBYTE(v149[0]) = [v33 unsignedCharValue];

    nullableStruct3 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v35 = [nullableStruct3 b];
    BYTE1(v149[0]) = [v35 BOOLValue];

    nullableStruct4 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v37 = [nullableStruct4 c];
    BYTE2(v149[0]) = [v37 unsignedCharValue];

    nullableStruct5 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v39 = [nullableStruct5 d];
    v40 = v39;
    sub_238DB6950(buf, [v39 bytes], objc_msgSend(v39, "length"));

    *&v149[1] = *buf;
    nullableStruct6 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v42 = [nullableStruct6 e];
    v43 = v42;
    sub_238DB9BD8(buf, [v42 UTF8String], objc_msgSend(v42, "lengthOfBytesUsingEncoding:", 4));

    *&v149[3] = *buf;
    nullableStruct7 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v45 = [nullableStruct7 f];
    LOBYTE(v149[5]) = [v45 unsignedCharValue];

    nullableStruct8 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v47 = [nullableStruct8 g];
    [v47 floatValue];
    HIDWORD(v149[5]) = v48;

    nullableStruct9 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v50 = [nullableStruct9 h];
    [v50 doubleValue];
    *&v150 = v51;

    nullableStruct10 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
    v53 = [nullableStruct10 i];
    LOBYTE(v50) = v53 == 0;

    if ((v50 & 1) == 0)
    {
      WORD4(v150) = 1;
      nullableStruct11 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableStruct];
      v55 = [nullableStruct11 i];
      BYTE9(v150) = [v55 unsignedCharValue];
    }
  }

  optionalStruct = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
  v57 = optionalStruct == 0;

  if (!v57)
  {
    v152 = 1;
    memset(v153, 0, sizeof(v153));
    v154 = 0u;
    optionalStruct2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v59 = [optionalStruct2 a];
    LOBYTE(v153[0]) = [v59 unsignedCharValue];

    optionalStruct3 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v61 = [optionalStruct3 b];
    BYTE1(v153[0]) = [v61 BOOLValue];

    optionalStruct4 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v63 = [optionalStruct4 c];
    BYTE2(v153[0]) = [v63 unsignedCharValue];

    optionalStruct5 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v65 = [optionalStruct5 d];
    v66 = v65;
    sub_238DB6950(buf, [v65 bytes], objc_msgSend(v65, "length"));

    *(v153 + 8) = *buf;
    optionalStruct6 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v68 = [optionalStruct6 e];
    v69 = v68;
    sub_238DB9BD8(buf, [v68 UTF8String], objc_msgSend(v68, "lengthOfBytesUsingEncoding:", 4));

    *(&v153[1] + 8) = *buf;
    optionalStruct7 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v71 = [optionalStruct7 f];
    BYTE8(v153[2]) = [v71 unsignedCharValue];

    optionalStruct8 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v73 = [optionalStruct8 g];
    [v73 floatValue];
    HIDWORD(v153[2]) = v74;

    optionalStruct9 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v76 = [optionalStruct9 h];
    [v76 doubleValue];
    *&v154 = v77;

    optionalStruct10 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
    v79 = [optionalStruct10 i];
    LOBYTE(v76) = v79 == 0;

    if ((v76 & 1) == 0)
    {
      WORD4(v154) = 1;
      optionalStruct11 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalStruct];
      v81 = [optionalStruct11 i];
      BYTE9(v154) = [v81 unsignedCharValue];
    }
  }

  nullableOptionalStruct = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
  v83 = nullableOptionalStruct == 0;

  if (!v83)
  {
    v155 = 1;
    v157 = 0u;
    memset(v156, 0, sizeof(v156));
    v158 = 0;
    nullableOptionalStruct2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
    v85 = nullableOptionalStruct2 == 0;

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
      nullableOptionalStruct3 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v87 = [nullableOptionalStruct3 a];
      LOBYTE(v156[0]) = [v87 unsignedCharValue];

      nullableOptionalStruct4 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v89 = [nullableOptionalStruct4 b];
      BYTE1(v156[0]) = [v89 BOOLValue];

      nullableOptionalStruct5 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v91 = [nullableOptionalStruct5 c];
      BYTE2(v156[0]) = [v91 unsignedCharValue];

      nullableOptionalStruct6 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v93 = [nullableOptionalStruct6 d];
      v94 = v93;
      sub_238DB6950(buf, [v93 bytes], objc_msgSend(v93, "length"));

      *&v156[1] = *buf;
      nullableOptionalStruct7 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v96 = [nullableOptionalStruct7 e];
      v97 = v96;
      sub_238DB9BD8(buf, [v96 UTF8String], objc_msgSend(v96, "lengthOfBytesUsingEncoding:", 4));

      *&v156[3] = *buf;
      nullableOptionalStruct8 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v99 = [nullableOptionalStruct8 f];
      LOBYTE(v156[5]) = [v99 unsignedCharValue];

      nullableOptionalStruct9 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v101 = [nullableOptionalStruct9 g];
      [v101 floatValue];
      HIDWORD(v156[5]) = v102;

      nullableOptionalStruct10 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v104 = [nullableOptionalStruct10 h];
      [v104 doubleValue];
      *&v157 = v105;

      nullableOptionalStruct11 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
      v107 = [nullableOptionalStruct11 i];
      LOBYTE(v104) = v107 == 0;

      if ((v104 & 1) == 0)
      {
        WORD4(v157) = 1;
        nullableOptionalStruct12 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalStruct];
        v109 = [nullableOptionalStruct12 i];
        BYTE9(v157) = [v109 unsignedCharValue];
      }
    }
  }

  nullableList = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableList];
  v111 = nullableList == 0;

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
    nullableList2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableList];
    v113 = [nullableList2 count] == 0;

    if (!v113)
    {
      operator new();
    }

    v159 = 0;
    v160 = 0;
  }

  optionalList = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalList];
  v115 = optionalList == 0;

  if (!v115)
  {
    v162 = 1;
    v163 = 0;
    v164 = 0;
    optionalList2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self optionalList];
    v117 = [optionalList2 count] == 0;

    if (!v117)
    {
      operator new();
    }

    v163 = 0;
    v164 = 0;
  }

  nullableOptionalList = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalList];
  v119 = nullableOptionalList == 0;

  if (!v119)
  {
    v165 = 1;
    v167 = 0;
    v168 = 0;
    v166 = 0;
    nullableOptionalList2 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalList];
    v121 = nullableOptionalList2 == 0;

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
      nullableOptionalList3 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self nullableOptionalList];
      v123 = [nullableOptionalList3 count] == 0;

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
    v124 = sub_238F30FA8(&unsignedShortValue, buf, 0x100uLL);
    v126 = v124;
    if (v124 || (v124 = sub_238DD2EFC(buf, &v133), v126 = v124, v124))
    {
      v127 = v125;
    }

    else
    {
      sub_238DD2F90(reader, &v133);
      v124 = sub_2393C7114(reader, 21, 256);
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterTestComplexNullableOptionalRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xBC7700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end