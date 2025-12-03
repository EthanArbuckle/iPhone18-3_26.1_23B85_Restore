@interface MTRCommodityPriceClusterGetDetailedPriceResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRCommodityPriceClusterGetDetailedPriceResponseParams)init;
- (MTRCommodityPriceClusterGetDetailedPriceResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRCommodityPriceClusterGetDetailedPriceResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommodityPriceClusterGetDetailedPriceResponseParams

- (MTRCommodityPriceClusterGetDetailedPriceResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRCommodityPriceClusterGetDetailedPriceResponseParams;
  v2 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)&v6 init];
  v3 = v2;
  if (v2)
  {
    currentPrice = v2->_currentPrice;
    v2->_currentPrice = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityPriceClusterGetDetailedPriceResponseParams);
  currentPrice = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
  [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)v4 setCurrentPrice:currentPrice];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: currentPrice:%@ >", v5, self->_currentPrice];;

  return v6;
}

- (MTRCommodityPriceClusterGetDetailedPriceResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = MTRCommodityPriceClusterGetDetailedPriceResponseParams;
  v7 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)&v16 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:149 commandID:1 error:error];
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v8, *(v15 + 1), *(v15 + 3));
    v9 = sub_2393C6FD0(v14, 256);
    if (!v9)
    {
      v13[0] = 0;
      v13[144] = 0;
      v9 = sub_238F0AD84(v13, v14);
      if (!v9)
      {
        v9 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)v7 _setFieldsFromDecodableStruct:v13];
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
  sub_238EA1758(&v15);
LABEL_10:

  return v11;
}

- (MTRCommodityPriceClusterGetDetailedPriceResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRCommodityPriceClusterGetDetailedPriceResponseParams;
  v4 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  if ((*(struct + 144) & 1) == 0)
  {
    [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self setCurrentPrice:0];
LABEL_41:
    v20 = 0;
    v19 = 0;
    v21 = 0;
    goto LABEL_42;
  }

  v5 = objc_opt_new();
  [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self setCurrentPrice:v5];

  if ((*(struct + 144) & 1) == 0)
  {
    goto LABEL_44;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*struct];
  currentPrice = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
  [currentPrice setPeriodStart:v6];

  if ((*(struct + 144) & 1) == 0)
  {
    goto LABEL_44;
  }

  if (*(struct + 8))
  {
    currentPrice3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(struct + 1)];
    currentPrice2 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice2 setPeriodEnd:currentPrice3];
  }

  else
  {
    currentPrice3 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice3 setPeriodEnd:0];
  }

  if ((*(struct + 144) & 1) == 0)
  {
    goto LABEL_44;
  }

  if (*(struct + 16) == 1)
  {
    currentPrice5 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_238DE36B8(struct + 16)];
    currentPrice4 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice4 setPrice:currentPrice5];
  }

  else
  {
    currentPrice5 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice5 setPrice:0];
  }

  if ((*(struct + 144) & 1) == 0)
  {
    goto LABEL_44;
  }

  if (*(struct + 32) == 1)
  {
    currentPrice7 = [MEMORY[0x277CCABB0] numberWithShort:*sub_238E0A934(struct + 32)];
    currentPrice6 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice6 setPriceLevel:currentPrice7];
  }

  else
  {
    currentPrice7 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice7 setPriceLevel:0];
  }

  if ((*(struct + 144) & 1) == 0)
  {
    goto LABEL_44;
  }

  if (*(struct + 40) == 1)
  {
    v14 = sub_238DE36B8(struct + 40);
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v14 length:v14[1] encoding:4];
    currentPrice8 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice8 setDescriptionString:v15];

    currentPrice9 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    descriptionString = [currentPrice9 descriptionString];

    if (!descriptionString)
    {
      v19 = 0x401F00000000;
      v20 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v21 = 47;
      goto LABEL_42;
    }
  }

  else
  {
    currentPrice10 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice10 setDescriptionString:0];
  }

  if ((*(struct + 144) & 1) == 0)
  {
LABEL_44:
    sub_238EA195C();
  }

  if (*(struct + 64) != 1)
  {
    currentPrice11 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice11 setComponents:0];
LABEL_40:

    goto LABEL_41;
  }

  currentPrice11 = objc_opt_new();
  if ((*(struct + 144) & 1) == 0)
  {
    sub_238EA195C();
  }

  v24 = sub_238DE36B8(struct + 64);
  sub_2393C5AAC(v38);
  v36 = 0;
  v37 = 0;
  sub_2393C5BDC(v38, v24);
  v39 = 0;
  v40 = 0;
  v41[0] = 0;
  v42[0] = 0;
  while (sub_238EA1A80(&v36) && sub_238EA2704(&v36))
  {
    v25 = objc_opt_new();
    v26 = [MEMORY[0x277CCABB0] numberWithLongLong:v39];
    [v25 setPrice:v26];

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v40];
    [v25 setSource:v27];

    if (v41[0] == 1)
    {
      v28 = sub_238DE36B8(v41);
      v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v28 length:v28[1] encoding:4];
      [v25 setDescriptionString:v29];

      descriptionString2 = [v25 descriptionString];

      if (!descriptionString2)
      {

        v19 = 0x403200000000;
        v20 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
        v35 = 47;
        goto LABEL_43;
      }
    }

    else
    {
      [v25 setDescriptionString:0];
    }

    if (v42[0] == 1)
    {
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v42)];
      [v25 setTariffComponentID:v31];
    }

    else
    {
      [v25 setTariffComponentID:0];
    }

    [currentPrice11 addObject:v25];
  }

  if (v36 == 33 || (v35 = v36) == 0)
  {
    currentPrice12 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice12 setComponents:currentPrice11];

    goto LABEL_40;
  }

  v20 = v37;
  v19 = v36 & 0xFFFFFFFF00000000;
LABEL_43:

  v21 = v35;
LABEL_42:
  v33 = v21 | v19;
  v34 = v20;
  result.mFile = v34;
  result.mError = v33;
  result.mLine = HIDWORD(v33);
  return result;
}

@end