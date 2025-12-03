@interface MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)init;
- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams

- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams;
  v2 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    transportConfiguration = v2->_transportConfiguration;
    v2->_transportConfiguration = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams);
  transportConfiguration = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)v4 setTransportConfiguration:transportConfiguration];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: transportConfiguration:%@ >", v5, self->_transportConfiguration];;

  return v6;
}

- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams;
  v7 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)&v19 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:1365 commandID:1 error:error];
  if (v18)
  {
    sub_2393C5AAC(v17);
    sub_2393C5ADC(v8, *(v18 + 1), *(v18 + 3));
    v9 = sub_2393C6FD0(v17, 256);
    if (!v9)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v9 = sub_238F24B98(&v13, v17);
      if (!v9)
      {
        v9 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)v7 _setFieldsFromDecodableStruct:&v13];
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

- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams;
  v4 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self setTransportConfiguration:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*struct];
  transportConfiguration = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  [transportConfiguration setConnectionID:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 2)];
  transportConfiguration2 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  [transportConfiguration2 setTransportStatus:v8];

  if (*(struct + 8) != 1)
  {
    transportConfiguration3 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    [transportConfiguration3 setTransportOptions:0];
LABEL_64:

    transportConfiguration17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 280)];
    transportConfiguration4 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    [transportConfiguration4 setFabricIndex:transportConfiguration17];

    v59 = 0;
    v55 = 0;
    v58 = 0;
    goto LABEL_65;
  }

  v10 = objc_opt_new();
  transportConfiguration5 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  [transportConfiguration5 setTransportOptions:v10];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36B8(struct + 8)];
  transportConfiguration6 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions = [transportConfiguration6 transportOptions];
  [transportOptions setStreamUsage:v12];

  if (sub_238DE36B8(struct + 8)[2] == 1 && (v15 = sub_238DE36B8(struct + 8), (sub_238E0A934(v15 + 2)[2] & 1) != 0))
  {
    v16 = MEMORY[0x277CCABB0];
    v17 = sub_238DE36B8(struct + 8);
    v18 = sub_238E0A934(v17 + 2);
    if ((v18[2] & 1) == 0)
    {
      goto LABEL_67;
    }

    transportConfiguration8 = [v16 numberWithUnsignedShort:*v18];
    transportConfiguration7 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions2 = [transportConfiguration7 transportOptions];
    [transportOptions2 setVideoStreamID:transportConfiguration8];
  }

  else
  {
    transportConfiguration8 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportConfiguration7 = [transportConfiguration8 transportOptions];
    [transportConfiguration7 setVideoStreamID:0];
  }

  if (sub_238DE36B8(struct + 8)[8] == 1 && (v23 = sub_238DE36B8(struct + 8), (sub_238E0A934(v23 + 8)[2] & 1) != 0))
  {
    v24 = MEMORY[0x277CCABB0];
    v25 = sub_238DE36B8(struct + 8);
    v26 = sub_238E0A934(v25 + 8);
    if ((v26[2] & 1) == 0)
    {
      goto LABEL_67;
    }

    transportConfiguration10 = [v24 numberWithUnsignedShort:*v26];
    transportConfiguration9 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions3 = [transportConfiguration9 transportOptions];
    [transportOptions3 setAudioStreamID:transportConfiguration10];
  }

  else
  {
    transportConfiguration10 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportConfiguration9 = [transportConfiguration10 transportOptions];
    [transportConfiguration9 setAudioStreamID:0];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(sub_238DE36B8(struct + 8) + 7)];
  transportConfiguration11 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions4 = [transportConfiguration11 transportOptions];
  [transportOptions4 setEndpointID:v30];

  v33 = sub_238DE36B8(struct + 8);
  v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v33 + 2) length:*(v33 + 3) encoding:4];
  transportConfiguration12 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions5 = [transportConfiguration12 transportOptions];
  [transportOptions5 setUrl:v34];

  transportConfiguration13 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions6 = [transportConfiguration13 transportOptions];
  v39 = [transportOptions6 url];

  if (!v39)
  {
    v55 = 0x92D700000000;
    goto LABEL_51;
  }

  v40 = objc_opt_new();
  transportConfiguration14 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions7 = [transportConfiguration14 transportOptions];
  [transportOptions7 setTriggerOptions:v40];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(struct + 8)[32]];
  transportConfiguration15 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions8 = [transportConfiguration15 transportOptions];
  triggerOptions = [transportOptions8 triggerOptions];
  [triggerOptions setTriggerType:v43];

  if (sub_238DE36B8(struct + 8)[40] == 1 && (v47 = sub_238DE36B8(struct + 8), (sub_238DE36B8(v47 + 40)[72] & 1) != 0))
  {
    transportConfiguration17 = objc_opt_new();
    v49 = sub_238DE36B8(struct + 8);
    v50 = sub_238DE36B8(v49 + 40);
    if ((v50[72] & 1) == 0)
    {
      sub_238EA195C();
    }

    sub_2393C5AAC(v197);
    v195 = 0;
    v196 = 0;
    sub_2393C5BDC(v197, v50);
    LOBYTE(v198) = 0;
    v199 = 0;
    v200[0] = 0;
    while (sub_238EA1A80(&v195) && sub_238EA45DC(&v195))
    {
      v51 = objc_opt_new();
      v52 = v51;
      if (v199)
      {
        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v198];
        [v52 setZone:v53];
      }

      else
      {
        [v51 setZone:0];
      }

      if (v200[0] == 1)
      {
        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v200)];
        [v52 setSensitivity:v54];
      }

      else
      {
        [v52 setSensitivity:0];
      }

      [transportConfiguration17 addObject:{v52, v195}];
    }

    if (v195 != 33)
    {
      v58 = v195;
      if (v195)
      {
        v59 = v196;
        v55 = v195 & 0xFFFFFFFF00000000;
LABEL_65:

        goto LABEL_66;
      }
    }

    transportConfiguration16 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions9 = [transportConfiguration16 transportOptions];
    triggerOptions2 = [transportOptions9 triggerOptions];
    [triggerOptions2 setMotionZones:transportConfiguration17];
  }

  else
  {
    transportConfiguration17 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportConfiguration16 = [transportConfiguration17 transportOptions];
    transportOptions9 = [transportConfiguration16 triggerOptions];
    [transportOptions9 setMotionZones:0];
  }

  if (sub_238DE36B8(struct + 8)[128] != 1 || (v61 = sub_238DE36B8(struct + 8), (sub_238DE36D8(v61 + 128)[1] & 1) == 0))
  {
    transportConfiguration18 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions10 = [transportConfiguration18 transportOptions];
    triggerOptions3 = [transportOptions10 triggerOptions];
    [triggerOptions3 setMotionSensitivity:0];
    goto LABEL_39;
  }

  v62 = MEMORY[0x277CCABB0];
  v63 = sub_238DE36B8(struct + 8);
  v64 = sub_238DE36D8(v63 + 128);
  if ((v64[1] & 1) == 0)
  {
LABEL_67:
    sub_238EA195C();
  }

  transportConfiguration18 = [v62 numberWithUnsignedChar:*v64];
  transportOptions10 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  triggerOptions3 = [transportOptions10 transportOptions];
  v67TriggerOptions = [triggerOptions3 triggerOptions];
  [v67TriggerOptions setMotionSensitivity:transportConfiguration18];

LABEL_39:
  if (sub_238DE36B8(struct + 8)[132] == 1)
  {
    v69 = objc_opt_new();
    transportConfiguration19 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions11 = [transportConfiguration19 transportOptions];
    triggerOptions4 = [transportOptions11 triggerOptions];
    [triggerOptions4 setMotionTimeControl:v69];

    v73 = MEMORY[0x277CCABB0];
    v74 = sub_238DE36B8(struct + 8);
    v75 = [v73 numberWithUnsignedShort:*sub_238DE3698(v74 + 132)];
    transportConfiguration20 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions12 = [transportConfiguration20 transportOptions];
    triggerOptions5 = [transportOptions12 triggerOptions];
    motionTimeControl = [triggerOptions5 motionTimeControl];
    [motionTimeControl setInitialDuration:v75];

    v80 = MEMORY[0x277CCABB0];
    v81 = sub_238DE36B8(struct + 8);
    v82 = [v80 numberWithUnsignedShort:*(sub_238DE3698(v81 + 132) + 1)];
    transportConfiguration21 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions13 = [transportConfiguration21 transportOptions];
    triggerOptions6 = [transportOptions13 triggerOptions];
    motionTimeControl2 = [triggerOptions6 motionTimeControl];
    [motionTimeControl2 setAugmentationDuration:v82];

    v87 = MEMORY[0x277CCABB0];
    v88 = sub_238DE36B8(struct + 8);
    v89 = [v87 numberWithUnsignedInt:*(sub_238DE3698(v88 + 132) + 1)];
    transportConfiguration22 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions14 = [transportConfiguration22 transportOptions];
    triggerOptions7 = [transportOptions14 triggerOptions];
    motionTimeControl3 = [triggerOptions7 motionTimeControl];
    [motionTimeControl3 setMaxDuration:v89];

    v94 = MEMORY[0x277CCABB0];
    v95 = sub_238DE36B8(struct + 8);
    transportConfiguration24 = [v94 numberWithUnsignedShort:*(sub_238DE3698(v95 + 132) + 4)];
    transportConfiguration23 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions15 = [transportConfiguration23 transportOptions];
    triggerOptions8 = [transportOptions15 triggerOptions];
    motionTimeControl4 = [triggerOptions8 motionTimeControl];
    [motionTimeControl4 setBlindDuration:transportConfiguration24];
  }

  else
  {
    transportConfiguration24 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportConfiguration23 = [transportConfiguration24 transportOptions];
    transportOptions15 = [transportConfiguration23 triggerOptions];
    [transportOptions15 setMotionTimeControl:0];
  }

  if (sub_238DE36B8(struct + 8)[148] == 1)
  {
    v101 = MEMORY[0x277CCABB0];
    v102 = sub_238DE36B8(struct + 8);
    transportConfiguration26 = [v101 numberWithUnsignedShort:*sub_238E0A934(v102 + 148)];
    transportConfiguration25 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions16 = [transportConfiguration25 transportOptions];
    triggerOptions9 = [transportOptions16 triggerOptions];
    [triggerOptions9 setMaxPreRollLen:transportConfiguration26];
  }

  else
  {
    transportConfiguration26 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportConfiguration25 = [transportConfiguration26 transportOptions];
    transportOptions16 = [transportConfiguration25 triggerOptions];
    [transportOptions16 setMaxPreRollLen:0];
  }

  v107 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(struct + 8)[152]];
  transportConfiguration27 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions17 = [transportConfiguration27 transportOptions];
  [transportOptions17 setIngestMethod:v107];

  v110 = objc_opt_new();
  transportConfiguration28 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions18 = [transportConfiguration28 transportOptions];
  [transportOptions18 setContainerOptions:v110];

  v113 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(struct + 8)[160]];
  transportConfiguration29 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions19 = [transportConfiguration29 transportOptions];
  containerOptions = [transportOptions19 containerOptions];
  [containerOptions setContainerType:v113];

  if (sub_238DE36B8(struct + 8)[168] != 1)
  {
    transportConfiguration30 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions20 = [transportConfiguration30 transportOptions];
    containerOptions2 = [transportOptions20 containerOptions];
    [containerOptions2 setCmafContainerOptions:0];
LABEL_60:

    if (sub_238DE36B8(struct + 8)[256] == 1)
    {
      v188 = MEMORY[0x277CCABB0];
      v189 = sub_238DE36B8(struct + 8);
      transportConfiguration3 = [v188 numberWithUnsignedInt:*sub_238DE3698(v189 + 256)];
      transportConfiguration31 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportOptions21 = [transportConfiguration31 transportOptions];
      [transportOptions21 setExpiryTime:transportConfiguration3];
    }

    else
    {
      transportConfiguration3 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportConfiguration31 = [transportConfiguration3 transportOptions];
      [transportConfiguration31 setExpiryTime:0];
    }

    goto LABEL_64;
  }

  v117 = objc_opt_new();
  transportConfiguration32 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions22 = [transportConfiguration32 transportOptions];
  containerOptions3 = [transportOptions22 containerOptions];
  [containerOptions3 setCmafContainerOptions:v117];

  v121 = MEMORY[0x277CCABB0];
  v122 = sub_238DE36B8(struct + 8);
  v123 = [v121 numberWithUnsignedChar:*sub_238DE36B8(v122 + 168)];
  transportConfiguration33 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions23 = [transportConfiguration33 transportOptions];
  containerOptions4 = [transportOptions23 containerOptions];
  cmafContainerOptions = [containerOptions4 cmafContainerOptions];
  [cmafContainerOptions setCmafInterface:v123];

  v128 = MEMORY[0x277CCABB0];
  v129 = sub_238DE36B8(struct + 8);
  v130 = [v128 numberWithUnsignedShort:*(sub_238DE36B8(v129 + 168) + 1)];
  transportConfiguration34 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions24 = [transportConfiguration34 transportOptions];
  containerOptions5 = [transportOptions24 containerOptions];
  cmafContainerOptions2 = [containerOptions5 cmafContainerOptions];
  [cmafContainerOptions2 setSegmentDuration:v130];

  v135 = MEMORY[0x277CCABB0];
  v136 = sub_238DE36B8(struct + 8);
  v137 = [v135 numberWithUnsignedShort:*(sub_238DE36B8(v136 + 168) + 2)];
  transportConfiguration35 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions25 = [transportConfiguration35 transportOptions];
  containerOptions6 = [transportOptions25 containerOptions];
  cmafContainerOptions3 = [containerOptions6 cmafContainerOptions];
  [cmafContainerOptions3 setChunkDuration:v137];

  v142 = MEMORY[0x277CCABB0];
  v143 = sub_238DE36B8(struct + 8);
  v144 = [v142 numberWithUnsignedChar:sub_238DE36B8(v143 + 168)[6]];
  transportConfiguration36 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions26 = [transportConfiguration36 transportOptions];
  containerOptions7 = [transportOptions26 containerOptions];
  cmafContainerOptions4 = [containerOptions7 cmafContainerOptions];
  [cmafContainerOptions4 setSessionGroup:v144];

  v149 = sub_238DE36B8(struct + 8);
  v150 = sub_238DE36B8(v149 + 168);
  v151 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v150 + 1) length:*(v150 + 2) encoding:4];
  transportConfiguration37 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions27 = [transportConfiguration37 transportOptions];
  containerOptions8 = [transportOptions27 containerOptions];
  cmafContainerOptions5 = [containerOptions8 cmafContainerOptions];
  [cmafContainerOptions5 setTrackName:v151];

  transportConfiguration38 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions28 = [transportConfiguration38 transportOptions];
  containerOptions9 = [transportOptions28 containerOptions];
  cmafContainerOptions6 = [containerOptions9 cmafContainerOptions];
  trackName = [cmafContainerOptions6 trackName];

  if (trackName)
  {
    v161 = sub_238DE36B8(struct + 8);
    if (sub_238DE36B8(v161 + 168)[24] == 1)
    {
      v162 = sub_238DE36B8(struct + 8);
      v163 = sub_238DE36B8(v162 + 168);
      v164 = sub_238DE36B8(v163 + 24);
      transportConfiguration40 = [MEMORY[0x277CBEA90] dataWithBytes:*v164 length:v164[1]];
      transportConfiguration39 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportOptions29 = [transportConfiguration39 transportOptions];
      containerOptions10 = [transportOptions29 containerOptions];
      cmafContainerOptions7 = [containerOptions10 cmafContainerOptions];
      [cmafContainerOptions7 setCencKey:transportConfiguration40];
    }

    else
    {
      transportConfiguration40 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportConfiguration39 = [transportConfiguration40 transportOptions];
      transportOptions29 = [transportConfiguration39 containerOptions];
      containerOptions10 = [transportOptions29 cmafContainerOptions];
      [containerOptions10 setCencKey:0];
    }

    v173 = sub_238DE36B8(struct + 8);
    if (sub_238DE36B8(v173 + 168)[48] == 1)
    {
      v174 = sub_238DE36B8(struct + 8);
      v175 = sub_238DE36B8(v174 + 168);
      v176 = sub_238DE36B8(v175 + 48);
      transportConfiguration42 = [MEMORY[0x277CBEA90] dataWithBytes:*v176 length:v176[1]];
      transportConfiguration41 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportOptions30 = [transportConfiguration41 transportOptions];
      containerOptions11 = [transportOptions30 containerOptions];
      cmafContainerOptions8 = [containerOptions11 cmafContainerOptions];
      [cmafContainerOptions8 setCencKeyID:transportConfiguration42];
    }

    else
    {
      transportConfiguration42 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportConfiguration41 = [transportConfiguration42 transportOptions];
      transportOptions30 = [transportConfiguration41 containerOptions];
      containerOptions11 = [transportOptions30 cmafContainerOptions];
      [containerOptions11 setCencKeyID:0];
    }

    v182 = sub_238DE36B8(struct + 8);
    if (sub_238DE36B8(v182 + 168)[72] == 1)
    {
      v183 = MEMORY[0x277CCABB0];
      v184 = sub_238DE36B8(struct + 8);
      v185 = sub_238DE36B8(v184 + 168);
      transportConfiguration30 = [v183 numberWithBool:*sub_238DE36D8(v185 + 72)];
      transportOptions20 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      containerOptions2 = [transportOptions20 transportOptions];
      v172ContainerOptions = [containerOptions2 containerOptions];
      cmafContainerOptions9 = [v172ContainerOptions cmafContainerOptions];
      [cmafContainerOptions9 setMetadataEnabled:transportConfiguration30];
    }

    else
    {
      transportConfiguration30 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportOptions20 = [transportConfiguration30 transportOptions];
      containerOptions2 = [transportOptions20 containerOptions];
      v172ContainerOptions = [containerOptions2 cmafContainerOptions];
      [v172ContainerOptions setMetadataEnabled:0];
    }

    goto LABEL_60;
  }

  v55 = 0x931F00000000;
LABEL_51:
  v59 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  v58 = 47;
LABEL_66:
  v193 = v58 | v55;
  v194 = v59;
  result.mFile = v194;
  result.mError = v193;
  result.mLine = HIDWORD(v193);
  return result;
}

@end