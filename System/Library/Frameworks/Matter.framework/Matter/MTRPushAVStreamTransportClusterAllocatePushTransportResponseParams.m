@interface MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)init;
- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams);
  v5 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)v4 setTransportConfiguration:v5];

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

- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams;
  v7 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)&v19 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:1365 commandID:1 error:a4];
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

    sub_238DD3F98(v9, v10, a4);
  }

  v11 = 0;
LABEL_8:
  sub_238EA1758(&v18);
LABEL_10:

  return v11;
}

- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams;
  v4 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self setTransportConfiguration:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*a3];
  v7 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  [v7 setConnectionID:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a3 + 2)];
  v9 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  [v9 setTransportStatus:v8];

  if (*(a3 + 8) != 1)
  {
    v22 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    [v22 setTransportOptions:0];
LABEL_64:

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a3 + 280)];
    v192 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    [v192 setFabricIndex:v48];

    v59 = 0;
    v55 = 0;
    v58 = 0;
    goto LABEL_65;
  }

  v10 = objc_opt_new();
  v11 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  [v11 setTransportOptions:v10];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36B8(a3 + 8)];
  v13 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v14 = [v13 transportOptions];
  [v14 setStreamUsage:v12];

  if (sub_238DE36B8(a3 + 8)[2] == 1 && (v15 = sub_238DE36B8(a3 + 8), (sub_238E0A934(v15 + 2)[2] & 1) != 0))
  {
    v16 = MEMORY[0x277CCABB0];
    v17 = sub_238DE36B8(a3 + 8);
    v18 = sub_238E0A934(v17 + 2);
    if ((v18[2] & 1) == 0)
    {
      goto LABEL_67;
    }

    v19 = [v16 numberWithUnsignedShort:*v18];
    v20 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v21 = [v20 transportOptions];
    [v21 setVideoStreamID:v19];
  }

  else
  {
    v19 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v20 = [v19 transportOptions];
    [v20 setVideoStreamID:0];
  }

  if (sub_238DE36B8(a3 + 8)[8] == 1 && (v23 = sub_238DE36B8(a3 + 8), (sub_238E0A934(v23 + 8)[2] & 1) != 0))
  {
    v24 = MEMORY[0x277CCABB0];
    v25 = sub_238DE36B8(a3 + 8);
    v26 = sub_238E0A934(v25 + 8);
    if ((v26[2] & 1) == 0)
    {
      goto LABEL_67;
    }

    v27 = [v24 numberWithUnsignedShort:*v26];
    v28 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v29 = [v28 transportOptions];
    [v29 setAudioStreamID:v27];
  }

  else
  {
    v27 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v28 = [v27 transportOptions];
    [v28 setAudioStreamID:0];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(sub_238DE36B8(a3 + 8) + 7)];
  v31 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v32 = [v31 transportOptions];
  [v32 setEndpointID:v30];

  v33 = sub_238DE36B8(a3 + 8);
  v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v33 + 2) length:*(v33 + 3) encoding:4];
  v35 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v36 = [v35 transportOptions];
  [v36 setUrl:v34];

  v37 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v38 = [v37 transportOptions];
  v39 = [v38 url];

  if (!v39)
  {
    v55 = 0x92D700000000;
    goto LABEL_51;
  }

  v40 = objc_opt_new();
  v41 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v42 = [v41 transportOptions];
  [v42 setTriggerOptions:v40];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(a3 + 8)[32]];
  v44 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v45 = [v44 transportOptions];
  v46 = [v45 triggerOptions];
  [v46 setTriggerType:v43];

  if (sub_238DE36B8(a3 + 8)[40] == 1 && (v47 = sub_238DE36B8(a3 + 8), (sub_238DE36B8(v47 + 40)[72] & 1) != 0))
  {
    v48 = objc_opt_new();
    v49 = sub_238DE36B8(a3 + 8);
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

      [v48 addObject:{v52, v195}];
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

    v56 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v57 = [v56 transportOptions];
    v60 = [v57 triggerOptions];
    [v60 setMotionZones:v48];
  }

  else
  {
    v48 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v56 = [v48 transportOptions];
    v57 = [v56 triggerOptions];
    [v57 setMotionZones:0];
  }

  if (sub_238DE36B8(a3 + 8)[128] != 1 || (v61 = sub_238DE36B8(a3 + 8), (sub_238DE36D8(v61 + 128)[1] & 1) == 0))
  {
    v65 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v66 = [v65 transportOptions];
    v67 = [v66 triggerOptions];
    [v67 setMotionSensitivity:0];
    goto LABEL_39;
  }

  v62 = MEMORY[0x277CCABB0];
  v63 = sub_238DE36B8(a3 + 8);
  v64 = sub_238DE36D8(v63 + 128);
  if ((v64[1] & 1) == 0)
  {
LABEL_67:
    sub_238EA195C();
  }

  v65 = [v62 numberWithUnsignedChar:*v64];
  v66 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v67 = [v66 transportOptions];
  v68 = [v67 triggerOptions];
  [v68 setMotionSensitivity:v65];

LABEL_39:
  if (sub_238DE36B8(a3 + 8)[132] == 1)
  {
    v69 = objc_opt_new();
    v70 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v71 = [v70 transportOptions];
    v72 = [v71 triggerOptions];
    [v72 setMotionTimeControl:v69];

    v73 = MEMORY[0x277CCABB0];
    v74 = sub_238DE36B8(a3 + 8);
    v75 = [v73 numberWithUnsignedShort:*sub_238DE3698(v74 + 132)];
    v76 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v77 = [v76 transportOptions];
    v78 = [v77 triggerOptions];
    v79 = [v78 motionTimeControl];
    [v79 setInitialDuration:v75];

    v80 = MEMORY[0x277CCABB0];
    v81 = sub_238DE36B8(a3 + 8);
    v82 = [v80 numberWithUnsignedShort:*(sub_238DE3698(v81 + 132) + 1)];
    v83 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v84 = [v83 transportOptions];
    v85 = [v84 triggerOptions];
    v86 = [v85 motionTimeControl];
    [v86 setAugmentationDuration:v82];

    v87 = MEMORY[0x277CCABB0];
    v88 = sub_238DE36B8(a3 + 8);
    v89 = [v87 numberWithUnsignedInt:*(sub_238DE3698(v88 + 132) + 1)];
    v90 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v91 = [v90 transportOptions];
    v92 = [v91 triggerOptions];
    v93 = [v92 motionTimeControl];
    [v93 setMaxDuration:v89];

    v94 = MEMORY[0x277CCABB0];
    v95 = sub_238DE36B8(a3 + 8);
    v96 = [v94 numberWithUnsignedShort:*(sub_238DE3698(v95 + 132) + 4)];
    v97 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v98 = [v97 transportOptions];
    v99 = [v98 triggerOptions];
    v100 = [v99 motionTimeControl];
    [v100 setBlindDuration:v96];
  }

  else
  {
    v96 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v97 = [v96 transportOptions];
    v98 = [v97 triggerOptions];
    [v98 setMotionTimeControl:0];
  }

  if (sub_238DE36B8(a3 + 8)[148] == 1)
  {
    v101 = MEMORY[0x277CCABB0];
    v102 = sub_238DE36B8(a3 + 8);
    v103 = [v101 numberWithUnsignedShort:*sub_238E0A934(v102 + 148)];
    v104 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v105 = [v104 transportOptions];
    v106 = [v105 triggerOptions];
    [v106 setMaxPreRollLen:v103];
  }

  else
  {
    v103 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v104 = [v103 transportOptions];
    v105 = [v104 triggerOptions];
    [v105 setMaxPreRollLen:0];
  }

  v107 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(a3 + 8)[152]];
  v108 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v109 = [v108 transportOptions];
  [v109 setIngestMethod:v107];

  v110 = objc_opt_new();
  v111 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v112 = [v111 transportOptions];
  [v112 setContainerOptions:v110];

  v113 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sub_238DE36B8(a3 + 8)[160]];
  v114 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v115 = [v114 transportOptions];
  v116 = [v115 containerOptions];
  [v116 setContainerType:v113];

  if (sub_238DE36B8(a3 + 8)[168] != 1)
  {
    v170 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    v171 = [v170 transportOptions];
    v172 = [v171 containerOptions];
    [v172 setCmafContainerOptions:0];
LABEL_60:

    if (sub_238DE36B8(a3 + 8)[256] == 1)
    {
      v188 = MEMORY[0x277CCABB0];
      v189 = sub_238DE36B8(a3 + 8);
      v22 = [v188 numberWithUnsignedInt:*sub_238DE3698(v189 + 256)];
      v190 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      v191 = [v190 transportOptions];
      [v191 setExpiryTime:v22];
    }

    else
    {
      v22 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      v190 = [v22 transportOptions];
      [v190 setExpiryTime:0];
    }

    goto LABEL_64;
  }

  v117 = objc_opt_new();
  v118 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v119 = [v118 transportOptions];
  v120 = [v119 containerOptions];
  [v120 setCmafContainerOptions:v117];

  v121 = MEMORY[0x277CCABB0];
  v122 = sub_238DE36B8(a3 + 8);
  v123 = [v121 numberWithUnsignedChar:*sub_238DE36B8(v122 + 168)];
  v124 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v125 = [v124 transportOptions];
  v126 = [v125 containerOptions];
  v127 = [v126 cmafContainerOptions];
  [v127 setCmafInterface:v123];

  v128 = MEMORY[0x277CCABB0];
  v129 = sub_238DE36B8(a3 + 8);
  v130 = [v128 numberWithUnsignedShort:*(sub_238DE36B8(v129 + 168) + 1)];
  v131 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v132 = [v131 transportOptions];
  v133 = [v132 containerOptions];
  v134 = [v133 cmafContainerOptions];
  [v134 setSegmentDuration:v130];

  v135 = MEMORY[0x277CCABB0];
  v136 = sub_238DE36B8(a3 + 8);
  v137 = [v135 numberWithUnsignedShort:*(sub_238DE36B8(v136 + 168) + 2)];
  v138 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v139 = [v138 transportOptions];
  v140 = [v139 containerOptions];
  v141 = [v140 cmafContainerOptions];
  [v141 setChunkDuration:v137];

  v142 = MEMORY[0x277CCABB0];
  v143 = sub_238DE36B8(a3 + 8);
  v144 = [v142 numberWithUnsignedChar:sub_238DE36B8(v143 + 168)[6]];
  v145 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v146 = [v145 transportOptions];
  v147 = [v146 containerOptions];
  v148 = [v147 cmafContainerOptions];
  [v148 setSessionGroup:v144];

  v149 = sub_238DE36B8(a3 + 8);
  v150 = sub_238DE36B8(v149 + 168);
  v151 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v150 + 1) length:*(v150 + 2) encoding:4];
  v152 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v153 = [v152 transportOptions];
  v154 = [v153 containerOptions];
  v155 = [v154 cmafContainerOptions];
  [v155 setTrackName:v151];

  v156 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  v157 = [v156 transportOptions];
  v158 = [v157 containerOptions];
  v159 = [v158 cmafContainerOptions];
  v160 = [v159 trackName];

  if (v160)
  {
    v161 = sub_238DE36B8(a3 + 8);
    if (sub_238DE36B8(v161 + 168)[24] == 1)
    {
      v162 = sub_238DE36B8(a3 + 8);
      v163 = sub_238DE36B8(v162 + 168);
      v164 = sub_238DE36B8(v163 + 24);
      v165 = [MEMORY[0x277CBEA90] dataWithBytes:*v164 length:v164[1]];
      v166 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      v167 = [v166 transportOptions];
      v168 = [v167 containerOptions];
      v169 = [v168 cmafContainerOptions];
      [v169 setCencKey:v165];
    }

    else
    {
      v165 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      v166 = [v165 transportOptions];
      v167 = [v166 containerOptions];
      v168 = [v167 cmafContainerOptions];
      [v168 setCencKey:0];
    }

    v173 = sub_238DE36B8(a3 + 8);
    if (sub_238DE36B8(v173 + 168)[48] == 1)
    {
      v174 = sub_238DE36B8(a3 + 8);
      v175 = sub_238DE36B8(v174 + 168);
      v176 = sub_238DE36B8(v175 + 48);
      v177 = [MEMORY[0x277CBEA90] dataWithBytes:*v176 length:v176[1]];
      v178 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      v179 = [v178 transportOptions];
      v180 = [v179 containerOptions];
      v181 = [v180 cmafContainerOptions];
      [v181 setCencKeyID:v177];
    }

    else
    {
      v177 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      v178 = [v177 transportOptions];
      v179 = [v178 containerOptions];
      v180 = [v179 cmafContainerOptions];
      [v180 setCencKeyID:0];
    }

    v182 = sub_238DE36B8(a3 + 8);
    if (sub_238DE36B8(v182 + 168)[72] == 1)
    {
      v183 = MEMORY[0x277CCABB0];
      v184 = sub_238DE36B8(a3 + 8);
      v185 = sub_238DE36B8(v184 + 168);
      v170 = [v183 numberWithBool:*sub_238DE36D8(v185 + 72)];
      v171 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      v172 = [v171 transportOptions];
      v186 = [v172 containerOptions];
      v187 = [v186 cmafContainerOptions];
      [v187 setMetadataEnabled:v170];
    }

    else
    {
      v170 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      v171 = [v170 transportOptions];
      v172 = [v171 containerOptions];
      v186 = [v172 cmafContainerOptions];
      [v186 setMetadataEnabled:0];
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