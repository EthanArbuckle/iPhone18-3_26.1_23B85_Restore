@interface MTRThermostatClusterAtomicResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRThermostatClusterAtomicResponseParams)init;
- (MTRThermostatClusterAtomicResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRThermostatClusterAtomicResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThermostatClusterAtomicResponseParams

- (MTRThermostatClusterAtomicResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTRThermostatClusterAtomicResponseParams;
  v2 = [(MTRThermostatClusterAtomicResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    statusCode = v2->_statusCode;
    v2->_statusCode = &unk_284C3E4C8;

    v5 = [MEMORY[0x277CBEA60] array];
    attributeStatus = v3->_attributeStatus;
    v3->_attributeStatus = v5;

    timeout = v3->_timeout;
    v3->_timeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThermostatClusterAtomicResponseParams);
  v5 = [(MTRThermostatClusterAtomicResponseParams *)self statusCode];
  [(MTRThermostatClusterAtomicResponseParams *)v4 setStatusCode:v5];

  v6 = [(MTRThermostatClusterAtomicResponseParams *)self attributeStatus];
  [(MTRThermostatClusterAtomicResponseParams *)v4 setAttributeStatus:v6];

  v7 = [(MTRThermostatClusterAtomicResponseParams *)self timeout];
  [(MTRThermostatClusterAtomicResponseParams *)v4 setTimeout:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: statusCode:%@ attributeStatus:%@; timeout:%@; >", v5, self->_statusCode, self->_attributeStatus, self->_timeout];;

  return v6;
}

- (MTRThermostatClusterAtomicResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = MTRThermostatClusterAtomicResponseParams;
  v7 = [(MTRThermostatClusterAtomicResponseParams *)&v16 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:513 commandID:253 error:a4];
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v14, *(v15 + 1), *(v15 + 3));
    v8 = sub_2393C6FD0(v14, 256);
    if (!v8)
    {
      v12[0] = 0;
      sub_2393C5AAC(v13);
      sub_2393C5ADC(v13, 0, 0);
      v13[72] = 0;
      v8 = sub_238F2A14C(v12, v14);
      if (!v8)
      {
        v8 = [(MTRThermostatClusterAtomicResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, a4);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v15);
LABEL_10:

  return v10;
}

- (MTRThermostatClusterAtomicResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRThermostatClusterAtomicResponseParams;
  v4 = [(MTRThermostatClusterAtomicResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRThermostatClusterAtomicResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*a3];
  [(MTRThermostatClusterAtomicResponseParams *)self setStatusCode:v5];

  v6 = objc_opt_new();
  sub_2393C5AAC(v20);
  v18 = 0;
  v19 = 0;
  sub_2393C5BDC(v20, a3 + 8);
  v21 = 0;
  v22 = 0;
  while (sub_238EA1A80(&v18) && sub_238EA3444(&v18))
  {
    v7 = objc_opt_new();
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v21];
    [v7 setAttributeID:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v22];
    [v7 setStatusCode:v9];

    [v6 addObject:v7];
  }

  if (v18 == 33 || (v10 = v18, !v18))
  {
    [(MTRThermostatClusterAtomicResponseParams *)self setAttributeStatus:v6, v18];

    v14 = *(a3 + 80);
    v13 = a3 + 80;
    if (v14 == 1)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v13)];
      [(MTRThermostatClusterAtomicResponseParams *)self setTimeout:v15];
    }

    else
    {
      [(MTRThermostatClusterAtomicResponseParams *)self setTimeout:0];
    }

    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  else
  {
    v11 = v19;
    v12 = v18 & 0xFFFFFFFF00000000;
  }

  v16 = v10 | v12;
  v17 = v11;
  result.mFile = v17;
  result.mError = v16;
  result.mLine = HIDWORD(v16);
  return result;
}

@end