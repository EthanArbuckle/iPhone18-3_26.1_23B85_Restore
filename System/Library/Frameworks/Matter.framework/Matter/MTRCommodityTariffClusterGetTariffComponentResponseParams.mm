@interface MTRCommodityTariffClusterGetTariffComponentResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRCommodityTariffClusterGetTariffComponentResponseParams)init;
- (MTRCommodityTariffClusterGetTariffComponentResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRCommodityTariffClusterGetTariffComponentResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommodityTariffClusterGetTariffComponentResponseParams

- (MTRCommodityTariffClusterGetTariffComponentResponseParams)init
{
  v10.receiver = self;
  v10.super_class = MTRCommodityTariffClusterGetTariffComponentResponseParams;
  v2 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    label = v2->_label;
    v2->_label = 0;

    array = [MEMORY[0x277CBEA60] array];
    dayEntryIDs = v3->_dayEntryIDs;
    v3->_dayEntryIDs = array;

    v7 = objc_opt_new();
    tariffComponent = v3->_tariffComponent;
    v3->_tariffComponent = v7;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterGetTariffComponentResponseParams);
  label = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self label];
  [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)v4 setLabel:label];

  dayEntryIDs = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self dayEntryIDs];
  [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)v4 setDayEntryIDs:dayEntryIDs];

  tariffComponent = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
  [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)v4 setTariffComponent:tariffComponent];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: label:%@ dayEntryIDs:%@; tariffComponent:%@; >", v5, self->_label, self->_dayEntryIDs, self->_tariffComponent];;

  return v6;
}

- (MTRCommodityTariffClusterGetTariffComponentResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v26.receiver = self;
  v26.super_class = MTRCommodityTariffClusterGetTariffComponentResponseParams;
  v7 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)&v26 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:1792 commandID:0 error:error];
  if (v25)
  {
    sub_2393C5AAC(v24);
    sub_2393C5ADC(v8, *(v25 + 1), *(v25 + 3));
    v9 = sub_2393C6FD0(v24, 256);
    if (!v9)
    {
      v13[0] = 0;
      v13[16] = 0;
      sub_2393C5AAC(v14);
      sub_2393C5ADC(v14, 0, 0);
      v14[18] = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v9 = sub_238F0B984(v13, v24);
      if (!v9)
      {
        v9 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)v7 _setFieldsFromDecodableStruct:v13];
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
  sub_238EA1758(&v25);
LABEL_10:

  return v11;
}

- (MTRCommodityTariffClusterGetTariffComponentResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRCommodityTariffClusterGetTariffComponentResponseParams;
  v4 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  if ((*(struct + 16) & 1) == 0)
  {
    [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self setLabel:0];
    goto LABEL_5;
  }

  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*struct length:*(struct + 1) encoding:4];
  [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self setLabel:v5];

  label = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self label];

  if (label)
  {
LABEL_5:
    tariffComponent29 = objc_opt_new();
    sub_2393C5AAC(v82);
    v80 = 0;
    v81 = 0;
    sub_2393C5BDC(v82, struct + 24);
    while (sub_238E72E88(&v80))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v82[18]];
      [tariffComponent29 addObject:v9];
    }

    if (v80 != 33)
    {
      v10 = v80;
      if (v80)
      {
        v11 = v81;
        v7 = v80 & 0xFFFFFFFF00000000;
LABEL_63:

        goto LABEL_64;
      }
    }

    [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self setDayEntryIDs:tariffComponent29, v80];

    v12 = objc_opt_new();
    [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self setTariffComponent:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(struct + 24)];
    tariffComponent = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
    [tariffComponent setTariffComponentID:v13];

    if (*(struct + 104) == 1 && (sub_238DE36B8(struct + 104)[32] & 1) != 0)
    {
      v15 = objc_opt_new();
      tariffComponent2 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent2 setPrice:v15];

      v17 = MEMORY[0x277CCABB0];
      v18 = sub_238DE36B8(struct + 104);
      if ((v18[32] & 1) == 0)
      {
        goto LABEL_65;
      }

      v19 = [v17 numberWithUnsignedChar:*v18];
      tariffComponent3 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      price = [tariffComponent3 price];
      [price setPriceType:v19];

      v22 = sub_238DE36B8(struct + 104);
      if ((v22[32] & 1) == 0)
      {
        goto LABEL_65;
      }

      if (v22[8] == 1)
      {
        v23 = MEMORY[0x277CCABB0];
        v24 = sub_238DE36B8(struct + 104);
        if ((v24[32] & 1) == 0)
        {
          goto LABEL_65;
        }

        tariffComponent5 = [v23 numberWithLongLong:*sub_238DE36B8(v24 + 8)];
        tariffComponent4 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
        price2 = [tariffComponent4 price];
        [price2 setPrice:tariffComponent5];
      }

      else
      {
        tariffComponent5 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
        tariffComponent4 = [tariffComponent5 price];
        [tariffComponent4 setPrice:0];
      }

      v29 = sub_238DE36B8(struct + 104);
      if ((v29[32] & 1) == 0)
      {
        goto LABEL_65;
      }

      if (v29[24] == 1)
      {
        v30 = MEMORY[0x277CCABB0];
        v31 = sub_238DE36B8(struct + 104);
        if ((v31[32] & 1) == 0)
        {
          goto LABEL_65;
        }

        tariffComponent7 = [v30 numberWithShort:*sub_238E0A934(v31 + 24)];
        tariffComponent6 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
        price3 = [tariffComponent6 price];
        [price3 setPriceLevel:tariffComponent7];
      }

      else
      {
        tariffComponent7 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
        tariffComponent6 = [tariffComponent7 price];
        [tariffComponent6 setPriceLevel:0];
      }
    }

    else
    {
      tariffComponent7 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent7 setPrice:0];
    }

    if (*(struct + 152) == 1)
    {
      tariffComponent9 = [MEMORY[0x277CCABB0] numberWithBool:*sub_238DE36D8(struct + 152)];
      tariffComponent8 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent8 setFriendlyCredit:tariffComponent9];
    }

    else
    {
      tariffComponent9 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent9 setFriendlyCredit:0];
    }

    if (*(struct + 154) == 1)
    {
      v36 = objc_opt_new();
      tariffComponent10 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent10 setAuxiliaryLoad:v36];

      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(struct + 154)];
      tariffComponent11 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      auxiliaryLoad = [tariffComponent11 auxiliaryLoad];
      [auxiliaryLoad setNumber:v38];

      tariffComponent13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36D8(struct + 154)[1]];
      tariffComponent12 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      auxiliaryLoad2 = [tariffComponent12 auxiliaryLoad];
      [auxiliaryLoad2 setRequiredState:tariffComponent13];
    }

    else
    {
      tariffComponent13 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent13 setAuxiliaryLoad:0];
    }

    if (*(struct + 158) == 1)
    {
      v44 = objc_opt_new();
      tariffComponent14 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent14 setPeakPeriod:v44];

      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238E0A934(struct + 158)];
      tariffComponent15 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      peakPeriod = [tariffComponent15 peakPeriod];
      [peakPeriod setSeverity:v46];

      tariffComponent17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(sub_238E0A934(struct + 158) + 1)];
      tariffComponent16 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      peakPeriod2 = [tariffComponent16 peakPeriod];
      [peakPeriod2 setPeakPeriod:tariffComponent17];
    }

    else
    {
      tariffComponent17 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent17 setPeakPeriod:0];
    }

    if (*(struct + 168) == 1)
    {
      v52 = objc_opt_new();
      tariffComponent18 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent18 setPowerThreshold:v52];

      if (*sub_238DE36B8(struct + 168) == 1)
      {
        v54 = MEMORY[0x277CCABB0];
        v55 = sub_238DE36B8(struct + 168);
        tariffComponent20 = [v54 numberWithLongLong:*sub_238DE36B8(v55)];
        tariffComponent19 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
        powerThreshold = [tariffComponent19 powerThreshold];
        [powerThreshold setPowerThreshold:tariffComponent20];
      }

      else
      {
        tariffComponent20 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
        tariffComponent19 = [tariffComponent20 powerThreshold];
        [tariffComponent19 setPowerThreshold:0];
      }

      if (sub_238DE36B8(struct + 168)[16] == 1)
      {
        v60 = MEMORY[0x277CCABB0];
        v61 = sub_238DE36B8(struct + 168);
        tariffComponent22 = [v60 numberWithLongLong:*sub_238DE36B8(v61 + 16)];
        tariffComponent21 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
        powerThreshold2 = [tariffComponent21 powerThreshold];
        [powerThreshold2 setApparentPowerThreshold:tariffComponent22];
      }

      else
      {
        tariffComponent22 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
        tariffComponent21 = [tariffComponent22 powerThreshold];
        [tariffComponent21 setApparentPowerThreshold:0];
      }

      if (sub_238DE36B8(struct + 168)[33])
      {
        v65 = MEMORY[0x277CCABB0];
        v66 = sub_238DE36B8(struct + 168);
        if ((v66[33] & 1) == 0)
        {
          goto LABEL_65;
        }

        tariffComponent24 = [v65 numberWithUnsignedChar:v66[32]];
        tariffComponent23 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
        powerThreshold3 = [tariffComponent23 powerThreshold];
        [powerThreshold3 setPowerThresholdSource:tariffComponent24];
      }

      else
      {
        tariffComponent24 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
        tariffComponent23 = [tariffComponent24 powerThreshold];
        [tariffComponent23 setPowerThresholdSource:0];
      }
    }

    else
    {
      tariffComponent24 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent24 setPowerThreshold:0];
    }

    if (*(struct + 224))
    {
      tariffComponent26 = [MEMORY[0x277CCABB0] numberWithLongLong:*(struct + 27)];
      tariffComponent25 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent25 setThreshold:tariffComponent26];
    }

    else
    {
      tariffComponent26 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent26 setThreshold:0];
    }

    if (*(struct + 232) != 1 || (sub_238DE36B8(struct + 232)[16] & 1) == 0)
    {
      tariffComponent27 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent27 setLabel:0];

LABEL_59:
      if (*(struct + 264) == 1)
      {
        tariffComponent29 = [MEMORY[0x277CCABB0] numberWithBool:*sub_238DE36D8(struct + 264)];
        tariffComponent28 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
        [tariffComponent28 setPredicted:tariffComponent29];
      }

      else
      {
        tariffComponent29 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
        [tariffComponent29 setPredicted:0];
      }

      v11 = 0;
      v7 = 0;
      v10 = 0;
      goto LABEL_63;
    }

    v71 = sub_238DE36B8(struct + 232);
    if (v71[16])
    {
      v72 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v71 length:*(v71 + 1) encoding:4];
      tariffComponent30 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      [tariffComponent30 setLabel:v72];

      tariffComponent31 = [(MTRCommodityTariffClusterGetTariffComponentResponseParams *)self tariffComponent];
      label2 = [tariffComponent31 label];

      if (!label2)
      {
        v7 = 0x97A500000000;
        goto LABEL_57;
      }

      goto LABEL_59;
    }

LABEL_65:
    sub_238EA195C();
  }

  v7 = 0x974600000000;
LABEL_57:
  v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  v10 = 47;
LABEL_64:
  v78 = v10 | v7;
  v79 = v11;
  result.mFile = v79;
  result.mError = v78;
  result.mLine = HIDWORD(v78);
  return result;
}

@end