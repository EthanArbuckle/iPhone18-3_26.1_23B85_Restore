@interface MTRContentLauncherClusterLaunchURLParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRContentLauncherClusterLaunchURLParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRContentLauncherClusterLaunchURLParams

- (MTRContentLauncherClusterLaunchURLParams)init
{
  v10.receiver = self;
  v10.super_class = MTRContentLauncherClusterLaunchURLParams;
  v2 = [(MTRContentLauncherClusterLaunchURLParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    contentURL = v2->_contentURL;
    v2->_contentURL = &stru_284BD0DD8;

    displayString = v3->_displayString;
    v3->_displayString = 0;

    brandingInformation = v3->_brandingInformation;
    v3->_brandingInformation = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRContentLauncherClusterLaunchURLParams);
  v5 = [(MTRContentLauncherClusterLaunchURLParams *)self contentURL];
  [(MTRContentLauncherClusterLaunchURLParams *)v4 setContentURL:v5];

  v6 = [(MTRContentLauncherClusterLaunchURLParams *)self displayString];
  [(MTRContentLauncherClusterLaunchURLParams *)v4 setDisplayString:v6];

  v7 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
  [(MTRContentLauncherClusterLaunchURLParams *)v4 setBrandingInformation:v7];

  v8 = [(MTRContentLauncherClusterLaunchURLParams *)self timedInvokeTimeoutMs];
  [(MTRContentLauncherClusterLaunchURLParams *)v4 setTimedInvokeTimeoutMs:v8];

  v9 = [(MTRContentLauncherClusterLaunchURLParams *)self serverSideProcessingTimeout];
  [(MTRContentLauncherClusterLaunchURLParams *)v4 setServerSideProcessingTimeout:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: contentURL:%@ displayString:%@; brandingInformation:%@; >", v5, self->_contentURL, self->_displayString, self->_brandingInformation];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v185 = 0;
  v182 = 0uLL;
  v183 = 0;
  v181[0] = 0;
  v181[1] = 0;
  v180 = v181;
  v5 = [(MTRContentLauncherClusterLaunchURLParams *)self contentURL];
  sub_238DB9BD8(v174, [v5 UTF8String], objc_msgSend(v5, "lengthOfBytesUsingEncoding:", 4));

  v182 = v174[0];
  v6 = [(MTRContentLauncherClusterLaunchURLParams *)self displayString];

  if (v6)
  {
    v183 = 1;
    v184 = 0uLL;
    v7 = [(MTRContentLauncherClusterLaunchURLParams *)self displayString];
    sub_238DB9BD8(v174, [v7 UTF8String], objc_msgSend(v7, "lengthOfBytesUsingEncoding:", 4));

    v184 = v174[0];
  }

  v8 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];

  if (v8)
  {
    v185 = 1;
    v186 = 0u;
    memset(v187, 0, sizeof(v187));
    memset(v188, 0, sizeof(v188));
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    memset(v192, 0, sizeof(v192));
    memset(v193, 0, sizeof(v193));
    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    memset(v197, 0, 88);
    v9 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
    v10 = [v9 providerName];
    sub_238DB9BD8(v174, [v10 UTF8String], objc_msgSend(v10, "lengthOfBytesUsingEncoding:", 4));

    v186 = v174[0];
    v11 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
    v12 = [v11 background];

    if (v12)
    {
      LOBYTE(v187[0]) = 1;
      memset(v187 + 8, 0, 80);
      v13 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v14 = [v13 background];
      v15 = [v14 imageURL];

      if (v15)
      {
        BYTE8(v187[0]) = 1;
        v187[1] = 0uLL;
        v16 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v17 = [v16 background];
        v18 = [v17 imageURL];
        sub_238DB9BD8(v174, [v18 UTF8String], objc_msgSend(v18, "lengthOfBytesUsingEncoding:", 4));

        v187[1] = v174[0];
      }

      v19 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v20 = [v19 background];
      v21 = [v20 color];

      if (v21)
      {
        LOBYTE(v187[2]) = 1;
        *(&v187[2] + 1) = 0;
        *&v187[3] = 0;
        v22 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v23 = [v22 background];
        v24 = [v23 color];
        sub_238DB9BD8(v174, [v24 UTF8String], objc_msgSend(v24, "lengthOfBytesUsingEncoding:", 4));

        *(&v187[2] + 8) = v174[0];
      }

      v25 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v26 = [v25 background];
      v27 = [v26 size];

      if (v27)
      {
        BYTE8(v187[3]) = 1;
        memset(&v187[4], 0, 24);
        v28 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v29 = [v28 background];
        v30 = [v29 size];
        v31 = [v30 width];
        [v31 doubleValue];
        *&v187[4] = v32;

        v33 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v34 = [v33 background];
        v35 = [v34 size];
        v36 = [v35 height];
        [v36 doubleValue];
        *(&v187[4] + 1) = v37;

        v38 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v39 = [v38 background];
        v40 = [v39 size];
        v41 = [v40 metric];
        LOBYTE(v187[5]) = [v41 unsignedCharValue];
      }
    }

    v42 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
    v43 = [v42 logo];

    if (v43)
    {
      BYTE8(v187[5]) = 1;
      memset(v188, 0, sizeof(v188));
      v189 = 0u;
      v190 = 0u;
      v191 = 0u;
      v44 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v45 = [v44 logo];
      v46 = [v45 imageURL];

      if (v46)
      {
        LOBYTE(v188[0]) = 1;
        *(&v188[0] + 1) = 0;
        *&v188[1] = 0;
        v47 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v48 = [v47 logo];
        v49 = [v48 imageURL];
        sub_238DB9BD8(v174, [v49 UTF8String], objc_msgSend(v49, "lengthOfBytesUsingEncoding:", 4));

        *(v188 + 8) = v174[0];
      }

      v50 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v51 = [v50 logo];
      v52 = [v51 color];

      if (v52)
      {
        BYTE8(v188[1]) = 1;
        v189 = 0uLL;
        v53 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v54 = [v53 logo];
        v55 = [v54 color];
        sub_238DB9BD8(v174, [v55 UTF8String], objc_msgSend(v55, "lengthOfBytesUsingEncoding:", 4));

        v189 = v174[0];
      }

      v56 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v57 = [v56 logo];
      v58 = [v57 size];

      if (v58)
      {
        LOBYTE(v190) = 1;
        v191 = 0uLL;
        *(&v190 + 1) = 0;
        v59 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v60 = [v59 logo];
        v61 = [v60 size];
        v62 = [v61 width];
        [v62 doubleValue];
        *(&v190 + 1) = v63;

        v64 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v65 = [v64 logo];
        v66 = [v65 size];
        v67 = [v66 height];
        [v67 doubleValue];
        *&v191 = v68;

        v69 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v70 = [v69 logo];
        v71 = [v70 size];
        v72 = [v71 metric];
        BYTE8(v191) = [v72 unsignedCharValue];
      }
    }

    v73 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
    v74 = [v73 progressBar];

    if (v74)
    {
      LOBYTE(v192[0]) = 1;
      memset(v192 + 8, 0, 80);
      v75 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v76 = [v75 progressBar];
      v77 = [v76 imageURL];

      if (v77)
      {
        BYTE8(v192[0]) = 1;
        v192[1] = 0uLL;
        v78 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v79 = [v78 progressBar];
        v80 = [v79 imageURL];
        sub_238DB9BD8(v174, [v80 UTF8String], objc_msgSend(v80, "lengthOfBytesUsingEncoding:", 4));

        v192[1] = v174[0];
      }

      v81 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v82 = [v81 progressBar];
      v83 = [v82 color];

      if (v83)
      {
        LOBYTE(v192[2]) = 1;
        *(&v192[2] + 1) = 0;
        *&v192[3] = 0;
        v84 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v85 = [v84 progressBar];
        v86 = [v85 color];
        sub_238DB9BD8(v174, [v86 UTF8String], objc_msgSend(v86, "lengthOfBytesUsingEncoding:", 4));

        *(&v192[2] + 8) = v174[0];
      }

      v87 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v88 = [v87 progressBar];
      v89 = [v88 size];

      if (v89)
      {
        BYTE8(v192[3]) = 1;
        memset(&v192[4], 0, 24);
        v90 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v91 = [v90 progressBar];
        v92 = [v91 size];
        v93 = [v92 width];
        [v93 doubleValue];
        *&v192[4] = v94;

        v95 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v96 = [v95 progressBar];
        v97 = [v96 size];
        v98 = [v97 height];
        [v98 doubleValue];
        *(&v192[4] + 1) = v99;

        v100 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v101 = [v100 progressBar];
        v102 = [v101 size];
        v103 = [v102 metric];
        LOBYTE(v192[5]) = [v103 unsignedCharValue];
      }
    }

    v104 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
    v105 = [v104 splash];

    if (v105)
    {
      BYTE8(v192[5]) = 1;
      memset(v193, 0, sizeof(v193));
      v194 = 0u;
      v195 = 0u;
      v196 = 0u;
      v106 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v107 = [v106 splash];
      v108 = [v107 imageURL];

      if (v108)
      {
        LOBYTE(v193[0]) = 1;
        *(&v193[0] + 1) = 0;
        *&v193[1] = 0;
        v109 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v110 = [v109 splash];
        v111 = [v110 imageURL];
        sub_238DB9BD8(v174, [v111 UTF8String], objc_msgSend(v111, "lengthOfBytesUsingEncoding:", 4));

        *(v193 + 8) = v174[0];
      }

      v112 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v113 = [v112 splash];
      v114 = [v113 color];

      if (v114)
      {
        BYTE8(v193[1]) = 1;
        v194 = 0uLL;
        v115 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v116 = [v115 splash];
        v117 = [v116 color];
        sub_238DB9BD8(v174, [v117 UTF8String], objc_msgSend(v117, "lengthOfBytesUsingEncoding:", 4));

        v194 = v174[0];
      }

      v118 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v119 = [v118 splash];
      v120 = [v119 size];

      if (v120)
      {
        LOBYTE(v195) = 1;
        *(&v195 + 1) = 0;
        v196 = 0uLL;
        v121 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v122 = [v121 splash];
        v123 = [v122 size];
        v124 = [v123 width];
        [v124 doubleValue];
        *(&v195 + 1) = v125;

        v126 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v127 = [v126 splash];
        v128 = [v127 size];
        v129 = [v128 height];
        [v129 doubleValue];
        *&v196 = v130;

        v131 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v132 = [v131 splash];
        v133 = [v132 size];
        v134 = [v133 metric];
        BYTE8(v196) = [v134 unsignedCharValue];
      }
    }

    v135 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
    v136 = [v135 waterMark];

    if (v136)
    {
      LOBYTE(v197[0]) = 1;
      memset(v197 + 8, 0, 80);
      v137 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v138 = [v137 waterMark];
      v139 = [v138 imageURL];

      if (v139)
      {
        BYTE8(v197[0]) = 1;
        v197[1] = 0uLL;
        v140 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v141 = [v140 waterMark];
        v142 = [v141 imageURL];
        sub_238DB9BD8(v174, [v142 UTF8String], objc_msgSend(v142, "lengthOfBytesUsingEncoding:", 4));

        v197[1] = v174[0];
      }

      v143 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v144 = [v143 waterMark];
      v145 = [v144 color];

      if (v145)
      {
        LOBYTE(v197[2]) = 1;
        *(&v197[2] + 1) = 0;
        *&v197[3] = 0;
        v146 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v147 = [v146 waterMark];
        v148 = [v147 color];
        sub_238DB9BD8(v174, [v148 UTF8String], objc_msgSend(v148, "lengthOfBytesUsingEncoding:", 4));

        *(&v197[2] + 8) = v174[0];
      }

      v149 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      v150 = [v149 waterMark];
      v151 = [v150 size];

      if (v151)
      {
        BYTE8(v197[3]) = 1;
        memset(&v197[4], 0, 24);
        v152 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v153 = [v152 waterMark];
        v154 = [v153 size];
        v155 = [v154 width];
        [v155 doubleValue];
        *&v197[4] = v156;

        v157 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v158 = [v157 waterMark];
        v159 = [v158 size];
        v160 = [v159 height];
        [v160 doubleValue];
        *(&v197[4] + 1) = v161;

        v162 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        v163 = [v162 waterMark];
        v164 = [v163 size];
        v165 = [v164 metric];
        LOBYTE(v197[5]) = [v165 unsignedCharValue];
      }
    }
  }

  sub_2393D9C18(0x62FuLL, 0, &v179);
  if (v179)
  {
    sub_2393C7B90(v174);
    v176 = 0;
    v177 = 0;
    v175 = &unk_284BB83A8;
    v178 = 0;
    sub_238EA16C4(&v175, &v179, 0);
    sub_2393C7BF0(v174, &v175, 0xFFFFFFFF);
    v166 = sub_238F0D3C8(&v182, v174, 0x100uLL);
    v168 = v166;
    if (v166 || (v166 = sub_238DD2EFC(v174, &v179), v168 = v166, v166))
    {
      v169 = v167;
    }

    else
    {
      sub_238DD2F90(a3, &v179);
      v166 = sub_2393C7114(a3, 21, 256);
      v169 = v173;
      v168 = v166;
    }

    v170 = v166 & 0xFFFFFFFF00000000;
    v175 = &unk_284BB83A8;
    sub_238EA1758(&v177);
    sub_238EA1758(&v176);
  }

  else
  {
    v169 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v170 = 0x79F500000000;
    v168 = 11;
  }

  sub_238EA1758(&v179);
  sub_238EA1790(&v180);
  v171 = v170 | v168;
  v172 = v169;
  result.mFile = v172;
  result.mError = v171;
  result.mLine = HIDWORD(v171);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRContentLauncherClusterLaunchURLParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x7A1200000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end