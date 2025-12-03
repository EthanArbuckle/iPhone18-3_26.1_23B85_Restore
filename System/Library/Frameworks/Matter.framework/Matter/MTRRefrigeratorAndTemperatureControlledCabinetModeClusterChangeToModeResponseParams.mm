@interface MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams)init;
- (MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams

- (MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams;
  v2 = [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)&v7 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    statusText = v3->_statusText;
    v3->_statusText = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams);
  status = [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)self status];
  [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)v4 setStatus:status];

  statusText = [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)self statusText];
  [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)v4 setStatusText:statusText];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ statusText:%@; >", v5, self->_status, self->_statusText];;

  return v6;
}

- (MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams;
  v7 = [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:82 commandID:1 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12[0] = 0;
      v12[8] = 0;
      v8 = sub_238F10038(v12, v13);
      if (!v8)
      {
        v8 = [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams;
  v4 = [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*struct];
  [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)self setStatus:v5];

  v7 = *(struct + 8);
  v6 = struct + 8;
  if (v7 != 1)
  {
    [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)self setStatusText:0];
    goto LABEL_5;
  }

  v8 = sub_238DE36B8(v6);
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v8 length:v8[1] encoding:4];
  [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)self setStatusText:v9];

  statusText = [(MTRRefrigeratorAndTemperatureControlledCabinetModeClusterChangeToModeResponseParams *)self statusText];

  if (statusText)
  {
LABEL_5:
    v12 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  v12 = 0x2F7900000000;
  v13 = 47;
LABEL_6:
  v14 = v13 | v12;
  result.mFile = v11;
  result.mError = v14;
  result.mLine = HIDWORD(v14);
  return result;
}

@end