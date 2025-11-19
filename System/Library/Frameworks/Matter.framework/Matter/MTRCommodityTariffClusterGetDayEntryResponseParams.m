@interface MTRCommodityTariffClusterGetDayEntryResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRCommodityTariffClusterGetDayEntryResponseParams)init;
- (MTRCommodityTariffClusterGetDayEntryResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRCommodityTariffClusterGetDayEntryResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterGetDayEntryResponseParams);
  v5 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
  [(MTRCommodityTariffClusterGetDayEntryResponseParams *)v4 setDayEntry:v5];

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

- (MTRCommodityTariffClusterGetDayEntryResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = MTRCommodityTariffClusterGetDayEntryResponseParams;
  v7 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)&v19 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:1792 commandID:1 error:a4];
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

    sub_238DD3F98(v8, v9, a4);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v18);
LABEL_10:

  return v10;
}

- (MTRCommodityTariffClusterGetDayEntryResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRCommodityTariffClusterGetDayEntryResponseParams;
  v4 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  v5 = objc_opt_new();
  [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self setDayEntry:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a3];
  v7 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
  [v7 setDayEntryID:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a3 + 2)];
  v9 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
  [v9 setStartTime:v8];

  if (*(a3 + 6) == 1)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(a3 + 6)];
    v11 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
    [v11 setDuration:v10];
  }

  else
  {
    v10 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
    [v10 setDuration:0];
  }

  if (*(a3 + 10) == 1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithShort:*sub_238E0A934(a3 + 10)];
    v13 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
    [v13 setRandomizationOffset:v12];
  }

  else
  {
    v12 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
    [v12 setRandomizationOffset:0];
  }

  v15 = *(a3 + 14);
  v14 = a3 + 14;
  if (v15 == 1)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v14)];
    v17 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
    [v17 setRandomizationType:v16];
  }

  else
  {
    v16 = [(MTRCommodityTariffClusterGetDayEntryResponseParams *)self dayEntry];
    [v16 setRandomizationType:0];
  }

  v18 = 0;
  v19 = 0;
  result.mFile = v19;
  result.mError = v18;
  result.mLine = HIDWORD(v18);
  return result;
}

@end