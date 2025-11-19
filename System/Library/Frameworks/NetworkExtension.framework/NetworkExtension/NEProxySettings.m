@interface NEProxySettings
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)enabled;
- (BOOL)useForAllDomains;
- (NEProxyServer)HTTPSServer;
- (NEProxyServer)HTTPServer;
- (NEProxySettings)init;
- (NEProxySettings)initWithCoder:(id)a3;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)copyPasswordsFromKeychain;
- (void)encodeWithCoder:(id)a3;
- (void)setHTTPSServer:(NEProxyServer *)HTTPSServer;
- (void)setHTTPServer:(NEProxyServer *)HTTPServer;
@end

@implementation NEProxySettings

- (BOOL)useForAllDomains
{
  v3 = [(NEProxySettings *)self matchDomains];
  if (v3)
  {
    v4 = [(NEProxySettings *)self matchDomains];
    if ([v4 count])
    {
      v5 = [(NEProxySettings *)self matchDomains];
      if ([v5 count] == 1)
      {
        v6 = [(NEProxySettings *)self matchDomains];
        v7 = [v6 objectAtIndexedSubscript:0];
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
  v4 = self;
  objc_sync_enter(v4);
  [(NEProxyServer *)v7 setType:2];
  v5 = [(NEProxyServer *)v7 copy];
  v6 = v4->_HTTPSServer;
  v4->_HTTPSServer = v5;

  objc_sync_exit(v4);
}

- (NEProxyServer)HTTPSServer
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_HTTPSServer;
  objc_sync_exit(v2);

  return v3;
}

- (void)setHTTPServer:(NEProxyServer *)HTTPServer
{
  v7 = HTTPServer;
  v4 = self;
  objc_sync_enter(v4);
  [(NEProxyServer *)v7 setType:1];
  v5 = [(NEProxyServer *)v7 copy];
  v6 = v4->_HTTPServer;
  v4->_HTTPServer = v5;

  objc_sync_exit(v4);
}

- (NEProxyServer)HTTPServer
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_HTTPServer;
  objc_sync_exit(v2);

  return v3;
}

- (void)copyPasswordsFromKeychain
{
  v3 = [(NEProxySettings *)self HTTPServer];
  v4 = [v3 authenticationRequired];

  if (v4)
  {
    v5 = [(NEProxySettings *)self HTTPServer];
    v6 = [v5 copyPassword];
    v7 = [(NEProxySettings *)self HTTPServer];
    [v7 setPassword:v6];
  }

  v8 = [(NEProxySettings *)self HTTPSServer];
  v9 = [v8 authenticationRequired];

  if (v9)
  {
    v10 = [(NEProxySettings *)self HTTPSServer];
    v11 = [v10 copyPassword];
    v12 = [(NEProxySettings *)self HTTPSServer];
    [v12 setPassword:v11];
  }

  v13 = [(NEProxySettings *)self FTPServer];
  v14 = [v13 authenticationRequired];

  if (v14)
  {
    v15 = [(NEProxySettings *)self FTPServer];
    v16 = [v15 copyPassword];
    v17 = [(NEProxySettings *)self FTPServer];
    [v17 setPassword:v16];
  }

  v18 = [(NEProxySettings *)self RTSPServer];
  v19 = [v18 authenticationRequired];

  if (v19)
  {
    v20 = [(NEProxySettings *)self RTSPServer];
    v21 = [v20 copyPassword];
    v22 = [(NEProxySettings *)self RTSPServer];
    [v22 setPassword:v21];
  }

  v23 = [(NEProxySettings *)self gopherServer];
  v24 = [v23 authenticationRequired];

  if (v24)
  {
    v25 = [(NEProxySettings *)self gopherServer];
    v26 = [v25 copyPassword];
    v27 = [(NEProxySettings *)self gopherServer];
    [v27 setPassword:v26];
  }

  v28 = [(NEProxySettings *)self SOCKSServer];
  v29 = [v28 authenticationRequired];

  if (v29)
  {
    v32 = [(NEProxySettings *)self SOCKSServer];
    v30 = [v32 copyPassword];
    v31 = [(NEProxySettings *)self SOCKSServer];
    [v31 setPassword:v30];
  }
}

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v5 = [(NEProxySettings *)self init];
  if (!v5)
  {
    goto LABEL_63;
  }

  v6 = *MEMORY[0x1E69826B8];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69826B8]];
  v8 = isa_nsnumber(v7);

  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:v6];
    v5->_autoProxyDiscovery = [v9 BOOLValue];
  }

  v10 = *MEMORY[0x1E69826A0];
  v11 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69826A0]];
  v12 = isa_nsnumber(v11);

  if (v12)
  {
    v13 = [v4 objectForKeyedSubscript:v10];
    v5->_autoProxyConfigurationEnabled = [v13 BOOLValue];
  }

  v14 = *MEMORY[0x1E69826B0];
  v15 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69826B0]];
  v16 = isa_nsstring(v15);

  if (v16)
  {
    v17 = MEMORY[0x1E695DFF8];
    v18 = [v4 objectForKeyedSubscript:v14];
    v19 = [v17 URLWithString:v18];
    v20 = 48;
  }

  else
  {
    v21 = *MEMORY[0x1E69826A8];
    v22 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69826A8]];
    v23 = isa_nsstring(v22);

    if (!v23)
    {
      goto LABEL_11;
    }

    v18 = [v4 objectForKeyedSubscript:v21];
    v19 = [v18 copy];
    v20 = 56;
  }

  v24 = *(&v5->super.isa + v20);
  *(&v5->super.isa + v20) = v19;

LABEL_11:
  v25 = *MEMORY[0x1E6982660];
  v26 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982660]];
  v27 = isa_nsnumber(v26);

  if (v27)
  {
    v28 = [v4 objectForKeyedSubscript:v25];
    v5->_HTTPEnabled = [v28 BOOLValue];
  }

  v29 = *MEMORY[0x1E6982670];
  v30 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982670]];
  if (!isa_nsstring(v30))
  {
    goto LABEL_17;
  }

  v31 = *MEMORY[0x1E6982668];
  v32 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982668]];
  v33 = isa_nsnumber(v32);

  if (v33)
  {
    v34 = [NEProxyServer alloc];
    v35 = [v4 objectForKeyedSubscript:v29];
    v36 = [v4 objectForKeyedSubscript:v31];
    v37 = -[NEProxyServer initWithType:address:port:](v34, "initWithType:address:port:", 1, v35, [v36 intValue]);
    HTTPServer = v5->_HTTPServer;
    v5->_HTTPServer = v37;

    v39 = *MEMORY[0x1E6982698];
    v40 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982698]];
    LODWORD(v36) = isa_nsstring(v40);

    if (v36)
    {
      [(NEProxyServer *)v5->_HTTPServer setAuthenticationRequired:1];
      v30 = [v4 objectForKeyedSubscript:v39];
      [(NEProxyServer *)v5->_HTTPServer setUsername:v30];
LABEL_17:
    }
  }

  v41 = *MEMORY[0x1E6982678];
  v42 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982678]];
  v43 = isa_nsnumber(v42);

  if (v43)
  {
    v44 = [v4 objectForKeyedSubscript:v41];
    v5->_HTTPSEnabled = [v44 BOOLValue];
  }

  v45 = *MEMORY[0x1E6982688];
  v46 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982688]];
  if (!isa_nsstring(v46))
  {
    goto LABEL_24;
  }

  v47 = *MEMORY[0x1E6982680];
  v48 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982680]];
  v49 = isa_nsnumber(v48);

  if (v49)
  {
    v50 = [NEProxyServer alloc];
    v51 = [v4 objectForKeyedSubscript:v45];
    v52 = [v4 objectForKeyedSubscript:v47];
    v53 = -[NEProxyServer initWithType:address:port:](v50, "initWithType:address:port:", 2, v51, [v52 intValue]);
    HTTPSServer = v5->_HTTPSServer;
    v5->_HTTPSServer = v53;

    v55 = *MEMORY[0x1E6982690];
    v56 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982690]];
    LODWORD(v52) = isa_nsstring(v56);

    if (v52)
    {
      [(NEProxyServer *)v5->_HTTPSServer setAuthenticationRequired:1];
      v46 = [v4 objectForKeyedSubscript:v55];
      [(NEProxyServer *)v5->_HTTPSServer setUsername:v46];
LABEL_24:
    }
  }

  v57 = *MEMORY[0x1E6982610];
  v58 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982610]];
  v59 = isa_nsnumber(v58);

  if (v59)
  {
    v60 = [v4 objectForKeyedSubscript:v57];
    v5->_FTPEnabled = [v60 BOOLValue];
  }

  v61 = *MEMORY[0x1E6982628];
  v62 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982628]];
  if (!isa_nsstring(v62))
  {
    goto LABEL_31;
  }

  v63 = *MEMORY[0x1E6982620];
  v64 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982620]];
  v65 = isa_nsnumber(v64);

  if (v65)
  {
    v66 = [NEProxyServer alloc];
    v67 = [v4 objectForKeyedSubscript:v61];
    v68 = [v4 objectForKeyedSubscript:v63];
    v69 = -[NEProxyServer initWithType:address:port:](v66, "initWithType:address:port:", 3, v67, [v68 intValue]);
    FTPServer = v5->_FTPServer;
    v5->_FTPServer = v69;

    v71 = *MEMORY[0x1E6982630];
    v72 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982630]];
    LODWORD(v68) = isa_nsstring(v72);

    if (v68)
    {
      [(NEProxyServer *)v5->_FTPServer setAuthenticationRequired:1];
      v62 = [v4 objectForKeyedSubscript:v71];
      [(NEProxyServer *)v5->_FTPServer setUsername:v62];
LABEL_31:
    }
  }

  v73 = *MEMORY[0x1E6982618];
  v74 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982618]];
  v75 = isa_nsnumber(v74);

  if (v75)
  {
    v76 = [v4 objectForKeyedSubscript:v73];
    v5->_usePassiveFTP = [v76 BOOLValue];
  }

  v77 = *MEMORY[0x1E6982640];
  v78 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982640]];
  v79 = isa_nsnumber(v78);

  if (v79)
  {
    v80 = [v4 objectForKeyedSubscript:v77];
    v5->_gopherEnabled = [v80 BOOLValue];
  }

  v81 = *MEMORY[0x1E6982650];
  v82 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982650]];
  if (!isa_nsstring(v82))
  {
    goto LABEL_40;
  }

  v83 = *MEMORY[0x1E6982648];
  v84 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982648]];
  v85 = isa_nsnumber(v84);

  if (v85)
  {
    v86 = [NEProxyServer alloc];
    v87 = [v4 objectForKeyedSubscript:v81];
    v88 = [v4 objectForKeyedSubscript:v83];
    v89 = -[NEProxyServer initWithType:address:port:](v86, "initWithType:address:port:", 6, v87, [v88 intValue]);
    gopherServer = v5->_gopherServer;
    v5->_gopherServer = v89;

    v91 = *MEMORY[0x1E6982658];
    v92 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982658]];
    LODWORD(v88) = isa_nsstring(v92);

    if (v88)
    {
      [(NEProxyServer *)v5->_gopherServer setAuthenticationRequired:1];
      v82 = [v4 objectForKeyedSubscript:v91];
      [(NEProxyServer *)v5->_gopherServer setUsername:v82];
LABEL_40:
    }
  }

  v93 = *MEMORY[0x1E69826C0];
  v94 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69826C0]];
  v95 = isa_nsnumber(v94);

  if (v95)
  {
    v96 = [v4 objectForKeyedSubscript:v93];
    v5->_RTSPEnabled = [v96 BOOLValue];
  }

  v97 = *MEMORY[0x1E69826D0];
  v98 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69826D0]];
  if (!isa_nsstring(v98))
  {
    goto LABEL_47;
  }

  v99 = *MEMORY[0x1E69826C8];
  v100 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69826C8]];
  v101 = isa_nsnumber(v100);

  if (v101)
  {
    v102 = [NEProxyServer alloc];
    v103 = [v4 objectForKeyedSubscript:v97];
    v104 = [v4 objectForKeyedSubscript:v99];
    v105 = -[NEProxyServer initWithType:address:port:](v102, "initWithType:address:port:", 4, v103, [v104 intValue]);
    RTSPServer = v5->_RTSPServer;
    v5->_RTSPServer = v105;

    v107 = *MEMORY[0x1E69826D8];
    v108 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69826D8]];
    LODWORD(v104) = isa_nsstring(v108);

    if (v104)
    {
      [(NEProxyServer *)v5->_RTSPServer setAuthenticationRequired:1];
      v98 = [v4 objectForKeyedSubscript:v107];
      [(NEProxyServer *)v5->_RTSPServer setUsername:v98];
LABEL_47:
    }
  }

  v109 = *MEMORY[0x1E69826E0];
  v110 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69826E0]];
  v111 = isa_nsnumber(v110);

  if (v111)
  {
    v112 = [v4 objectForKeyedSubscript:v109];
    v5->_SOCKSEnabled = [v112 BOOLValue];
  }

  v113 = *MEMORY[0x1E69826F0];
  v114 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69826F0]];
  if (isa_nsstring(v114))
  {
    v115 = *MEMORY[0x1E69826E8];
    v116 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69826E8]];
    v117 = isa_nsnumber(v116);

    if (!v117)
    {
      goto LABEL_55;
    }

    v118 = [NEProxyServer alloc];
    v119 = [v4 objectForKeyedSubscript:v113];
    v120 = [v4 objectForKeyedSubscript:v115];
    v121 = -[NEProxyServer initWithType:address:port:](v118, "initWithType:address:port:", 5, v119, [v120 intValue]);
    SOCKSServer = v5->_SOCKSServer;
    v5->_SOCKSServer = v121;

    v123 = *MEMORY[0x1E69826F8];
    v124 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69826F8]];
    LODWORD(v120) = isa_nsstring(v124);

    if (!v120)
    {
      goto LABEL_55;
    }

    [(NEProxyServer *)v5->_SOCKSServer setAuthenticationRequired:1];
    v114 = [v4 objectForKeyedSubscript:v123];
    [(NEProxyServer *)v5->_SOCKSServer setUsername:v114];
  }

LABEL_55:
  v125 = *MEMORY[0x1E6982608];
  v126 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982608]];
  v127 = isa_nsnumber(v126);

  if (v127)
  {
    v128 = [v4 objectForKeyedSubscript:v125];
    v5->_excludeSimpleHostnames = [v128 BOOLValue];
  }

  v129 = *MEMORY[0x1E6982600];
  v130 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982600]];
  v131 = isa_nsarray(v130);

  if (v131)
  {
    v132 = [v4 objectForKeyedSubscript:v129];
    v133 = [v132 copy];
    exceptionList = v5->_exceptionList;
    v5->_exceptionList = v133;
  }

  v135 = *MEMORY[0x1E6982700];
  v136 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982700]];
  v137 = isa_nsarray(v136);

  if (v137)
  {
    v138 = [v4 objectForKeyedSubscript:v135];
    v139 = [v138 copy];
    supplementalMatchDomains = v5->_supplementalMatchDomains;
    v5->_supplementalMatchDomains = v139;
  }

  v141 = *MEMORY[0x1E6982708];
  v142 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982708]];
  v143 = isa_nsarray(v142);

  if (v143)
  {
    v144 = [v4 objectForKeyedSubscript:v141];
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
  v6 = [(NEProxySettings *)self proxyAutoConfigURL];

  if (v6)
  {
    v7 = [(NEProxySettings *)self proxyAutoConfigURL];
    v8 = [v7 absoluteString];
    [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69826B0]];
  }

  else
  {
    v9 = [(NEProxySettings *)self proxyAutoConfigJavaScript];

    if (!v9)
    {
      goto LABEL_12;
    }

    v7 = [(NEProxySettings *)self proxyAutoConfigJavaScript];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69826A8]];
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
  v11 = [(NEProxySettings *)self HTTPServer];

  if (v11)
  {
    v12 = [(NEProxySettings *)self HTTPServer];
    v13 = [v12 address];
    [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6982670]];

    v14 = MEMORY[0x1E696AD98];
    v15 = [(NEProxySettings *)self HTTPServer];
    v16 = [v14 numberWithInteger:{objc_msgSend(v15, "port")}];
    [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6982668]];

    v17 = [(NEProxySettings *)self HTTPServer];
    v18 = [v17 username];

    if (v18)
    {
      v19 = [(NEProxySettings *)self HTTPServer];
      v20 = [v19 username];
      [v3 setObject:v20 forKeyedSubscript:*MEMORY[0x1E6982698]];
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
  v22 = [(NEProxySettings *)self HTTPSServer];

  if (v22)
  {
    v23 = [(NEProxySettings *)self HTTPSServer];
    v24 = [v23 address];
    [v3 setObject:v24 forKeyedSubscript:*MEMORY[0x1E6982688]];

    v25 = MEMORY[0x1E696AD98];
    v26 = [(NEProxySettings *)self HTTPSServer];
    v27 = [v25 numberWithInteger:{objc_msgSend(v26, "port")}];
    [v3 setObject:v27 forKeyedSubscript:*MEMORY[0x1E6982680]];

    v28 = [(NEProxySettings *)self HTTPSServer];
    v29 = [v28 username];

    if (v29)
    {
      v30 = [(NEProxySettings *)self HTTPSServer];
      v31 = [v30 username];
      [v3 setObject:v31 forKeyedSubscript:*MEMORY[0x1E6982690]];
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
  v34 = [(NEProxySettings *)self FTPServer];

  if (v34)
  {
    v35 = [(NEProxySettings *)self FTPServer];
    v36 = [v35 address];
    [v3 setObject:v36 forKeyedSubscript:*MEMORY[0x1E6982628]];

    v37 = MEMORY[0x1E696AD98];
    v38 = [(NEProxySettings *)self FTPServer];
    v39 = [v37 numberWithInteger:{objc_msgSend(v38, "port")}];
    [v3 setObject:v39 forKeyedSubscript:*MEMORY[0x1E6982620]];

    v40 = [(NEProxySettings *)self FTPServer];
    v41 = [v40 username];

    if (v41)
    {
      v42 = [(NEProxySettings *)self FTPServer];
      v43 = [v42 username];
      [v3 setObject:v43 forKeyedSubscript:*MEMORY[0x1E6982630]];
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
  v45 = [(NEProxySettings *)self gopherServer];

  if (v45)
  {
    v46 = [(NEProxySettings *)self gopherServer];
    v47 = [v46 address];
    [v3 setObject:v47 forKeyedSubscript:*MEMORY[0x1E6982650]];

    v48 = MEMORY[0x1E696AD98];
    v49 = [(NEProxySettings *)self gopherServer];
    v50 = [v48 numberWithInteger:{objc_msgSend(v49, "port")}];
    [v3 setObject:v50 forKeyedSubscript:*MEMORY[0x1E6982648]];

    v51 = [(NEProxySettings *)self gopherServer];
    v52 = [v51 username];

    if (v52)
    {
      v53 = [(NEProxySettings *)self gopherServer];
      v54 = [v53 username];
      [v3 setObject:v54 forKeyedSubscript:*MEMORY[0x1E6982658]];
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
  v56 = [(NEProxySettings *)self RTSPServer];

  if (v56)
  {
    v57 = [(NEProxySettings *)self RTSPServer];
    v58 = [v57 address];
    [v3 setObject:v58 forKeyedSubscript:*MEMORY[0x1E69826D0]];

    v59 = MEMORY[0x1E696AD98];
    v60 = [(NEProxySettings *)self RTSPServer];
    v61 = [v59 numberWithInteger:{objc_msgSend(v60, "port")}];
    [v3 setObject:v61 forKeyedSubscript:*MEMORY[0x1E69826C8]];

    v62 = [(NEProxySettings *)self RTSPServer];
    v63 = [v62 username];

    if (v63)
    {
      v64 = [(NEProxySettings *)self RTSPServer];
      v65 = [v64 username];
      [v3 setObject:v65 forKeyedSubscript:*MEMORY[0x1E69826D8]];
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
  v67 = [(NEProxySettings *)self SOCKSServer];

  if (v67)
  {
    v68 = [(NEProxySettings *)self SOCKSServer];
    v69 = [v68 address];
    [v3 setObject:v69 forKeyedSubscript:*MEMORY[0x1E69826F0]];

    v70 = MEMORY[0x1E696AD98];
    v71 = [(NEProxySettings *)self SOCKSServer];
    v72 = [v70 numberWithInteger:{objc_msgSend(v71, "port")}];
    [v3 setObject:v72 forKeyedSubscript:*MEMORY[0x1E69826E8]];

    v73 = [(NEProxySettings *)self SOCKSServer];
    v74 = [v73 username];

    if (v74)
    {
      v75 = [(NEProxySettings *)self SOCKSServer];
      v76 = [v75 username];
      [v3 setObject:v76 forKeyedSubscript:*MEMORY[0x1E69826F8]];
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
  v78 = [(NEProxySettings *)self exceptionList];

  if (v78)
  {
    v79 = [(NEProxySettings *)self exceptionList];
    [v3 setObject:v79 forKeyedSubscript:*MEMORY[0x1E6982600]];
  }

  v80 = [(NEProxySettings *)self supplementalMatchDomains];

  if (v80)
  {
    v81 = [(NEProxySettings *)self supplementalMatchDomains];
    [v3 setObject:v81 forKeyedSubscript:*MEMORY[0x1E6982700]];
  }

  v82 = [(NEProxySettings *)self supplementalMatchOrders];

  if (v82)
  {
    v83 = [(NEProxySettings *)self supplementalMatchOrders];
    [v3 setObject:v83 forKeyedSubscript:*MEMORY[0x1E6982708]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NEProxySettings *)self HTTPServer];
  if (v5)
  {
    v6 = v5;
    v7 = [(NEProxySettings *)self HTTPServer];
    v8 = [v7 checkValidityAndCollectErrors:v4];
  }

  else
  {
    v8 = 1;
  }

  v9 = [(NEProxySettings *)self HTTPSServer];
  if (v9)
  {
    v10 = v9;
    v11 = [(NEProxySettings *)self HTTPSServer];
    v12 = [v11 checkValidityAndCollectErrors:v4];

    v8 &= v12;
  }

  v13 = [(NEProxySettings *)self FTPServer];
  if (v13)
  {
    v14 = v13;
    v15 = [(NEProxySettings *)self FTPServer];
    v16 = [v15 checkValidityAndCollectErrors:v4];

    v8 &= v16;
  }

  v17 = [(NEProxySettings *)self SOCKSServer];
  if (v17)
  {
    v18 = v17;
    v19 = [(NEProxySettings *)self SOCKSServer];
    v20 = [v19 checkValidityAndCollectErrors:v4];

    v8 &= v20;
  }

  v21 = [(NEProxySettings *)self RTSPServer];
  if (v21)
  {
    v22 = v21;
    v23 = [(NEProxySettings *)self RTSPServer];
    v24 = [v23 checkValidityAndCollectErrors:v4];

    v8 &= v24;
  }

  v25 = [(NEProxySettings *)self gopherServer];
  if (v25)
  {
    v26 = v25;
    v27 = [(NEProxySettings *)self gopherServer];
    v28 = [v27 checkValidityAndCollectErrors:v4];

    v8 &= v28;
  }

  v29 = [(NEProxySettings *)self exceptionList];

  if (v29)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v30 = [(NEProxySettings *)self exceptionList];
    v31 = [v30 countByEnumeratingWithState:&v57 objects:v63 count:16];
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
            objc_enumerationMutation(v30);
          }

          if ((isa_nsstring(*(*(&v57 + 1) + 8 * i)) & 1) == 0)
          {
            [NEConfiguration addError:v4 toList:?];
            v8 = 0;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v32);
    }
  }

  v35 = [(NEProxySettings *)self supplementalMatchDomains];

  if (v35)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v36 = [(NEProxySettings *)self supplementalMatchDomains];
    v37 = [v36 countByEnumeratingWithState:&v53 objects:v62 count:16];
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
            objc_enumerationMutation(v36);
          }

          if ((isa_nsstring(*(*(&v53 + 1) + 8 * j)) & 1) == 0)
          {
            [NEConfiguration addError:v4 toList:?];
            v8 = 0;
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v38);
    }
  }

  v41 = [(NEProxySettings *)self supplementalMatchOrders];

  if (v41)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v42 = [(NEProxySettings *)self supplementalMatchOrders];
    v43 = [v42 countByEnumeratingWithState:&v49 objects:v61 count:16];
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
            objc_enumerationMutation(v42);
          }

          if ((isa_nsnumber(*(*(&v49 + 1) + 8 * k)) & 1) == 0)
          {
            [NEConfiguration addError:v4 toList:?];
            v8 = 0;
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v44);
    }
  }

  v47 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEProxySettings allocWithZone:?]];
  [(NEProxySettings *)v4 setAutoProxyDiscovery:[(NEProxySettings *)self autoProxyDiscovery]];
  [(NEProxySettings *)v4 setAutoProxyConfigurationEnabled:[(NEProxySettings *)self autoProxyConfigurationEnabled]];
  v5 = [(NEProxySettings *)self proxyAutoConfigURL];
  [(NEProxySettings *)v4 setProxyAutoConfigURL:v5];

  v6 = [(NEProxySettings *)self proxyAutoConfigJavaScript];
  [(NEProxySettings *)v4 setProxyAutoConfigJavaScript:v6];

  [(NEProxySettings *)v4 setHTTPEnabled:[(NEProxySettings *)self HTTPEnabled]];
  v7 = [(NEProxySettings *)self HTTPServer];
  [(NEProxySettings *)v4 setHTTPServer:v7];

  [(NEProxySettings *)v4 setHTTPSEnabled:[(NEProxySettings *)self HTTPSEnabled]];
  v8 = [(NEProxySettings *)self HTTPSServer];
  [(NEProxySettings *)v4 setHTTPSServer:v8];

  [(NEProxySettings *)v4 setFTPEnabled:[(NEProxySettings *)self FTPEnabled]];
  v9 = [(NEProxySettings *)self FTPServer];
  [(NEProxySettings *)v4 setFTPServer:v9];

  [(NEProxySettings *)v4 setSOCKSEnabled:[(NEProxySettings *)self SOCKSEnabled]];
  v10 = [(NEProxySettings *)self SOCKSServer];
  [(NEProxySettings *)v4 setSOCKSServer:v10];

  [(NEProxySettings *)v4 setRTSPEnabled:[(NEProxySettings *)self RTSPEnabled]];
  v11 = [(NEProxySettings *)self RTSPServer];
  [(NEProxySettings *)v4 setRTSPServer:v11];

  [(NEProxySettings *)v4 setGopherEnabled:[(NEProxySettings *)self gopherEnabled]];
  v12 = [(NEProxySettings *)self gopherServer];
  [(NEProxySettings *)v4 setGopherServer:v12];

  [(NEProxySettings *)v4 setExcludeSimpleHostnames:[(NEProxySettings *)self excludeSimpleHostnames]];
  v13 = [(NEProxySettings *)self exceptionList];
  [(NEProxySettings *)v4 setExceptionList:v13];

  [(NEProxySettings *)v4 setUsePassiveFTP:[(NEProxySettings *)self usePassiveFTP]];
  v14 = [(NEProxySettings *)self supplementalMatchDomains];
  [(NEProxySettings *)v4 setSupplementalMatchDomains:v14];

  v15 = [(NEProxySettings *)self supplementalMatchOrders];
  [(NEProxySettings *)v4 setSupplementalMatchOrders:v15];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[NEProxySettings autoProxyDiscovery](self forKey:{"autoProxyDiscovery"), @"AutoProxyDiscovery"}];
  [v4 encodeBool:-[NEProxySettings autoProxyConfigurationEnabled](self forKey:{"autoProxyConfigurationEnabled"), @"AutoProxyConfigurationEnabled"}];
  v5 = [(NEProxySettings *)self proxyAutoConfigURL];
  [v4 encodeObject:v5 forKey:@"AutoConfigURL"];

  v6 = [(NEProxySettings *)self proxyAutoConfigJavaScript];
  [v4 encodeObject:v6 forKey:@"AutoConfigJavaScript"];

  [v4 encodeBool:-[NEProxySettings HTTPEnabled](self forKey:{"HTTPEnabled"), @"HTTPEnabled"}];
  v7 = [(NEProxySettings *)self HTTPServer];
  [v4 encodeObject:v7 forKey:@"HTTPServer"];

  [v4 encodeBool:-[NEProxySettings HTTPSEnabled](self forKey:{"HTTPSEnabled"), @"HTTPSEnabled"}];
  v8 = [(NEProxySettings *)self HTTPSServer];
  [v4 encodeObject:v8 forKey:@"HTTPSServer"];

  [v4 encodeBool:-[NEProxySettings FTPEnabled](self forKey:{"FTPEnabled"), @"FTPEnabled"}];
  v9 = [(NEProxySettings *)self FTPServer];
  [v4 encodeObject:v9 forKey:@"FTPServer"];

  [v4 encodeBool:-[NEProxySettings SOCKSEnabled](self forKey:{"SOCKSEnabled"), @"SOCKSEnabled"}];
  v10 = [(NEProxySettings *)self SOCKSServer];
  [v4 encodeObject:v10 forKey:@"SOCKSServer"];

  [v4 encodeBool:-[NEProxySettings RTSPEnabled](self forKey:{"RTSPEnabled"), @"RTSPEnabled"}];
  v11 = [(NEProxySettings *)self RTSPServer];
  [v4 encodeObject:v11 forKey:@"RTSPServer"];

  [v4 encodeBool:-[NEProxySettings gopherEnabled](self forKey:{"gopherEnabled"), @"GopherEnabled"}];
  v12 = [(NEProxySettings *)self gopherServer];
  [v4 encodeObject:v12 forKey:@"GopherServer"];

  [v4 encodeBool:-[NEProxySettings excludeSimpleHostnames](self forKey:{"excludeSimpleHostnames"), @"ExcludeSimpleHostnames"}];
  v13 = [(NEProxySettings *)self exceptionList];
  [v4 encodeObject:v13 forKey:@"ExceptionList"];

  [v4 encodeBool:-[NEProxySettings usePassiveFTP](self forKey:{"usePassiveFTP"), @"UsePassiveFTP"}];
  v14 = [(NEProxySettings *)self supplementalMatchDomains];
  [v4 encodeObject:v14 forKey:@"SupplementalMatchDomains"];

  v15 = [(NEProxySettings *)self supplementalMatchOrders];
  [v4 encodeObject:v15 forKey:@"SupplementalMatchOrders"];
}

- (NEProxySettings)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = NEProxySettings;
  v5 = [(NEProxySettings *)&v38 init];
  if (v5)
  {
    v5->_autoProxyDiscovery = [v4 decodeBoolForKey:@"AutoProxyDiscovery"];
    v5->_autoProxyConfigurationEnabled = [v4 decodeBoolForKey:@"AutoProxyConfigurationEnabled"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AutoConfigURL"];
    proxyAutoConfigURL = v5->_proxyAutoConfigURL;
    v5->_proxyAutoConfigURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AutoConfigJavaScript"];
    proxyAutoConfigJavaScript = v5->_proxyAutoConfigJavaScript;
    v5->_proxyAutoConfigJavaScript = v8;

    v5->_HTTPEnabled = [v4 decodeBoolForKey:@"HTTPEnabled"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HTTPServer"];
    HTTPServer = v5->_HTTPServer;
    v5->_HTTPServer = v10;

    v5->_HTTPSEnabled = [v4 decodeBoolForKey:@"HTTPSEnabled"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HTTPSServer"];
    HTTPSServer = v5->_HTTPSServer;
    v5->_HTTPSServer = v12;

    v5->_FTPEnabled = [v4 decodeBoolForKey:@"FTPEnabled"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FTPServer"];
    FTPServer = v5->_FTPServer;
    v5->_FTPServer = v14;

    v5->_SOCKSEnabled = [v4 decodeBoolForKey:@"SOCKSEnabled"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SOCKSServer"];
    SOCKSServer = v5->_SOCKSServer;
    v5->_SOCKSServer = v16;

    v5->_RTSPEnabled = [v4 decodeBoolForKey:@"RTSPEnabled"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RTSPServer"];
    RTSPServer = v5->_RTSPServer;
    v5->_RTSPServer = v18;

    v5->_gopherEnabled = [v4 decodeBoolForKey:@"GopherEnabled"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GopherServer"];
    gopherServer = v5->_gopherServer;
    v5->_gopherServer = v20;

    v5->_excludeSimpleHostnames = [v4 decodeBoolForKey:@"ExcludeSimpleHostnames"];
    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"ExceptionList"];
    exceptionList = v5->_exceptionList;
    v5->_exceptionList = v25;

    v5->_usePassiveFTP = [v4 decodeBoolForKey:@"UsePassiveFTP"];
    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"SupplementalMatchDomains"];
    supplementalMatchDomains = v5->_supplementalMatchDomains;
    v5->_supplementalMatchDomains = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"SupplementalMatchOrders"];
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