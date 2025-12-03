@interface NEProxySettings
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)enabled;
- (BOOL)useForAllDomains;
- (NEProxyServer)HTTPSServer;
- (NEProxyServer)HTTPServer;
- (NEProxySettings)init;
- (NEProxySettings)initWithCoder:(id)coder;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)copyPasswordsFromKeychain;
- (void)encodeWithCoder:(id)coder;
- (void)setHTTPSServer:(NEProxyServer *)HTTPSServer;
- (void)setHTTPServer:(NEProxyServer *)HTTPServer;
@end

@implementation NEProxySettings

- (BOOL)useForAllDomains
{
  matchDomains = [(NEProxySettings *)self matchDomains];
  if (matchDomains)
  {
    matchDomains2 = [(NEProxySettings *)self matchDomains];
    if ([matchDomains2 count])
    {
      matchDomains3 = [(NEProxySettings *)self matchDomains];
      if ([matchDomains3 count] == 1)
      {
        matchDomains4 = [(NEProxySettings *)self matchDomains];
        v7 = [matchDomains4 objectAtIndexedSubscript:0];
        v8 = [v7 length] == 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)enabled
{
  if ([(NEProxySettings *)self HTTPEnabled]|| [(NEProxySettings *)self HTTPSEnabled])
  {
    return 1;
  }

  return [(NEProxySettings *)self autoProxyConfigurationEnabled];
}

- (void)setHTTPSServer:(NEProxyServer *)HTTPSServer
{
  v7 = HTTPSServer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NEProxyServer *)v7 setType:2];
  v5 = [(NEProxyServer *)v7 copy];
  v6 = selfCopy->_HTTPSServer;
  selfCopy->_HTTPSServer = v5;

  objc_sync_exit(selfCopy);
}

- (NEProxyServer)HTTPSServer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_HTTPSServer;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setHTTPServer:(NEProxyServer *)HTTPServer
{
  v7 = HTTPServer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NEProxyServer *)v7 setType:1];
  v5 = [(NEProxyServer *)v7 copy];
  v6 = selfCopy->_HTTPServer;
  selfCopy->_HTTPServer = v5;

  objc_sync_exit(selfCopy);
}

- (NEProxyServer)HTTPServer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_HTTPServer;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)copyPasswordsFromKeychain
{
  hTTPServer = [(NEProxySettings *)self HTTPServer];
  authenticationRequired = [hTTPServer authenticationRequired];

  if (authenticationRequired)
  {
    hTTPServer2 = [(NEProxySettings *)self HTTPServer];
    copyPassword = [hTTPServer2 copyPassword];
    hTTPServer3 = [(NEProxySettings *)self HTTPServer];
    [hTTPServer3 setPassword:copyPassword];
  }

  hTTPSServer = [(NEProxySettings *)self HTTPSServer];
  authenticationRequired2 = [hTTPSServer authenticationRequired];

  if (authenticationRequired2)
  {
    hTTPSServer2 = [(NEProxySettings *)self HTTPSServer];
    copyPassword2 = [hTTPSServer2 copyPassword];
    hTTPSServer3 = [(NEProxySettings *)self HTTPSServer];
    [hTTPSServer3 setPassword:copyPassword2];
  }

  fTPServer = [(NEProxySettings *)self FTPServer];
  authenticationRequired3 = [fTPServer authenticationRequired];

  if (authenticationRequired3)
  {
    fTPServer2 = [(NEProxySettings *)self FTPServer];
    copyPassword3 = [fTPServer2 copyPassword];
    fTPServer3 = [(NEProxySettings *)self FTPServer];
    [fTPServer3 setPassword:copyPassword3];
  }

  rTSPServer = [(NEProxySettings *)self RTSPServer];
  authenticationRequired4 = [rTSPServer authenticationRequired];

  if (authenticationRequired4)
  {
    rTSPServer2 = [(NEProxySettings *)self RTSPServer];
    copyPassword4 = [rTSPServer2 copyPassword];
    rTSPServer3 = [(NEProxySettings *)self RTSPServer];
    [rTSPServer3 setPassword:copyPassword4];
  }

  gopherServer = [(NEProxySettings *)self gopherServer];
  authenticationRequired5 = [gopherServer authenticationRequired];

  if (authenticationRequired5)
  {
    gopherServer2 = [(NEProxySettings *)self gopherServer];
    copyPassword5 = [gopherServer2 copyPassword];
    gopherServer3 = [(NEProxySettings *)self gopherServer];
    [gopherServer3 setPassword:copyPassword5];
  }

  sOCKSServer = [(NEProxySettings *)self SOCKSServer];
  authenticationRequired6 = [sOCKSServer authenticationRequired];

  if (authenticationRequired6)
  {
    sOCKSServer2 = [(NEProxySettings *)self SOCKSServer];
    copyPassword6 = [sOCKSServer2 copyPassword];
    sOCKSServer3 = [(NEProxySettings *)self SOCKSServer];
    [sOCKSServer3 setPassword:copyPassword6];
  }
}

- (id)initFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(NEProxySettings *)self init];
  if (!v5)
  {
    goto LABEL_63;
  }

  v6 = *MEMORY[0x1E69826B8];
  v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69826B8]];
  v8 = isa_nsnumber(v7);

  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:v6];
    v5->_autoProxyDiscovery = [v9 BOOLValue];
  }

  v10 = *MEMORY[0x1E69826A0];
  v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69826A0]];
  v12 = isa_nsnumber(v11);

  if (v12)
  {
    v13 = [dictionaryCopy objectForKeyedSubscript:v10];
    v5->_autoProxyConfigurationEnabled = [v13 BOOLValue];
  }

  v14 = *MEMORY[0x1E69826B0];
  v15 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69826B0]];
  v16 = isa_nsstring(v15);

  if (v16)
  {
    v17 = MEMORY[0x1E695DFF8];
    v18 = [dictionaryCopy objectForKeyedSubscript:v14];
    v19 = [v17 URLWithString:v18];
    v20 = 48;
  }

  else
  {
    v21 = *MEMORY[0x1E69826A8];
    v22 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69826A8]];
    v23 = isa_nsstring(v22);

    if (!v23)
    {
      goto LABEL_11;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:v21];
    v19 = [v18 copy];
    v20 = 56;
  }

  v24 = *(&v5->super.isa + v20);
  *(&v5->super.isa + v20) = v19;

LABEL_11:
  v25 = *MEMORY[0x1E6982660];
  v26 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982660]];
  v27 = isa_nsnumber(v26);

  if (v27)
  {
    v28 = [dictionaryCopy objectForKeyedSubscript:v25];
    v5->_HTTPEnabled = [v28 BOOLValue];
  }

  v29 = *MEMORY[0x1E6982670];
  v30 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982670]];
  if (!isa_nsstring(v30))
  {
    goto LABEL_17;
  }

  v31 = *MEMORY[0x1E6982668];
  v32 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982668]];
  v33 = isa_nsnumber(v32);

  if (v33)
  {
    v34 = [NEProxyServer alloc];
    v35 = [dictionaryCopy objectForKeyedSubscript:v29];
    v36 = [dictionaryCopy objectForKeyedSubscript:v31];
    v37 = -[NEProxyServer initWithType:address:port:](v34, "initWithType:address:port:", 1, v35, [v36 intValue]);
    HTTPServer = v5->_HTTPServer;
    v5->_HTTPServer = v37;

    v39 = *MEMORY[0x1E6982698];
    v40 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982698]];
    LODWORD(v36) = isa_nsstring(v40);

    if (v36)
    {
      [(NEProxyServer *)v5->_HTTPServer setAuthenticationRequired:1];
      v30 = [dictionaryCopy objectForKeyedSubscript:v39];
      [(NEProxyServer *)v5->_HTTPServer setUsername:v30];
LABEL_17:
    }
  }

  v41 = *MEMORY[0x1E6982678];
  v42 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982678]];
  v43 = isa_nsnumber(v42);

  if (v43)
  {
    v44 = [dictionaryCopy objectForKeyedSubscript:v41];
    v5->_HTTPSEnabled = [v44 BOOLValue];
  }

  v45 = *MEMORY[0x1E6982688];
  v46 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982688]];
  if (!isa_nsstring(v46))
  {
    goto LABEL_24;
  }

  v47 = *MEMORY[0x1E6982680];
  v48 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982680]];
  v49 = isa_nsnumber(v48);

  if (v49)
  {
    v50 = [NEProxyServer alloc];
    v51 = [dictionaryCopy objectForKeyedSubscript:v45];
    v52 = [dictionaryCopy objectForKeyedSubscript:v47];
    v53 = -[NEProxyServer initWithType:address:port:](v50, "initWithType:address:port:", 2, v51, [v52 intValue]);
    HTTPSServer = v5->_HTTPSServer;
    v5->_HTTPSServer = v53;

    v55 = *MEMORY[0x1E6982690];
    v56 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982690]];
    LODWORD(v52) = isa_nsstring(v56);

    if (v52)
    {
      [(NEProxyServer *)v5->_HTTPSServer setAuthenticationRequired:1];
      v46 = [dictionaryCopy objectForKeyedSubscript:v55];
      [(NEProxyServer *)v5->_HTTPSServer setUsername:v46];
LABEL_24:
    }
  }

  v57 = *MEMORY[0x1E6982610];
  v58 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982610]];
  v59 = isa_nsnumber(v58);

  if (v59)
  {
    v60 = [dictionaryCopy objectForKeyedSubscript:v57];
    v5->_FTPEnabled = [v60 BOOLValue];
  }

  v61 = *MEMORY[0x1E6982628];
  v62 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982628]];
  if (!isa_nsstring(v62))
  {
    goto LABEL_31;
  }

  v63 = *MEMORY[0x1E6982620];
  v64 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982620]];
  v65 = isa_nsnumber(v64);

  if (v65)
  {
    v66 = [NEProxyServer alloc];
    v67 = [dictionaryCopy objectForKeyedSubscript:v61];
    v68 = [dictionaryCopy objectForKeyedSubscript:v63];
    v69 = -[NEProxyServer initWithType:address:port:](v66, "initWithType:address:port:", 3, v67, [v68 intValue]);
    FTPServer = v5->_FTPServer;
    v5->_FTPServer = v69;

    v71 = *MEMORY[0x1E6982630];
    v72 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982630]];
    LODWORD(v68) = isa_nsstring(v72);

    if (v68)
    {
      [(NEProxyServer *)v5->_FTPServer setAuthenticationRequired:1];
      v62 = [dictionaryCopy objectForKeyedSubscript:v71];
      [(NEProxyServer *)v5->_FTPServer setUsername:v62];
LABEL_31:
    }
  }

  v73 = *MEMORY[0x1E6982618];
  v74 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982618]];
  v75 = isa_nsnumber(v74);

  if (v75)
  {
    v76 = [dictionaryCopy objectForKeyedSubscript:v73];
    v5->_usePassiveFTP = [v76 BOOLValue];
  }

  v77 = *MEMORY[0x1E6982640];
  v78 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982640]];
  v79 = isa_nsnumber(v78);

  if (v79)
  {
    v80 = [dictionaryCopy objectForKeyedSubscript:v77];
    v5->_gopherEnabled = [v80 BOOLValue];
  }

  v81 = *MEMORY[0x1E6982650];
  v82 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982650]];
  if (!isa_nsstring(v82))
  {
    goto LABEL_40;
  }

  v83 = *MEMORY[0x1E6982648];
  v84 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982648]];
  v85 = isa_nsnumber(v84);

  if (v85)
  {
    v86 = [NEProxyServer alloc];
    v87 = [dictionaryCopy objectForKeyedSubscript:v81];
    v88 = [dictionaryCopy objectForKeyedSubscript:v83];
    v89 = -[NEProxyServer initWithType:address:port:](v86, "initWithType:address:port:", 6, v87, [v88 intValue]);
    gopherServer = v5->_gopherServer;
    v5->_gopherServer = v89;

    v91 = *MEMORY[0x1E6982658];
    v92 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982658]];
    LODWORD(v88) = isa_nsstring(v92);

    if (v88)
    {
      [(NEProxyServer *)v5->_gopherServer setAuthenticationRequired:1];
      v82 = [dictionaryCopy objectForKeyedSubscript:v91];
      [(NEProxyServer *)v5->_gopherServer setUsername:v82];
LABEL_40:
    }
  }

  v93 = *MEMORY[0x1E69826C0];
  v94 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69826C0]];
  v95 = isa_nsnumber(v94);

  if (v95)
  {
    v96 = [dictionaryCopy objectForKeyedSubscript:v93];
    v5->_RTSPEnabled = [v96 BOOLValue];
  }

  v97 = *MEMORY[0x1E69826D0];
  v98 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69826D0]];
  if (!isa_nsstring(v98))
  {
    goto LABEL_47;
  }

  v99 = *MEMORY[0x1E69826C8];
  v100 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69826C8]];
  v101 = isa_nsnumber(v100);

  if (v101)
  {
    v102 = [NEProxyServer alloc];
    v103 = [dictionaryCopy objectForKeyedSubscript:v97];
    v104 = [dictionaryCopy objectForKeyedSubscript:v99];
    v105 = -[NEProxyServer initWithType:address:port:](v102, "initWithType:address:port:", 4, v103, [v104 intValue]);
    RTSPServer = v5->_RTSPServer;
    v5->_RTSPServer = v105;

    v107 = *MEMORY[0x1E69826D8];
    v108 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69826D8]];
    LODWORD(v104) = isa_nsstring(v108);

    if (v104)
    {
      [(NEProxyServer *)v5->_RTSPServer setAuthenticationRequired:1];
      v98 = [dictionaryCopy objectForKeyedSubscript:v107];
      [(NEProxyServer *)v5->_RTSPServer setUsername:v98];
LABEL_47:
    }
  }

  v109 = *MEMORY[0x1E69826E0];
  v110 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69826E0]];
  v111 = isa_nsnumber(v110);

  if (v111)
  {
    v112 = [dictionaryCopy objectForKeyedSubscript:v109];
    v5->_SOCKSEnabled = [v112 BOOLValue];
  }

  v113 = *MEMORY[0x1E69826F0];
  v114 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69826F0]];
  if (isa_nsstring(v114))
  {
    v115 = *MEMORY[0x1E69826E8];
    v116 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69826E8]];
    v117 = isa_nsnumber(v116);

    if (!v117)
    {
      goto LABEL_55;
    }

    v118 = [NEProxyServer alloc];
    v119 = [dictionaryCopy objectForKeyedSubscript:v113];
    v120 = [dictionaryCopy objectForKeyedSubscript:v115];
    v121 = -[NEProxyServer initWithType:address:port:](v118, "initWithType:address:port:", 5, v119, [v120 intValue]);
    SOCKSServer = v5->_SOCKSServer;
    v5->_SOCKSServer = v121;

    v123 = *MEMORY[0x1E69826F8];
    v124 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69826F8]];
    LODWORD(v120) = isa_nsstring(v124);

    if (!v120)
    {
      goto LABEL_55;
    }

    [(NEProxyServer *)v5->_SOCKSServer setAuthenticationRequired:1];
    v114 = [dictionaryCopy objectForKeyedSubscript:v123];
    [(NEProxyServer *)v5->_SOCKSServer setUsername:v114];
  }

LABEL_55:
  v125 = *MEMORY[0x1E6982608];
  v126 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982608]];
  v127 = isa_nsnumber(v126);

  if (v127)
  {
    v128 = [dictionaryCopy objectForKeyedSubscript:v125];
    v5->_excludeSimpleHostnames = [v128 BOOLValue];
  }

  v129 = *MEMORY[0x1E6982600];
  v130 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982600]];
  v131 = isa_nsarray(v130);

  if (v131)
  {
    v132 = [dictionaryCopy objectForKeyedSubscript:v129];
    v133 = [v132 copy];
    exceptionList = v5->_exceptionList;
    v5->_exceptionList = v133;
  }

  v135 = *MEMORY[0x1E6982700];
  v136 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982700]];
  v137 = isa_nsarray(v136);

  if (v137)
  {
    v138 = [dictionaryCopy objectForKeyedSubscript:v135];
    v139 = [v138 copy];
    supplementalMatchDomains = v5->_supplementalMatchDomains;
    v5->_supplementalMatchDomains = v139;
  }

  v141 = *MEMORY[0x1E6982708];
  v142 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982708]];
  v143 = isa_nsarray(v142);

  if (v143)
  {
    v144 = [dictionaryCopy objectForKeyedSubscript:v141];
    v145 = [v144 copy];
    supplementalMatchOrders = v5->_supplementalMatchOrders;
    v5->_supplementalMatchOrders = v145;
  }

LABEL_63:

  return v5;
}

- (id)copyLegacyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NEProxySettings *)self autoProxyDiscovery])
  {
    v4 = &unk_1F38BA670;
  }

  else
  {
    v4 = &unk_1F38BA688;
  }

  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69826B8]];
  if ([(NEProxySettings *)self autoProxyConfigurationEnabled])
  {
    v5 = &unk_1F38BA670;
  }

  else
  {
    v5 = &unk_1F38BA688;
  }

  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69826A0]];
  proxyAutoConfigURL = [(NEProxySettings *)self proxyAutoConfigURL];

  if (proxyAutoConfigURL)
  {
    proxyAutoConfigURL2 = [(NEProxySettings *)self proxyAutoConfigURL];
    absoluteString = [proxyAutoConfigURL2 absoluteString];
    [v3 setObject:absoluteString forKeyedSubscript:*MEMORY[0x1E69826B0]];
  }

  else
  {
    proxyAutoConfigJavaScript = [(NEProxySettings *)self proxyAutoConfigJavaScript];

    if (!proxyAutoConfigJavaScript)
    {
      goto LABEL_12;
    }

    proxyAutoConfigURL2 = [(NEProxySettings *)self proxyAutoConfigJavaScript];
    [v3 setObject:proxyAutoConfigURL2 forKeyedSubscript:*MEMORY[0x1E69826A8]];
  }

LABEL_12:
  if ([(NEProxySettings *)self HTTPEnabled])
  {
    v10 = &unk_1F38BA670;
  }

  else
  {
    v10 = &unk_1F38BA688;
  }

  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6982660]];
  hTTPServer = [(NEProxySettings *)self HTTPServer];

  if (hTTPServer)
  {
    hTTPServer2 = [(NEProxySettings *)self HTTPServer];
    address = [hTTPServer2 address];
    [v3 setObject:address forKeyedSubscript:*MEMORY[0x1E6982670]];

    v14 = MEMORY[0x1E696AD98];
    hTTPServer3 = [(NEProxySettings *)self HTTPServer];
    v16 = [v14 numberWithInteger:{objc_msgSend(hTTPServer3, "port")}];
    [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6982668]];

    hTTPServer4 = [(NEProxySettings *)self HTTPServer];
    username = [hTTPServer4 username];

    if (username)
    {
      hTTPServer5 = [(NEProxySettings *)self HTTPServer];
      username2 = [hTTPServer5 username];
      [v3 setObject:username2 forKeyedSubscript:*MEMORY[0x1E6982698]];
    }
  }

  if ([(NEProxySettings *)self HTTPSEnabled])
  {
    v21 = &unk_1F38BA670;
  }

  else
  {
    v21 = &unk_1F38BA688;
  }

  [v3 setObject:v21 forKeyedSubscript:*MEMORY[0x1E6982678]];
  hTTPSServer = [(NEProxySettings *)self HTTPSServer];

  if (hTTPSServer)
  {
    hTTPSServer2 = [(NEProxySettings *)self HTTPSServer];
    address2 = [hTTPSServer2 address];
    [v3 setObject:address2 forKeyedSubscript:*MEMORY[0x1E6982688]];

    v25 = MEMORY[0x1E696AD98];
    hTTPSServer3 = [(NEProxySettings *)self HTTPSServer];
    v27 = [v25 numberWithInteger:{objc_msgSend(hTTPSServer3, "port")}];
    [v3 setObject:v27 forKeyedSubscript:*MEMORY[0x1E6982680]];

    hTTPSServer4 = [(NEProxySettings *)self HTTPSServer];
    username3 = [hTTPSServer4 username];

    if (username3)
    {
      hTTPSServer5 = [(NEProxySettings *)self HTTPSServer];
      username4 = [hTTPSServer5 username];
      [v3 setObject:username4 forKeyedSubscript:*MEMORY[0x1E6982690]];
    }
  }

  if ([(NEProxySettings *)self FTPEnabled])
  {
    v32 = &unk_1F38BA670;
  }

  else
  {
    v32 = &unk_1F38BA688;
  }

  [v3 setObject:v32 forKeyedSubscript:*MEMORY[0x1E6982610]];
  if ([(NEProxySettings *)self usePassiveFTP])
  {
    v33 = &unk_1F38BA670;
  }

  else
  {
    v33 = &unk_1F38BA688;
  }

  [v3 setObject:v33 forKeyedSubscript:*MEMORY[0x1E6982618]];
  fTPServer = [(NEProxySettings *)self FTPServer];

  if (fTPServer)
  {
    fTPServer2 = [(NEProxySettings *)self FTPServer];
    address3 = [fTPServer2 address];
    [v3 setObject:address3 forKeyedSubscript:*MEMORY[0x1E6982628]];

    v37 = MEMORY[0x1E696AD98];
    fTPServer3 = [(NEProxySettings *)self FTPServer];
    v39 = [v37 numberWithInteger:{objc_msgSend(fTPServer3, "port")}];
    [v3 setObject:v39 forKeyedSubscript:*MEMORY[0x1E6982620]];

    fTPServer4 = [(NEProxySettings *)self FTPServer];
    username5 = [fTPServer4 username];

    if (username5)
    {
      fTPServer5 = [(NEProxySettings *)self FTPServer];
      username6 = [fTPServer5 username];
      [v3 setObject:username6 forKeyedSubscript:*MEMORY[0x1E6982630]];
    }
  }

  if ([(NEProxySettings *)self gopherEnabled])
  {
    v44 = &unk_1F38BA670;
  }

  else
  {
    v44 = &unk_1F38BA688;
  }

  [v3 setObject:v44 forKeyedSubscript:*MEMORY[0x1E6982640]];
  gopherServer = [(NEProxySettings *)self gopherServer];

  if (gopherServer)
  {
    gopherServer2 = [(NEProxySettings *)self gopherServer];
    address4 = [gopherServer2 address];
    [v3 setObject:address4 forKeyedSubscript:*MEMORY[0x1E6982650]];

    v48 = MEMORY[0x1E696AD98];
    gopherServer3 = [(NEProxySettings *)self gopherServer];
    v50 = [v48 numberWithInteger:{objc_msgSend(gopherServer3, "port")}];
    [v3 setObject:v50 forKeyedSubscript:*MEMORY[0x1E6982648]];

    gopherServer4 = [(NEProxySettings *)self gopherServer];
    username7 = [gopherServer4 username];

    if (username7)
    {
      gopherServer5 = [(NEProxySettings *)self gopherServer];
      username8 = [gopherServer5 username];
      [v3 setObject:username8 forKeyedSubscript:*MEMORY[0x1E6982658]];
    }
  }

  if ([(NEProxySettings *)self RTSPEnabled])
  {
    v55 = &unk_1F38BA670;
  }

  else
  {
    v55 = &unk_1F38BA688;
  }

  [v3 setObject:v55 forKeyedSubscript:*MEMORY[0x1E69826C0]];
  rTSPServer = [(NEProxySettings *)self RTSPServer];

  if (rTSPServer)
  {
    rTSPServer2 = [(NEProxySettings *)self RTSPServer];
    address5 = [rTSPServer2 address];
    [v3 setObject:address5 forKeyedSubscript:*MEMORY[0x1E69826D0]];

    v59 = MEMORY[0x1E696AD98];
    rTSPServer3 = [(NEProxySettings *)self RTSPServer];
    v61 = [v59 numberWithInteger:{objc_msgSend(rTSPServer3, "port")}];
    [v3 setObject:v61 forKeyedSubscript:*MEMORY[0x1E69826C8]];

    rTSPServer4 = [(NEProxySettings *)self RTSPServer];
    username9 = [rTSPServer4 username];

    if (username9)
    {
      rTSPServer5 = [(NEProxySettings *)self RTSPServer];
      username10 = [rTSPServer5 username];
      [v3 setObject:username10 forKeyedSubscript:*MEMORY[0x1E69826D8]];
    }
  }

  if ([(NEProxySettings *)self SOCKSEnabled])
  {
    v66 = &unk_1F38BA670;
  }

  else
  {
    v66 = &unk_1F38BA688;
  }

  [v3 setObject:v66 forKeyedSubscript:*MEMORY[0x1E69826E0]];
  sOCKSServer = [(NEProxySettings *)self SOCKSServer];

  if (sOCKSServer)
  {
    sOCKSServer2 = [(NEProxySettings *)self SOCKSServer];
    address6 = [sOCKSServer2 address];
    [v3 setObject:address6 forKeyedSubscript:*MEMORY[0x1E69826F0]];

    v70 = MEMORY[0x1E696AD98];
    sOCKSServer3 = [(NEProxySettings *)self SOCKSServer];
    v72 = [v70 numberWithInteger:{objc_msgSend(sOCKSServer3, "port")}];
    [v3 setObject:v72 forKeyedSubscript:*MEMORY[0x1E69826E8]];

    sOCKSServer4 = [(NEProxySettings *)self SOCKSServer];
    username11 = [sOCKSServer4 username];

    if (username11)
    {
      sOCKSServer5 = [(NEProxySettings *)self SOCKSServer];
      username12 = [sOCKSServer5 username];
      [v3 setObject:username12 forKeyedSubscript:*MEMORY[0x1E69826F8]];
    }
  }

  if ([(NEProxySettings *)self excludeSimpleHostnames])
  {
    v77 = &unk_1F38BA670;
  }

  else
  {
    v77 = &unk_1F38BA688;
  }

  [v3 setObject:v77 forKeyedSubscript:*MEMORY[0x1E6982608]];
  exceptionList = [(NEProxySettings *)self exceptionList];

  if (exceptionList)
  {
    exceptionList2 = [(NEProxySettings *)self exceptionList];
    [v3 setObject:exceptionList2 forKeyedSubscript:*MEMORY[0x1E6982600]];
  }

  supplementalMatchDomains = [(NEProxySettings *)self supplementalMatchDomains];

  if (supplementalMatchDomains)
  {
    supplementalMatchDomains2 = [(NEProxySettings *)self supplementalMatchDomains];
    [v3 setObject:supplementalMatchDomains2 forKeyedSubscript:*MEMORY[0x1E6982700]];
  }

  supplementalMatchOrders = [(NEProxySettings *)self supplementalMatchOrders];

  if (supplementalMatchOrders)
  {
    supplementalMatchOrders2 = [(NEProxySettings *)self supplementalMatchOrders];
    [v3 setObject:supplementalMatchOrders2 forKeyedSubscript:*MEMORY[0x1E6982708]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v64 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  hTTPServer = [(NEProxySettings *)self HTTPServer];
  if (hTTPServer)
  {
    v6 = hTTPServer;
    hTTPServer2 = [(NEProxySettings *)self HTTPServer];
    v8 = [hTTPServer2 checkValidityAndCollectErrors:errorsCopy];
  }

  else
  {
    v8 = 1;
  }

  hTTPSServer = [(NEProxySettings *)self HTTPSServer];
  if (hTTPSServer)
  {
    v10 = hTTPSServer;
    hTTPSServer2 = [(NEProxySettings *)self HTTPSServer];
    v12 = [hTTPSServer2 checkValidityAndCollectErrors:errorsCopy];

    v8 &= v12;
  }

  fTPServer = [(NEProxySettings *)self FTPServer];
  if (fTPServer)
  {
    v14 = fTPServer;
    fTPServer2 = [(NEProxySettings *)self FTPServer];
    v16 = [fTPServer2 checkValidityAndCollectErrors:errorsCopy];

    v8 &= v16;
  }

  sOCKSServer = [(NEProxySettings *)self SOCKSServer];
  if (sOCKSServer)
  {
    v18 = sOCKSServer;
    sOCKSServer2 = [(NEProxySettings *)self SOCKSServer];
    v20 = [sOCKSServer2 checkValidityAndCollectErrors:errorsCopy];

    v8 &= v20;
  }

  rTSPServer = [(NEProxySettings *)self RTSPServer];
  if (rTSPServer)
  {
    v22 = rTSPServer;
    rTSPServer2 = [(NEProxySettings *)self RTSPServer];
    v24 = [rTSPServer2 checkValidityAndCollectErrors:errorsCopy];

    v8 &= v24;
  }

  gopherServer = [(NEProxySettings *)self gopherServer];
  if (gopherServer)
  {
    v26 = gopherServer;
    gopherServer2 = [(NEProxySettings *)self gopherServer];
    v28 = [gopherServer2 checkValidityAndCollectErrors:errorsCopy];

    v8 &= v28;
  }

  exceptionList = [(NEProxySettings *)self exceptionList];

  if (exceptionList)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    exceptionList2 = [(NEProxySettings *)self exceptionList];
    v31 = [exceptionList2 countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v58;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v58 != v33)
          {
            objc_enumerationMutation(exceptionList2);
          }

          if ((isa_nsstring(*(*(&v57 + 1) + 8 * i)) & 1) == 0)
          {
            [NEConfiguration addError:errorsCopy toList:?];
            v8 = 0;
          }
        }

        v32 = [exceptionList2 countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v32);
    }
  }

  supplementalMatchDomains = [(NEProxySettings *)self supplementalMatchDomains];

  if (supplementalMatchDomains)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    supplementalMatchDomains2 = [(NEProxySettings *)self supplementalMatchDomains];
    v37 = [supplementalMatchDomains2 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v54;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v54 != v39)
          {
            objc_enumerationMutation(supplementalMatchDomains2);
          }

          if ((isa_nsstring(*(*(&v53 + 1) + 8 * j)) & 1) == 0)
          {
            [NEConfiguration addError:errorsCopy toList:?];
            v8 = 0;
          }
        }

        v38 = [supplementalMatchDomains2 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v38);
    }
  }

  supplementalMatchOrders = [(NEProxySettings *)self supplementalMatchOrders];

  if (supplementalMatchOrders)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    supplementalMatchOrders2 = [(NEProxySettings *)self supplementalMatchOrders];
    v43 = [supplementalMatchOrders2 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v50;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v50 != v45)
          {
            objc_enumerationMutation(supplementalMatchOrders2);
          }

          if ((isa_nsnumber(*(*(&v49 + 1) + 8 * k)) & 1) == 0)
          {
            [NEConfiguration addError:errorsCopy toList:?];
            v8 = 0;
          }
        }

        v44 = [supplementalMatchOrders2 countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v44);
    }
  }

  v47 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEProxySettings allocWithZone:?]];
  [(NEProxySettings *)v4 setAutoProxyDiscovery:[(NEProxySettings *)self autoProxyDiscovery]];
  [(NEProxySettings *)v4 setAutoProxyConfigurationEnabled:[(NEProxySettings *)self autoProxyConfigurationEnabled]];
  proxyAutoConfigURL = [(NEProxySettings *)self proxyAutoConfigURL];
  [(NEProxySettings *)v4 setProxyAutoConfigURL:proxyAutoConfigURL];

  proxyAutoConfigJavaScript = [(NEProxySettings *)self proxyAutoConfigJavaScript];
  [(NEProxySettings *)v4 setProxyAutoConfigJavaScript:proxyAutoConfigJavaScript];

  [(NEProxySettings *)v4 setHTTPEnabled:[(NEProxySettings *)self HTTPEnabled]];
  hTTPServer = [(NEProxySettings *)self HTTPServer];
  [(NEProxySettings *)v4 setHTTPServer:hTTPServer];

  [(NEProxySettings *)v4 setHTTPSEnabled:[(NEProxySettings *)self HTTPSEnabled]];
  hTTPSServer = [(NEProxySettings *)self HTTPSServer];
  [(NEProxySettings *)v4 setHTTPSServer:hTTPSServer];

  [(NEProxySettings *)v4 setFTPEnabled:[(NEProxySettings *)self FTPEnabled]];
  fTPServer = [(NEProxySettings *)self FTPServer];
  [(NEProxySettings *)v4 setFTPServer:fTPServer];

  [(NEProxySettings *)v4 setSOCKSEnabled:[(NEProxySettings *)self SOCKSEnabled]];
  sOCKSServer = [(NEProxySettings *)self SOCKSServer];
  [(NEProxySettings *)v4 setSOCKSServer:sOCKSServer];

  [(NEProxySettings *)v4 setRTSPEnabled:[(NEProxySettings *)self RTSPEnabled]];
  rTSPServer = [(NEProxySettings *)self RTSPServer];
  [(NEProxySettings *)v4 setRTSPServer:rTSPServer];

  [(NEProxySettings *)v4 setGopherEnabled:[(NEProxySettings *)self gopherEnabled]];
  gopherServer = [(NEProxySettings *)self gopherServer];
  [(NEProxySettings *)v4 setGopherServer:gopherServer];

  [(NEProxySettings *)v4 setExcludeSimpleHostnames:[(NEProxySettings *)self excludeSimpleHostnames]];
  exceptionList = [(NEProxySettings *)self exceptionList];
  [(NEProxySettings *)v4 setExceptionList:exceptionList];

  [(NEProxySettings *)v4 setUsePassiveFTP:[(NEProxySettings *)self usePassiveFTP]];
  supplementalMatchDomains = [(NEProxySettings *)self supplementalMatchDomains];
  [(NEProxySettings *)v4 setSupplementalMatchDomains:supplementalMatchDomains];

  supplementalMatchOrders = [(NEProxySettings *)self supplementalMatchOrders];
  [(NEProxySettings *)v4 setSupplementalMatchOrders:supplementalMatchOrders];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEProxySettings autoProxyDiscovery](self forKey:{"autoProxyDiscovery"), @"AutoProxyDiscovery"}];
  [coderCopy encodeBool:-[NEProxySettings autoProxyConfigurationEnabled](self forKey:{"autoProxyConfigurationEnabled"), @"AutoProxyConfigurationEnabled"}];
  proxyAutoConfigURL = [(NEProxySettings *)self proxyAutoConfigURL];
  [coderCopy encodeObject:proxyAutoConfigURL forKey:@"AutoConfigURL"];

  proxyAutoConfigJavaScript = [(NEProxySettings *)self proxyAutoConfigJavaScript];
  [coderCopy encodeObject:proxyAutoConfigJavaScript forKey:@"AutoConfigJavaScript"];

  [coderCopy encodeBool:-[NEProxySettings HTTPEnabled](self forKey:{"HTTPEnabled"), @"HTTPEnabled"}];
  hTTPServer = [(NEProxySettings *)self HTTPServer];
  [coderCopy encodeObject:hTTPServer forKey:@"HTTPServer"];

  [coderCopy encodeBool:-[NEProxySettings HTTPSEnabled](self forKey:{"HTTPSEnabled"), @"HTTPSEnabled"}];
  hTTPSServer = [(NEProxySettings *)self HTTPSServer];
  [coderCopy encodeObject:hTTPSServer forKey:@"HTTPSServer"];

  [coderCopy encodeBool:-[NEProxySettings FTPEnabled](self forKey:{"FTPEnabled"), @"FTPEnabled"}];
  fTPServer = [(NEProxySettings *)self FTPServer];
  [coderCopy encodeObject:fTPServer forKey:@"FTPServer"];

  [coderCopy encodeBool:-[NEProxySettings SOCKSEnabled](self forKey:{"SOCKSEnabled"), @"SOCKSEnabled"}];
  sOCKSServer = [(NEProxySettings *)self SOCKSServer];
  [coderCopy encodeObject:sOCKSServer forKey:@"SOCKSServer"];

  [coderCopy encodeBool:-[NEProxySettings RTSPEnabled](self forKey:{"RTSPEnabled"), @"RTSPEnabled"}];
  rTSPServer = [(NEProxySettings *)self RTSPServer];
  [coderCopy encodeObject:rTSPServer forKey:@"RTSPServer"];

  [coderCopy encodeBool:-[NEProxySettings gopherEnabled](self forKey:{"gopherEnabled"), @"GopherEnabled"}];
  gopherServer = [(NEProxySettings *)self gopherServer];
  [coderCopy encodeObject:gopherServer forKey:@"GopherServer"];

  [coderCopy encodeBool:-[NEProxySettings excludeSimpleHostnames](self forKey:{"excludeSimpleHostnames"), @"ExcludeSimpleHostnames"}];
  exceptionList = [(NEProxySettings *)self exceptionList];
  [coderCopy encodeObject:exceptionList forKey:@"ExceptionList"];

  [coderCopy encodeBool:-[NEProxySettings usePassiveFTP](self forKey:{"usePassiveFTP"), @"UsePassiveFTP"}];
  supplementalMatchDomains = [(NEProxySettings *)self supplementalMatchDomains];
  [coderCopy encodeObject:supplementalMatchDomains forKey:@"SupplementalMatchDomains"];

  supplementalMatchOrders = [(NEProxySettings *)self supplementalMatchOrders];
  [coderCopy encodeObject:supplementalMatchOrders forKey:@"SupplementalMatchOrders"];
}

- (NEProxySettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = NEProxySettings;
  v5 = [(NEProxySettings *)&v38 init];
  if (v5)
  {
    v5->_autoProxyDiscovery = [coderCopy decodeBoolForKey:@"AutoProxyDiscovery"];
    v5->_autoProxyConfigurationEnabled = [coderCopy decodeBoolForKey:@"AutoProxyConfigurationEnabled"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AutoConfigURL"];
    proxyAutoConfigURL = v5->_proxyAutoConfigURL;
    v5->_proxyAutoConfigURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AutoConfigJavaScript"];
    proxyAutoConfigJavaScript = v5->_proxyAutoConfigJavaScript;
    v5->_proxyAutoConfigJavaScript = v8;

    v5->_HTTPEnabled = [coderCopy decodeBoolForKey:@"HTTPEnabled"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HTTPServer"];
    HTTPServer = v5->_HTTPServer;
    v5->_HTTPServer = v10;

    v5->_HTTPSEnabled = [coderCopy decodeBoolForKey:@"HTTPSEnabled"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HTTPSServer"];
    HTTPSServer = v5->_HTTPSServer;
    v5->_HTTPSServer = v12;

    v5->_FTPEnabled = [coderCopy decodeBoolForKey:@"FTPEnabled"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FTPServer"];
    FTPServer = v5->_FTPServer;
    v5->_FTPServer = v14;

    v5->_SOCKSEnabled = [coderCopy decodeBoolForKey:@"SOCKSEnabled"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOCKSServer"];
    SOCKSServer = v5->_SOCKSServer;
    v5->_SOCKSServer = v16;

    v5->_RTSPEnabled = [coderCopy decodeBoolForKey:@"RTSPEnabled"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RTSPServer"];
    RTSPServer = v5->_RTSPServer;
    v5->_RTSPServer = v18;

    v5->_gopherEnabled = [coderCopy decodeBoolForKey:@"GopherEnabled"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GopherServer"];
    gopherServer = v5->_gopherServer;
    v5->_gopherServer = v20;

    v5->_excludeSimpleHostnames = [coderCopy decodeBoolForKey:@"ExcludeSimpleHostnames"];
    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"ExceptionList"];
    exceptionList = v5->_exceptionList;
    v5->_exceptionList = v25;

    v5->_usePassiveFTP = [coderCopy decodeBoolForKey:@"UsePassiveFTP"];
    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"SupplementalMatchDomains"];
    supplementalMatchDomains = v5->_supplementalMatchDomains;
    v5->_supplementalMatchDomains = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"SupplementalMatchOrders"];
    supplementalMatchOrders = v5->_supplementalMatchOrders;
    v5->_supplementalMatchOrders = v35;
  }

  return v5;
}

- (NEProxySettings)init
{
  v3.receiver = self;
  v3.super_class = NEProxySettings;
  result = [(NEProxySettings *)&v3 init];
  if (result)
  {
    result->_usePassiveFTP = 1;
  }

  return result;
}

@end