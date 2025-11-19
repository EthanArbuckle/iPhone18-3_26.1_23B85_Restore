@interface MTRUnitTestingClusterTestStructArrayArgumentResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRUnitTestingClusterTestStructArrayArgumentResponseParams)init;
- (MTRUnitTestingClusterTestStructArrayArgumentResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRUnitTestingClusterTestStructArrayArgumentResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestStructArrayArgumentResponseParams

- (MTRUnitTestingClusterTestStructArrayArgumentResponseParams)init
{
  v15.receiver = self;
  v15.super_class = MTRUnitTestingClusterTestStructArrayArgumentResponseParams;
  v2 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)&v15 init];
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
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestStructArrayArgumentResponseParams);
  v5 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self arg1];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setArg1:v5];

  v6 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self arg2];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setArg2:v6];

  v7 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self arg3];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setArg3:v7];

  v8 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self arg4];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setArg4:v8];

  v9 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self arg5];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setArg5:v9];

  v10 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self arg6];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setArg6:v10];

  v11 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 setTimedInvokeTimeoutMs:v11];

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

- (MTRUnitTestingClusterTestStructArrayArgumentResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v19.receiver = self;
  v19.super_class = MTRUnitTestingClusterTestStructArrayArgumentResponseParams;
  v7 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)&v19 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:4294048773 commandID:3 error:error];
  if (v18)
  {
    sub_2393C5AAC(v17);
    sub_2393C5ADC(v8, *(v18 + 1), *(v18 + 3));
    v9 = sub_2393C6FD0(v17, 256);
    if (!v9)
    {
      sub_2393C5AAC(v13);
      sub_2393C5ADC(v13, 0, 0);
      sub_2393C5AAC(v14);
      sub_2393C5ADC(v14, 0, 0);
      sub_2393C5AAC(v15);
      sub_2393C5ADC(v15, 0, 0);
      sub_2393C5AAC(v16);
      sub_2393C5ADC(v16, 0, 0);
      v16[36] = 0;
      v9 = sub_238F2FEB4(v13, v17);
      if (!v9)
      {
        v9 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v7 _setFieldsFromDecodableStruct:v13];
        if (!v9)
        {
          v11 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v9, v10, error);
  }

  v11 = 0;
LABEL_8:
  sub_238EA1758(&v18);
LABEL_10:

  return v11;
}

- (MTRUnitTestingClusterTestStructArrayArgumentResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterTestStructArrayArgumentResponseParams;
  v4 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3
{
  v4 = objc_opt_new();
  v69 = a3;
  v71 = v4;
  sub_238EA4A78(&v85, a3);
  while (2)
  {
    if (sub_238EA1A80(&v85) && sub_238EA4B40(&v85))
    {
      v5 = objc_opt_new();
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v88];
      [v5 setA:v6];

      v7 = [MEMORY[0x277CCABB0] numberWithBool:v89];
      [v5 setB:v7];

      v8 = objc_opt_new();
      [v5 setC:v8];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v91];
      v10 = [v5 c];
      [v10 setA:v9];

      v11 = [MEMORY[0x277CCABB0] numberWithBool:BYTE1(v91)];
      v12 = [v5 c];
      [v12 setB:v11];

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v91)];
      v14 = [v5 c];
      [v14 setC:v13];

      v15 = [MEMORY[0x277CBEA90] dataWithBytes:v92 length:v93];
      v16 = [v5 c];
      [v16 setD:v15];

      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v94 length:v95 encoding:4];
      v18 = [v5 c];
      [v18 setE:v17];

      v19 = [v5 c];
      v20 = [v19 e];

      if (v20)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v96)];
        v22 = [v5 c];
        [v22 setF:v21];

        LODWORD(v23) = HIDWORD(v96);
        v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
        v25 = [v5 c];
        [v25 setG:v24];

        v26 = [MEMORY[0x277CCABB0] numberWithDouble:v97];
        v27 = [v5 c];
        [v27 setH:v26];

        if (v98[0] == 1)
        {
          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v98)];
          v29 = [v5 c];
          [v29 setI:v28];
        }

        else
        {
          v28 = [v5 c];
          [v28 setI:0];
        }

        v30 = objc_opt_new();
        sub_238EA4C98(&v73, &v99);
        while (sub_238EA1A80(&v73) && sub_238EA4CF8(&v73))
        {
          v31 = objc_opt_new();
          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v76];
          [v31 setA:v32];

          v33 = [MEMORY[0x277CCABB0] numberWithBool:BYTE1(v76)];
          [v31 setB:v33];

          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v76)];
          [v31 setC:v34];

          v35 = [MEMORY[0x277CBEA90] dataWithBytes:v77 length:v78];
          [v31 setD:v35];

          v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v79 length:v80 encoding:4];
          [v31 setE:v36];

          v37 = [v31 e];

          if (!v37)
          {

            v43 = 0xAE5100000000;
            v47 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
            v48 = 47;
            goto LABEL_36;
          }

          v38 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v81];
          [v31 setF:v38];

          LODWORD(v39) = v82;
          v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
          [v31 setG:v40];

          v41 = [MEMORY[0x277CCABB0] numberWithDouble:v83];
          [v31 setH:v41];

          if (v84[0] == 1)
          {
            v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v84)];
            [v31 setI:v42];
          }

          else
          {
            [v31 setI:0];
          }

          [v30 addObject:v31];
        }

        if (v73 == 33 || (v43 = v73, !v73))
        {
          [v5 setD:v30];

          v30 = objc_opt_new();
          sub_2393C5AAC(v75);
          v73 = 0;
          v74 = 0;
          sub_2393C5BDC(v75, &v100);
          while (sub_238E72E88(&v73))
          {
            v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v76];
            [v30 addObject:v44];
          }

          if (v73 == 33 || (v43 = v73, !v73))
          {
            [v5 setE:v30];

            v30 = objc_opt_new();
            sub_2393C5AAC(v75);
            v73 = 0;
            v74 = 0;
            sub_2393C5BDC(v75, &v101);
            v76 = 0;
            v77 = 0;
            while (sub_238EA1A80(&v73) && sub_238EA49F4(&v73))
            {
              v45 = [MEMORY[0x277CBEA90] dataWithBytes:v76 length:v77];
              [v30 addObject:v45];
            }

            if (v73 == 33 || (v43 = v73, !v73))
            {
              [v5 setF:v30];

              v30 = objc_opt_new();
              sub_2393C5AAC(v75);
              v73 = 0;
              v74 = 0;
              sub_2393C5BDC(v75, &v102);
              while (sub_238E0D91C(&v73))
              {
                v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v76];
                [v30 addObject:v46];
              }

              if (v73 == 33 || (v43 = v73, !v73))
              {
                [v5 setG:v30];

                [v71 addObject:v5];
                v4 = v71;
                continue;
              }
            }
          }
        }

        v47 = v74;
        v48 = v43;
LABEL_36:
      }

      else
      {
        v43 = 0xAE3900000000;
        v47 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
        v48 = 47;
      }

LABEL_38:
      v4 = v71;
    }

    else
    {
      if (v85 != 33)
      {
        v43 = v85;
        if (v85)
        {
          goto LABEL_42;
        }
      }

      [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self setArg1:v4];

      v71 = objc_opt_new();
      sub_238EA4C98(&v85, a3 + 72);
      while (sub_238EA1A80(&v85) && sub_238EA4CF8(&v85))
      {
        v51 = objc_opt_new();
        v52 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v88];
        [v51 setA:v52];

        v53 = [MEMORY[0x277CCABB0] numberWithBool:v89];
        [v51 setB:v53];

        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v90];
        [v51 setC:v54];

        v55 = [MEMORY[0x277CBEA90] dataWithBytes:v91 length:v92];
        [v51 setD:v55];

        v56 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v93 length:v94 encoding:4];
        [v51 setE:v56];

        v57 = [v51 e];

        if (!v57)
        {

          v43 = 0xAEA800000000;
          v47 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
          v48 = 47;
          goto LABEL_38;
        }

        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v95];
        [v51 setF:v58];

        LODWORD(v59) = HIDWORD(v95);
        v60 = [MEMORY[0x277CCABB0] numberWithFloat:v59];
        [v51 setG:v60];

        v61 = [MEMORY[0x277CCABB0] numberWithDouble:v96];
        [v51 setH:v61];

        if (LOBYTE(v97) == 1)
        {
          v62 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(&v97)];
          [v51 setI:v62];
        }

        else
        {
          [v51 setI:0];
        }

        [v71 addObject:v51];
      }

      if (v85 != 33)
      {
        v43 = v85;
        if (v85)
        {
          goto LABEL_60;
        }
      }

      [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self setArg2:v71];

      v71 = objc_opt_new();
      sub_2393C5AAC(v87);
      v85 = 0;
      v86 = 0;
      sub_2393C5BDC(v87, a3 + 144);
      while (sub_238E8A35C(&v85))
      {
        v63 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v88];
        [v71 addObject:v63];
      }

      if (v85 != 33)
      {
        v43 = v85;
        if (v85)
        {
LABEL_60:
          v47 = v86;
          v48 = v43;
          goto LABEL_38;
        }
      }

      [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self setArg3:v71];

      v4 = objc_opt_new();
      v72 = v4;
      sub_2393C5AAC(v87);
      v85 = 0;
      v86 = 0;
      sub_2393C5BDC(v87, a3 + 216);
      while (1)
      {
        v64 = sub_238EA1A80(&v85);
        LODWORD(v65) = v85;
        if (v85)
        {
          v64 = 0;
        }

        if (!v64)
        {
          break;
        }

        v88 = 0;
        v65 = sub_2393C5CE4(v87, &v88);
        v85 = v65;
        v86 = v66;
        if (v65)
        {
          break;
        }

        v67 = [MEMORY[0x277CCABB0] numberWithBool:v88];
        [v72 addObject:v67];

        v4 = v72;
      }

      if (v65 != 33 && (v43 = v85, v85))
      {
LABEL_42:
        v47 = v86;
        v48 = v43;
      }

      else
      {
        [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self setArg4:v4];

        v68 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a3 + 288)];
        [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self setArg5:v68];

        v4 = [MEMORY[0x277CCABB0] numberWithBool:v69[289]];
        [(MTRUnitTestingClusterTestStructArrayArgumentResponseParams *)self setArg6:v4];
        v47 = 0;
        v43 = 0;
        v48 = 0;
      }
    }

    break;
  }

  v49 = v43 & 0xFFFFFFFF00000000 | v48;
  v50 = v47;
  result.mFile = v50;
  result.mError = v49;
  result.mLine = HIDWORD(v49);
  return result;
}

@end