@interface NEIKEv2EAP
+ (uint64_t)codeForPayload:(uint64_t)a1;
+ (uint64_t)loadModuleForType:(uint64_t)a1;
+ (uint64_t)typeForPayload:(uint64_t)a1;
- (CFDataRef)sessionKey;
- (NEIKEv2EAP)init;
- (uint64_t)createPayloadResponseForRequest:(void *)a3 ikeSA:(BOOL *)a4 success:(BOOL *)a5 reportEAPError:;
- (void)createPayloadResponseForRequest:(void *)a1 type:(char)a2 typeData:(void *)a3 typeString:(void *)a4;
- (void)dealloc;
@end

@implementation NEIKEv2EAP

- (NEIKEv2EAP)init
{
  if (!MEMORY[0x1EEE86C70])
  {
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v7.receiver = self;
  v7.super_class = NEIKEv2EAP;
  v2 = [(NEIKEv2EAP *)&v7 init];
  if (!v2)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "[super init] failed", v6, 2u);
    }

    self = 0;
    goto LABEL_7;
  }

  *(v2 + 19) = 0;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 8) = 0u;
  self = v2;
  v3 = self;
LABEL_8:

  return v3;
}

- (void)dealloc
{
  if (self && self->_module)
  {
    EAPClientModulePluginFree();
    self->_module = 0;
  }

  properties = self->_pluginData.properties;
  if (properties)
  {
    CFRelease(properties);
    self->_pluginData.properties = 0;
  }

  sec_identity = self->_pluginData.sec_identity;
  if (sec_identity)
  {
    CFRelease(sec_identity);
    self->_pluginData.sec_identity = 0;
  }

  encryptedEAPIdentity = self->_pluginData.encryptedEAPIdentity;
  if (encryptedEAPIdentity)
  {
    CFRelease(encryptedEAPIdentity);
    self->_pluginData.encryptedEAPIdentity = 0;
  }

  username = self->_pluginData.username;
  if (username)
  {
    free(username);
    self->_pluginData.username = 0;
  }

  password = self->_pluginData.password;
  if (password)
  {
    memset_s(password, self->_pluginData.password_length, 0, self->_pluginData.password_length);
    free(self->_pluginData.password);
    self->_pluginData.password = 0;
  }

  v8.receiver = self;
  v8.super_class = NEIKEv2EAP;
  [(NEIKEv2EAP *)&v8 dealloc];
}

uint64_t __27__NEIKEv2EAP_getPEAPModule__block_invoke()
{
  result = EAPClientModuleAddBuiltinModule();
  if (!result)
  {

    return EAPClientModuleAddBuiltinModule();
  }

  return result;
}

+ (uint64_t)codeForPayload:(uint64_t)a1
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if ([v2 length] <= 3)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "+[NEIKEv2EAP codeForPayload:]";
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null (payload.length >= sizeof(EAPPacket))", &v7, 0xCu);
    }

    v3 = 0;
  }

  else
  {
    v3 = *[v2 bytes];
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (uint64_t)typeForPayload:(uint64_t)a1
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    if ([v2 length] >= 5 && +[NEIKEv2EAP codeForPayload:](NEIKEv2EAP, v2) - 3 >= 0xFFFFFFFE)
    {
      v3 = *([v2 bytes] + 4);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "+[NEIKEv2EAP typeForPayload:]";
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null payload", &v7, 0xCu);
    }
  }

  v3 = 0;
LABEL_6:

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)createPayloadResponseForRequest:(void *)a1 type:(char)a2 typeData:(void *)a3 typeString:(void *)a4
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [v7 bytes];
  if (!v8 && v9)
  {
    v8 = [v9 dataUsingEncoding:4];
  }

  v11 = [v8 length] + 5;
  v14[0] = 2;
  v15 = bswap32(v11) >> 16;
  v14[1] = *(v10 + 1);
  v16 = a2;
  v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v11];
  [v12 appendBytes:v14 length:5];
  if ([v8 length])
  {
    [v12 appendData:v8];
  }

  return v12;
}

+ (uint64_t)loadModuleForType:(uint64_t)a1
{
  objc_opt_self();
  if (a2 <= 22)
  {
    if (a2 == 6)
    {
      objc_opt_self();
      if (!MEMORY[0x1EEE86C80])
      {
        return 0;
      }

      if (getGTCModule_onceToken == -1)
      {
        goto LABEL_26;
      }

      v4 = &getGTCModule_onceToken;
      v5 = &__block_literal_global_6;
    }

    else
    {
      if (a2 != 13)
      {
        if (a2 == 18)
        {
          objc_opt_self();
          if (MEMORY[0x1EEE86C90])
          {
            if (getSIMModule_onceToken == -1)
            {
              goto LABEL_26;
            }

            v4 = &getSIMModule_onceToken;
            v5 = &__block_literal_global_2;
            goto LABEL_36;
          }
        }

        return 0;
      }

      objc_opt_self();
      if (!MEMORY[0x1EEE86C98])
      {
        return 0;
      }

      if (getTLSModule_onceToken == -1)
      {
        goto LABEL_26;
      }

      v4 = &getTLSModule_onceToken;
      v5 = &__block_literal_global_8;
    }

LABEL_36:
    dispatch_once(v4, v5);
    goto LABEL_26;
  }

  if (a2 == 26)
  {
    objc_opt_self();
    if (!MEMORY[0x1EEE86C88])
    {
      return 0;
    }

    if (getMSCHAPv2Module_onceToken == -1)
    {
      goto LABEL_26;
    }

    v4 = &getMSCHAPv2Module_onceToken;
    v5 = &__block_literal_global_4;
    goto LABEL_36;
  }

  if (a2 != 25)
  {
    if (a2 != 23)
    {
      return 0;
    }

    objc_opt_self();
    if (!MEMORY[0x1EEE86C78])
    {
      return 0;
    }

    if (getAKAModule_onceToken == -1)
    {
      goto LABEL_26;
    }

    v4 = &getAKAModule_onceToken;
    v5 = &__block_literal_global_9083;
    goto LABEL_36;
  }

  objc_opt_self();
  if (!MEMORY[0x1EEE86C88] || !MEMORY[0x1EEE86CA0])
  {
    return 0;
  }

  if (getPEAPModule_onceToken != -1)
  {
    v4 = &getPEAPModule_onceToken;
    v5 = &__block_literal_global_10_9085;
    goto LABEL_36;
  }

LABEL_26:

  return EAPClientModuleLookup();
}

- (uint64_t)createPayloadResponseForRequest:(void *)a3 ikeSA:(BOOL *)a4 success:(BOOL *)a5 reportEAPError:
{
  v221 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  if (!a1)
  {
    goto LABEL_165;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!v9)
  {
    v179 = ne_log_obj();
    if (os_log_type_enabled(v179, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2EAP createPayloadResponseForRequest:ikeSA:success:reportEAPError:]";
      _os_log_fault_impl(&dword_1BA83C000, v179, OS_LOG_TYPE_FAULT, "%s called with null request", buf, 0xCu);
    }

    goto LABEL_165;
  }

  v11 = 0x1E7F04000uLL;
  if (*(a1 + 168))
  {
    v12 = 0;
    goto LABEL_7;
  }

  v31 = v9;
  v32 = v10;
  self = v32;
  if (v32)
  {
    v33 = v32;
    v201 = a4;
    v212 = 0;
    v34 = [NEIKEv2EAP codeForPayload:v31];
    if (v34 != 1)
    {
      v55 = v34;
      v56 = ne_log_obj();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v55;
        v40 = v56;
        _os_log_error_impl(&dword_1BA83C000, v56, OS_LOG_TYPE_ERROR, "error: received EAP packet with code %u", buf, 8u);
        v12 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v12 = MEMORY[0x1E695E0F0];
        v40 = v56;
      }

      goto LABEL_160;
    }

    v200 = v31;
    v35 = [NEIKEv2EAP typeForPayload:v31];
    v36 = v33;
    v37 = v35;
    v39 = objc_getProperty(v36, v38, 96, 1);
    v40 = v39;
    if (v37 != 1)
    {
      [v39 eapProtocols];
      v42 = v41 = v40;
      v31 = [v42 count];

      v40 = v41;
      if (v31)
      {
        v195 = a5;
        v197 = v10;
        v210 = 0u;
        v211 = 0u;
        v208 = 0u;
        v209 = 0u;
        v43 = [v41 eapProtocols];
        v44 = [v43 countByEnumeratingWithState:&v208 objects:v214 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v209;
          v31 = dword_1BAA4F728;
          while (2)
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v209 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v208 + 1) + 8 * i);
              if (v48)
              {
                v50 = [*(*(&v208 + 1) + 8 * i) method] - 2;
                if (v50 <= 5 && dword_1BAA4F728[v50] == v37)
                {
                  objc_setProperty_atomic(a1, v49, v48, 160);
                  goto LABEL_75;
                }
              }
            }

            v45 = [v43 countByEnumeratingWithState:&v208 objects:v214 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }
        }

LABEL_75:

        a5 = v195;
        v10 = v197;
        v11 = 0x1E7F04000uLL;
        v40 = v41;
        if (!objc_getProperty(a1, v67, 160, 1))
        {
          v70 = [v41 eapProtocols];
          v12 = [v70 copy];
          goto LABEL_91;
        }
      }
    }

    v68 = [NEIKEv2EAP loadModuleForType:v37];
    *(a1 + 168) = v68;
    if (v37 != 1 && !v68)
    {
      v70 = ne_log_obj();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v37;
        _os_log_error_impl(&dword_1BA83C000, v70, OS_LOG_TYPE_ERROR, "error: module is null for type %u", buf, 8u);
      }

      v12 = MEMORY[0x1E695E0F0];
      goto LABEL_91;
    }

    if (v37 > 0x16u)
    {
      switch(v37)
      {
        case 0x17u:
          v71 = v40;
          v31 = @"EAPAKAProperties";
          break;
        case 0x19u:
          v71 = v40;
          v31 = @"EAPPEAPProperties";
          break;
        case 0x1Au:
          v71 = v40;
          v31 = @"EAPMSCHAPv2Properties";
          break;
        default:
LABEL_94:
          if (v68)
          {
            *(a1 + 8) = 0u;
            *(a1 + 152) = 0;
            *(a1 + 120) = 0u;
            *(a1 + 136) = 0u;
            *(a1 + 88) = 0u;
            *(a1 + 104) = 0u;
            *(a1 + 56) = 0u;
            *(a1 + 72) = 0u;
            *(a1 + 24) = 0u;
            *(a1 + 40) = 0u;
            goto LABEL_102;
          }

          v70 = 0;
          v12 = 0;
LABEL_91:
          v31 = v200;
LABEL_159:

LABEL_160:
          a4 = v201;
          goto LABEL_161;
      }
    }

    else
    {
      switch(v37)
      {
        case 6u:
          v71 = v40;
          v31 = @"EAPGTCProperties";
          break;
        case 0xDu:
          v71 = v40;
          v31 = @"EAPTLSProperties";
          break;
        case 0x12u:
          v71 = v40;
          v31 = @"EAPSIMProperties";
          break;
        default:
          goto LABEL_94;
      }
    }

    v72 = [objc_getProperty(a1 v69];
    v70 = [v72 objectForKeyedSubscript:v31];

    if (!*(a1 + 168))
    {
      v12 = 0;
      v31 = v200;
      v40 = v71;
      goto LABEL_159;
    }

    *(a1 + 8) = 0u;
    *(a1 + 152) = 0;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    v40 = v71;
    if (v70)
    {
      v198 = v10;
      v194 = [v70 mutableCopy];
LABEL_103:
      v74 = objc_getProperty(a1, v73, 160, 1);
      v76 = v74;
      v196 = a5;
      v191 = v70;
      v192 = v40;
      if (v74 && ([v74 method] == 4 || objc_msgSend(v76, "method") == 5 || objc_msgSend(v76, "method") == 7))
      {
        v77 = 1;
      }

      else
      {
        v77 = 0;
        if (v37 != 23 && v37 != 18)
        {
          goto LABEL_112;
        }
      }

      a5 = objc_getProperty(self, v75, 88, 1);
      v31 = [a5 username];
      v78 = [(__CFString *)v31 length];
      if (v77)
      {
        v79 = v78;

        v81 = self;
        if (v79)
        {
LABEL_110:
          v82 = objc_getProperty(v81, v80, 88, 1);
          v83 = [v82 username];
          v10 = v198;
          goto LABEL_123;
        }

LABEL_119:
        v84 = objc_getProperty(v81, v80, 88, 1);
        v85 = [v84 localPrivateEAPIdentity];

        v87 = objc_getProperty(v81, v86, 88, 1);
        v82 = v87;
        v10 = v198;
        if (v85)
        {
          v83 = [v87 localPrivateEAPIdentity];
        }

        else
        {
          v88 = [v87 localIdentifier];
          v83 = [v88 stringValue];
        }

LABEL_123:
        v11 = 0x1E7F04000;

        a5 = v196;
        if (v83)
        {
          v90 = [v83 maximumLengthOfBytesUsingEncoding:4];
          v91 = malloc_type_malloc(v90, 0xAAFC57D3uLL);
          *(a1 + 48) = v91;
          [v83 getCString:v91 maxLength:v90 encoding:4];
          *(a1 + 56) = strnlen(*(a1 + 48), v90);
        }

        v193 = v83;
        v92 = objc_getProperty(v81, v89, 88, 1);
        v93 = [v92 localEncryptedEAPIdentity];

        if (v93)
        {
          v95 = objc_getProperty(v81, v94, 88, 1);
          *(a1 + 64) = [v95 localEncryptedEAPIdentity];
        }

        v96 = objc_getProperty(a1, v94, 160, 1);
        if (v96)
        {
          v98 = v96;
          if ([v96 method] == 4 || objc_msgSend(v98, "method") == 5)
          {

            goto LABEL_131;
          }

          v122 = [v98 method];

          if (v122 == 7)
          {
LABEL_131:
            if (!objc_getProperty(v81, v97, 88, 1))
            {
              v120 = v196;
              v121 = ne_log_obj();
              if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315138;
                *&buf[4] = "[NEIKEv2IKESA password]";
                _os_log_fault_impl(&dword_1BA83C000, v121, OS_LOG_TYPE_FAULT, "%s called with null self.sessionConfiguration", buf, 0xCu);
              }

              goto LABEL_154;
            }

            if (!objc_getProperty(v81, v99, 520, 1))
            {
              v101 = [objc_getProperty(v81 v100];

              if (v101)
              {
                v103 = [objc_getProperty(v81 v102];
                v104 = [NEIKEv2Crypto copyDataFromPersistentReference:v103];
                objc_setProperty_atomic(v81, v105, v104, 520);

                if (!objc_getProperty(v81, v106, 520, 1))
                {
                  v107 = ne_log_obj();
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v81;
                    _os_log_error_impl(&dword_1BA83C000, v107, OS_LOG_TYPE_ERROR, "%@ Failed to retrieve password by reference", buf, 0xCu);
                  }
                }
              }

              v109 = objc_getProperty(v81, v102, 520, 1);
              if (v109)
              {
                goto LABEL_141;
              }

              v110 = [objc_getProperty(v81 v108];

              if (v110)
              {
                v111 = MEMORY[0x1E695DEF0];
                v109 = [objc_getProperty(v81 v100];
                v112 = [v109 dataUsingEncoding:4];
                v113 = [(NSData *)v111 sensitiveDataWithData:v112];
                objc_setProperty_atomic(v81, v114, v113, 520);

                a5 = v196;
LABEL_141:
              }
            }

            v115 = objc_getProperty(v81, v100, 520, 1);
            if (v115)
            {
              v116 = v115;
              v117 = malloc_type_malloc([v115 length]+ 1, 0x1929D726uLL);
              v118 = v116;
              if (!v117)
              {
                v120 = a5;
                v126 = ne_log_obj();
                if (os_log_type_enabled(v126, OS_LOG_TYPE_FAULT))
                {
                  v180 = [v116 length];
                  *buf = 134217984;
                  *&buf[4] = v180 + 1;
                  _os_log_fault_impl(&dword_1BA83C000, v126, OS_LOG_TYPE_FAULT, "malloc(%zu) failed", buf, 0xCu);
                }

                v31 = v200;
                goto LABEL_156;
              }

              v119 = v117;
              memcpy(v117, [v116 bytes], [v116 length]);
              v119[[v116 length]] = 0;
              *(a1 + 72) = v119;
              *(a1 + 80) = [v116 length];
              if (v193)
              {

                goto LABEL_150;
              }

              v120 = a5;
LABEL_155:
              v31 = v200;
              v126 = ne_log_obj();
              if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
              {
                v142 = "password";
                if (!v193)
                {
                  v142 = "username";
                }

                *buf = 136315138;
                *&buf[4] = v142;
                _os_log_error_impl(&dword_1BA83C000, v126, OS_LOG_TYPE_ERROR, "EAP plugin data initialization failed, missing %s", buf, 0xCu);
              }

LABEL_156:
              v40 = v192;

              a5 = v120;
LABEL_157:

              v12 = MEMORY[0x1E695E0F0];
LABEL_158:

              v70 = v191;
              goto LABEL_159;
            }

            v120 = a5;
LABEL_154:
            v118 = 0;
            goto LABEL_155;
          }
        }

LABEL_150:
        v123 = objc_getProperty(a1, v97, 160, 1);
        v31 = v200;
        if (!v123)
        {
          goto LABEL_226;
        }

        v124 = v123;
        if ([v123 method] == 6)
        {
        }

        else
        {
          v129 = [v124 method];

          v130 = v129 == 7;
          v31 = v200;
          if (!v130)
          {
            goto LABEL_226;
          }
        }

        v131 = [(NEIKEv2IKESA *)v81 copyLocalSecIdentity];
        *(a1 + 104) = v131;
        if (!v131)
        {
          v118 = ne_log_obj();
          v40 = v192;
          if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1BA83C000, v118, OS_LOG_TYPE_ERROR, "EAP plugin data initialization failed, missing identity certificate", buf, 2u);
          }

          goto LABEL_157;
        }

        [v194 setObject:*MEMORY[0x1E695E4D0] forKeyedSubscript:@"TLSCertificateIsRequired"];
        v132 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v199 = v10;
        if (v132)
        {
          v133 = [(NEIKEv2IKESA *)self copyRemoteCertificateAuthorityArray];
          if (v133)
          {
            v219 = 0u;
            v220 = 0u;
            v217 = 0u;
            v218 = 0u;
            v134 = v133;
            v135 = [v134 countByEnumeratingWithState:&v217 objects:buf count:16];
            if (v135)
            {
              v136 = v135;
              v137 = *v218;
              do
              {
                for (j = 0; j != v136; ++j)
                {
                  if (*v218 != v137)
                  {
                    objc_enumerationMutation(v134);
                  }

                  v139 = SecCertificateCopyData(*(*(&v217 + 1) + 8 * j));
                  if (v139)
                  {
                    [v132 addObject:v139];
                  }

                  else
                  {
                    v140 = ne_log_obj();
                    if (os_log_type_enabled(v140, OS_LOG_TYPE_FAULT))
                    {
                      *v207 = 0;
                      _os_log_fault_impl(&dword_1BA83C000, v140, OS_LOG_TYPE_FAULT, "SecCertificateCopyData failed", v207, 2u);
                    }
                  }
                }

                v136 = [v134 countByEnumeratingWithState:&v217 objects:buf count:16];
              }

              while (v136);
            }

            v141 = v132;
            a5 = v196;
            v11 = 0x1E7F04000;
LABEL_206:

            if ([v141 count])
            {
              [v194 setObject:v141 forKeyedSubscript:@"TLSTrustedCertificates"];
              v145 = 0;
              v10 = v199;
              goto LABEL_216;
            }

            v146 = objc_getProperty(self, v144, 88, 1);
            v145 = [v146 remoteCertificateHostname];

            v10 = v199;
            if (v145)
            {
LABEL_215:
              *&v217 = v145;
              v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v217 count:1];
              [v194 setObject:v159 forKeyedSubscript:@"TLSTrustedServerNames"];

              goto LABEL_216;
            }

            v148 = objc_getProperty(self, v147, 88, 1);
            v149 = [v148 remoteIdentifier];
            if ([v149 identifierType] != 2)
            {
              v151 = objc_getProperty(self, v150, 88, 1);
              v152 = [v151 remoteIdentifier];
              if ([v152 identifierType] != 1)
              {
                v154 = v141;
                v182 = objc_getProperty(self, v153, 88, 1);
                v183 = [v182 remoteIdentifier];
                v190 = [v183 identifierType];

                v10 = v199;
                if (v190 != 5)
                {
                  v184 = objc_getProperty(self, v155, 80, 1);
                  v185 = [v184 remoteEndpoint];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if ((isKindOfClass & 1) == 0)
                  {
                    v145 = 0;
                    a5 = v196;
                    v11 = 0x1E7F04000;
                    v141 = v154;
LABEL_216:
                    v118 = v141;
                    v160 = [v141 count];
                    if (!v145 && !v160)
                    {
                      v162 = ne_log_obj();
                      v40 = v192;
                      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1BA83C000, v162, OS_LOG_TYPE_ERROR, "EAP plugin data initialization failed, missing server certificate validation info", buf, 2u);
                      }

                      v31 = v200;
                      goto LABEL_157;
                    }

                    v163 = objc_getProperty(self, v161, 88, 1);
                    v164 = [v163 tlsMinimumVersion];

                    if (v164)
                    {
                      v166 = objc_getProperty(self, v165, 88, 1);
                      v167 = [v166 tlsMinimumVersion];
                      [v194 setObject:v167 forKeyedSubscript:@"TLSMinimumVersion"];
                    }

                    v168 = objc_getProperty(self, v165, 88, 1);
                    v169 = [v168 tlsMaximumVersion];

                    if (v169)
                    {
                      v171 = objc_getProperty(self, v170, 88, 1);
                      v172 = [v171 tlsMaximumVersion];
                      [v194 setObject:v172 forKeyedSubscript:@"TLSMaximumVersion"];
                    }

LABEL_226:
                    *(a1 + 24) = 1024;
                    *(a1 + 88) = v194;
                    *v207 = 0;
                    v173 = *(a1 + 168);
                    v174 = EAPClientModulePluginInit();
                    if (*v207)
                    {
                      CFRelease(*v207);
                      *v207 = 0;
                    }

                    v40 = v192;
                    if (v174)
                    {
                      v175 = a5;
                      v176 = ne_log_obj();
                      if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
                      {
                        Property = objc_getProperty(a1, v177, 160, 1);
                        *buf = 138412546;
                        *&buf[4] = Property;
                        *&buf[12] = 1024;
                        v216 = v174;
                        _os_log_error_impl(&dword_1BA83C000, v176, OS_LOG_TYPE_ERROR, "%@ EAP client module init failed with status %u", buf, 0x12u);
                      }

                      objc_setProperty_atomic(a1, v178, 0, 160);
                      *(a1 + 168) = 0;
                      v12 = MEMORY[0x1E695E0F0];
                      a5 = v175;
                    }

                    else
                    {
                      v12 = 0;
                    }

                    v31 = v200;
                    goto LABEL_158;
                  }

                  v156 = objc_getProperty(self, v187, 80, 1);
                  v157 = [v156 remoteEndpoint];
                  v158 = [v157 hostname];
                  goto LABEL_214;
                }

LABEL_213:
                v156 = objc_getProperty(self, v155, 88, 1);
                v157 = [v156 remoteIdentifier];
                v158 = [v157 stringValue];
LABEL_214:
                v145 = v158;

                a5 = v196;
                v11 = 0x1E7F04000;
                v141 = v154;
                if (!v145)
                {
                  goto LABEL_216;
                }

                goto LABEL_215;
              }

              v10 = v199;
            }

            v154 = v141;

            goto LABEL_213;
          }

          v143 = ne_log_obj();
          if (os_log_type_enabled(v143, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1BA83C000, v143, OS_LOG_TYPE_FAULT, "[self copyRemoteCertificateAuthorityArray] failed", buf, 2u);
          }

          v134 = 0;
        }

        else
        {
          v134 = ne_log_obj();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1BA83C000, v134, OS_LOG_TYPE_FAULT, "[[NSMutableArray alloc] init] failed", buf, 2u);
          }
        }

        v141 = 0;
        goto LABEL_206;
      }

      v77 = v78 != 0;
LABEL_112:
      if ((v37 == 23 || v37 == 18) && ((v31, v37 == 23) || v37 == 18))
      {

        v81 = self;
        if (v77)
        {
          goto LABEL_110;
        }
      }

      else
      {

        v81 = self;
        if (v77)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_119;
    }

LABEL_102:
    v198 = v10;
    v194 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v70 = 0;
    goto LABEL_103;
  }

  v188 = v31;
  v189 = ne_log_obj();
  if (os_log_type_enabled(v189, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[NEIKEv2EAP selectModuleForPayload:ikeSA:]";
    _os_log_fault_impl(&dword_1BA83C000, v189, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", buf, 0xCu);
  }

  v12 = MEMORY[0x1E695E0F0];
  v31 = v188;
LABEL_161:

  if (v12 && ![v12 count])
  {
    v51 = ne_log_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v52 = "Failed to select EAP module";
      v53 = v51;
      v54 = 2;
      goto LABEL_192;
    }

    goto LABEL_164;
  }

LABEL_7:
  v13 = [(NEIKEv2EAP *)*(v11 + 2456) codeForPayload:v9];
  if (v13 != 1)
  {
    v26 = 0;
LABEL_23:
    if (*(a1 + 168))
    {
      [v9 bytes];
      [v9 length];
      if (EAPPacketIsValid())
      {
        *buf = 0;
        v214[0] = 0;
        LODWORD(v217) = 0;
        v27 = *(a1 + 168);
        [v9 bytes];
        v28 = EAPClientModulePluginProcess();
        if (*buf)
        {
          v29 = objc_alloc(MEMORY[0x1E695DEF0]);
          v30 = bswap32(*(*buf + 2));
          v25 = [v29 initWithBytes:? length:?];
          if (!a5)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v25 = 0;
          if (!a5)
          {
            goto LABEL_61;
          }
        }

        if (v217)
        {
          *a5 = v217 == 19;
        }

LABEL_61:
        if (v28 == 1)
        {
          if (v10)
          {
            v10[18] = 1;
            v10[20] = 1;
          }

          if (!a4)
          {
            goto LABEL_73;
          }

          v65 = 1;
          goto LABEL_72;
        }

        if (v28 || v214[0])
        {
          if (a4)
          {
            v65 = 0;
LABEL_72:
            *a4 = v65;
          }
        }

        else if (a4)
        {
          v65 = *buf != 0;
          goto LABEL_72;
        }

LABEL_73:
        v66 = *(a1 + 168);
        EAPClientModulePluginFreePacket();

        goto LABEL_166;
      }

      v51 = ne_log_obj();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_164;
      }

      *buf = 67109376;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = v26;
      v52 = "Failed to validate EAP payload (code %d type %d)\n";
      goto LABEL_45;
    }

    v51 = ne_log_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = v26;
      v52 = "EAP payload could not be processed (code %d type %d)\n";
LABEL_45:
      v53 = v51;
      v54 = 14;
LABEL_192:
      _os_log_error_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_ERROR, v52, buf, v54);
    }

LABEL_164:

LABEL_165:
    v25 = 0;
    goto LABEL_166;
  }

  v14 = [(NEIKEv2EAP *)*(v11 + 2456) typeForPayload:v9];
  if (v12)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v203 objects:v213 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v204;
      do
      {
        for (k = 0; k != v19; ++k)
        {
          if (*v204 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v203 + 1) + 8 * k);
          if (v22)
          {
            v23 = [v22 method] - 2;
            if (v23 <= 5)
            {
              buf[0] = dword_1BAA4F728[v23];
              [v16 appendBytes:buf length:1];
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v203 objects:v213 count:16];
      }

      while (v19);
    }

    v24 = [NEIKEv2EAP createPayloadResponseForRequest:v9 type:3 typeData:v16 typeString:0];
    v25 = v24;
    if (a4)
    {
      *a4 = v24 != 0;
    }

    goto LABEL_166;
  }

  v26 = v14;
  if (v14 != 1)
  {
    goto LABEL_23;
  }

  if (v10)
  {
    v57 = objc_getProperty(v10, v15, 88, 1);
  }

  else
  {
    v57 = 0;
  }

  v58 = v57;
  v59 = [v58 username];

  if (!v59)
  {
    if (v10)
    {
      v61 = objc_getProperty(v10, v60, 88, 1);
    }

    else
    {
      v61 = 0;
    }

    v62 = v61;
    v63 = [v62 localIdentifier];
    v59 = [v63 stringValue];
  }

  v64 = [NEIKEv2EAP createPayloadResponseForRequest:v9 type:1 typeData:0 typeString:v59];
  v25 = v64;
  if (a4)
  {
    *a4 = v64 != 0;
  }

LABEL_166:
  v127 = *MEMORY[0x1E69E9840];
  return v25;
}

- (CFDataRef)sessionKey
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 168))
    {
      v1 = *(a1 + 168);
      v2 = EAPClientModulePluginMasterSessionKeyCopyBytes();
      if (v2 >= 1)
      {
        v3 = v2;
        objc_opt_self();
        v4 = SecCFAllocatorZeroize();
        v5 = CFDataCreate(v4, &v9, v3);
        memset_s(&v9, 0x40uLL, 0, v3);
        goto LABEL_9;
      }
    }

    else
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v9 = 136315138;
        v10 = "[NEIKEv2EAP sessionKey]";
        _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null self.module", &v9, 0xCu);
      }
    }
  }

  v5 = 0;
LABEL_9:
  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

@end