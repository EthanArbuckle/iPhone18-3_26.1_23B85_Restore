@interface MTRContentLauncherClusterLaunchURLParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRContentLauncherClusterLaunchURLParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRContentLauncherClusterLaunchURLParams);
  contentURL = [(MTRContentLauncherClusterLaunchURLParams *)self contentURL];
  [(MTRContentLauncherClusterLaunchURLParams *)v4 setContentURL:contentURL];

  displayString = [(MTRContentLauncherClusterLaunchURLParams *)self displayString];
  [(MTRContentLauncherClusterLaunchURLParams *)v4 setDisplayString:displayString];

  brandingInformation = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
  [(MTRContentLauncherClusterLaunchURLParams *)v4 setBrandingInformation:brandingInformation];

  timedInvokeTimeoutMs = [(MTRContentLauncherClusterLaunchURLParams *)self timedInvokeTimeoutMs];
  [(MTRContentLauncherClusterLaunchURLParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRContentLauncherClusterLaunchURLParams *)self serverSideProcessingTimeout];
  [(MTRContentLauncherClusterLaunchURLParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v185 = 0;
  v182 = 0uLL;
  v183 = 0;
  v181[0] = 0;
  v181[1] = 0;
  v180 = v181;
  contentURL = [(MTRContentLauncherClusterLaunchURLParams *)self contentURL];
  sub_238DB9BD8(v174, [contentURL UTF8String], objc_msgSend(contentURL, "lengthOfBytesUsingEncoding:", 4));

  v182 = v174[0];
  displayString = [(MTRContentLauncherClusterLaunchURLParams *)self displayString];

  if (displayString)
  {
    v183 = 1;
    v184 = 0uLL;
    displayString2 = [(MTRContentLauncherClusterLaunchURLParams *)self displayString];
    sub_238DB9BD8(v174, [displayString2 UTF8String], objc_msgSend(displayString2, "lengthOfBytesUsingEncoding:", 4));

    v184 = v174[0];
  }

  brandingInformation = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];

  if (brandingInformation)
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
    brandingInformation2 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
    providerName = [brandingInformation2 providerName];
    sub_238DB9BD8(v174, [providerName UTF8String], objc_msgSend(providerName, "lengthOfBytesUsingEncoding:", 4));

    v186 = v174[0];
    brandingInformation3 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
    background = [brandingInformation3 background];

    if (background)
    {
      LOBYTE(v187[0]) = 1;
      memset(v187 + 8, 0, 80);
      brandingInformation4 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      background2 = [brandingInformation4 background];
      imageURL = [background2 imageURL];

      if (imageURL)
      {
        BYTE8(v187[0]) = 1;
        v187[1] = 0uLL;
        brandingInformation5 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        background3 = [brandingInformation5 background];
        imageURL2 = [background3 imageURL];
        sub_238DB9BD8(v174, [imageURL2 UTF8String], objc_msgSend(imageURL2, "lengthOfBytesUsingEncoding:", 4));

        v187[1] = v174[0];
      }

      brandingInformation6 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      background4 = [brandingInformation6 background];
      color = [background4 color];

      if (color)
      {
        LOBYTE(v187[2]) = 1;
        *(&v187[2] + 1) = 0;
        *&v187[3] = 0;
        brandingInformation7 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        background5 = [brandingInformation7 background];
        color2 = [background5 color];
        sub_238DB9BD8(v174, [color2 UTF8String], objc_msgSend(color2, "lengthOfBytesUsingEncoding:", 4));

        *(&v187[2] + 8) = v174[0];
      }

      brandingInformation8 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      background6 = [brandingInformation8 background];
      v27 = [background6 size];

      if (v27)
      {
        BYTE8(v187[3]) = 1;
        memset(&v187[4], 0, 24);
        brandingInformation9 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        background7 = [brandingInformation9 background];
        v30 = [background7 size];
        width = [v30 width];
        [width doubleValue];
        *&v187[4] = v32;

        brandingInformation10 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        background8 = [brandingInformation10 background];
        v35 = [background8 size];
        height = [v35 height];
        [height doubleValue];
        *(&v187[4] + 1) = v37;

        brandingInformation11 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        background9 = [brandingInformation11 background];
        v40 = [background9 size];
        metric = [v40 metric];
        LOBYTE(v187[5]) = [metric unsignedCharValue];
      }
    }

    brandingInformation12 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
    logo = [brandingInformation12 logo];

    if (logo)
    {
      BYTE8(v187[5]) = 1;
      memset(v188, 0, sizeof(v188));
      v189 = 0u;
      v190 = 0u;
      v191 = 0u;
      brandingInformation13 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      logo2 = [brandingInformation13 logo];
      imageURL3 = [logo2 imageURL];

      if (imageURL3)
      {
        LOBYTE(v188[0]) = 1;
        *(&v188[0] + 1) = 0;
        *&v188[1] = 0;
        brandingInformation14 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        logo3 = [brandingInformation14 logo];
        imageURL4 = [logo3 imageURL];
        sub_238DB9BD8(v174, [imageURL4 UTF8String], objc_msgSend(imageURL4, "lengthOfBytesUsingEncoding:", 4));

        *(v188 + 8) = v174[0];
      }

      brandingInformation15 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      logo4 = [brandingInformation15 logo];
      color3 = [logo4 color];

      if (color3)
      {
        BYTE8(v188[1]) = 1;
        v189 = 0uLL;
        brandingInformation16 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        logo5 = [brandingInformation16 logo];
        color4 = [logo5 color];
        sub_238DB9BD8(v174, [color4 UTF8String], objc_msgSend(color4, "lengthOfBytesUsingEncoding:", 4));

        v189 = v174[0];
      }

      brandingInformation17 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      logo6 = [brandingInformation17 logo];
      v58 = [logo6 size];

      if (v58)
      {
        LOBYTE(v190) = 1;
        v191 = 0uLL;
        *(&v190 + 1) = 0;
        brandingInformation18 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        logo7 = [brandingInformation18 logo];
        v61 = [logo7 size];
        width2 = [v61 width];
        [width2 doubleValue];
        *(&v190 + 1) = v63;

        brandingInformation19 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        logo8 = [brandingInformation19 logo];
        v66 = [logo8 size];
        height2 = [v66 height];
        [height2 doubleValue];
        *&v191 = v68;

        brandingInformation20 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        logo9 = [brandingInformation20 logo];
        v71 = [logo9 size];
        metric2 = [v71 metric];
        BYTE8(v191) = [metric2 unsignedCharValue];
      }
    }

    brandingInformation21 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
    progressBar = [brandingInformation21 progressBar];

    if (progressBar)
    {
      LOBYTE(v192[0]) = 1;
      memset(v192 + 8, 0, 80);
      brandingInformation22 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      progressBar2 = [brandingInformation22 progressBar];
      imageURL5 = [progressBar2 imageURL];

      if (imageURL5)
      {
        BYTE8(v192[0]) = 1;
        v192[1] = 0uLL;
        brandingInformation23 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        progressBar3 = [brandingInformation23 progressBar];
        imageURL6 = [progressBar3 imageURL];
        sub_238DB9BD8(v174, [imageURL6 UTF8String], objc_msgSend(imageURL6, "lengthOfBytesUsingEncoding:", 4));

        v192[1] = v174[0];
      }

      brandingInformation24 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      progressBar4 = [brandingInformation24 progressBar];
      color5 = [progressBar4 color];

      if (color5)
      {
        LOBYTE(v192[2]) = 1;
        *(&v192[2] + 1) = 0;
        *&v192[3] = 0;
        brandingInformation25 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        progressBar5 = [brandingInformation25 progressBar];
        color6 = [progressBar5 color];
        sub_238DB9BD8(v174, [color6 UTF8String], objc_msgSend(color6, "lengthOfBytesUsingEncoding:", 4));

        *(&v192[2] + 8) = v174[0];
      }

      brandingInformation26 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      progressBar6 = [brandingInformation26 progressBar];
      v89 = [progressBar6 size];

      if (v89)
      {
        BYTE8(v192[3]) = 1;
        memset(&v192[4], 0, 24);
        brandingInformation27 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        progressBar7 = [brandingInformation27 progressBar];
        v92 = [progressBar7 size];
        width3 = [v92 width];
        [width3 doubleValue];
        *&v192[4] = v94;

        brandingInformation28 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        progressBar8 = [brandingInformation28 progressBar];
        v97 = [progressBar8 size];
        height3 = [v97 height];
        [height3 doubleValue];
        *(&v192[4] + 1) = v99;

        brandingInformation29 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        progressBar9 = [brandingInformation29 progressBar];
        v102 = [progressBar9 size];
        metric3 = [v102 metric];
        LOBYTE(v192[5]) = [metric3 unsignedCharValue];
      }
    }

    brandingInformation30 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
    splash = [brandingInformation30 splash];

    if (splash)
    {
      BYTE8(v192[5]) = 1;
      memset(v193, 0, sizeof(v193));
      v194 = 0u;
      v195 = 0u;
      v196 = 0u;
      brandingInformation31 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      splash2 = [brandingInformation31 splash];
      imageURL7 = [splash2 imageURL];

      if (imageURL7)
      {
        LOBYTE(v193[0]) = 1;
        *(&v193[0] + 1) = 0;
        *&v193[1] = 0;
        brandingInformation32 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        splash3 = [brandingInformation32 splash];
        imageURL8 = [splash3 imageURL];
        sub_238DB9BD8(v174, [imageURL8 UTF8String], objc_msgSend(imageURL8, "lengthOfBytesUsingEncoding:", 4));

        *(v193 + 8) = v174[0];
      }

      brandingInformation33 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      splash4 = [brandingInformation33 splash];
      color7 = [splash4 color];

      if (color7)
      {
        BYTE8(v193[1]) = 1;
        v194 = 0uLL;
        brandingInformation34 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        splash5 = [brandingInformation34 splash];
        color8 = [splash5 color];
        sub_238DB9BD8(v174, [color8 UTF8String], objc_msgSend(color8, "lengthOfBytesUsingEncoding:", 4));

        v194 = v174[0];
      }

      brandingInformation35 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      splash6 = [brandingInformation35 splash];
      v120 = [splash6 size];

      if (v120)
      {
        LOBYTE(v195) = 1;
        *(&v195 + 1) = 0;
        v196 = 0uLL;
        brandingInformation36 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        splash7 = [brandingInformation36 splash];
        v123 = [splash7 size];
        width4 = [v123 width];
        [width4 doubleValue];
        *(&v195 + 1) = v125;

        brandingInformation37 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        splash8 = [brandingInformation37 splash];
        v128 = [splash8 size];
        height4 = [v128 height];
        [height4 doubleValue];
        *&v196 = v130;

        brandingInformation38 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        splash9 = [brandingInformation38 splash];
        v133 = [splash9 size];
        metric4 = [v133 metric];
        BYTE8(v196) = [metric4 unsignedCharValue];
      }
    }

    brandingInformation39 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
    waterMark = [brandingInformation39 waterMark];

    if (waterMark)
    {
      LOBYTE(v197[0]) = 1;
      memset(v197 + 8, 0, 80);
      brandingInformation40 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      waterMark2 = [brandingInformation40 waterMark];
      imageURL9 = [waterMark2 imageURL];

      if (imageURL9)
      {
        BYTE8(v197[0]) = 1;
        v197[1] = 0uLL;
        brandingInformation41 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        waterMark3 = [brandingInformation41 waterMark];
        imageURL10 = [waterMark3 imageURL];
        sub_238DB9BD8(v174, [imageURL10 UTF8String], objc_msgSend(imageURL10, "lengthOfBytesUsingEncoding:", 4));

        v197[1] = v174[0];
      }

      brandingInformation42 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      waterMark4 = [brandingInformation42 waterMark];
      color9 = [waterMark4 color];

      if (color9)
      {
        LOBYTE(v197[2]) = 1;
        *(&v197[2] + 1) = 0;
        *&v197[3] = 0;
        brandingInformation43 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        waterMark5 = [brandingInformation43 waterMark];
        color10 = [waterMark5 color];
        sub_238DB9BD8(v174, [color10 UTF8String], objc_msgSend(color10, "lengthOfBytesUsingEncoding:", 4));

        *(&v197[2] + 8) = v174[0];
      }

      brandingInformation44 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
      waterMark6 = [brandingInformation44 waterMark];
      v151 = [waterMark6 size];

      if (v151)
      {
        BYTE8(v197[3]) = 1;
        memset(&v197[4], 0, 24);
        brandingInformation45 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        waterMark7 = [brandingInformation45 waterMark];
        v154 = [waterMark7 size];
        width5 = [v154 width];
        [width5 doubleValue];
        *&v197[4] = v156;

        brandingInformation46 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        waterMark8 = [brandingInformation46 waterMark];
        v159 = [waterMark8 size];
        height5 = [v159 height];
        [height5 doubleValue];
        *(&v197[4] + 1) = v161;

        brandingInformation47 = [(MTRContentLauncherClusterLaunchURLParams *)self brandingInformation];
        waterMark9 = [brandingInformation47 waterMark];
        v164 = [waterMark9 size];
        metric5 = [v164 metric];
        LOBYTE(v197[5]) = [metric5 unsignedCharValue];
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
      sub_238DD2F90(reader, &v179);
      v166 = sub_2393C7114(reader, 21, 256);
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRContentLauncherClusterLaunchURLParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (value)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *value = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (value && !v10)
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