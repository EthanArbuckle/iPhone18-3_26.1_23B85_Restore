@interface MTRPushAVStreamTransportClusterAllocatePushTransportParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRPushAVStreamTransportClusterAllocatePushTransportParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterAllocatePushTransportParams

- (MTRPushAVStreamTransportClusterAllocatePushTransportParams)init
{
  v8.receiver = self;
  v8.super_class = MTRPushAVStreamTransportClusterAllocatePushTransportParams;
  v2 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    transportOptions = v2->_transportOptions;
    v2->_transportOptions = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterAllocatePushTransportParams);
  v5 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)v4 setTransportOptions:v5];

  v6 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self timedInvokeTimeoutMs];
  [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)v4 setTimedInvokeTimeoutMs:v6];

  v7 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self serverSideProcessingTimeout];
  [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)v4 setServerSideProcessingTimeout:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: transportOptions:%@ >", v5, self->_transportOptions];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v187 = *MEMORY[0x277D85DE8];
  v157[0] = 0;
  v158 = 0;
  v160 = 0;
  v163 = 0;
  v167 = 0;
  v169 = 0;
  v172 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v180 = 0;
  memset(v162, 0, sizeof(v162));
  v156[0] = 0;
  v156[1] = 0;
  v155 = v156;
  v3 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v4 = [v3 streamUsage];
  v157[0] = [v4 unsignedCharValue];

  v5 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v6 = [v5 videoStreamID];
  v7 = v6 == 0;

  if (!v7)
  {
    v158 = 1;
    v159 = 0;
    v8 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v9 = [v8 videoStreamID];
    v10 = v9 == 0;

    if (v10)
    {
      if (BYTE2(v159) == 1)
      {
        BYTE2(v159) = 0;
      }
    }

    else
    {
      LOWORD(v159) = 0;
      BYTE2(v159) = 1;
      v11 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      v12 = [v11 videoStreamID];
      LOWORD(v159) = [v12 unsignedShortValue];
    }
  }

  v13 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v14 = [v13 audioStreamID];
  v15 = v14 == 0;

  if (!v15)
  {
    v160 = 1;
    v161 = 0;
    v16 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v17 = [v16 audioStreamID];
    v18 = v17 == 0;

    if (v18)
    {
      if (BYTE2(v161) == 1)
      {
        BYTE2(v161) = 0;
      }
    }

    else
    {
      LOWORD(v161) = 0;
      BYTE2(v161) = 1;
      v19 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      v20 = [v19 audioStreamID];
      LOWORD(v161) = [v20 unsignedShortValue];
    }
  }

  v21 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v22 = [v21 endpointID];
  *v162 = [v22 unsignedShortValue];

  v23 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v24 = [v23 url];
  v25 = v24;
  sub_238DB9BD8(buf, [v24 UTF8String], objc_msgSend(v24, "lengthOfBytesUsingEncoding:", 4));

  *&v162[2] = *buf;
  v26 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v27 = [v26 triggerOptions];
  v28 = [v27 triggerType];
  v162[18] = [v28 unsignedCharValue];

  v29 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v30 = [v29 triggerOptions];
  v31 = [v30 motionZones];
  v32 = v31 == 0;

  if (!v32)
  {
    v163 = 1;
    v165 = 0;
    v166 = 0;
    v164 = 0;
    v33 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v34 = [v33 triggerOptions];
    v35 = [v34 motionZones];
    v36 = v35 == 0;

    if (v36)
    {
      if (v166 == 1)
      {
        LOBYTE(v166) = 0;
      }
    }

    else
    {
      v164 = 0;
      v165 = 0;
      LOBYTE(v166) = 1;
      v37 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      v38 = [v37 triggerOptions];
      v39 = [v38 motionZones];
      v40 = [v39 count] == 0;

      if (!v40)
      {
        operator new();
      }

      v164 = 0;
      v165 = 0;
    }
  }

  v41 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v42 = [v41 triggerOptions];
  v43 = [v42 motionSensitivity];
  v44 = v43 == 0;

  if (!v44)
  {
    v167 = 1;
    v168 = 0;
    v45 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v46 = [v45 triggerOptions];
    v47 = [v46 motionSensitivity];
    v48 = v47 == 0;

    if (v48)
    {
      if (HIBYTE(v168) == 1)
      {
        HIBYTE(v168) = 0;
      }
    }

    else
    {
      v168 = 256;
      v49 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      v50 = [v49 triggerOptions];
      v51 = [v50 motionSensitivity];
      LOBYTE(v168) = [v51 unsignedCharValue];
    }
  }

  v52 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v53 = [v52 triggerOptions];
  v54 = [v53 motionTimeControl];
  v55 = v54 == 0;

  if (!v55)
  {
    v169 = 1;
    v170 = 0;
    v171 = 0;
    v56 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v57 = [v56 triggerOptions];
    v58 = [v57 motionTimeControl];
    v59 = [v58 initialDuration];
    LOWORD(v170) = [v59 unsignedShortValue];

    v60 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v61 = [v60 triggerOptions];
    v62 = [v61 motionTimeControl];
    v63 = [v62 augmentationDuration];
    WORD1(v170) = [v63 unsignedShortValue];

    v64 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v65 = [v64 triggerOptions];
    v66 = [v65 motionTimeControl];
    v67 = [v66 maxDuration];
    HIDWORD(v170) = [v67 unsignedIntValue];

    v68 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v69 = [v68 triggerOptions];
    v70 = [v69 motionTimeControl];
    v71 = [v70 blindDuration];
    LOWORD(v171) = [v71 unsignedShortValue];
  }

  v72 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v73 = [v72 triggerOptions];
  v74 = [v73 maxPreRollLen];
  v75 = v74 == 0;

  if (!v75)
  {
    v172 = 1;
    v173 = 0;
    v76 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v77 = [v76 triggerOptions];
    v78 = [v77 maxPreRollLen];
    v173 = [v78 unsignedShortValue];
  }

  v79 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v80 = [v79 ingestMethod];
  v174 = [v80 unsignedCharValue];

  v81 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v82 = [v81 containerOptions];
  v83 = [v82 containerType];
  v175 = [v83 unsignedCharValue];

  v84 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v85 = [v84 containerOptions];
  v86 = [v85 cmafContainerOptions];
  v87 = v86 == 0;

  if (!v87)
  {
    v176 = 1;
    memset(v177, 0, sizeof(v177));
    v178 = 0u;
    memset(v179, 0, sizeof(v179));
    v88 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v89 = [v88 containerOptions];
    v90 = [v89 cmafContainerOptions];
    v91 = [v90 cmafInterface];
    LOBYTE(v177[0]) = [v91 unsignedCharValue];

    v92 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v93 = [v92 containerOptions];
    v94 = [v93 cmafContainerOptions];
    v95 = [v94 segmentDuration];
    WORD1(v177[0]) = [v95 unsignedShortValue];

    v96 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v97 = [v96 containerOptions];
    v98 = [v97 cmafContainerOptions];
    v99 = [v98 chunkDuration];
    WORD2(v177[0]) = [v99 unsignedShortValue];

    v100 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v101 = [v100 containerOptions];
    v102 = [v101 cmafContainerOptions];
    v103 = [v102 sessionGroup];
    BYTE6(v177[0]) = [v103 unsignedCharValue];

    v104 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v105 = [v104 containerOptions];
    v106 = [v105 cmafContainerOptions];
    v107 = [v106 trackName];
    v108 = v107;
    sub_238DB9BD8(buf, [v107 UTF8String], objc_msgSend(v107, "lengthOfBytesUsingEncoding:", 4));

    *&v177[1] = *buf;
    v109 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v110 = [v109 containerOptions];
    v111 = [v110 cmafContainerOptions];
    v112 = [v111 cencKey];
    v113 = v112 == 0;

    if (!v113)
    {
      LOBYTE(v177[3]) = 1;
      v178 = 0uLL;
      v114 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      v115 = [v114 containerOptions];
      v116 = [v115 cmafContainerOptions];
      v117 = [v116 cencKey];
      v118 = v117;
      sub_238DB6950(buf, [v117 bytes], objc_msgSend(v117, "length"));

      v178 = *buf;
    }

    v119 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v120 = [v119 containerOptions];
    v121 = [v120 cmafContainerOptions];
    v122 = [v121 cencKeyID];
    v123 = v122 == 0;

    if (!v123)
    {
      LOBYTE(v179[0]) = 1;
      *&v179[1] = 0uLL;
      v124 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      v125 = [v124 containerOptions];
      v126 = [v125 cmafContainerOptions];
      v127 = [v126 cencKeyID];
      v128 = v127;
      sub_238DB6950(buf, [v127 bytes], objc_msgSend(v127, "length"));

      *&v179[1] = *buf;
    }

    v129 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v130 = [v129 containerOptions];
    v131 = [v130 cmafContainerOptions];
    v132 = [v131 metadataEnabled];
    v133 = v132 == 0;

    if (!v133)
    {
      LOWORD(v179[3]) = 1;
      v134 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      v135 = [v134 containerOptions];
      v136 = [v135 cmafContainerOptions];
      v137 = [v136 metadataEnabled];
      BYTE1(v179[3]) = [v137 BOOLValue];
    }
  }

  v138 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v139 = [v138 expiryTime];
  v140 = v139 == 0;

  if (!v140)
  {
    v180 = 1;
    v181 = 0;
    v141 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    v142 = [v141 expiryTime];
    v181 = [v142 unsignedIntValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v154);
  if (v154)
  {
    sub_2393C7B90(buf);
    v184 = 0;
    v185 = 0;
    v183 = &unk_284BB83A8;
    v186 = 0;
    sub_238EA16C4(&v183, &v154, 0);
    sub_2393C7BF0(buf, &v183, 0xFFFFFFFF);
    v143 = sub_238F24A40(v157, buf, 0x100uLL);
    v145 = v143;
    if (v143 || (v143 = sub_238DD2EFC(buf, &v154), v145 = v143, v143))
    {
      v146 = v144;
    }

    else
    {
      sub_238DD2F90(a3, &v154);
      v143 = sub_2393C7114(a3, 21, 256);
      v146 = v151;
      v145 = v143;
    }

    v147 = v143 & 0xFFFFFFFF00000000;
    v183 = &unk_284BB83A8;
    sub_238EA1758(&v185);
    sub_238EA1758(&v184);
  }

  else
  {
    v146 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v147 = 0x924600000000;
    v145 = 11;
  }

  sub_238EA1758(&v154);
  sub_238EA1790(&v155);
  v148 = *MEMORY[0x277D85DE8];
  v149 = v147 | v145;
  v150 = v146;
  result.mFile = v150;
  result.mError = v149;
  result.mLine = HIDWORD(v149);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (a3)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *a3 = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (a3 && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x926300000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end