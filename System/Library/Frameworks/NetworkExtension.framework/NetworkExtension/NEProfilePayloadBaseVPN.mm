@interface NEProfilePayloadBaseVPN
- (BOOL)setPostprocessedPayloadContents:(id)a3;
- (NEProfilePayloadBaseVPN)initWithPayload:(id)a3;
- (id)getPreprocessedPayloadContents;
- (id)validatePayload;
@end

@implementation NEProfilePayloadBaseVPN

- (BOOL)setPostprocessedPayloadContents:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ne_log_large_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v27 = 138412546;
    *&v27[4] = objc_opt_class();
    *&v27[12] = 2112;
    *&v27[14] = v4;
    v26 = *&v27[4];
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ setPostprocessedPayloadContents newContents %@", v27, 0x16u);
  }

  v6 = [v4 objectForKeyedSubscript:@"AuthName"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"AuthName"];
    userName = self->_userName;
    self->_userName = v7;
  }

  v9 = [v4 objectForKeyedSubscript:{@"AuthPassword", *v27, *&v27[16], v28}];

  if (v9)
  {
    v10 = [v4 objectForKeyedSubscript:@"AuthPassword"];
    password = self->_password;
    self->_password = v10;
  }

  v12 = [v4 objectForKeyedSubscript:@"HTTPProxyUsername"];

  if (v12)
  {
    v13 = [v4 objectForKeyedSubscript:@"HTTPProxyUsername"];
    proxyUserName = self->_proxyUserName;
    self->_proxyUserName = v13;
  }

  v15 = [v4 objectForKeyedSubscript:@"HTTPProxyPassword"];

  if (v15)
  {
    v16 = [v4 objectForKeyedSubscript:@"HTTPProxyPassword"];
    proxyPassword = self->_proxyPassword;
    self->_proxyPassword = v16;
  }

  v18 = [v4 objectForKeyedSubscript:@"SharedSecret"];

  if (v18)
  {
    v19 = [v4 objectForKeyedSubscript:@"SharedSecret"];
    sharedSecret = self->_sharedSecret;
    self->_sharedSecret = v19;
  }

  v21 = [v4 objectForKeyedSubscript:@"PromptForVPNPIN"];

  if (v21)
  {
    v22 = [v4 objectForKeyedSubscript:@"PromptForVPNPIN"];
    pin = self->_pin;
    self->_pin = v22;
  }

  v24 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)getPreprocessedPayloadContents
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  userName = self->_userName;
  if (userName)
  {
    [v3 setValue:userName forKey:@"AuthName"];
  }

  if (self->_userNameRequired)
  {
    [v4 setValue:@"1" forKey:@"AuthNameRequired"];
  }

  password = self->_password;
  if (password)
  {
    [v4 setValue:password forKey:@"AuthPassword"];
  }

  if (self->_passwordRequired)
  {
    [v4 setValue:@"1" forKey:@"AuthPasswordRequired"];
  }

  proxyUserName = self->_proxyUserName;
  if (proxyUserName)
  {
    [v4 setValue:proxyUserName forKey:@"HTTPProxyUsername"];
  }

  if (self->_proxyUserNameRequired)
  {
    [v4 setValue:@"1" forKey:@"HTTPProxyUsernameRequired"];
  }

  proxyPassword = self->_proxyPassword;
  if (proxyPassword)
  {
    [v4 setValue:proxyPassword forKey:@"HTTPProxyPassword"];
  }

  if (self->_proxyPasswordRequired)
  {
    [v4 setValue:self->_proxyPassword forKey:@"HTTPProxyPasswordRequired"];
  }

  sharedSecret = self->_sharedSecret;
  if (sharedSecret)
  {
    [v4 setValue:sharedSecret forKey:@"SharedSecret"];
  }

  if (self->_sharedSecretRequired)
  {
    [v4 setValue:@"1" forKey:@"SharedSecretRequired"];
  }

  pin = self->_pin;
  if (pin)
  {
    [v4 setValue:pin forKey:@"PromptForVPNPIN"];
  }

  if (self->_pinRequired)
  {
    [v4 setValue:@"1" forKey:@"PromptForVPNPINRequired"];
  }

  v11 = ne_log_large_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "NEProfilePayloadBaseVPN getPreprocessedPayloadContents: dict %@", &v14, 0xCu);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)validatePayload
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = ne_log_large_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(NEProfilePayloadBase *)self payloadAtom];
    v7 = 138412290;
    v8 = v6;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "NEProfilePayloadBaseVPN validate: To-Do. dict %@", &v7, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

- (NEProfilePayloadBaseVPN)initWithPayload:(id)a3
{
  v113 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ne_log_large_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v110 = objc_opt_class();
    v111 = 2112;
    v112 = v4;
    v40 = v110;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ NEProfilePayloadVPNBase initWithPayload: payloadDict %@", buf, 0x16u);
  }

  v108.receiver = self;
  v108.super_class = NEProfilePayloadBaseVPN;
  v6 = [(NEProfilePayloadBase *)&v108 initWithPayload:v4];
  v7 = ne_log_large_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v41 = [(NEProfilePayloadBase *)v6 payloadAtom];
    *buf = 138412546;
    v110 = v6;
    v111 = 2112;
    v112 = v41;
    _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "NEProfilePayloadVPNBase initWithPayload: self %@,  cached atom %@", buf, 0x16u);
  }

  v8 = v4;
  if (v6)
  {
    v9 = ne_log_large_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v42 = objc_opt_class();
      *buf = 138412546;
      v110 = v42;
      v111 = 2112;
      v112 = v8;
      v43 = v42;
      _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, "%@ extractPayloadContents: payloadDict %@", buf, 0x16u);
    }

    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"Proxies"];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 objectForKeyedSubscript:@"HTTPProxyAuthenticated"];
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6->_proxyUserNameRequired = [v12 intValue] != 0;
          }

          v13 = [v11 objectForKeyedSubscript:@"HTTPProxyUsername"];
          proxyUserName = v6->_proxyUserName;
          v6->_proxyUserName = v13;
        }

        else
        {
          v16 = [v11 objectForKeyedSubscript:@"HTTPProxyUsername"];
          v17 = v6->_proxyUserName;
          v6->_proxyUserName = v16;

          v6->_proxyUserNameRequired = v6->_proxyUserName != 0;
        }

        v6->_proxyPasswordRequired = v6->_proxyUserNameRequired;
        v15 = [v11 objectForKeyedSubscript:@"HTTPProxyPassword"];
      }

      else
      {
        v15 = 0;
      }

      if (isa_nsdata(v15))
      {
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v15 encoding:4];
      }

      else
      {
        v18 = v15;
      }

      proxyPassword = v6->_proxyPassword;
      v6->_proxyPassword = v18;

      v20 = v8;
      v21 = [v20 objectForKeyedSubscript:@"PPP"];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 objectForKeyedSubscript:@"AuthEAPPlugins"];
        v24 = v23;
        if (v23)
        {
          v25 = [v23 containsObject:@"EAP-RSA"];
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = [v20 objectForKeyedSubscript:@"IPSec"];

      if (v26)
      {
        v27 = [v26 objectForKeyedSubscript:@"XAuthPasswordEncryption"];
        v28 = v27;
        if (v27)
        {
          v29 = [v27 isEqualToString:@"Prompt"];
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }

      v30 = [v20 objectForKeyedSubscript:@"VPNType"];
      if ([v30 isEqualToString:@"IPSec"])
      {
        v31 = [v20 objectForKeyedSubscript:@"IPSec"];

        if (v31)
        {
          v32 = [v31 objectForKeyedSubscript:@"AuthenticationMethod"];
          v26 = v32;
          if (v32)
          {
            if ([v32 isEqualToString:@"SharedSecret"])
            {
              v33 = [v31 objectForKeyedSubscript:@"XAuthName"];
              userName = v6->_userName;
              v6->_userName = v33;

              v6->_userNameRequired = 1;
            }

            if (v25 & v29 & 1) != 0 || ([v26 isEqualToString:@"Certificate"])
            {
              goto LABEL_57;
            }
          }

          else if (v25 & v29)
          {
            goto LABEL_57;
          }

          v39 = [v31 objectForKeyedSubscript:@"PayloadCertificateUUID"];
          if (v39)
          {
          }

          else
          {
            v44 = [v31 objectForKeyedSubscript:@"PayloadCertificateIdentityUUID"];

            if (!v44)
            {
              v35 = [v31 objectForKeyedSubscript:@"XAuthPassword"];
              v6->_passwordRequired = 1;
              goto LABEL_58;
            }
          }

LABEL_57:
          v35 = 0;
LABEL_58:

          goto LABEL_59;
        }

LABEL_52:
        v35 = 0;
        goto LABEL_59;
      }

      if ([v30 isEqualToString:@"IKEv2"])
      {
        v31 = [v20 objectForKeyedSubscript:@"IKEv2"];

        if (!v31)
        {
          goto LABEL_52;
        }

        v35 = [v31 objectForKeyedSubscript:@"ExtendedAuthEnabled"];
        if (!v35)
        {
          goto LABEL_59;
        }

        v36 = [v31 objectForKeyedSubscript:@"LocalCertificate"];
        if (v36 || ([v31 objectForKeyedSubscript:@"PayloadCertificateUUID"], (v36 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v31, "objectForKeyedSubscript:", @"PayloadCertificateFileName"), (v36 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v31, "objectForKeyedSubscript:", @"PayloadCertificateIdentityUUID"), (v36 = objc_claimAutoreleasedReturnValue()) != 0))
        {

          goto LABEL_52;
        }

        v98 = [v31 objectForKeyedSubscript:@"ExtensibleSSOProvider"];

        if (v98)
        {
          goto LABEL_52;
        }

        v99 = [v31 objectForKeyedSubscript:@"AuthName"];
        v100 = v6->_userName;
        v6->_userName = v99;

        v35 = [v31 objectForKeyedSubscript:@"AuthPassword"];
        v6->_userNameRequired = 1;
      }

      else
      {
        if ([v30 isEqualToString:@"VPN"])
        {
          v35 = 0;
          v31 = v26;
          goto LABEL_59;
        }

        v31 = [v20 objectForKeyedSubscript:@"PPP"];

        v6->_userNameRequired = 1;
        if (!v31)
        {
          goto LABEL_52;
        }

        v37 = [v31 objectForKeyedSubscript:@"AuthName"];
        v38 = v6->_userName;
        v6->_userName = v37;

        if (v25 & v29)
        {
          goto LABEL_52;
        }

        v35 = [v31 objectForKeyedSubscript:@"AuthPassword"];
      }

      v6->_passwordRequired = 1;
LABEL_59:
      if (isa_nsdata(v35))
      {
        v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v35 encoding:4];
      }

      else
      {
        v45 = v35;
      }

      password = v6->_password;
      v6->_password = v45;

      v47 = v20;
      v48 = ne_log_large_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v60 = objc_opt_class();
        *buf = 138412546;
        v110 = v60;
        v111 = 2112;
        v112 = v47;
        v61 = v60;
        _os_log_debug_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_DEBUG, "%@ extractPayloadContentsSharedSecret: dict %@", buf, 0x16u);
      }

      v49 = [v47 objectForKeyedSubscript:@"VPNType"];
      v50 = v49;
      if (!v49)
      {
LABEL_124:

        v86 = v47;
        v87 = [v86 objectForKeyedSubscript:@"VPNType"];
        if ([v87 isEqualToString:@"IPSec"])
        {
          v88 = [v86 objectForKeyedSubscript:@"IPSec"];
          v89 = v88;
          if (v88)
          {
            v90 = [v88 objectForKeyedSubscript:@"PromptForVPNPIN"];
            if (v90)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v90 intValue] == 1)
              {
                v6->_pinRequired = 1;
              }
            }

            goto LABEL_132;
          }
        }

        else
        {
          v89 = 0;
        }

        v90 = 0;
LABEL_132:

        goto LABEL_133;
      }

      if ([v49 isEqualToString:@"IPSec"] & 1) != 0 || (objc_msgSend(v50, "isEqualToString:", @"L2TP"))
      {
        v51 = kNEIPSecKey;
      }

      else
      {
        if (![v50 isEqualToString:@"IKEv2"])
        {
          goto LABEL_124;
        }

        v51 = kNEIKEv2Key;
      }

      v52 = [v47 objectForKeyedSubscript:*v51];
      if (!v52)
      {
        goto LABEL_124;
      }

      v53 = v52;
      v54 = [v52 objectForKeyedSubscript:@"AuthenticationMethod"];
      v55 = v54;
      if (!v54 || ([v54 isEqualToString:@"Certificate"] & 1) == 0)
      {
        v56 = [v53 objectForKeyedSubscript:@"PayloadCertificateUUID"];
        if (!v56)
        {
          v26 = [v53 objectForKeyedSubscript:@"PayloadCertificateIdentityUUID"];
          if (!v26)
          {
            goto LABEL_85;
          }
        }

        v57 = [v53 objectForKeyedSubscript:@"ExtendedAuthEnabled"];
        if (!isa_nsnumber(v57))
        {

          if (!v56)
          {
            v56 = v26;
          }

          goto LABEL_122;
        }

        v106 = v55;
        v58 = [v53 objectForKeyedSubscript:@"ExtendedAuthEnabled"];
        v59 = [v58 BOOLValue];

        if (v56)
        {

          v55 = v106;
          if (!v59)
          {
            goto LABEL_123;
          }

LABEL_85:
          v62 = [v53 objectForKeyedSubscript:@"IPSecSharedSecret"];
          if (v62 || ([v53 objectForKeyedSubscript:@"SharedSecret"], (v62 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v56 = v62;
            if (!isa_nsdata(v62))
            {
              if (isa_nsstring(v56))
              {
                goto LABEL_112;
              }

              v65 = ne_log_obj();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
              {
                v101 = v55;
                v102 = objc_opt_class();
                v103 = v102;
                v104 = objc_opt_class();
                *buf = 138412546;
                v110 = v102;
                v111 = 2112;
                v112 = v104;
                v105 = v104;
                _os_log_debug_impl(&dword_1BA83C000, v65, OS_LOG_TYPE_DEBUG, "%@ extractPayloadContentsSharedSecret: Invalid shared secret object type %@, setting to nil", buf, 0x16u);

                v55 = v101;
              }

              v64 = 0;
              goto LABEL_111;
            }

            v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v56 encoding:4];
          }

          else
          {
            v66 = [v53 objectForKeyedSubscript:@"ExportedSharedSecret"];
            if (v66)
            {
              v56 = v66;
              if ([v56 length])
              {
                v67 = v55;
                v68 = [v56 length];
                v69 = malloc_type_malloc(v68, 0x27AE7D14uLL);
                [v56 getBytes:v69 length:v68];
                if (v68)
                {
                  v70 = &kVPNObfuscationKey;
                  v71 = v69;
                  do
                  {
                    v72 = *v70++;
                    *v71++ ^= v72;
                    if (v70 == "؛[]y<I@")
                    {
                      v70 = &kVPNObfuscationKey;
                    }

                    --v68;
                  }

                  while (v68);
                }

                v73 = strlen(v69);
                v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v69 length:v73 encoding:4];
                memset_s(v69, v73, 0, v73);
                free(v69);
                v55 = v67;
              }

              else
              {
                v64 = &stru_1F3880810;
              }

              goto LABEL_111;
            }

            v74 = [v53 objectForKeyedSubscript:@"IPSecSharedSecretObf"];
            v56 = v74;
            if (!v74)
            {
              goto LABEL_112;
            }

            if (![v74 length])
            {
              v64 = &stru_1F3880810;
              goto LABEL_111;
            }

            v75 = v55;
            if (*CFDataGetBytePtr(v56))
            {
              v76 = 335544576;
            }

            else
            {
              v76 = 268435712;
            }

            BytePtr = CFDataGetBytePtr(v56);
            v78 = strlen(BytePtr);
            v79 = *MEMORY[0x1E695E480];
            v80 = CFDataGetBytePtr(v56);
            v81 = v76;
            v55 = v75;
            v63 = CFStringCreateWithBytes(v79, v80, v78, v81, 0);
          }

          v64 = v63;
LABEL_111:

          v56 = v64;
LABEL_112:
          v6->_sharedSecretRequired = 1;
          objc_storeStrong(&v6->_sharedSecret, v56);
          if (v6->_sharedSecretRequired && [v50 isEqualToString:@"IKEv2"] && objc_msgSend(v55, "isEqualToString:", @"None"))
          {
            v82 = [v53 objectForKeyedSubscript:@"ExtendedAuthEnabled"];
            if (isa_nsnumber(v82))
            {
              [v53 objectForKeyedSubscript:@"ExtendedAuthEnabled"];
              v83 = v107 = v55;
              v84 = [v83 BOOLValue];

              v55 = v107;
              if (v84)
              {
                v6->_sharedSecretRequired = 0;
              }
            }

            else
            {
            }
          }

          v85 = ne_log_obj();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
          {
            v93 = v55;
            v94 = objc_opt_class();
            v95 = v94;
            v96 = objc_opt_class();
            *buf = 138412546;
            v110 = v94;
            v111 = 2112;
            v112 = v96;
            v97 = v96;
            _os_log_debug_impl(&dword_1BA83C000, v85, OS_LOG_TYPE_DEBUG, "%@ extractPayloadContentsSharedSecret: (value class %@)", buf, 0x16u);

            v55 = v93;
          }

LABEL_122:
          goto LABEL_123;
        }

        v55 = v106;
        if (v59)
        {
          goto LABEL_85;
        }
      }

LABEL_123:

      goto LABEL_124;
    }
  }

LABEL_133:

  v91 = *MEMORY[0x1E69E9840];
  return v6;
}

@end