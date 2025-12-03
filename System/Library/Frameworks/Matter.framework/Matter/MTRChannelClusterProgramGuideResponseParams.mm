@interface MTRChannelClusterProgramGuideResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRChannelClusterProgramGuideResponseParams)init;
- (MTRChannelClusterProgramGuideResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRChannelClusterProgramGuideResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
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

    array = [MEMORY[0x277CBEA60] array];
    programList = v2->_programList;
    v2->_programList = array;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRChannelClusterProgramGuideResponseParams);
  paging = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  [(MTRChannelClusterProgramGuideResponseParams *)v4 setPaging:paging];

  programList = [(MTRChannelClusterProgramGuideResponseParams *)self programList];
  [(MTRChannelClusterProgramGuideResponseParams *)v4 setProgramList:programList];

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

- (MTRChannelClusterProgramGuideResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = MTRChannelClusterProgramGuideResponseParams;
  v7 = [(MTRChannelClusterProgramGuideResponseParams *)&v17 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:1284 commandID:5 error:error];
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

    sub_238DD3F98(v9, v10, error);
  }

  v11 = 0;
LABEL_8:
  sub_238EA1758(&v16);
LABEL_10:

  return v11;
}

- (MTRChannelClusterProgramGuideResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRChannelClusterProgramGuideResponseParams;
  v4 = [(MTRChannelClusterProgramGuideResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRChannelClusterProgramGuideResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRChannelClusterProgramGuideResponseParams *)self setPaging:v5];

  if (*struct != 1 || (sub_238DE36B8(struct)[56] & 1) == 0)
  {
    paging = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    [paging setPreviousToken:0];
LABEL_22:

    goto LABEL_23;
  }

  v6 = objc_opt_new();
  paging2 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  [paging2 setPreviousToken:v6];

  v8 = sub_238DE36B8(struct);
  if ((v8[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (*v8 == 1)
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = sub_238DE36B8(struct);
    if ((v10[56] & 1) == 0)
    {
      goto LABEL_189;
    }

    paging4 = [v9 numberWithUnsignedShort:*sub_238E0A934(v10)];
    paging3 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    previousToken = [paging3 previousToken];
    [previousToken setLimit:paging4];
  }

  else
  {
    paging4 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    paging3 = [paging4 previousToken];
    [paging3 setLimit:0];
  }

  v15 = sub_238DE36B8(struct);
  if ((v15[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (v15[8] == 1)
  {
    v16 = sub_238DE36B8(struct);
    if ((v16[56] & 1) == 0)
    {
      goto LABEL_189;
    }

    v17 = sub_238DE36B8(v16 + 8);
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v17 length:v17[1] encoding:4];
    paging5 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    previousToken2 = [paging5 previousToken];
    [previousToken2 setAfter:v18];

    paging6 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    previousToken3 = [paging6 previousToken];
    after = [previousToken3 after];

    if (!after)
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
    paging7 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    previousToken4 = [paging7 previousToken];
    [previousToken4 setAfter:0];
  }

  v27 = sub_238DE36B8(struct);
  if ((v27[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (v27[32] != 1)
  {
    paging = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    previousToken5 = [paging previousToken];
    [previousToken5 setBefore:0];

    goto LABEL_22;
  }

  v28 = sub_238DE36B8(struct);
  if ((v28[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  v29 = sub_238DE36B8(v28 + 32);
  v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v29 length:v29[1] encoding:4];
  paging8 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  previousToken6 = [paging8 previousToken];
  [previousToken6 setBefore:v30];

  paging9 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  previousToken7 = [paging9 previousToken];
  before = [previousToken7 before];

  if (!before)
  {
    v24 = 0x6E9B00000000;
    goto LABEL_43;
  }

LABEL_23:
  if (*(struct + 72) != 1 || (sub_238DE36B8(struct + 72)[56] & 1) == 0)
  {
    paging10 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    [paging10 setNextToken:0];
LABEL_45:

    goto LABEL_46;
  }

  v37 = objc_opt_new();
  paging11 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  [paging11 setNextToken:v37];

  v39 = sub_238DE36B8(struct + 72);
  if ((v39[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (*v39 == 1)
  {
    v40 = MEMORY[0x277CCABB0];
    v41 = sub_238DE36B8(struct + 72);
    if ((v41[56] & 1) == 0)
    {
      goto LABEL_189;
    }

    paging13 = [v40 numberWithUnsignedShort:*sub_238E0A934(v41)];
    paging12 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    nextToken = [paging12 nextToken];
    [nextToken setLimit:paging13];
  }

  else
  {
    paging13 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    paging12 = [paging13 nextToken];
    [paging12 setLimit:0];
  }

  v46 = sub_238DE36B8(struct + 72);
  if ((v46[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (v46[8] == 1)
  {
    v47 = sub_238DE36B8(struct + 72);
    if ((v47[56] & 1) == 0)
    {
      goto LABEL_189;
    }

    v48 = sub_238DE36B8(v47 + 8);
    v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v48 length:v48[1] encoding:4];
    paging14 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    nextToken2 = [paging14 nextToken];
    [nextToken2 setAfter:v49];

    paging15 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    nextToken3 = [paging15 nextToken];
    after2 = [nextToken3 after];

    if (!after2)
    {
      v24 = 0x6EB200000000;
      goto LABEL_43;
    }
  }

  else
  {
    paging16 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    nextToken4 = [paging16 nextToken];
    [nextToken4 setAfter:0];
  }

  v57 = sub_238DE36B8(struct + 72);
  if ((v57[56] & 1) == 0)
  {
LABEL_189:
    sub_238EA195C();
  }

  if (v57[32] != 1)
  {
    paging10 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    nextToken5 = [paging10 nextToken];
    [nextToken5 setBefore:0];

    goto LABEL_45;
  }

  v58 = sub_238DE36B8(struct + 72);
  if ((v58[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  v59 = sub_238DE36B8(v58 + 32);
  v60 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v59 length:v59[1] encoding:4];
  paging17 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  nextToken6 = [paging17 nextToken];
  [nextToken6 setBefore:v60];

  paging18 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  nextToken7 = [paging18 nextToken];
  before2 = [nextToken7 before];

  if (!before2)
  {
    v24 = 0x6EBB00000000;
    goto LABEL_43;
  }

LABEL_46:
  v173 = objc_opt_new();
  sub_238EA3774(v180, struct + 144);
  v69 = 0x278A6F000uLL;
  v174 = 47;
  v70 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  while (sub_238EA1A80(v180) && sub_238EA3810(v180))
  {
    v71 = *(v69 + 2488);
    v72 = objc_opt_new();
    v73 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v180[11] length:v180[12] encoding:4];
    [v72 setIdentifier:v73];

    identifier = [v72 identifier];

    if (!identifier)
    {
      v172 = 0x6ED000000000;
      goto LABEL_181;
    }

    v75 = objc_opt_new();
    [v72 setChannel:v75];

    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v181];
    channel = [v72 channel];
    [channel setMajorNumber:v76];

    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v182];
    channel2 = [v72 channel];
    [channel2 setMinorNumber:v78];

    if (v183[0] == 1)
    {
      v80 = sub_238DE36B8(v183);
      v81 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v80 length:v80[1] encoding:4];
      channel3 = [v72 channel];
      [channel3 setName:v81];

      channel4 = [v72 channel];
      name = [channel4 name];

      if (!name)
      {
        v172 = 0x6ED900000000;
        goto LABEL_181;
      }
    }

    else
    {
      channel5 = [v72 channel];
      [channel5 setName:0];
    }

    if (v184[0] == 1)
    {
      v86 = sub_238DE36B8(v184);
      v87 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v86 length:v86[1] encoding:4];
      channel6 = [v72 channel];
      [channel6 setCallSign:v87];

      channel7 = [v72 channel];
      callSign = [channel7 callSign];

      if (!callSign)
      {
        v172 = 0x6EE200000000;
        goto LABEL_181;
      }
    }

    else
    {
      channel8 = [v72 channel];
      [channel8 setCallSign:0];
    }

    if (v185[0] == 1)
    {
      v92 = sub_238DE36B8(v185);
      v93 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v92 length:v92[1] encoding:4];
      channel9 = [v72 channel];
      [channel9 setAffiliateCallSign:v93];

      channel10 = [v72 channel];
      affiliateCallSign = [channel10 affiliateCallSign];

      if (!affiliateCallSign)
      {
        v172 = 0x6EEB00000000;
        goto LABEL_181;
      }
    }

    else
    {
      channel11 = [v72 channel];
      [channel11 setAffiliateCallSign:0];
    }

    if (v186[0] == 1)
    {
      v98 = sub_238DE36B8(v186);
      v99 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v98 length:v98[1] encoding:4];
      channel12 = [v72 channel];
      [channel12 setIdentifier:v99];

      channel13 = [v72 channel];
      identifier2 = [channel13 identifier];

      if (!identifier2)
      {
        v172 = 0x6EF400000000;
        goto LABEL_181;
      }
    }

    else
    {
      channel14 = [v72 channel];
      [channel14 setIdentifier:0];
    }

    if (v187[0] == 1)
    {
      channel16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v187)];
      channel15 = [v72 channel];
      [channel15 setType:channel16];
    }

    else
    {
      channel16 = [v72 channel];
      [channel16 setType:0];
    }

    v106 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v188];
    [v72 setStartTime:v106];

    v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v189];
    [v72 setEndTime:v107];

    v108 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v190 length:v191 encoding:4];
    [v72 setTitle:v108];

    title = [v72 title];

    if (!title)
    {
      v172 = 0x6F0300000000;
      goto LABEL_181;
    }

    if (v192[0] == 1)
    {
      v110 = sub_238DE36B8(v192);
      v111 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v110 length:v110[1] encoding:4];
      [v72 setSubtitle:v111];

      subtitle = [v72 subtitle];

      if (!subtitle)
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

      descriptionString = [v72 descriptionString];

      if (!descriptionString)
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

      thumbnailUrl = [v72 thumbnailUrl];

      if (!thumbnailUrl)
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

      posterArtUrl = [v72 posterArtUrl];

      if (!posterArtUrl)
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

      dvbiUrl = [v72 dvbiUrl];

      if (!dvbiUrl)
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

      releaseDate = [v72 releaseDate];

      if (!releaseDate)
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

      parentalGuidanceText = [v72 parentalGuidanceText];

      if (!parentalGuidanceText)
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
      seriesInfo = [v72 seriesInfo];
      [seriesInfo setSeason:v139];

      seriesInfo2 = [v72 seriesInfo];
      season = [seriesInfo2 season];

      if (!season)
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
      seriesInfo3 = [v72 seriesInfo];
      [seriesInfo3 setEpisode:v144];

      seriesInfo4 = [v72 seriesInfo];
      episode = [seriesInfo4 episode];

      if (!episode)
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

        category = [v152 category];

        if (!category)
        {
          v172 = 0x6F9500000000;
          goto LABEL_178;
        }

        if (v179 == 1)
        {
          v155 = sub_238DE36B8(&v179);
          v156 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v155 length:v155[1] encoding:4];
          [v152 setSubCategory:v156];

          subCategory = [v152 subCategory];

          if (!subCategory)
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

        name2 = [v159 name];

        if (!name2)
        {
          v172 = 0x6FB600000000;
LABEL_173:

          goto LABEL_179;
        }

        v162 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v179 length:*(&v179 + 1) encoding:4];
        [v159 setRole:v162];

        role = [v159 role];

        if (!role)
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

        name3 = [v152 name];

        if (!name3)
        {
          v172 = 0x6FD300000000;
          goto LABEL_178;
        }

        v167 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v179 length:*(&v179 + 1) encoding:4];
        [v152 setRole:v167];

        role2 = [v152 role];

        if (!role2)
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