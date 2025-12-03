@interface MTRPushAVStreamTransportClusterFindTransportResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRPushAVStreamTransportClusterFindTransportResponseParams)init;
- (MTRPushAVStreamTransportClusterFindTransportResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRPushAVStreamTransportClusterFindTransportResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterFindTransportResponseParams

- (MTRPushAVStreamTransportClusterFindTransportResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRPushAVStreamTransportClusterFindTransportResponseParams;
  v2 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    transportConfigurations = v2->_transportConfigurations;
    v2->_transportConfigurations = array;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterFindTransportResponseParams);
  transportConfigurations = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)self transportConfigurations];
  [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)v4 setTransportConfigurations:transportConfigurations];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: transportConfigurations:%@ >", v5, self->_transportConfigurations];;

  return v6;
}

- (MTRPushAVStreamTransportClusterFindTransportResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRPushAVStreamTransportClusterFindTransportResponseParams;
  v7 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:1365 commandID:7 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      sub_2393C5AAC(v12);
      sub_2393C5ADC(v12, 0, 0);
      v12[72] = 0;
      v8 = sub_238EFD1FC(v12, v13);
      if (!v8)
      {
        v8 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRPushAVStreamTransportClusterFindTransportResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRPushAVStreamTransportClusterFindTransportResponseParams;
  v4 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v4 = objc_opt_new();
  sub_238E71468(struct, v169);
  v162 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  while (sub_238E714BC(v169))
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v170];
    [v5 setConnectionID:v6];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v171];
    [v5 setTransportStatus:v7];

    if (v172[0] == 1)
    {
      v8 = objc_opt_new();
      [v5 setTransportOptions:v8];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36B8(v172)];
      transportOptions = [v5 transportOptions];
      [transportOptions setStreamUsage:v9];

      if (sub_238DE36B8(v172)[2] == 1 && (v11 = sub_238DE36B8(v172), (sub_238E0A934(v11 + 2)[2] & 1) != 0))
      {
        v12 = MEMORY[0x277CCABB0];
        v13 = sub_238DE36B8(v172);
        v14 = sub_238E0A934(v13 + 2);
        if ((v14[2] & 1) == 0)
        {
          goto LABEL_73;
        }

        transportOptions3 = [v12 numberWithUnsignedShort:*v14];
        transportOptions2 = [v5 transportOptions];
        [transportOptions2 setVideoStreamID:transportOptions3];
      }

      else
      {
        transportOptions3 = [v5 transportOptions];
        [transportOptions3 setVideoStreamID:0];
      }

      if (sub_238DE36B8(v172)[8] == 1 && (v17 = sub_238DE36B8(v172), (sub_238E0A934(v17 + 8)[2] & 1) != 0))
      {
        v18 = MEMORY[0x277CCABB0];
        v19 = sub_238DE36B8(v172);
        v20 = sub_238E0A934(v19 + 8);
        if (v20[2] != 1)
        {
          goto LABEL_73;
        }

        transportOptions5 = [v18 numberWithUnsignedShort:*v20];
        transportOptions4 = [v5 transportOptions];
        [transportOptions4 setAudioStreamID:transportOptions5];
      }

      else
      {
        transportOptions5 = [v5 transportOptions];
        [transportOptions5 setAudioStreamID:0];
      }

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(sub_238DE36B8(v172) + 7)];
      transportOptions6 = [v5 transportOptions];
      [transportOptions6 setEndpointID:v23];

      v25 = sub_238DE36B8(v172);
      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v25 + 2) length:*(v25 + 3) encoding:4];
      transportOptions7 = [v5 transportOptions];
      [transportOptions7 setUrl:v26];

      transportOptions8 = [v5 transportOptions];
      v29 = [transportOptions8 url];

      if (!v29)
      {
        v158 = 0x95DD00000000;
        goto LABEL_69;
      }

      v30 = objc_opt_new();
      transportOptions9 = [v5 transportOptions];
      [transportOptions9 setTriggerOptions:v30];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(v172)[32]];
      transportOptions10 = [v5 transportOptions];
      triggerOptions = [transportOptions10 triggerOptions];
      [triggerOptions setTriggerType:v32];

      if (sub_238DE36B8(v172)[40] == 1 && (v35 = sub_238DE36B8(v172), (sub_238DE36B8(v35 + 40)[72] & 1) != 0))
      {
        transportOptions12 = objc_opt_new();
        v37 = sub_238DE36B8(v172);
        v38 = sub_238DE36B8(v37 + 40);
        if ((v38[72] & 1) == 0)
        {
          sub_238EA195C();
        }

        sub_2393C5AAC(v165);
        v163 = 0;
        v164 = 0;
        sub_2393C5BDC(v165, v38);
        LOBYTE(v166) = 0;
        v167 = 0;
        v168[0] = 0;
        while (sub_238EA1A80(&v163) && sub_238EA45DC(&v163))
        {
          v39 = objc_opt_new();
          v40 = v39;
          if (v167)
          {
            v41 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v166];
            [v40 setZone:v41];
          }

          else
          {
            [v39 setZone:0];
          }

          if (v168[0] == 1)
          {
            v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v168)];
            [v40 setSensitivity:v42];
          }

          else
          {
            [v40 setSensitivity:0];
          }

          [transportOptions12 addObject:v40];
        }

        if (v163 != 33)
        {
          v44 = v163;
          if (v163)
          {
            v158 = v163 & 0xFFFFFFFF00000000;
            v162 = v164;

            goto LABEL_70;
          }
        }

        transportOptions11 = [v5 transportOptions];
        triggerOptions2 = [transportOptions11 triggerOptions];
        [triggerOptions2 setMotionZones:transportOptions12];
      }

      else
      {
        transportOptions12 = [v5 transportOptions];
        transportOptions11 = [transportOptions12 triggerOptions];
        [transportOptions11 setMotionZones:0];
      }

      if (sub_238DE36B8(v172)[128] == 1 && (v46 = sub_238DE36B8(v172), (sub_238DE36D8(v46 + 128)[1] & 1) != 0))
      {
        v47 = MEMORY[0x277CCABB0];
        v48 = sub_238DE36B8(v172);
        v49 = sub_238DE36D8(v48 + 128);
        if (v49[1] != 1)
        {
LABEL_73:
          sub_238EA195C();
        }

        transportOptions14 = [v47 numberWithUnsignedChar:*v49];
        transportOptions13 = [v5 transportOptions];
        triggerOptions3 = [transportOptions13 triggerOptions];
        [triggerOptions3 setMotionSensitivity:transportOptions14];
      }

      else
      {
        transportOptions14 = [v5 transportOptions];
        transportOptions13 = [transportOptions14 triggerOptions];
        [transportOptions13 setMotionSensitivity:0];
      }

      if (sub_238DE36B8(v172)[132] == 1)
      {
        v53 = objc_opt_new();
        transportOptions15 = [v5 transportOptions];
        triggerOptions4 = [transportOptions15 triggerOptions];
        [triggerOptions4 setMotionTimeControl:v53];

        v56 = MEMORY[0x277CCABB0];
        v57 = sub_238DE36B8(v172);
        v58 = [v56 numberWithUnsignedShort:*sub_238DE3698(v57 + 132)];
        transportOptions16 = [v5 transportOptions];
        triggerOptions5 = [transportOptions16 triggerOptions];
        motionTimeControl = [triggerOptions5 motionTimeControl];
        [motionTimeControl setInitialDuration:v58];

        v62 = MEMORY[0x277CCABB0];
        v63 = sub_238DE36B8(v172);
        v64 = [v62 numberWithUnsignedShort:*(sub_238DE3698(v63 + 132) + 1)];
        transportOptions17 = [v5 transportOptions];
        triggerOptions6 = [transportOptions17 triggerOptions];
        motionTimeControl2 = [triggerOptions6 motionTimeControl];
        [motionTimeControl2 setAugmentationDuration:v64];

        v68 = MEMORY[0x277CCABB0];
        v69 = sub_238DE36B8(v172);
        v70 = [v68 numberWithUnsignedInt:*(sub_238DE3698(v69 + 132) + 1)];
        transportOptions18 = [v5 transportOptions];
        triggerOptions7 = [transportOptions18 triggerOptions];
        motionTimeControl3 = [triggerOptions7 motionTimeControl];
        [motionTimeControl3 setMaxDuration:v70];

        v74 = MEMORY[0x277CCABB0];
        v75 = sub_238DE36B8(v172);
        transportOptions20 = [v74 numberWithUnsignedShort:*(sub_238DE3698(v75 + 132) + 4)];
        transportOptions19 = [v5 transportOptions];
        triggerOptions8 = [transportOptions19 triggerOptions];
        motionTimeControl4 = [triggerOptions8 motionTimeControl];
        [motionTimeControl4 setBlindDuration:transportOptions20];
      }

      else
      {
        transportOptions20 = [v5 transportOptions];
        transportOptions19 = [transportOptions20 triggerOptions];
        [transportOptions19 setMotionTimeControl:0];
      }

      if (sub_238DE36B8(v172)[148] == 1)
      {
        v80 = MEMORY[0x277CCABB0];
        v81 = sub_238DE36B8(v172);
        transportOptions22 = [v80 numberWithUnsignedShort:*sub_238E0A934(v81 + 148)];
        transportOptions21 = [v5 transportOptions];
        triggerOptions9 = [transportOptions21 triggerOptions];
        [triggerOptions9 setMaxPreRollLen:transportOptions22];
      }

      else
      {
        transportOptions22 = [v5 transportOptions];
        transportOptions21 = [transportOptions22 triggerOptions];
        [transportOptions21 setMaxPreRollLen:0];
      }

      v85 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(v172)[152]];
      transportOptions23 = [v5 transportOptions];
      [transportOptions23 setIngestMethod:v85];

      v87 = objc_opt_new();
      transportOptions24 = [v5 transportOptions];
      [transportOptions24 setContainerOptions:v87];

      v89 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(v172)[160]];
      transportOptions25 = [v5 transportOptions];
      containerOptions = [transportOptions25 containerOptions];
      [containerOptions setContainerType:v89];

      if (sub_238DE36B8(v172)[168] == 1)
      {
        v92 = objc_opt_new();
        transportOptions26 = [v5 transportOptions];
        containerOptions2 = [transportOptions26 containerOptions];
        [containerOptions2 setCmafContainerOptions:v92];

        v95 = MEMORY[0x277CCABB0];
        v96 = sub_238DE36B8(v172);
        v97 = [v95 numberWithUnsignedChar:*sub_238DE36B8(v96 + 168)];
        transportOptions27 = [v5 transportOptions];
        containerOptions3 = [transportOptions27 containerOptions];
        cmafContainerOptions = [containerOptions3 cmafContainerOptions];
        [cmafContainerOptions setCmafInterface:v97];

        v101 = MEMORY[0x277CCABB0];
        v102 = sub_238DE36B8(v172);
        v103 = [v101 numberWithUnsignedShort:*(sub_238DE36B8(v102 + 168) + 1)];
        transportOptions28 = [v5 transportOptions];
        containerOptions4 = [transportOptions28 containerOptions];
        cmafContainerOptions2 = [containerOptions4 cmafContainerOptions];
        [cmafContainerOptions2 setSegmentDuration:v103];

        v107 = MEMORY[0x277CCABB0];
        v108 = sub_238DE36B8(v172);
        v109 = [v107 numberWithUnsignedShort:*(sub_238DE36B8(v108 + 168) + 2)];
        transportOptions29 = [v5 transportOptions];
        containerOptions5 = [transportOptions29 containerOptions];
        cmafContainerOptions3 = [containerOptions5 cmafContainerOptions];
        [cmafContainerOptions3 setChunkDuration:v109];

        v113 = MEMORY[0x277CCABB0];
        v114 = sub_238DE36B8(v172);
        v115 = [v113 numberWithUnsignedChar:sub_238DE36B8(v114 + 168)[6]];
        transportOptions30 = [v5 transportOptions];
        containerOptions6 = [transportOptions30 containerOptions];
        cmafContainerOptions4 = [containerOptions6 cmafContainerOptions];
        [cmafContainerOptions4 setSessionGroup:v115];

        v119 = sub_238DE36B8(v172);
        v120 = sub_238DE36B8(v119 + 168);
        v121 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v120 + 1) length:*(v120 + 2) encoding:4];
        transportOptions31 = [v5 transportOptions];
        containerOptions7 = [transportOptions31 containerOptions];
        cmafContainerOptions5 = [containerOptions7 cmafContainerOptions];
        [cmafContainerOptions5 setTrackName:v121];

        transportOptions32 = [v5 transportOptions];
        containerOptions8 = [transportOptions32 containerOptions];
        cmafContainerOptions6 = [containerOptions8 cmafContainerOptions];
        trackName = [cmafContainerOptions6 trackName];

        if (!trackName)
        {
          v158 = 0x962500000000;
LABEL_69:
          v44 = 47;
LABEL_70:

          goto LABEL_71;
        }

        v129 = sub_238DE36B8(v172);
        if (sub_238DE36B8(v129 + 168)[24] == 1)
        {
          v130 = sub_238DE36B8(v172);
          v131 = sub_238DE36B8(v130 + 168);
          v132 = sub_238DE36B8(v131 + 24);
          transportOptions34 = [MEMORY[0x277CBEA90] dataWithBytes:*v132 length:v132[1]];
          transportOptions33 = [v5 transportOptions];
          containerOptions9 = [transportOptions33 containerOptions];
          cmafContainerOptions7 = [containerOptions9 cmafContainerOptions];
          [cmafContainerOptions7 setCencKey:transportOptions34];
        }

        else
        {
          transportOptions34 = [v5 transportOptions];
          transportOptions33 = [transportOptions34 containerOptions];
          containerOptions9 = [transportOptions33 cmafContainerOptions];
          [containerOptions9 setCencKey:0];
        }

        v139 = sub_238DE36B8(v172);
        if (sub_238DE36B8(v139 + 168)[48] == 1)
        {
          v140 = sub_238DE36B8(v172);
          v141 = sub_238DE36B8(v140 + 168);
          v142 = sub_238DE36B8(v141 + 48);
          transportOptions36 = [MEMORY[0x277CBEA90] dataWithBytes:*v142 length:v142[1]];
          transportOptions35 = [v5 transportOptions];
          containerOptions10 = [transportOptions35 containerOptions];
          cmafContainerOptions8 = [containerOptions10 cmafContainerOptions];
          [cmafContainerOptions8 setCencKeyID:transportOptions36];
        }

        else
        {
          transportOptions36 = [v5 transportOptions];
          transportOptions35 = [transportOptions36 containerOptions];
          containerOptions10 = [transportOptions35 cmafContainerOptions];
          [containerOptions10 setCencKeyID:0];
        }

        v147 = sub_238DE36B8(v172);
        if (sub_238DE36B8(v147 + 168)[72] == 1)
        {
          v148 = MEMORY[0x277CCABB0];
          v149 = sub_238DE36B8(v172);
          v150 = sub_238DE36B8(v149 + 168);
          transportOptions38 = [v148 numberWithBool:*sub_238DE36D8(v150 + 72)];
          transportOptions37 = [v5 transportOptions];
          containerOptions11 = [transportOptions37 containerOptions];
          cmafContainerOptions9 = [containerOptions11 cmafContainerOptions];
          [cmafContainerOptions9 setMetadataEnabled:transportOptions38];
        }

        else
        {
          transportOptions38 = [v5 transportOptions];
          transportOptions37 = [transportOptions38 containerOptions];
          containerOptions11 = [transportOptions37 cmafContainerOptions];
          [containerOptions11 setMetadataEnabled:0];
        }
      }

      else
      {
        transportOptions38 = [v5 transportOptions];
        transportOptions37 = [transportOptions38 containerOptions];
        [transportOptions37 setCmafContainerOptions:0];
      }

      if (sub_238DE36B8(v172)[256] == 1)
      {
        v153 = MEMORY[0x277CCABB0];
        v154 = sub_238DE36B8(v172);
        transportOptions40 = [v153 numberWithUnsignedInt:*sub_238DE3698(v154 + 256)];
        transportOptions39 = [v5 transportOptions];
        [transportOptions39 setExpiryTime:transportOptions40];
      }

      else
      {
        transportOptions40 = [v5 transportOptions];
        [transportOptions40 setExpiryTime:0];
      }
    }

    else
    {
      [v5 setTransportOptions:0];
    }

    v157 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v172[272]];
    [v5 setFabricIndex:v157];

    [v4 addObject:v5];
  }

  if (LODWORD(v169[0]) == 33 || (v44 = LODWORD(v169[0]), !LODWORD(v169[0])))
  {
    [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)self setTransportConfigurations:v4];

    v159 = 0;
    v160 = 0;
    goto LABEL_75;
  }

  v162 = v169[1];
  v158 = v169[0] & 0xFFFFFFFF00000000;
LABEL_71:

  v160 = v44 | v158;
  v159 = v162;
LABEL_75:
  result.mFile = v159;
  result.mError = v160;
  result.mLine = HIDWORD(v160);
  return result;
}

@end