@interface MTRChannelClusterProgramGuideResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRChannelClusterProgramGuideResponseParams)init;
- (MTRChannelClusterProgramGuideResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRChannelClusterProgramGuideResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRChannelClusterProgramGuideResponseParams

- (MTRChannelClusterProgramGuideResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTRChannelClusterProgramGuideResponseParams;
  v2 = [(MTRChannelClusterProgramGuideResponseParams *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    paging = v2->_paging;
    v2->_paging = v3;

    v5 = [MEMORY[0x277CBEA60] array];
    programList = v2->_programList;
    v2->_programList = v5;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRChannelClusterProgramGuideResponseParams);
  v5 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  [(MTRChannelClusterProgramGuideResponseParams *)v4 setPaging:v5];

  v6 = [(MTRChannelClusterProgramGuideResponseParams *)self programList];
  [(MTRChannelClusterProgramGuideResponseParams *)v4 setProgramList:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: paging:%@ programList:%@; >", v5, self->_paging, self->_programList];;

  return v6;
}

- (MTRChannelClusterProgramGuideResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = MTRChannelClusterProgramGuideResponseParams;
  v7 = [(MTRChannelClusterProgramGuideResponseParams *)&v17 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:1284 commandID:5 error:a4];
  if (v16)
  {
    sub_2393C5AAC(v15);
    sub_2393C5ADC(v8, *(v16 + 1), *(v16 + 3));
    v9 = sub_2393C6FD0(v15, 256);
    if (!v9)
    {
      v13[0] = 0;
      v13[72] = 0;
      sub_2393C5AAC(v14);
      sub_2393C5ADC(v14, 0, 0);
      v9 = sub_238F05F80(v13, v15);
      if (!v9)
      {
        v9 = [(MTRChannelClusterProgramGuideResponseParams *)v7 _setFieldsFromDecodableStruct:v13];
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
  sub_238EA1758(&v16);
LABEL_10:

  return v11;
}

- (MTRChannelClusterProgramGuideResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRChannelClusterProgramGuideResponseParams;
  v4 = [(MTRChannelClusterProgramGuideResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRChannelClusterProgramGuideResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  [(MTRChannelClusterProgramGuideResponseParams *)self setPaging:v5];

  if (*a3 != 1 || (sub_238DE36B8(a3)[56] & 1) == 0)
  {
    v14 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    [v14 setPreviousToken:0];
LABEL_22:

    goto LABEL_23;
  }

  v6 = objc_opt_new();
  v7 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  [v7 setPreviousToken:v6];

  v8 = sub_238DE36B8(a3);
  if ((v8[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (*v8 == 1)
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = sub_238DE36B8(a3);
    if ((v10[56] & 1) == 0)
    {
      goto LABEL_189;
    }

    v11 = [v9 numberWithUnsignedShort:*sub_238E0A934(v10)];
    v12 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    v13 = [v12 previousToken];
    [v13 setLimit:v11];
  }

  else
  {
    v11 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    v12 = [v11 previousToken];
    [v12 setLimit:0];
  }

  v15 = sub_238DE36B8(a3);
  if ((v15[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (v15[8] == 1)
  {
    v16 = sub_238DE36B8(a3);
    if ((v16[56] & 1) == 0)
    {
      goto LABEL_189;
    }

    v17 = sub_238DE36B8(v16 + 8);
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v17 length:v17[1] encoding:4];
    v19 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    v20 = [v19 previousToken];
    [v20 setAfter:v18];

    v21 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    v22 = [v21 previousToken];
    v23 = [v22 after];

    if (!v23)
    {
      v24 = 0x6E9200000000;
LABEL_43:
      v66 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v67 = 47;
      goto LABEL_184;
    }
  }

  else
  {
    v25 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    v26 = [v25 previousToken];
    [v26 setAfter:0];
  }

  v27 = sub_238DE36B8(a3);
  if ((v27[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (v27[32] != 1)
  {
    v14 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    v36 = [v14 previousToken];
    [v36 setBefore:0];

    goto LABEL_22;
  }

  v28 = sub_238DE36B8(a3);
  if ((v28[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  v29 = sub_238DE36B8(v28 + 32);
  v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v29 length:v29[1] encoding:4];
  v31 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  v32 = [v31 previousToken];
  [v32 setBefore:v30];

  v33 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  v34 = [v33 previousToken];
  v35 = [v34 before];

  if (!v35)
  {
    v24 = 0x6E9B00000000;
    goto LABEL_43;
  }

LABEL_23:
  if (*(a3 + 72) != 1 || (sub_238DE36B8(a3 + 72)[56] & 1) == 0)
  {
    v45 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    [v45 setNextToken:0];
LABEL_45:

    goto LABEL_46;
  }

  v37 = objc_opt_new();
  v38 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  [v38 setNextToken:v37];

  v39 = sub_238DE36B8(a3 + 72);
  if ((v39[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (*v39 == 1)
  {
    v40 = MEMORY[0x277CCABB0];
    v41 = sub_238DE36B8(a3 + 72);
    if ((v41[56] & 1) == 0)
    {
      goto LABEL_189;
    }

    v42 = [v40 numberWithUnsignedShort:*sub_238E0A934(v41)];
    v43 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    v44 = [v43 nextToken];
    [v44 setLimit:v42];
  }

  else
  {
    v42 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    v43 = [v42 nextToken];
    [v43 setLimit:0];
  }

  v46 = sub_238DE36B8(a3 + 72);
  if ((v46[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (v46[8] == 1)
  {
    v47 = sub_238DE36B8(a3 + 72);
    if ((v47[56] & 1) == 0)
    {
      goto LABEL_189;
    }

    v48 = sub_238DE36B8(v47 + 8);
    v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v48 length:v48[1] encoding:4];
    v50 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    v51 = [v50 nextToken];
    [v51 setAfter:v49];

    v52 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    v53 = [v52 nextToken];
    v54 = [v53 after];

    if (!v54)
    {
      v24 = 0x6EB200000000;
      goto LABEL_43;
    }
  }

  else
  {
    v55 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    v56 = [v55 nextToken];
    [v56 setAfter:0];
  }

  v57 = sub_238DE36B8(a3 + 72);
  if ((v57[56] & 1) == 0)
  {
LABEL_189:
    sub_238EA195C();
  }

  if (v57[32] != 1)
  {
    v45 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    v68 = [v45 nextToken];
    [v68 setBefore:0];

    goto LABEL_45;
  }

  v58 = sub_238DE36B8(a3 + 72);
  if ((v58[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  v59 = sub_238DE36B8(v58 + 32);
  v60 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v59 length:v59[1] encoding:4];
  v61 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  v62 = [v61 nextToken];
  [v62 setBefore:v60];

  v63 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  v64 = [v63 nextToken];
  v65 = [v64 before];

  if (!v65)
  {
    v24 = 0x6EBB00000000;
    goto LABEL_43;
  }

LABEL_46:
  v173 = objc_opt_new();
  sub_238EA3774(v180, a3 + 144);
  v69 = 0x278A6F000uLL;
  v174 = 47;
  v70 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  while (sub_238EA1A80(v180) && sub_238EA3810(v180))
  {
    v71 = *(v69 + 2488);
    v72 = objc_opt_new();
    v73 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v180[11] length:v180[12] encoding:4];
    [v72 setIdentifier:v73];

    v74 = [v72 identifier];

    if (!v74)
    {
      v172 = 0x6ED000000000;
      goto LABEL_181;
    }

    v75 = objc_opt_new();
    [v72 setChannel:v75];

    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v181];
    v77 = [v72 channel];
    [v77 setMajorNumber:v76];

    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v182];
    v79 = [v72 channel];
    [v79 setMinorNumber:v78];

    if (v183[0] == 1)
    {
      v80 = sub_238DE36B8(v183);
      v81 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v80 length:v80[1] encoding:4];
      v82 = [v72 channel];
      [v82 setName:v81];

      v83 = [v72 channel];
      v84 = [v83 name];

      if (!v84)
      {
        v172 = 0x6ED900000000;
        goto LABEL_181;
      }
    }

    else
    {
      v85 = [v72 channel];
      [v85 setName:0];
    }

    if (v184[0] == 1)
    {
      v86 = sub_238DE36B8(v184);
      v87 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v86 length:v86[1] encoding:4];
      v88 = [v72 channel];
      [v88 setCallSign:v87];

      v89 = [v72 channel];
      v90 = [v89 callSign];

      if (!v90)
      {
        v172 = 0x6EE200000000;
        goto LABEL_181;
      }
    }

    else
    {
      v91 = [v72 channel];
      [v91 setCallSign:0];
    }

    if (v185[0] == 1)
    {
      v92 = sub_238DE36B8(v185);
      v93 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v92 length:v92[1] encoding:4];
      v94 = [v72 channel];
      [v94 setAffiliateCallSign:v93];

      v95 = [v72 channel];
      v96 = [v95 affiliateCallSign];

      if (!v96)
      {
        v172 = 0x6EEB00000000;
        goto LABEL_181;
      }
    }

    else
    {
      v97 = [v72 channel];
      [v97 setAffiliateCallSign:0];
    }

    if (v186[0] == 1)
    {
      v98 = sub_238DE36B8(v186);
      v99 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v98 length:v98[1] encoding:4];
      v100 = [v72 channel];
      [v100 setIdentifier:v99];

      v101 = [v72 channel];
      v102 = [v101 identifier];

      if (!v102)
      {
        v172 = 0x6EF400000000;
        goto LABEL_181;
      }
    }

    else
    {
      v103 = [v72 channel];
      [v103 setIdentifier:0];
    }

    if (v187[0] == 1)
    {
      v104 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v187)];
      v105 = [v72 channel];
      [v105 setType:v104];
    }

    else
    {
      v104 = [v72 channel];
      [v104 setType:0];
    }

    v106 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v188];
    [v72 setStartTime:v106];

    v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v189];
    [v72 setEndTime:v107];

    v108 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v190 length:v191 encoding:4];
    [v72 setTitle:v108];

    v109 = [v72 title];

    if (!v109)
    {
      v172 = 0x6F0300000000;
      goto LABEL_181;
    }

    if (v192[0] == 1)
    {
      v110 = sub_238DE36B8(v192);
      v111 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v110 length:v110[1] encoding:4];
      [v72 setSubtitle:v111];

      v112 = [v72 subtitle];

      if (!v112)
      {
        v172 = 0x6F0900000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v72 setSubtitle:0];
    }

    if (v193[0] == 1)
    {
      v113 = sub_238DE36B8(v193);
      v114 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v113 length:v113[1] encoding:4];
      [v72 setDescriptionString:v114];

      v115 = [v72 descriptionString];

      if (!v115)
      {
        v172 = 0x6F1200000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v72 setDescriptionString:0];
    }

    if (v194[0] == 1)
    {
      v116 = objc_opt_new();
      v117 = sub_238DE36B8(v194);
      sub_2393C5AAC(v177);
      v175 = 0;
      v176 = 0;
      sub_2393C5BDC(v177, v117);
      v178 = 0uLL;
      while (sub_238E43364(&v175))
      {
        v118 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v178 length:*(&v178 + 1) encoding:4];
        if (!v118)
        {
          v172 = 0x6F2100000000;
LABEL_166:
          v169 = v174;
          goto LABEL_180;
        }

        [v116 addObject:v118];
      }

      if (v175 != 33)
      {
        v172 = v175;
        if (v175)
        {
          goto LABEL_186;
        }
      }

      [v72 setAudioLanguages:v116];
    }

    else
    {
      [v72 setAudioLanguages:0];
    }

    if (v195[0] == 1)
    {
      v116 = objc_opt_new();
      v119 = sub_238DE36B8(v195);
      sub_2393C5AAC(v177);
      v175 = 0;
      v176 = 0;
      sub_2393C5BDC(v177, v119);
      v178 = 0uLL;
      while (sub_238E43364(&v175))
      {
        v120 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v178 length:*(&v178 + 1) encoding:4];
        if (!v120)
        {
          v172 = 0x6F3800000000;
          goto LABEL_166;
        }

        [v116 addObject:v120];
      }

      if (v175 != 33)
      {
        v172 = v175;
        if (v175)
        {
LABEL_186:
          v70 = v176;
          LODWORD(v174) = v172;
          goto LABEL_166;
        }
      }

      [v72 setRatings:v116];
    }

    else
    {
      [v72 setRatings:0];
    }

    if (v196[0] == 1)
    {
      v121 = sub_238DE36B8(v196);
      v122 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v121 length:v121[1] encoding:4];
      [v72 setThumbnailUrl:v122];

      v123 = [v72 thumbnailUrl];

      if (!v123)
      {
        v172 = 0x6F4900000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v72 setThumbnailUrl:0];
    }

    if (v197[0] == 1)
    {
      v124 = sub_238DE36B8(v197);
      v125 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v124 length:v124[1] encoding:4];
      [v72 setPosterArtUrl:v125];

      v126 = [v72 posterArtUrl];

      if (!v126)
      {
        v172 = 0x6F5200000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v72 setPosterArtUrl:0];
    }

    if (v198[0] == 1)
    {
      v127 = sub_238DE36B8(v198);
      v128 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v127 length:v127[1] encoding:4];
      [v72 setDvbiUrl:v128];

      v129 = [v72 dvbiUrl];

      if (!v129)
      {
        v172 = 0x6F5B00000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v72 setDvbiUrl:0];
    }

    if (v199[0] == 1)
    {
      v130 = sub_238DE36B8(v199);
      v131 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v130 length:v130[1] encoding:4];
      [v72 setReleaseDate:v131];

      v132 = [v72 releaseDate];

      if (!v132)
      {
        v172 = 0x6F6400000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v72 setReleaseDate:0];
    }

    if (v200[0] == 1)
    {
      v133 = sub_238DE36B8(v200);
      v134 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v133 length:v133[1] encoding:4];
      [v72 setParentalGuidanceText:v134];

      v135 = [v72 parentalGuidanceText];

      if (!v135)
      {
        v172 = 0x6F6D00000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v72 setParentalGuidanceText:0];
    }

    if (v201[0] == 1)
    {
      v136 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v201)];
      [v72 setRecordingFlag:v136];
    }

    else
    {
      [v72 setRecordingFlag:0];
    }

    if (v202[0] == 1 && (sub_238DE36B8(v202)[32] & 1) != 0)
    {
      v137 = objc_opt_new();
      [v72 setSeriesInfo:v137];

      v138 = sub_238DE36B8(v202);
      if ((v138[32] & 1) == 0)
      {
        goto LABEL_190;
      }

      v139 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v138 length:*(v138 + 1) encoding:4];
      v140 = [v72 seriesInfo];
      [v140 setSeason:v139];

      v141 = [v72 seriesInfo];
      v142 = [v141 season];

      if (!v142)
      {
        v172 = 0x6F7F00000000;
        goto LABEL_181;
      }

      v143 = sub_238DE36B8(v202);
      if (v143[32] != 1)
      {
LABEL_190:
        sub_238EA195C();
      }

      v144 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v143 + 2) length:*(v143 + 3) encoding:4];
      v145 = [v72 seriesInfo];
      [v145 setEpisode:v144];

      v146 = [v72 seriesInfo];
      v147 = [v146 episode];

      if (!v147)
      {
        v172 = 0x6F8400000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v72 setSeriesInfo:0];
    }

    if (v203[0] == 1)
    {
      v116 = objc_opt_new();
      v148 = sub_238DE36B8(v203);
      sub_2393C5AAC(v177);
      v175 = 0;
      v176 = 0;
      sub_2393C5BDC(v177, v148);
      v178 = 0uLL;
      LOBYTE(v179) = 0;
      while (1)
      {
        v149 = sub_238EA1A80(&v175);
        LODWORD(v150) = v175;
        if (v175)
        {
          v149 = 0;
        }

        if (!v149)
        {
          break;
        }

        v178 = 0uLL;
        LOBYTE(v179) = 0;
        v150 = sub_238F063FC(&v178, v177);
        v175 = v150;
        v176 = v151;
        if (v150)
        {
          break;
        }

        v152 = objc_opt_new();
        v153 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v178 length:*(&v178 + 1) encoding:4];
        [v152 setCategory:v153];

        v154 = [v152 category];

        if (!v154)
        {
          v172 = 0x6F9500000000;
          goto LABEL_178;
        }

        if (v179 == 1)
        {
          v155 = sub_238DE36B8(&v179);
          v156 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v155 length:v155[1] encoding:4];
          [v152 setSubCategory:v156];

          v157 = [v152 subCategory];

          if (!v157)
          {
            v172 = 0x6F9B00000000;
            goto LABEL_178;
          }
        }

        else
        {
          [v152 setSubCategory:0];
        }

        [v116 addObject:v152];
      }

      if (v150 != 33)
      {
        v172 = v175;
        if (v175)
        {
          goto LABEL_187;
        }
      }

      [v72 setCategoryList:v116];
    }

    else
    {
      [v72 setCategoryList:0];
    }

    if (v204[0] == 1)
    {
      v116 = objc_opt_new();
      v158 = sub_238DE36B8(v204);
      sub_2393C5AAC(v177);
      v175 = 0;
      v176 = 0;
      sub_2393C5BDC(v177, v158);
      v179 = 0u;
      v178 = 0u;
      while (sub_238E433BC(&v175))
      {
        v159 = objc_opt_new();
        v160 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v178 length:*(&v178 + 1) encoding:4];
        [v159 setName:v160];

        v161 = [v159 name];

        if (!v161)
        {
          v172 = 0x6FB600000000;
LABEL_173:

          goto LABEL_179;
        }

        v162 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v179 length:*(&v179 + 1) encoding:4];
        [v159 setRole:v162];

        v163 = [v159 role];

        if (!v163)
        {
          v172 = 0x6FBB00000000;
          goto LABEL_173;
        }

        [v116 addObject:v159];
      }

      if (v175 != 33)
      {
        v172 = v175;
        if (v175)
        {
LABEL_187:
          v70 = v176;
          v169 = v172;
          goto LABEL_180;
        }
      }

      [v72 setCastList:v116];
    }

    else
    {
      [v72 setCastList:0];
    }

    if (v205[0] == 1)
    {
      v116 = objc_opt_new();
      v164 = sub_238DE36B8(v205);
      sub_2393C5AAC(v177);
      v175 = 0;
      v176 = 0;
      sub_2393C5BDC(v177, v164);
      v179 = 0u;
      v178 = 0u;
      while (sub_238E433BC(&v175))
      {
        v152 = objc_opt_new();
        v165 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v178 length:*(&v178 + 1) encoding:4];
        [v152 setName:v165];

        v166 = [v152 name];

        if (!v166)
        {
          v172 = 0x6FD300000000;
          goto LABEL_178;
        }

        v167 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v179 length:*(&v179 + 1) encoding:4];
        [v152 setRole:v167];

        v168 = [v152 role];

        if (!v168)
        {
          v172 = 0x6FD800000000;
LABEL_178:

LABEL_179:
          v70 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
          v169 = 47;
LABEL_180:

          v174 = v169;
LABEL_181:

          v66 = v70;
          v67 = v174;
LABEL_182:
          v24 = v172 & 0xFFFFFFFF00000000;
          goto LABEL_183;
        }

        [v116 addObject:v152];
      }

      if (v175 != 33)
      {
        v172 = v175;
        if (v175)
        {
          goto LABEL_187;
        }
      }

      [v72 setExternalIDList:v116];
    }

    else
    {
      [v72 setExternalIDList:0];
    }

    [v173 addObject:v72];

    v69 = 0x278A6F000;
  }

  if (LODWORD(v180[0]) != 33)
  {
    v172 = v180[0];
    v67 = LODWORD(v180[0]);
    if (LODWORD(v180[0]))
    {
      v66 = v180[1];
      goto LABEL_182;
    }
  }

  [(MTRChannelClusterProgramGuideResponseParams *)self setProgramList:v173];
  v66 = 0;
  v24 = 0;
  v67 = 0;
LABEL_183:

LABEL_184:
  v170 = v67 | v24;
  v171 = v66;
  result.mFile = v171;
  result.mError = v170;
  result.mLine = HIDWORD(v170);
  return result;
}

@end