@interface MTRCommodityPriceClusterGetDetailedForecastResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRCommodityPriceClusterGetDetailedForecastResponseParams)init;
- (MTRCommodityPriceClusterGetDetailedForecastResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRCommodityPriceClusterGetDetailedForecastResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommodityPriceClusterGetDetailedForecastResponseParams

- (MTRCommodityPriceClusterGetDetailedForecastResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRCommodityPriceClusterGetDetailedForecastResponseParams;
  v2 = [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    priceForecast = v2->_priceForecast;
    v2->_priceForecast = array;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityPriceClusterGetDetailedForecastResponseParams);
  priceForecast = [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)self priceForecast];
  [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)v4 setPriceForecast:priceForecast];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: priceForecast:%@ >", v5, self->_priceForecast];;

  return v6;
}

- (MTRCommodityPriceClusterGetDetailedForecastResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRCommodityPriceClusterGetDetailedForecastResponseParams;
  v7 = [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:149 commandID:3 error:error];
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
        v8 = [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRCommodityPriceClusterGetDetailedForecastResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRCommodityPriceClusterGetDetailedForecastResponseParams;
  v4 = [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  selfCopy = self;
  v27 = objc_opt_new();
  sub_238EA275C(v35, struct);
  v26 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  while (sub_238EA1A80(v35) && sub_238EA27B8(v35))
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v36];
    [v4 setPeriodStart:v5];

    if (v38)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v37];
      [v4 setPeriodEnd:v6];
    }

    else
    {
      [v4 setPeriodEnd:0];
    }

    if (v39[0] == 1)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_238DE36B8(v39)];
      [v4 setPrice:v7];
    }

    else
    {
      [v4 setPrice:0];
    }

    if (v40[0] == 1)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithShort:*sub_238E0A934(v40)];
      [v4 setPriceLevel:v8];
    }

    else
    {
      [v4 setPriceLevel:0];
    }

    if (v41[0] == 1)
    {
      v9 = sub_238DE36B8(v41);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v9 length:v9[1] encoding:4];
      [v4 setDescriptionString:v10];

      descriptionString = [v4 descriptionString];

      if (!descriptionString)
      {
        v23 = 0x410A00000000;
        v24 = 47;
        goto LABEL_35;
      }
    }

    else
    {
      [v4 setDescriptionString:0];
    }

    if (v42[0] == 1)
    {
      v12 = objc_opt_new();
      v13 = sub_238DE36B8(v42);
      sub_2393C5AAC(v30);
      v28 = 0;
      v29 = 0;
      sub_2393C5BDC(v30, v13);
      v31 = 0;
      v32 = 0;
      v33[0] = 0;
      v34[0] = 0;
      while (sub_238EA1A80(&v28) && sub_238EA2704(&v28))
      {
        v14 = objc_opt_new();
        v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v31];
        [v14 setPrice:v15];

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v32];
        [v14 setSource:v16];

        if (v33[0] == 1)
        {
          v17 = sub_238DE36B8(v33);
          v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v17 length:v17[1] encoding:4];
          [v14 setDescriptionString:v18];

          descriptionString2 = [v14 descriptionString];

          if (!descriptionString2)
          {

            v23 = 0x411D00000000;
            v26 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
            v24 = 47;
            goto LABEL_34;
          }
        }

        else
        {
          [v14 setDescriptionString:0];
        }

        if (v34[0] == 1)
        {
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v34)];
          [v14 setTariffComponentID:v20];
        }

        else
        {
          [v14 setTariffComponentID:0];
        }

        [v12 addObject:{v14, selfCopy}];
      }

      if (v28 == 33 || (v24 = v28, !v28))
      {
        [v4 setComponents:{v12, selfCopy}];

        goto LABEL_33;
      }

      v26 = v29;
      v23 = v28 & 0xFFFFFFFF00000000;
LABEL_34:

LABEL_35:
LABEL_36:

      v21 = v24 | v23;
      v22 = v26;
      goto LABEL_43;
    }

    [v4 setComponents:0];
LABEL_33:
    [v27 addObject:{v4, selfCopy}];
  }

  if (LODWORD(v35[0]) != 33)
  {
    v24 = LODWORD(v35[0]);
    if (LODWORD(v35[0]))
    {
      v26 = v35[1];
      v23 = v35[0] & 0xFFFFFFFF00000000;
      goto LABEL_36;
    }
  }

  [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)selfCopy setPriceForecast:v27, selfCopy];

  v22 = 0;
  v21 = 0;
LABEL_43:
  result.mFile = v22;
  result.mError = v21;
  result.mLine = HIDWORD(v21);
  return result;
}

@end