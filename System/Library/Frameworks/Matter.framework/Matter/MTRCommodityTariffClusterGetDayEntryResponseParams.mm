@interface MTRCommodityTariffClusterGetDayEntryResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRCommodityTariffClusterGetDayEntryResponseParams)init;
- (MTRCommodityTariffClusterGetDayEntryResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRCommodityTariffClusterGetDayEntryResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommodityTariffClusterGetDayEntryResponseParams

- (MTRCommodityTariffClusterGetDayEntryResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRCommodityTariffClusterGetDayEntryResponseParams;
  v2 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dayEntry = v2->_dayEntry;
    v2->_dayEntry = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterGetDayEntryResponseParams);
  dayEntry = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
  [(MTRCommodityTariffClusterGetDayEntryResponseParams *)v4 setDayEntry:dayEntry];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: dayEntry:%@ >", v5, self->_dayEntry];;

  return v6;
}

- (MTRCommodityTariffClusterGetDayEntryResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = MTRCommodityTariffClusterGetDayEntryResponseParams;
  v7 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)&v19 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:1792 commandID:1 error:error];
  if (v18)
  {
    sub_2393C5AAC(v17);
    sub_2393C5ADC(v17, *(v18 + 1), *(v18 + 3));
    v8 = sub_2393C6FD0(v17, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v8 = sub_238F0BB28(&v12, v17);
      if (!v8)
      {
        v8 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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
  sub_238EA1758(&v18);
LABEL_10:

  return v10;
}

- (MTRCommodityTariffClusterGetDayEntryResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRCommodityTariffClusterGetDayEntryResponseParams;
  v4 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v5 = objc_opt_new();
  [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self setDayEntry:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*struct];
  dayEntry = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
  [dayEntry setDayEntryID:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 2)];
  dayEntry2 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
  [dayEntry2 setStartTime:v8];

  if (*(struct + 6) == 1)
  {
    dayEntry4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(struct + 6)];
    dayEntry3 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
    [dayEntry3 setDuration:dayEntry4];
  }

  else
  {
    dayEntry4 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
    [dayEntry4 setDuration:0];
  }

  if (*(struct + 10) == 1)
  {
    dayEntry6 = [MEMORY[0x277CCABB0] numberWithShort:*sub_238E0A934(struct + 10)];
    dayEntry5 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
    [dayEntry5 setRandomizationOffset:dayEntry6];
  }

  else
  {
    dayEntry6 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
    [dayEntry6 setRandomizationOffset:0];
  }

  v15 = *(struct + 14);
  v14 = struct + 14;
  if (v15 == 1)
  {
    dayEntry8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v14)];
    dayEntry7 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
    [dayEntry7 setRandomizationType:dayEntry8];
  }

  else
  {
    dayEntry8 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
    [dayEntry8 setRandomizationType:0];
  }

  v18 = 0;
  v19 = 0;
  result.mFile = v19;
  result.mError = v18;
  result.mLine = HIDWORD(v18);
  return result;
}

@end