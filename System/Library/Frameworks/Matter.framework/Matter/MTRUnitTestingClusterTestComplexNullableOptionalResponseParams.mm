@interface MTRUnitTestingClusterTestComplexNullableOptionalResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRUnitTestingClusterTestComplexNullableOptionalResponseParams)init;
- (MTRUnitTestingClusterTestComplexNullableOptionalResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRUnitTestingClusterTestComplexNullableOptionalResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestComplexNullableOptionalResponseParams

- (MTRUnitTestingClusterTestComplexNullableOptionalResponseParams)init
{
  v34.receiver = self;
  v34.super_class = MTRUnitTestingClusterTestComplexNullableOptionalResponseParams;
  v2 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)&v34 init];
  v3 = v2;
  if (v2)
  {
    nullableIntWasNull = v2->_nullableIntWasNull;
    v2->_nullableIntWasNull = &unk_284C3E4C8;

    nullableIntValue = v3->_nullableIntValue;
    v3->_nullableIntValue = 0;

    optionalIntWasPresent = v3->_optionalIntWasPresent;
    v3->_optionalIntWasPresent = &unk_284C3E4C8;

    optionalIntValue = v3->_optionalIntValue;
    v3->_optionalIntValue = 0;

    nullableOptionalIntWasPresent = v3->_nullableOptionalIntWasPresent;
    v3->_nullableOptionalIntWasPresent = &unk_284C3E4C8;

    nullableOptionalIntWasNull = v3->_nullableOptionalIntWasNull;
    v3->_nullableOptionalIntWasNull = 0;

    nullableOptionalIntValue = v3->_nullableOptionalIntValue;
    v3->_nullableOptionalIntValue = 0;

    nullableStringWasNull = v3->_nullableStringWasNull;
    v3->_nullableStringWasNull = &unk_284C3E4C8;

    nullableStringValue = v3->_nullableStringValue;
    v3->_nullableStringValue = 0;

    optionalStringWasPresent = v3->_optionalStringWasPresent;
    v3->_optionalStringWasPresent = &unk_284C3E4C8;

    optionalStringValue = v3->_optionalStringValue;
    v3->_optionalStringValue = 0;

    nullableOptionalStringWasPresent = v3->_nullableOptionalStringWasPresent;
    v3->_nullableOptionalStringWasPresent = &unk_284C3E4C8;

    nullableOptionalStringWasNull = v3->_nullableOptionalStringWasNull;
    v3->_nullableOptionalStringWasNull = 0;

    nullableOptionalStringValue = v3->_nullableOptionalStringValue;
    v3->_nullableOptionalStringValue = 0;

    nullableStructWasNull = v3->_nullableStructWasNull;
    v3->_nullableStructWasNull = &unk_284C3E4C8;

    nullableStructValue = v3->_nullableStructValue;
    v3->_nullableStructValue = 0;

    optionalStructWasPresent = v3->_optionalStructWasPresent;
    v3->_optionalStructWasPresent = &unk_284C3E4C8;

    optionalStructValue = v3->_optionalStructValue;
    v3->_optionalStructValue = 0;

    nullableOptionalStructWasPresent = v3->_nullableOptionalStructWasPresent;
    v3->_nullableOptionalStructWasPresent = &unk_284C3E4C8;

    nullableOptionalStructWasNull = v3->_nullableOptionalStructWasNull;
    v3->_nullableOptionalStructWasNull = 0;

    nullableOptionalStructValue = v3->_nullableOptionalStructValue;
    v3->_nullableOptionalStructValue = 0;

    nullableListWasNull = v3->_nullableListWasNull;
    v3->_nullableListWasNull = &unk_284C3E4C8;

    nullableListValue = v3->_nullableListValue;
    v3->_nullableListValue = 0;

    optionalListWasPresent = v3->_optionalListWasPresent;
    v3->_optionalListWasPresent = &unk_284C3E4C8;

    optionalListValue = v3->_optionalListValue;
    v3->_optionalListValue = 0;

    nullableOptionalListWasPresent = v3->_nullableOptionalListWasPresent;
    v3->_nullableOptionalListWasPresent = &unk_284C3E4C8;

    nullableOptionalListWasNull = v3->_nullableOptionalListWasNull;
    v3->_nullableOptionalListWasNull = 0;

    nullableOptionalListValue = v3->_nullableOptionalListValue;
    v3->_nullableOptionalListValue = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams);
  v5 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableIntWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableIntWasNull:v5];

  v6 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableIntValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableIntValue:v6];

  v7 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalIntWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalIntWasPresent:v7];

  v8 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalIntValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalIntValue:v8];

  v9 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalIntWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalIntWasPresent:v9];

  v10 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalIntWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalIntWasNull:v10];

  v11 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalIntValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalIntValue:v11];

  v12 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStringWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableStringWasNull:v12];

  v13 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStringValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableStringValue:v13];

  v14 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStringWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalStringWasPresent:v14];

  v15 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStringValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalStringValue:v15];

  v16 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStringWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalStringWasPresent:v16];

  v17 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStringWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalStringWasNull:v17];

  v18 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStringValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalStringValue:v18];

  v19 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableStructWasNull:v19];

  v20 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableStructValue:v20];

  v21 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalStructWasPresent:v21];

  v22 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalStructValue:v22];

  v23 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalStructWasPresent:v23];

  v24 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalStructWasNull:v24];

  v25 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalStructValue:v25];

  v26 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableListWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableListWasNull:v26];

  v27 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableListValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableListValue:v27];

  v28 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalListWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalListWasPresent:v28];

  v29 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalListValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalListValue:v29];

  v30 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalListWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalListWasPresent:v30];

  v31 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalListWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalListWasNull:v31];

  v32 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalListValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalListValue:v32];

  v33 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setTimedInvokeTimeoutMs:v33];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nullableIntWasNull:%@ nullableIntValue:%@; optionalIntWasPresent:%@; optionalIntValue:%@; nullableOptionalIntWasPresent:%@; nullableOptionalIntWasNull:%@; nullableOptionalIntValue:%@; nullableStringWasNull:%@; nullableStringValue:%@; optionalStringWasPresent:%@; optionalStringValue:%@; nullableOptionalStringWasPresent:%@; nullableOptionalStringWasNull:%@; nullableOptionalStringValue:%@; nullableStructWasNull:%@; nullableStructValue:%@; optionalStructWasPresent:%@; optionalStructValue:%@; nullableOptionalStructWasPresent:%@; nullableOptionalStructWasNull:%@; nullableOptionalStructValue:%@; nullableListWasNull:%@; nullableListValue:%@; optionalListWasPresent:%@; optionalListValue:%@; nullableOptionalListWasPresent:%@; nullableOptionalListWasNull:%@; nullableOptionalListValue:%@; >", v5, self->_nullableIntWasNull, self->_nullableIntValue, self->_optionalIntWasPresent, self->_optionalIntValue, self->_nullableOptionalIntWasPresent, self->_nullableOptionalIntWasNull, self->_nullableOptionalIntValue, self->_nullableStringWasNull, self->_nullableStringValue, self->_optionalStringWasPresent, self->_optionalStringValue, self->_nullableOptionalStringWasPresent, self->_nullableOptionalStringWasNull, self->_nullableOptionalStringValue, self->_nullableStructWasNull, self->_nullableStructValue, self->_optionalStructWasPresent, self->_optionalStructValue, self->_nullableOptionalStructWasPresent, self->_nullableOptionalStructWasNull, self->_nullableOptionalStructValue, self->_nullableListWasNull, self->_nullableListValue, self->_optionalListWasPresent, self->_optionalListValue, self->_nullableOptionalListWasPresent, self->_nullableOptionalListWasNull, self->_nullableOptionalListValue];;

  return v6;
}

- (MTRUnitTestingClusterTestComplexNullableOptionalResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v36.receiver = self;
  v36.super_class = MTRUnitTestingClusterTestComplexNullableOptionalResponseParams;
  v7 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)&v36 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:4294048773 commandID:7 error:error];
  if (v35)
  {
    sub_2393C5AAC(v34);
    sub_2393C5ADC(v8, *(v35 + 1), *(v35 + 3));
    v9 = sub_2393C6FD0(v34, 256);
    if (!v9)
    {
      v13[0] = 0;
      v13[2] = 0;
      v13[6] = 0;
      v13[8] = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v9 = sub_238F307A4(v13, v34);
      if (!v9)
      {
        v9 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v7 _setFieldsFromDecodableStruct:v13];
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
  sub_238EA1758(&v35);
LABEL_10:

  return v11;
}

- (MTRUnitTestingClusterTestComplexNullableOptionalResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterTestComplexNullableOptionalResponseParams;
  v4 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*a3];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableIntWasNull:v5];

  if (*(a3 + 2) == 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(a3 + 2)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableIntValue:v6];
  }

  else
  {
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableIntValue:0];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 6)];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalIntWasPresent:v7];

  if (*(a3 + 8) == 1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(a3 + 8)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalIntValue:v8];
  }

  else
  {
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalIntValue:0];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 12)];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalIntWasPresent:v9];

  if (*(a3 + 13) == 1)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:*sub_238DE36D8(a3 + 13)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalIntWasNull:v10];
  }

  else
  {
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalIntWasNull:0];
  }

  if (*(a3 + 16) == 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(a3 + 16)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalIntValue:v11];
  }

  else
  {
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalIntValue:0];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 20)];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableStringWasNull:v12];

  if (*(a3 + 24) != 1)
  {
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableStringValue:0];
LABEL_17:
    v17 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 48)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalStringWasPresent:v17];

    if (*(a3 + 56) == 1)
    {
      v18 = sub_238DE36B8(a3 + 56);
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v18 length:v18[1] encoding:4];
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalStringValue:v19];

      v20 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStringValue];

      if (!v20)
      {
        v16 = 0xB38B00000000;
        goto LABEL_53;
      }
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalStringValue:0];
    }

    v21 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 80)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStringWasPresent:v21];

    if (*(a3 + 81) == 1)
    {
      v22 = [MEMORY[0x277CCABB0] numberWithBool:*sub_238DE36D8(a3 + 81)];
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStringWasNull:v22];
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStringWasNull:0];
    }

    if (*(a3 + 88) == 1)
    {
      v23 = sub_238DE36B8(a3 + 88);
      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v23 length:v23[1] encoding:4];
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStringValue:v24];

      v25 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStringValue];

      if (!v25)
      {
        v16 = 0xB3A000000000;
        goto LABEL_53;
      }
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStringValue:0];
    }

    v26 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 112)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableStructWasNull:v26];

    if (*(a3 + 120) == 1)
    {
      v27 = objc_opt_new();
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableStructValue:v27];

      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36B8(a3 + 120)];
      v29 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [v29 setA:v28];

      v30 = [MEMORY[0x277CCABB0] numberWithBool:sub_238DE36B8(a3 + 120)[1]];
      v31 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [v31 setB:v30];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(a3 + 120)[2]];
      v33 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [v33 setC:v32];

      v34 = sub_238DE36B8(a3 + 120);
      v35 = [MEMORY[0x277CBEA90] dataWithBytes:*(v34 + 1) length:*(v34 + 2)];
      v36 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [v36 setD:v35];

      v37 = sub_238DE36B8(a3 + 120);
      v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v37 + 3) length:*(v37 + 4) encoding:4];
      v39 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [v39 setE:v38];

      v40 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      v41 = [v40 e];

      if (!v41)
      {
        v16 = 0xB3B300000000;
        goto LABEL_53;
      }

      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(a3 + 120)[40]];
      v43 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [v43 setF:v42];

      v44 = MEMORY[0x277CCABB0];
      LODWORD(v45) = *(sub_238DE36B8(a3 + 120) + 11);
      v46 = [v44 numberWithFloat:v45];
      v47 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [v47 setG:v46];

      v48 = [MEMORY[0x277CCABB0] numberWithDouble:*(sub_238DE36B8(a3 + 120) + 6)];
      v49 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [v49 setH:v48];

      if (sub_238DE36B8(a3 + 120)[56] == 1)
      {
        v50 = MEMORY[0x277CCABB0];
        v51 = sub_238DE36B8(a3 + 120);
        v52 = [v50 numberWithUnsignedChar:*sub_238DE36D8(v51 + 56)];
        v53 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
        [v53 setI:v52];
      }

      else
      {
        v52 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
        [v52 setI:0];
      }
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableStructValue:0];
    }

    v54 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 192)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalStructWasPresent:v54];

    if (*(a3 + 200) == 1)
    {
      v55 = objc_opt_new();
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalStructValue:v55];

      v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36B8(a3 + 200)];
      v57 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [v57 setA:v56];

      v58 = [MEMORY[0x277CCABB0] numberWithBool:sub_238DE36B8(a3 + 200)[1]];
      v59 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [v59 setB:v58];

      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(a3 + 200)[2]];
      v61 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [v61 setC:v60];

      v62 = sub_238DE36B8(a3 + 200);
      v63 = [MEMORY[0x277CBEA90] dataWithBytes:*(v62 + 1) length:*(v62 + 2)];
      v64 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [v64 setD:v63];

      v65 = sub_238DE36B8(a3 + 200);
      v66 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v65 + 3) length:*(v65 + 4) encoding:4];
      v67 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [v67 setE:v66];

      v68 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      v69 = [v68 e];

      if (!v69)
      {
        v16 = 0xB3CE00000000;
        goto LABEL_53;
      }

      v70 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(a3 + 200)[40]];
      v71 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [v71 setF:v70];

      v72 = MEMORY[0x277CCABB0];
      LODWORD(v73) = *(sub_238DE36B8(a3 + 200) + 11);
      v74 = [v72 numberWithFloat:v73];
      v75 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [v75 setG:v74];

      v76 = [MEMORY[0x277CCABB0] numberWithDouble:*(sub_238DE36B8(a3 + 200) + 6)];
      v77 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [v77 setH:v76];

      if (sub_238DE36B8(a3 + 200)[56] == 1)
      {
        v78 = MEMORY[0x277CCABB0];
        v79 = sub_238DE36B8(a3 + 200);
        v80 = [v78 numberWithUnsignedChar:*sub_238DE36D8(v79 + 56)];
        v81 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
        [v81 setI:v80];
      }

      else
      {
        v80 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
        [v80 setI:0];
      }
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalStructValue:0];
    }

    v82 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 272)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStructWasPresent:v82];

    if (*(a3 + 273) == 1)
    {
      v83 = [MEMORY[0x277CCABB0] numberWithBool:*sub_238DE36D8(a3 + 273)];
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStructWasNull:v83];
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStructWasNull:0];
    }

    if (*(a3 + 280) == 1)
    {
      v84 = objc_opt_new();
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStructValue:v84];

      v85 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36B8(a3 + 280)];
      v86 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [v86 setA:v85];

      v87 = [MEMORY[0x277CCABB0] numberWithBool:sub_238DE36B8(a3 + 280)[1]];
      v88 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [v88 setB:v87];

      v89 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(a3 + 280)[2]];
      v90 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [v90 setC:v89];

      v91 = sub_238DE36B8(a3 + 280);
      v92 = [MEMORY[0x277CBEA90] dataWithBytes:*(v91 + 1) length:*(v91 + 2)];
      v93 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [v93 setD:v92];

      v94 = sub_238DE36B8(a3 + 280);
      v95 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v94 + 3) length:*(v94 + 4) encoding:4];
      v96 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [v96 setE:v95];

      v97 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      v98 = [v97 e];

      if (!v98)
      {
        v16 = 0xB3F000000000;
        goto LABEL_53;
      }

      v99 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(a3 + 280)[40]];
      v100 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [v100 setF:v99];

      v101 = MEMORY[0x277CCABB0];
      LODWORD(v102) = *(sub_238DE36B8(a3 + 280) + 11);
      v103 = [v101 numberWithFloat:v102];
      v104 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [v104 setG:v103];

      v105 = [MEMORY[0x277CCABB0] numberWithDouble:*(sub_238DE36B8(a3 + 280) + 6)];
      v106 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [v106 setH:v105];

      if (sub_238DE36B8(a3 + 280)[56] == 1)
      {
        v107 = MEMORY[0x277CCABB0];
        v108 = sub_238DE36B8(a3 + 280);
        v109 = [v107 numberWithUnsignedChar:*sub_238DE36D8(v108 + 56)];
        v110 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
        [v110 setI:v109];
      }

      else
      {
        v109 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
        [v109 setI:0];
      }
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStructValue:0];
    }

    v115 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 352)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableListWasNull:v115];

    if (*(a3 + 360) == 1)
    {
      v116 = objc_opt_new();
      v117 = sub_238DE36B8(a3 + 360);
      sub_2393C5AAC(v128);
      v126 = 0;
      v127 = 0;
      sub_2393C5BDC(v128, v117);
      while (sub_238E8A35C(&v126))
      {
        v118 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v129];
        [v116 addObject:v118];
      }

      if (v126 != 33)
      {
        v112 = v126;
        if (v126)
        {
          goto LABEL_83;
        }
      }

      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableListValue:v116, v126];
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableListValue:0];
    }

    v119 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 440)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalListWasPresent:v119];

    if (*(a3 + 448) == 1)
    {
      v116 = objc_opt_new();
      v120 = sub_238DE36B8(a3 + 448);
      sub_2393C5AAC(v128);
      v126 = 0;
      v127 = 0;
      sub_2393C5BDC(v128, v120);
      while (sub_238E8A35C(&v126))
      {
        v121 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v129];
        [v116 addObject:v121];
      }

      if (v126 != 33)
      {
        v112 = v126;
        if (v126)
        {
          goto LABEL_83;
        }
      }

      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalListValue:v116];
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalListValue:0];
    }

    v122 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 528)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalListWasPresent:v122];

    if (*(a3 + 529) == 1)
    {
      v123 = [MEMORY[0x277CCABB0] numberWithBool:*sub_238DE36D8(a3 + 529)];
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalListWasNull:v123];
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalListWasNull:0];
    }

    if (*(a3 + 536) == 1)
    {
      v116 = objc_opt_new();
      v124 = sub_238DE36B8(a3 + 536);
      sub_2393C5AAC(v128);
      v126 = 0;
      v127 = 0;
      sub_2393C5BDC(v128, v124);
      while (sub_238E8A35C(&v126))
      {
        v125 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v129];
        [v116 addObject:v125];
      }

      if (v126 != 33)
      {
        v112 = v126;
        if (v126)
        {
LABEL_83:
          v111 = v127;
          v16 = v112 & 0xFFFFFFFF00000000;

          goto LABEL_54;
        }
      }

      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalListValue:v116];
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalListValue:0];
    }

    v111 = 0;
    v16 = 0;
    LODWORD(v112) = 0;
    goto LABEL_54;
  }

  v13 = sub_238DE36B8(a3 + 24);
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v13 length:v13[1] encoding:4];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableStringValue:v14];

  v15 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStringValue];

  if (v15)
  {
    goto LABEL_17;
  }

  v16 = 0xB37D00000000;
LABEL_53:
  v111 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  LODWORD(v112) = 47;
LABEL_54:
  v113 = v112 | v16;
  v114 = v111;
  result.mFile = v114;
  result.mError = v113;
  result.mLine = HIDWORD(v113);
  return result;
}

@end