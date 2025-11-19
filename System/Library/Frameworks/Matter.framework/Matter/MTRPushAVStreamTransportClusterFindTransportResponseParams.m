@interface MTRPushAVStreamTransportClusterFindTransportResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRPushAVStreamTransportClusterFindTransportResponseParams)init;
- (MTRPushAVStreamTransportClusterFindTransportResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRPushAVStreamTransportClusterFindTransportResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
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
    v3 = [MEMORY[0x277CBEA60] array];
    transportConfigurations = v2->_transportConfigurations;
    v2->_transportConfigurations = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterFindTransportResponseParams);
  v5 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)self transportConfigurations];
  [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)v4 setTransportConfigurations:v5];

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

- (MTRPushAVStreamTransportClusterFindTransportResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = MTRPushAVStreamTransportClusterFindTransportResponseParams;
  v7 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:1365 commandID:7 error:a4];
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

    sub_238DD3F98(v8, v9, a4);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTRPushAVStreamTransportClusterFindTransportResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRPushAVStreamTransportClusterFindTransportResponseParams;
  v4 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  sub_238E71468(a3, v169);
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
      v10 = [v5 transportOptions];
      [v10 setStreamUsage:v9];

      if (sub_238DE36B8(v172)[2] == 1 && (v11 = sub_238DE36B8(v172), (sub_238E0A934(v11 + 2)[2] & 1) != 0))
      {
        v12 = MEMORY[0x277CCABB0];
        v13 = sub_238DE36B8(v172);
        v14 = sub_238E0A934(v13 + 2);
        if ((v14[2] & 1) == 0)
        {
          goto LABEL_73;
        }

        v15 = [v12 numberWithUnsignedShort:*v14];
        v16 = [v5 transportOptions];
        [v16 setVideoStreamID:v15];
      }

      else
      {
        v15 = [v5 transportOptions];
        [v15 setVideoStreamID:0];
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

        v21 = [v18 numberWithUnsignedShort:*v20];
        v22 = [v5 transportOptions];
        [v22 setAudioStreamID:v21];
      }

      else
      {
        v21 = [v5 transportOptions];
        [v21 setAudioStreamID:0];
      }

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(sub_238DE36B8(v172) + 7)];
      v24 = [v5 transportOptions];
      [v24 setEndpointID:v23];

      v25 = sub_238DE36B8(v172);
      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v25 + 2) length:*(v25 + 3) encoding:4];
      v27 = [v5 transportOptions];
      [v27 setUrl:v26];

      v28 = [v5 transportOptions];
      v29 = [v28 url];

      if (!v29)
      {
        v158 = 0x95DD00000000;
        goto LABEL_69;
      }

      v30 = objc_opt_new();
      v31 = [v5 transportOptions];
      [v31 setTriggerOptions:v30];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(v172)[32]];
      v33 = [v5 transportOptions];
      v34 = [v33 triggerOptions];
      [v34 setTriggerType:v32];

      if (sub_238DE36B8(v172)[40] == 1 && (v35 = sub_238DE36B8(v172), (sub_238DE36B8(v35 + 40)[72] & 1) != 0))
      {
        v36 = objc_opt_new();
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

          [v36 addObject:v40];
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

        v43 = [v5 transportOptions];
        v45 = [v43 triggerOptions];
        [v45 setMotionZones:v36];
      }

      else
      {
        v36 = [v5 transportOptions];
        v43 = [v36 triggerOptions];
        [v43 setMotionZones:0];
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

        v50 = [v47 numberWithUnsignedChar:*v49];
        v51 = [v5 transportOptions];
        v52 = [v51 triggerOptions];
        [v52 setMotionSensitivity:v50];
      }

      else
      {
        v50 = [v5 transportOptions];
        v51 = [v50 triggerOptions];
        [v51 setMotionSensitivity:0];
      }

      if (sub_238DE36B8(v172)[132] == 1)
      {
        v53 = objc_opt_new();
        v54 = [v5 transportOptions];
        v55 = [v54 triggerOptions];
        [v55 setMotionTimeControl:v53];

        v56 = MEMORY[0x277CCABB0];
        v57 = sub_238DE36B8(v172);
        v58 = [v56 numberWithUnsignedShort:*sub_238DE3698(v57 + 132)];
        v59 = [v5 transportOptions];
        v60 = [v59 triggerOptions];
        v61 = [v60 motionTimeControl];
        [v61 setInitialDuration:v58];

        v62 = MEMORY[0x277CCABB0];
        v63 = sub_238DE36B8(v172);
        v64 = [v62 numberWithUnsignedShort:*(sub_238DE3698(v63 + 132) + 1)];
        v65 = [v5 transportOptions];
        v66 = [v65 triggerOptions];
        v67 = [v66 motionTimeControl];
        [v67 setAugmentationDuration:v64];

        v68 = MEMORY[0x277CCABB0];
        v69 = sub_238DE36B8(v172);
        v70 = [v68 numberWithUnsignedInt:*(sub_238DE3698(v69 + 132) + 1)];
        v71 = [v5 transportOptions];
        v72 = [v71 triggerOptions];
        v73 = [v72 motionTimeControl];
        [v73 setMaxDuration:v70];

        v74 = MEMORY[0x277CCABB0];
        v75 = sub_238DE36B8(v172);
        v76 = [v74 numberWithUnsignedShort:*(sub_238DE3698(v75 + 132) + 4)];
        v77 = [v5 transportOptions];
        v78 = [v77 triggerOptions];
        v79 = [v78 motionTimeControl];
        [v79 setBlindDuration:v76];
      }

      else
      {
        v76 = [v5 transportOptions];
        v77 = [v76 triggerOptions];
        [v77 setMotionTimeControl:0];
      }

      if (sub_238DE36B8(v172)[148] == 1)
      {
        v80 = MEMORY[0x277CCABB0];
        v81 = sub_238DE36B8(v172);
        v82 = [v80 numberWithUnsignedShort:*sub_238E0A934(v81 + 148)];
        v83 = [v5 transportOptions];
        v84 = [v83 triggerOptions];
        [v84 setMaxPreRollLen:v82];
      }

      else
      {
        v82 = [v5 transportOptions];
        v83 = [v82 triggerOptions];
        [v83 setMaxPreRollLen:0];
      }

      v85 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(v172)[152]];
      v86 = [v5 transportOptions];
      [v86 setIngestMethod:v85];

      v87 = objc_opt_new();
      v88 = [v5 transportOptions];
      [v88 setContainerOptions:v87];

      v89 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(v172)[160]];
      v90 = [v5 transportOptions];
      v91 = [v90 containerOptions];
      [v91 setContainerType:v89];

      if (sub_238DE36B8(v172)[168] == 1)
      {
        v92 = objc_opt_new();
        v93 = [v5 transportOptions];
        v94 = [v93 containerOptions];
        [v94 setCmafContainerOptions:v92];

        v95 = MEMORY[0x277CCABB0];
        v96 = sub_238DE36B8(v172);
        v97 = [v95 numberWithUnsignedChar:*sub_238DE36B8(v96 + 168)];
        v98 = [v5 transportOptions];
        v99 = [v98 containerOptions];
        v100 = [v99 cmafContainerOptions];
        [v100 setCmafInterface:v97];

        v101 = MEMORY[0x277CCABB0];
        v102 = sub_238DE36B8(v172);
        v103 = [v101 numberWithUnsignedShort:*(sub_238DE36B8(v102 + 168) + 1)];
        v104 = [v5 transportOptions];
        v105 = [v104 containerOptions];
        v106 = [v105 cmafContainerOptions];
        [v106 setSegmentDuration:v103];

        v107 = MEMORY[0x277CCABB0];
        v108 = sub_238DE36B8(v172);
        v109 = [v107 numberWithUnsignedShort:*(sub_238DE36B8(v108 + 168) + 2)];
        v110 = [v5 transportOptions];
        v111 = [v110 containerOptions];
        v112 = [v111 cmafContainerOptions];
        [v112 setChunkDuration:v109];

        v113 = MEMORY[0x277CCABB0];
        v114 = sub_238DE36B8(v172);
        v115 = [v113 numberWithUnsignedChar:sub_238DE36B8(v114 + 168)[6]];
        v116 = [v5 transportOptions];
        v117 = [v116 containerOptions];
        v118 = [v117 cmafContainerOptions];
        [v118 setSessionGroup:v115];

        v119 = sub_238DE36B8(v172);
        v120 = sub_238DE36B8(v119 + 168);
        v121 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v120 + 1) length:*(v120 + 2) encoding:4];
        v122 = [v5 transportOptions];
        v123 = [v122 containerOptions];
        v124 = [v123 cmafContainerOptions];
        [v124 setTrackName:v121];

        v125 = [v5 transportOptions];
        v126 = [v125 containerOptions];
        v127 = [v126 cmafContainerOptions];
        v128 = [v127 trackName];

        if (!v128)
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
          v133 = [MEMORY[0x277CBEA90] dataWithBytes:*v132 length:v132[1]];
          v134 = [v5 transportOptions];
          v135 = [v134 containerOptions];
          v136 = [v135 cmafContainerOptions];
          [v136 setCencKey:v133];
        }

        else
        {
          v133 = [v5 transportOptions];
          v134 = [v133 containerOptions];
          v135 = [v134 cmafContainerOptions];
          [v135 setCencKey:0];
        }

        v139 = sub_238DE36B8(v172);
        if (sub_238DE36B8(v139 + 168)[48] == 1)
        {
          v140 = sub_238DE36B8(v172);
          v141 = sub_238DE36B8(v140 + 168);
          v142 = sub_238DE36B8(v141 + 48);
          v143 = [MEMORY[0x277CBEA90] dataWithBytes:*v142 length:v142[1]];
          v144 = [v5 transportOptions];
          v145 = [v144 containerOptions];
          v146 = [v145 cmafContainerOptions];
          [v146 setCencKeyID:v143];
        }

        else
        {
          v143 = [v5 transportOptions];
          v144 = [v143 containerOptions];
          v145 = [v144 cmafContainerOptions];
          [v145 setCencKeyID:0];
        }

        v147 = sub_238DE36B8(v172);
        if (sub_238DE36B8(v147 + 168)[72] == 1)
        {
          v148 = MEMORY[0x277CCABB0];
          v149 = sub_238DE36B8(v172);
          v150 = sub_238DE36B8(v149 + 168);
          v137 = [v148 numberWithBool:*sub_238DE36D8(v150 + 72)];
          v138 = [v5 transportOptions];
          v151 = [v138 containerOptions];
          v152 = [v151 cmafContainerOptions];
          [v152 setMetadataEnabled:v137];
        }

        else
        {
          v137 = [v5 transportOptions];
          v138 = [v137 containerOptions];
          v151 = [v138 cmafContainerOptions];
          [v151 setMetadataEnabled:0];
        }
      }

      else
      {
        v137 = [v5 transportOptions];
        v138 = [v137 containerOptions];
        [v138 setCmafContainerOptions:0];
      }

      if (sub_238DE36B8(v172)[256] == 1)
      {
        v153 = MEMORY[0x277CCABB0];
        v154 = sub_238DE36B8(v172);
        v155 = [v153 numberWithUnsignedInt:*sub_238DE3698(v154 + 256)];
        v156 = [v5 transportOptions];
        [v156 setExpiryTime:v155];
      }

      else
      {
        v155 = [v5 transportOptions];
        [v155 setExpiryTime:0];
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