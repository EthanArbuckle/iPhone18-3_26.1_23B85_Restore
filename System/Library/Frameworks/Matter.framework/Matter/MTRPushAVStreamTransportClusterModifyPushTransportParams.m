@interface MTRPushAVStreamTransportClusterModifyPushTransportParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRPushAVStreamTransportClusterModifyPushTransportParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterModifyPushTransportParams

- (MTRPushAVStreamTransportClusterModifyPushTransportParams)init
{
  v10.receiver = self;
  v10.super_class = MTRPushAVStreamTransportClusterModifyPushTransportParams;
  v2 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    connectionID = v2->_connectionID;
    v2->_connectionID = &unk_284C3E4C8;

    v5 = objc_opt_new();
    transportOptions = v3->_transportOptions;
    v3->_transportOptions = v5;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterModifyPushTransportParams);
  v5 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self connectionID];
  [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)v4 setConnectionID:v5];

  v6 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)v4 setTransportOptions:v6];

  v7 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self timedInvokeTimeoutMs];
  [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)v4 setTimedInvokeTimeoutMs:v7];

  v8 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self serverSideProcessingTimeout];
  [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)v4 setServerSideProcessingTimeout:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: connectionID:%@ transportOptions:%@; >", v5, self->_connectionID, self->_transportOptions];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v189 = *MEMORY[0x277D85DE8];
  *v158 = 0;
  v159 = 0;
  v160 = 0;
  v162 = 0;
  v165 = 0;
  v169 = 0;
  v171 = 0;
  v174 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v182 = 0;
  memset(v164, 0, sizeof(v164));
  v157[0] = 0;
  v157[1] = 0;
  v156 = v157;
  v3 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self connectionID];
  *v158 = [v3 unsignedShortValue];

  v4 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v5 = [v4 streamUsage];
  v159 = [v5 unsignedCharValue];

  v6 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v7 = [v6 videoStreamID];
  v8 = v7 == 0;

  if (!v8)
  {
    v160 = 1;
    v161 = 0;
    v9 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v10 = [v9 videoStreamID];
    v11 = v10 == 0;

    if (v11)
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
      v12 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      v13 = [v12 videoStreamID];
      LOWORD(v161) = [v13 unsignedShortValue];
    }
  }

  v14 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v15 = [v14 audioStreamID];
  v16 = v15 == 0;

  if (!v16)
  {
    v162 = 1;
    v163 = 0;
    v17 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v18 = [v17 audioStreamID];
    v19 = v18 == 0;

    if (v19)
    {
      if (BYTE2(v163) == 1)
      {
        BYTE2(v163) = 0;
      }
    }

    else
    {
      LOWORD(v163) = 0;
      BYTE2(v163) = 1;
      v20 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      v21 = [v20 audioStreamID];
      LOWORD(v163) = [v21 unsignedShortValue];
    }
  }

  v22 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v23 = [v22 endpointID];
  *v164 = [v23 unsignedShortValue];

  v24 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v25 = [v24 url];
  v26 = v25;
  sub_238DB9BD8(buf, [v25 UTF8String], objc_msgSend(v25, "lengthOfBytesUsingEncoding:", 4));

  *&v164[2] = *buf;
  v27 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v28 = [v27 triggerOptions];
  v29 = [v28 triggerType];
  v164[18] = [v29 unsignedCharValue];

  v30 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v31 = [v30 triggerOptions];
  v32 = [v31 motionZones];
  v33 = v32 == 0;

  if (!v33)
  {
    v165 = 1;
    v167 = 0;
    v168 = 0;
    v166 = 0;
    v34 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v35 = [v34 triggerOptions];
    v36 = [v35 motionZones];
    v37 = v36 == 0;

    if (v37)
    {
      if (v168 == 1)
      {
        LOBYTE(v168) = 0;
      }
    }

    else
    {
      v166 = 0;
      v167 = 0;
      LOBYTE(v168) = 1;
      v38 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      v39 = [v38 triggerOptions];
      v40 = [v39 motionZones];
      v41 = [v40 count] == 0;

      if (!v41)
      {
        operator new();
      }

      v166 = 0;
      v167 = 0;
    }
  }

  v42 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v43 = [v42 triggerOptions];
  v44 = [v43 motionSensitivity];
  v45 = v44 == 0;

  if (!v45)
  {
    v169 = 1;
    v170 = 0;
    v46 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v47 = [v46 triggerOptions];
    v48 = [v47 motionSensitivity];
    v49 = v48 == 0;

    if (v49)
    {
      if (HIBYTE(v170) == 1)
      {
        HIBYTE(v170) = 0;
      }
    }

    else
    {
      v170 = 256;
      v50 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      v51 = [v50 triggerOptions];
      v52 = [v51 motionSensitivity];
      LOBYTE(v170) = [v52 unsignedCharValue];
    }
  }

  v53 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v54 = [v53 triggerOptions];
  v55 = [v54 motionTimeControl];
  v56 = v55 == 0;

  if (!v56)
  {
    v171 = 1;
    v172 = 0;
    v173 = 0;
    v57 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v58 = [v57 triggerOptions];
    v59 = [v58 motionTimeControl];
    v60 = [v59 initialDuration];
    LOWORD(v172) = [v60 unsignedShortValue];

    v61 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v62 = [v61 triggerOptions];
    v63 = [v62 motionTimeControl];
    v64 = [v63 augmentationDuration];
    WORD1(v172) = [v64 unsignedShortValue];

    v65 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v66 = [v65 triggerOptions];
    v67 = [v66 motionTimeControl];
    v68 = [v67 maxDuration];
    HIDWORD(v172) = [v68 unsignedIntValue];

    v69 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v70 = [v69 triggerOptions];
    v71 = [v70 motionTimeControl];
    v72 = [v71 blindDuration];
    LOWORD(v173) = [v72 unsignedShortValue];
  }

  v73 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v74 = [v73 triggerOptions];
  v75 = [v74 maxPreRollLen];
  v76 = v75 == 0;

  if (!v76)
  {
    v174 = 1;
    v175 = 0;
    v77 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v78 = [v77 triggerOptions];
    v79 = [v78 maxPreRollLen];
    v175 = [v79 unsignedShortValue];
  }

  v80 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v81 = [v80 ingestMethod];
  v176 = [v81 unsignedCharValue];

  v82 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v83 = [v82 containerOptions];
  v84 = [v83 containerType];
  v177 = [v84 unsignedCharValue];

  v85 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v86 = [v85 containerOptions];
  v87 = [v86 cmafContainerOptions];
  v88 = v87 == 0;

  if (!v88)
  {
    v178 = 1;
    memset(v179, 0, sizeof(v179));
    v180 = 0u;
    memset(v181, 0, sizeof(v181));
    v89 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v90 = [v89 containerOptions];
    v91 = [v90 cmafContainerOptions];
    v92 = [v91 cmafInterface];
    LOBYTE(v179[0]) = [v92 unsignedCharValue];

    v93 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v94 = [v93 containerOptions];
    v95 = [v94 cmafContainerOptions];
    v96 = [v95 segmentDuration];
    WORD1(v179[0]) = [v96 unsignedShortValue];

    v97 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v98 = [v97 containerOptions];
    v99 = [v98 cmafContainerOptions];
    v100 = [v99 chunkDuration];
    WORD2(v179[0]) = [v100 unsignedShortValue];

    v101 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v102 = [v101 containerOptions];
    v103 = [v102 cmafContainerOptions];
    v104 = [v103 sessionGroup];
    BYTE6(v179[0]) = [v104 unsignedCharValue];

    v105 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v106 = [v105 containerOptions];
    v107 = [v106 cmafContainerOptions];
    v108 = [v107 trackName];
    v109 = v108;
    sub_238DB9BD8(buf, [v108 UTF8String], objc_msgSend(v108, "lengthOfBytesUsingEncoding:", 4));

    *(v179 + 8) = *buf;
    v110 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v111 = [v110 containerOptions];
    v112 = [v111 cmafContainerOptions];
    v113 = [v112 cencKey];
    v114 = v113 == 0;

    if (!v114)
    {
      BYTE8(v179[1]) = 1;
      v180 = 0uLL;
      v115 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      v116 = [v115 containerOptions];
      v117 = [v116 cmafContainerOptions];
      v118 = [v117 cencKey];
      v119 = v118;
      sub_238DB6950(buf, [v118 bytes], objc_msgSend(v118, "length"));

      v180 = *buf;
    }

    v120 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v121 = [v120 containerOptions];
    v122 = [v121 cmafContainerOptions];
    v123 = [v122 cencKeyID];
    v124 = v123 == 0;

    if (!v124)
    {
      LOBYTE(v181[0]) = 1;
      *(&v181[0] + 1) = 0;
      *&v181[1] = 0;
      v125 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      v126 = [v125 containerOptions];
      v127 = [v126 cmafContainerOptions];
      v128 = [v127 cencKeyID];
      v129 = v128;
      sub_238DB6950(buf, [v128 bytes], objc_msgSend(v128, "length"));

      *(v181 + 8) = *buf;
    }

    v130 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v131 = [v130 containerOptions];
    v132 = [v131 cmafContainerOptions];
    v133 = [v132 metadataEnabled];
    v134 = v133 == 0;

    if (!v134)
    {
      WORD4(v181[1]) = 1;
      v135 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      v136 = [v135 containerOptions];
      v137 = [v136 cmafContainerOptions];
      v138 = [v137 metadataEnabled];
      BYTE9(v181[1]) = [v138 BOOLValue];
    }
  }

  v139 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v140 = [v139 expiryTime];
  v141 = v140 == 0;

  if (!v141)
  {
    v182 = 1;
    v183 = 0;
    v142 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    v143 = [v142 expiryTime];
    v183 = [v143 unsignedIntValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v155);
  if (v155)
  {
    sub_2393C7B90(buf);
    v186 = 0;
    v187 = 0;
    v185 = &unk_284BB83A8;
    v188 = 0;
    sub_238EA16C4(&v185, &v155, 0);
    sub_2393C7BF0(buf, &v185, 0xFFFFFFFF);
    v144 = sub_238F24C2C(v158, buf, 0x100uLL);
    v146 = v144;
    if (v144 || (v144 = sub_238DD2EFC(buf, &v155), v146 = v144, v144))
    {
      v147 = v145;
    }

    else
    {
      sub_238DD2F90(a3, &v155);
      v144 = sub_2393C7114(a3, 21, 256);
      v147 = v152;
      v146 = v144;
    }

    v148 = v144 & 0xFFFFFFFF00000000;
    v185 = &unk_284BB83A8;
    sub_238EA1758(&v187);
    sub_238EA1758(&v186);
  }

  else
  {
    v147 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v148 = 0x942E00000000;
    v146 = 11;
  }

  sub_238EA1758(&v155);
  sub_238EA1790(&v156);
  v149 = *MEMORY[0x277D85DE8];
  v150 = v148 | v146;
  v151 = v147;
  result.mFile = v151;
  result.mError = v150;
  result.mLine = HIDWORD(v150);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x944B00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end