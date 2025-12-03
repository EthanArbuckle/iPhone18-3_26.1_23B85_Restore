@interface NEIKEv2EAP
+ (uint64_t)codeForPayload:(uint64_t)payload;
+ (uint64_t)loadModuleForType:(uint64_t)type;
+ (uint64_t)typeForPayload:(uint64_t)payload;
- (CFDataRef)sessionKey;
- (NEIKEv2EAP)init;
- (uint64_t)createPayloadResponseForRequest:(void *)request ikeSA:(BOOL *)a success:(BOOL *)success reportEAPError:;
- (void)createPayloadResponseForRequest:(void *)request type:(char)type typeData:(void *)data typeString:(void *)string;
- (void)dealloc;
@end

@implementation NEIKEv2EAP

- (NEIKEv2EAP)init
{
  if (!MEMORY[0x1EEE86C70])
  {
LABEL_7:
    selfCopy = 0;
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
  selfCopy = self;
LABEL_8:

  return selfCopy;
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

+ (uint64_t)codeForPayload:(uint64_t)payload
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

+ (uint64_t)typeForPayload:(uint64_t)payload
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

- (void)createPayloadResponseForRequest:(void *)request type:(char)type typeData:(void *)data typeString:(void *)string
{
  requestCopy = request;
  dataCopy = data;
  stringCopy = string;
  bytes = [requestCopy bytes];
  if (!dataCopy && stringCopy)
  {
    dataCopy = [stringCopy dataUsingEncoding:4];
  }

  v11 = [dataCopy length] + 5;
  v14[0] = 2;
  v15 = bswap32(v11) >> 16;
  v14[1] = *(bytes + 1);
  typeCopy = type;
  v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v11];
  [v12 appendBytes:v14 length:5];
  if ([dataCopy length])
  {
    [v12 appendData:dataCopy];
  }

  return v12;
}

+ (uint64_t)loadModuleForType:(uint64_t)type
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

- (uint64_t)createPayloadResponseForRequest:(void *)request ikeSA:(BOOL *)a success:(BOOL *)success reportEAPError:
{
  v221 = *MEMORY[0x1E69E9840];
  v9 = a2;
  requestCopy = request;
  if (!self)
  {
    goto LABEL_165;
  }

  if (a)
  {
    *a = 0;
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
  if (*(self + 168))
  {
    v12 = 0;
    goto LABEL_7;
  }

  username = v9;
  v32 = requestCopy;
  self = v32;
  if (v32)
  {
    v33 = v32;
    aCopy = a;
    v212 = 0;
    v34 = [NEIKEv2EAP codeForPayload:username];
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

    v200 = username;
    v35 = [NEIKEv2EAP typeForPayload:username];
    v36 = v33;
    v37 = v35;
    v39 = objc_getProperty(v36, v38, 96, 1);
    v40 = v39;
    if (v37 != 1)
    {
      [v39 eapProtocols];
      v42 = v41 = v40;
      username = [v42 count];

      v40 = v41;
      if (username)
      {
        successCopy = success;
        v197 = requestCopy;
        v210 = 0u;
        v211 = 0u;
        v208 = 0u;
        v209 = 0u;
        eapProtocols = [v41 eapProtocols];
        v44 = [eapProtocols countByEnumeratingWithState:&v208 objects:v214 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v209;
          username = dword_1BAA4F728;
          while (2)
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v209 != v46)
              {
                objc_enumerationMutation(eapProtocols);
              }

              v48 = *(*(&v208 + 1) + 8 * i);
              if (v48)
              {
                v50 = [*(*(&v208 + 1) + 8 * i) method] - 2;
                if (v50 <= 5 && dword_1BAA4F728[v50] == v37)
                {
                  objc_setProperty_atomic(self, v49, v48, 160);
                  goto LABEL_75;
                }
              }
            }

            v45 = [eapProtocols countByEnumeratingWithState:&v208 objects:v214 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }
        }

LABEL_75:

        success = successCopy;
        requestCopy = v197;
        v11 = 0x1E7F04000uLL;
        v40 = v41;
        if (!objc_getProperty(self, v67, 160, 1))
        {
          eapProtocols2 = [v41 eapProtocols];
          v12 = [eapProtocols2 copy];
          goto LABEL_91;
        }
      }
    }

    v68 = [NEIKEv2EAP loadModuleForType:v37];
    *(self + 168) = v68;
    if (v37 != 1 && !v68)
    {
      eapProtocols2 = ne_log_obj();
      if (os_log_type_enabled(eapProtocols2, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v37;
        _os_log_error_impl(&dword_1BA83C000, eapProtocols2, OS_LOG_TYPE_ERROR, "error: module is null for type %u", buf, 8u);
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
          username = @"EAPAKAProperties";
          break;
        case 0x19u:
          v71 = v40;
          username = @"EAPPEAPProperties";
          break;
        case 0x1Au:
          v71 = v40;
          username = @"EAPMSCHAPv2Properties";
          break;
        default:
LABEL_94:
          if (v68)
          {
            *(self + 8) = 0u;
            *(self + 152) = 0;
            *(self + 120) = 0u;
            *(self + 136) = 0u;
            *(self + 88) = 0u;
            *(self + 104) = 0u;
            *(self + 56) = 0u;
            *(self + 72) = 0u;
            *(self + 24) = 0u;
            *(self + 40) = 0u;
            goto LABEL_102;
          }

          eapProtocols2 = 0;
          v12 = 0;
LABEL_91:
          username = v200;
LABEL_159:

LABEL_160:
          a = aCopy;
          goto LABEL_161;
      }
    }

    else
    {
      switch(v37)
      {
        case 6u:
          v71 = v40;
          username = @"EAPGTCProperties";
          break;
        case 0xDu:
          v71 = v40;
          username = @"EAPTLSProperties";
          break;
        case 0x12u:
          v71 = v40;
          username = @"EAPSIMProperties";
          break;
        default:
          goto LABEL_94;
      }
    }

    v72 = [objc_getProperty(self v69];
    eapProtocols2 = [v72 objectForKeyedSubscript:username];

    if (!*(self + 168))
    {
      v12 = 0;
      username = v200;
      v40 = v71;
      goto LABEL_159;
    }

    *(self + 8) = 0u;
    *(self + 152) = 0;
    *(self + 120) = 0u;
    *(self + 136) = 0u;
    *(self + 88) = 0u;
    *(self + 104) = 0u;
    *(self + 56) = 0u;
    *(self + 72) = 0u;
    *(self + 24) = 0u;
    *(self + 40) = 0u;
    v40 = v71;
    if (eapProtocols2)
    {
      v198 = requestCopy;
      v194 = [eapProtocols2 mutableCopy];
LABEL_103:
      v74 = objc_getProperty(self, v73, 160, 1);
      v76 = v74;
      successCopy2 = success;
      v191 = eapProtocols2;
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

      success = objc_getProperty(self, v75, 88, 1);
      username = [success username];
      v78 = [(__CFString *)username length];
      if (v77)
      {
        v79 = v78;

        selfCopy3 = self;
        if (v79)
        {
LABEL_110:
          v82 = objc_getProperty(selfCopy3, v80, 88, 1);
          username2 = [v82 username];
          requestCopy = v198;
          goto LABEL_123;
        }

LABEL_119:
        v84 = objc_getProperty(selfCopy3, v80, 88, 1);
        localPrivateEAPIdentity = [v84 localPrivateEAPIdentity];

        v87 = objc_getProperty(selfCopy3, v86, 88, 1);
        v82 = v87;
        requestCopy = v198;
        if (localPrivateEAPIdentity)
        {
          username2 = [v87 localPrivateEAPIdentity];
        }

        else
        {
          localIdentifier = [v87 localIdentifier];
          username2 = [localIdentifier stringValue];
        }

LABEL_123:
        v11 = 0x1E7F04000;

        success = successCopy2;
        if (username2)
        {
          v90 = [username2 maximumLengthOfBytesUsingEncoding:4];
          v91 = malloc_type_malloc(v90, 0xAAFC57D3uLL);
          *(self + 48) = v91;
          [username2 getCString:v91 maxLength:v90 encoding:4];
          *(self + 56) = strnlen(*(self + 48), v90);
        }

        v193 = username2;
        v92 = objc_getProperty(selfCopy3, v89, 88, 1);
        localEncryptedEAPIdentity = [v92 localEncryptedEAPIdentity];

        if (localEncryptedEAPIdentity)
        {
          v95 = objc_getProperty(selfCopy3, v94, 88, 1);
          *(self + 64) = [v95 localEncryptedEAPIdentity];
        }

        v96 = objc_getProperty(self, v94, 160, 1);
        if (v96)
        {
          v98 = v96;
          if ([v96 method] == 4 || objc_msgSend(v98, "method") == 5)
          {

            goto LABEL_131;
          }

          method = [v98 method];

          if (method == 7)
          {
LABEL_131:
            if (!objc_getProperty(selfCopy3, v97, 88, 1))
            {
              successCopy5 = successCopy2;
              v121 = ne_log_obj();
              if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315138;
                *&buf[4] = "[NEIKEv2IKESA password]";
                _os_log_fault_impl(&dword_1BA83C000, v121, OS_LOG_TYPE_FAULT, "%s called with null self.sessionConfiguration", buf, 0xCu);
              }

              goto LABEL_154;
            }

            if (!objc_getProperty(selfCopy3, v99, 520, 1))
            {
              v100 = [objc_getProperty(selfCopy3 v100];

              if (v100)
              {
                v102 = [objc_getProperty(selfCopy3 v102];
                v104 = [NEIKEv2Crypto copyDataFromPersistentReference:v102];
                objc_setProperty_atomic(selfCopy3, v105, v104, 520);

                if (!objc_getProperty(selfCopy3, v106, 520, 1))
                {
                  v107 = ne_log_obj();
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = selfCopy3;
                    _os_log_error_impl(&dword_1BA83C000, v107, OS_LOG_TYPE_ERROR, "%@ Failed to retrieve password by reference", buf, 0xCu);
                  }
                }
              }

              v1002 = objc_getProperty(selfCopy3, v102, 520, 1);
              if (v1002)
              {
                goto LABEL_141;
              }

              v108 = [objc_getProperty(selfCopy3 v108];

              if (v108)
              {
                v111 = MEMORY[0x1E695DEF0];
                v1002 = [objc_getProperty(selfCopy3 v100];
                v112 = [v1002 dataUsingEncoding:4];
                v113 = [(NSData *)v111 sensitiveDataWithData:v112];
                objc_setProperty_atomic(selfCopy3, v114, v113, 520);

                success = successCopy2;
LABEL_141:
              }
            }

            v115 = objc_getProperty(selfCopy3, v100, 520, 1);
            if (v115)
            {
              v116 = v115;
              v117 = malloc_type_malloc([v115 length]+ 1, 0x1929D726uLL);
              v118 = v116;
              if (!v117)
              {
                successCopy5 = success;
                v126 = ne_log_obj();
                if (os_log_type_enabled(v126, OS_LOG_TYPE_FAULT))
                {
                  v180 = [v116 length];
                  *buf = 134217984;
                  *&buf[4] = v180 + 1;
                  _os_log_fault_impl(&dword_1BA83C000, v126, OS_LOG_TYPE_FAULT, "malloc(%zu) failed", buf, 0xCu);
                }

                username = v200;
                goto LABEL_156;
              }

              v119 = v117;
              memcpy(v117, [v116 bytes], [v116 length]);
              v119[[v116 length]] = 0;
              *(self + 72) = v119;
              *(self + 80) = [v116 length];
              if (v193)
              {

                goto LABEL_150;
              }

              successCopy5 = success;
LABEL_155:
              username = v200;
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

              success = successCopy5;
LABEL_157:

              v12 = MEMORY[0x1E695E0F0];
LABEL_158:

              eapProtocols2 = v191;
              goto LABEL_159;
            }

            successCopy5 = success;
LABEL_154:
            v118 = 0;
            goto LABEL_155;
          }
        }

LABEL_150:
        v123 = objc_getProperty(self, v97, 160, 1);
        username = v200;
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
          method2 = [v124 method];

          v130 = method2 == 7;
          username = v200;
          if (!v130)
          {
            goto LABEL_226;
          }
        }

        copyLocalSecIdentity = [(NEIKEv2IKESA *)selfCopy3 copyLocalSecIdentity];
        *(self + 104) = copyLocalSecIdentity;
        if (!copyLocalSecIdentity)
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
        v199 = requestCopy;
        if (v132)
        {
          copyRemoteCertificateAuthorityArray = [(NEIKEv2IKESA *)self copyRemoteCertificateAuthorityArray];
          if (copyRemoteCertificateAuthorityArray)
          {
            v219 = 0u;
            v220 = 0u;
            v217 = 0u;
            v218 = 0u;
            v134 = copyRemoteCertificateAuthorityArray;
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
            success = successCopy2;
            v11 = 0x1E7F04000;
LABEL_206:

            if ([v141 count])
            {
              [v194 setObject:v141 forKeyedSubscript:@"TLSTrustedCertificates"];
              remoteCertificateHostname = 0;
              requestCopy = v199;
              goto LABEL_216;
            }

            v146 = objc_getProperty(self, v144, 88, 1);
            remoteCertificateHostname = [v146 remoteCertificateHostname];

            requestCopy = v199;
            if (remoteCertificateHostname)
            {
LABEL_215:
              *&v217 = remoteCertificateHostname;
              v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v217 count:1];
              [v194 setObject:v159 forKeyedSubscript:@"TLSTrustedServerNames"];

              goto LABEL_216;
            }

            v148 = objc_getProperty(self, v147, 88, 1);
            remoteIdentifier = [v148 remoteIdentifier];
            if ([remoteIdentifier identifierType] != 2)
            {
              v151 = objc_getProperty(self, v150, 88, 1);
              remoteIdentifier2 = [v151 remoteIdentifier];
              if ([remoteIdentifier2 identifierType] != 1)
              {
                v154 = v141;
                v182 = objc_getProperty(self, v153, 88, 1);
                remoteIdentifier3 = [v182 remoteIdentifier];
                identifierType = [remoteIdentifier3 identifierType];

                requestCopy = v199;
                if (identifierType != 5)
                {
                  v184 = objc_getProperty(self, v155, 80, 1);
                  remoteEndpoint = [v184 remoteEndpoint];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if ((isKindOfClass & 1) == 0)
                  {
                    remoteCertificateHostname = 0;
                    success = successCopy2;
                    v11 = 0x1E7F04000;
                    v141 = v154;
LABEL_216:
                    v118 = v141;
                    v160 = [v141 count];
                    if (!remoteCertificateHostname && !v160)
                    {
                      v162 = ne_log_obj();
                      v40 = v192;
                      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1BA83C000, v162, OS_LOG_TYPE_ERROR, "EAP plugin data initialization failed, missing server certificate validation info", buf, 2u);
                      }

                      username = v200;
                      goto LABEL_157;
                    }

                    v163 = objc_getProperty(self, v161, 88, 1);
                    tlsMinimumVersion = [v163 tlsMinimumVersion];

                    if (tlsMinimumVersion)
                    {
                      v166 = objc_getProperty(self, v165, 88, 1);
                      tlsMinimumVersion2 = [v166 tlsMinimumVersion];
                      [v194 setObject:tlsMinimumVersion2 forKeyedSubscript:@"TLSMinimumVersion"];
                    }

                    v168 = objc_getProperty(self, v165, 88, 1);
                    tlsMaximumVersion = [v168 tlsMaximumVersion];

                    if (tlsMaximumVersion)
                    {
                      v171 = objc_getProperty(self, v170, 88, 1);
                      tlsMaximumVersion2 = [v171 tlsMaximumVersion];
                      [v194 setObject:tlsMaximumVersion2 forKeyedSubscript:@"TLSMaximumVersion"];
                    }

LABEL_226:
                    *(self + 24) = 1024;
                    *(self + 88) = v194;
                    *v207 = 0;
                    v173 = *(self + 168);
                    v174 = EAPClientModulePluginInit();
                    if (*v207)
                    {
                      CFRelease(*v207);
                      *v207 = 0;
                    }

                    v40 = v192;
                    if (v174)
                    {
                      successCopy6 = success;
                      v176 = ne_log_obj();
                      if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
                      {
                        Property = objc_getProperty(self, v177, 160, 1);
                        *buf = 138412546;
                        *&buf[4] = Property;
                        *&buf[12] = 1024;
                        v216 = v174;
                        _os_log_error_impl(&dword_1BA83C000, v176, OS_LOG_TYPE_ERROR, "%@ EAP client module init failed with status %u", buf, 0x12u);
                      }

                      objc_setProperty_atomic(self, v178, 0, 160);
                      *(self + 168) = 0;
                      v12 = MEMORY[0x1E695E0F0];
                      success = successCopy6;
                    }

                    else
                    {
                      v12 = 0;
                    }

                    username = v200;
                    goto LABEL_158;
                  }

                  v156 = objc_getProperty(self, v187, 80, 1);
                  remoteEndpoint2 = [v156 remoteEndpoint];
                  hostname = [remoteEndpoint2 hostname];
                  goto LABEL_214;
                }

LABEL_213:
                v156 = objc_getProperty(self, v155, 88, 1);
                remoteEndpoint2 = [v156 remoteIdentifier];
                hostname = [remoteEndpoint2 stringValue];
LABEL_214:
                remoteCertificateHostname = hostname;

                success = successCopy2;
                v11 = 0x1E7F04000;
                v141 = v154;
                if (!remoteCertificateHostname)
                {
                  goto LABEL_216;
                }

                goto LABEL_215;
              }

              requestCopy = v199;
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
      if ((v37 == 23 || v37 == 18) && ((username, v37 == 23) || v37 == 18))
      {

        selfCopy3 = self;
        if (v77)
        {
          goto LABEL_110;
        }
      }

      else
      {

        selfCopy3 = self;
        if (v77)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_119;
    }

LABEL_102:
    v198 = requestCopy;
    v194 = objc_alloc_init(MEMORY[0x1E695DF90]);
    eapProtocols2 = 0;
    goto LABEL_103;
  }

  v188 = username;
  v189 = ne_log_obj();
  if (os_log_type_enabled(v189, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[NEIKEv2EAP selectModuleForPayload:ikeSA:]";
    _os_log_fault_impl(&dword_1BA83C000, v189, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", buf, 0xCu);
  }

  v12 = MEMORY[0x1E695E0F0];
  username = v188;
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
    if (*(self + 168))
    {
      [v9 bytes];
      [v9 length];
      if (EAPPacketIsValid())
      {
        *buf = 0;
        v214[0] = 0;
        LODWORD(v217) = 0;
        v27 = *(self + 168);
        [v9 bytes];
        v28 = EAPClientModulePluginProcess();
        if (*buf)
        {
          v29 = objc_alloc(MEMORY[0x1E695DEF0]);
          v30 = bswap32(*(*buf + 2));
          v25 = [v29 initWithBytes:? length:?];
          if (!success)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v25 = 0;
          if (!success)
          {
            goto LABEL_61;
          }
        }

        if (v217)
        {
          *success = v217 == 19;
        }

LABEL_61:
        if (v28 == 1)
        {
          if (requestCopy)
          {
            requestCopy[18] = 1;
            requestCopy[20] = 1;
          }

          if (!a)
          {
            goto LABEL_73;
          }

          v65 = 1;
          goto LABEL_72;
        }

        if (v28 || v214[0])
        {
          if (a)
          {
            v65 = 0;
LABEL_72:
            *a = v65;
          }
        }

        else if (a)
        {
          v65 = *buf != 0;
          goto LABEL_72;
        }

LABEL_73:
        v66 = *(self + 168);
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
    if (a)
    {
      *a = v24 != 0;
    }

    goto LABEL_166;
  }

  v26 = v14;
  if (v14 != 1)
  {
    goto LABEL_23;
  }

  if (requestCopy)
  {
    v57 = objc_getProperty(requestCopy, v15, 88, 1);
  }

  else
  {
    v57 = 0;
  }

  v58 = v57;
  username3 = [v58 username];

  if (!username3)
  {
    if (requestCopy)
    {
      v61 = objc_getProperty(requestCopy, v60, 88, 1);
    }

    else
    {
      v61 = 0;
    }

    v62 = v61;
    localIdentifier2 = [v62 localIdentifier];
    username3 = [localIdentifier2 stringValue];
  }

  v64 = [NEIKEv2EAP createPayloadResponseForRequest:v9 type:1 typeData:0 typeString:username3];
  v25 = v64;
  if (a)
  {
    *a = v64 != 0;
  }

LABEL_166:
  v127 = *MEMORY[0x1E69E9840];
  return v25;
}

- (CFDataRef)sessionKey
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (*(self + 168))
    {
      v1 = *(self + 168);
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