@interface MTREnergyEVSEClusterGetTargetsResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTREnergyEVSEClusterGetTargetsResponseParams)init;
- (MTREnergyEVSEClusterGetTargetsResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTREnergyEVSEClusterGetTargetsResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTREnergyEVSEClusterGetTargetsResponseParams

- (MTREnergyEVSEClusterGetTargetsResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTREnergyEVSEClusterGetTargetsResponseParams;
  v2 = [(MTREnergyEVSEClusterGetTargetsResponseParams *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    chargingTargetSchedules = v2->_chargingTargetSchedules;
    v2->_chargingTargetSchedules = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTREnergyEVSEClusterGetTargetsResponseParams);
  v5 = [(MTREnergyEVSEClusterGetTargetsResponseParams *)self chargingTargetSchedules];
  [(MTREnergyEVSEClusterGetTargetsResponseParams *)v4 setChargingTargetSchedules:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: chargingTargetSchedules:%@ >", v5, self->_chargingTargetSchedules];;

  return v6;
}

- (MTREnergyEVSEClusterGetTargetsResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = MTREnergyEVSEClusterGetTargetsResponseParams;
  v7 = [(MTREnergyEVSEClusterGetTargetsResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:153 commandID:0 error:a4];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      sub_2393C5AAC(v12);
      sub_2393C5ADC(v12, 0, 0);
      v8 = sub_238EFD1FC(v12, v13);
      if (!v8)
      {
        v8 = [(MTREnergyEVSEClusterGetTargetsResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTREnergyEVSEClusterGetTargetsResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTREnergyEVSEClusterGetTargetsResponseParams;
  v4 = [(MTREnergyEVSEClusterGetTargetsResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTREnergyEVSEClusterGetTargetsResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  sub_238EA2DBC(v23, a3);
  while (sub_238EA1A80(v23) && sub_238EA2E18(v23))
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v24];
    [v5 setDayOfWeekForSequence:v6];

    v7 = objc_opt_new();
    sub_2393C5AAC(v19);
    v17 = 0;
    v18 = 0;
    sub_2393C5BDC(v19, &v25);
    v20 = 0;
    v21[0] = 0;
    v22[0] = 0;
    while (sub_238EA1A80(&v17) && sub_238EA2EB8(&v17))
    {
      v8 = objc_opt_new();
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v20];
      [v8 setTargetTimeMinutesPastMidnight:v9];

      if (v21[0] == 1)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v21)];
        [v8 setTargetSoC:v10];
      }

      else
      {
        [v8 setTargetSoC:0];
      }

      if (v22[0] == 1)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_238DE36B8(v22)];
        [v8 setAddedEnergy:v11];
      }

      else
      {
        [v8 setAddedEnergy:0];
      }

      [v7 addObject:v8];
    }

    if (v17 != 33)
    {
      v12 = v17;
      if (v17)
      {
        v13 = v18;

        goto LABEL_22;
      }
    }

    [v5 setChargingTargets:v7];

    [v4 addObject:v5];
  }

  if (LODWORD(v23[0]) == 33 || (v12 = v23[0], !LODWORD(v23[0])))
  {
    [(MTREnergyEVSEClusterGetTargetsResponseParams *)self setChargingTargetSchedules:v4];

    v13 = 0;
    v12 = 0;
    goto LABEL_23;
  }

  v13 = v23[1];
LABEL_22:

LABEL_23:
  v14 = v12;
  v15 = v13;
  result.mFile = v15;
  result.mError = v14;
  result.mLine = HIDWORD(v14);
  return result;
}

@end