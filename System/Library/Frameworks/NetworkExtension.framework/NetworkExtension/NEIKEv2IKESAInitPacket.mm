@interface NEIKEv2IKESAInitPacket
+ (NSObject)createIKESAInitForInitiatorIKESA:(uint64_t)a;
+ (id)createIKESAInitResponse:(unint64_t)response errorCode:(void *)code errorData:;
- (uint64_t)validateSAInitAsInitiator:(void *)initiator;
- (uint64_t)validateSAInitAsResponder:(void *)responder errorCodeToSend:;
- (void)filloutPayloads;
- (void)gatherPayloads;
@end

@implementation NEIKEv2IKESAInitPacket

+ (NSObject)createIKESAInitForInitiatorIKESA:(uint64_t)a
{
  v219 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if (!v2)
  {
    initOutbound = ne_log_obj();
    if (!os_log_type_enabled(initOutbound, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    *buf = 136315138;
    v216 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitForInitiatorIKESA:]";
    v80 = "%s called with null ikeSA";
    goto LABEL_40;
  }

  preferredKEMProtocol = [(NEIKEv2IKESA *)v2 preferredKEMProtocol];

  if (!preferredKEMProtocol)
  {
    initOutbound = ne_log_obj();
    if (!os_log_type_enabled(initOutbound, OS_LOG_TYPE_FAULT))
    {
LABEL_25:
      v76 = 0;
      goto LABEL_65;
    }

    *buf = 136315138;
    v216 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitForInitiatorIKESA:]";
    v80 = "%s called with null ikeSA.preferredKEMProtocol";
LABEL_40:
    _os_log_fault_impl(&dword_1BA83C000, initOutbound, OS_LOG_TYPE_FAULT, v80, buf, 0xCu);
    goto LABEL_25;
  }

  initOutbound = [(NEIKEv2Packet *)[NEIKEv2IKESAInitPacket alloc] initOutbound];
  if (!initOutbound)
  {
    p_super = ne_log_obj();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    *buf = 0;
    v77 = "[[NEIKEv2IKESAInitPacket alloc] initOutbound:] failed";
    goto LABEL_32;
  }

  v7 = objc_getProperty(v2, v5, 280, 1);

  if (v7)
  {
    v9 = objc_getProperty(v2, v8, 280, 1);
    v10 = [NEIKEv2NotifyPayload createNotifyPayloadType:v9 data:?];
    objc_setProperty_atomic(initOutbound, v11, v10, 88);

    v13 = objc_getProperty(initOutbound, v12, 88, 1);

    if (!v13)
    {
      p_super = ne_log_obj();
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_63;
      }

      *buf = 0;
      v77 = "[NEIKEv2NotifyPayload createNotifyPayloadType:NEIKEv2NotifyTypeCookie] failed";
      goto LABEL_32;
    }
  }

  v14 = objc_alloc_init(NEIKEv2IKESAPayload);
  objc_setProperty_atomic(initOutbound, v15, v14, 96);

  v17 = objc_getProperty(v2, v16, 80, 1);
  proposals = [v17 proposals];
  v20 = objc_getProperty(initOutbound, v19, 96, 1);
  v22 = v20;
  if (v20)
  {
    objc_setProperty_atomic(v20, v21, proposals, 32);
  }

  v24 = objc_getProperty(initOutbound, v23, 96, 1);
  isValid = [(NEIKEv2Payload *)v24 isValid];

  if ((isValid & 1) == 0)
  {
    p_super = ne_log_obj();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    *buf = 136315138;
    v216 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitForInitiatorIKESA:]";
    v77 = "%s called with null packet.sa.isValid";
    goto LABEL_37;
  }

  v26 = objc_alloc_init(NEIKEv2KeyExchangePayload);
  objc_setProperty_atomic(initOutbound, v27, v26, 104);

  preferredKEMProtocol2 = [(NEIKEv2IKESA *)v2 preferredKEMProtocol];
  v31 = objc_getProperty(initOutbound, v30, 104, 1);
  v33 = v31;
  if (v31)
  {
    objc_setProperty_atomic(v31, v32, preferredKEMProtocol2, 32);
  }

  v35 = objc_getProperty(v2, v34, 160, 1);
  v36 = v35;
  if (v35)
  {
    v37 = *(v35 + 2);
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;
  v40 = objc_getProperty(initOutbound, v39, 104, 1);
  v42 = v40;
  if (v40)
  {
    objc_setProperty_atomic(v40, v41, v38, 40);
  }

  v44 = objc_getProperty(initOutbound, v43, 104, 1);
  isValid2 = [(NEIKEv2Payload *)v44 isValid];

  if ((isValid2 & 1) == 0)
  {
    p_super = ne_log_obj();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    *buf = 136315138;
    v216 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitForInitiatorIKESA:]";
    v77 = "%s called with null packet.ke.isValid";
    goto LABEL_37;
  }

  v46 = objc_alloc_init(NEIKEv2NoncePayload);
  objc_setProperty_atomic(initOutbound, v47, v46, 112);

  v49 = objc_getProperty(v2, v48, 128, 1);
  v51 = objc_getProperty(initOutbound, v50, 112, 1);
  v53 = v51;
  if (v51)
  {
    objc_setProperty_atomic(v51, v52, v49, 32);
  }

  v55 = objc_getProperty(initOutbound, v54, 112, 1);
  isValid3 = [(NEIKEv2Payload *)v55 isValid];

  if ((isValid3 & 1) == 0)
  {
    p_super = ne_log_obj();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    *buf = 136315138;
    v216 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitForInitiatorIKESA:]";
    v77 = "%s called with null packet.nonce.isValid";
LABEL_37:
    v78 = p_super;
    v79 = 12;
    goto LABEL_38;
  }

  v58 = objc_getProperty(v2, v57, 80, 1);
  redirectedFromServer = [v58 redirectedFromServer];

  if (redirectedFromServer)
  {
    v61 = objc_alloc_init(NEIKEv2NotifyPayload);
    p_super = &v61->super.super;
    if (v61)
    {
      v61->_notifyType = 16408;
    }

    v64 = objc_getProperty(v2, v62, 80, 1);
    redirectedFromServer2 = [v64 redirectedFromServer];
    addressFamily = [redirectedFromServer2 addressFamily];

    v68 = objc_getProperty(v2, v67, 80, 1);
    redirectedFromServer3 = [v68 redirectedFromServer];
    v70 = redirectedFromServer3;
    if (addressFamily == 2)
    {
      address = [redirectedFromServer3 address];

      buf[0] = 1;
      v208[0] = 4;
      v72 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:6];
      [v72 appendBytes:buf length:1];
      [v72 appendBytes:v208 length:1];
      v73 = address + 4;
      v74 = v72;
      v75 = 4;
    }

    else
    {
      addressFamily2 = [redirectedFromServer3 addressFamily];

      if (addressFamily2 != 30)
      {
LABEL_50:
        if ([(NEIKEv2Packet *)initOutbound addNotifyPayload:?])
        {

          goto LABEL_52;
        }

        v117 = ne_log_obj();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1BA83C000, v117, OS_LOG_TYPE_FAULT, "[packet addNotifyPayload:redirectFromPayload] failed", buf, 2u);
        }

        goto LABEL_63;
      }

      v86 = objc_getProperty(v2, v85, 80, 1);
      redirectedFromServer4 = [v86 redirectedFromServer];
      address2 = [redirectedFromServer4 address];

      buf[0] = 2;
      v208[0] = 16;
      v72 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:18];
      [v72 appendBytes:buf length:1];
      [v72 appendBytes:v208 length:1];
      v73 = address2 + 8;
      v74 = v72;
      v75 = 16;
    }

    [v74 appendBytes:v73 length:v75];
    if (p_super)
    {
      objc_setProperty_atomic(p_super, v89, v72, 40);
    }

    goto LABEL_50;
  }

  v81 = objc_getProperty(v2, v60, 80, 1);
  allowRedirect = [v81 allowRedirect];

  if (!allowRedirect || [(NEIKEv2Packet *)initOutbound addNotification:0 data:?])
  {
LABEL_52:
    initiatorSPI = [(NEIKEv2IKESA *)v2 initiatorSPI];
    responderSPI = [(NEIKEv2IKESA *)v2 responderSPI];
    v94 = objc_getProperty(v2, v93, 64, 1);
    p_super = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI responderSPI:responderSPI address:v94];

    if (![(NEIKEv2Packet *)initOutbound addNotification:p_super data:?])
    {
      v101 = ne_log_obj();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeNATDetectionSourceIP] failed", buf, 2u);
      }

      v76 = 0;
      goto LABEL_146;
    }

    initiatorSPI2 = [(NEIKEv2IKESA *)v2 initiatorSPI];
    responderSPI2 = [(NEIKEv2IKESA *)v2 responderSPI];
    v100 = objc_getProperty(v2, v99, 72, 1);
    v101 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI2 responderSPI:responderSPI2 address:v100];

    if ([(NEIKEv2Packet *)initOutbound addNotification:v101 data:?])
    {
      if ([(NEIKEv2Packet *)initOutbound addNotification:0 data:?])
      {
        v103 = objc_getProperty(v2, v102, 88, 1);
        authenticationProtocol = [v103 authenticationProtocol];

        if (authenticationProtocol)
        {
          v106 = objc_getProperty(v2, v105, 88, 1);
          authenticationProtocol2 = [v106 authenticationProtocol];

          v109 = objc_getProperty(v2, v108, 80, 1);
          extraSupportedSignatureHashes = [v109 extraSupportedSignatureHashes];
          v111 = [NEIKEv2Crypto copySignHashDataForSet:extraSupportedSignatureHashes authentication:authenticationProtocol2];

          if ([authenticationProtocol2 isSecurePassword])
          {
            v113 = objc_getProperty(v2, v112, 88, 1);
            remoteAuthentication = [v113 remoteAuthentication];
            v115 = [authenticationProtocol2 isEqual:remoteAuthentication];

            if (v115)
            {
              *buf = bswap32([authenticationProtocol2 securePasswordMethod]) >> 16;
              v116 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:2];
              if ([(NEIKEv2Packet *)initOutbound addNotification:v116 data:?])
              {

                goto LABEL_86;
              }

              v185 = ne_log_obj();
              if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
              {
                *v208 = 0;
                _os_log_fault_impl(&dword_1BA83C000, v185, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeSecurePasswordMethods] failed", v208, 2u);
              }
            }

            else
            {
              v116 = ne_log_obj();
              if (!os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
              {
LABEL_142:

                goto LABEL_143;
              }

              v185 = objc_getProperty(v2, v184, 88, 1);
              remoteAuthentication2 = [v185 remoteAuthentication];
              *buf = 138412546;
              v216 = authenticationProtocol2;
              v217 = 2112;
              v218 = remoteAuthentication2;
              _os_log_fault_impl(&dword_1BA83C000, v116, OS_LOG_TYPE_FAULT, "Local authentication %@ is GSPM but doesn't match remote authentication %@", buf, 0x16u);
            }

            goto LABEL_142;
          }
        }

        else
        {
          v188 = v101;
          authenticationProtocol2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v204 = 0u;
          v205 = 0u;
          v206 = 0u;
          v207 = 0u;
          v122 = objc_getProperty(v2, v121, 80, 1);
          proposals2 = [v122 proposals];

          v124 = [proposals2 countByEnumeratingWithState:&v204 objects:v214 count:16];
          if (v124)
          {
            v125 = v124;
            v126 = *v205;
            do
            {
              for (i = 0; i != v125; ++i)
              {
                if (*v205 != v126)
                {
                  objc_enumerationMutation(proposals2);
                }

                v128 = *(*(&v204 + 1) + 8 * i);
                if (v128)
                {
                  v128 = v128[18];
                }

                v129 = v128;
                [authenticationProtocol2 addObject:v129];
              }

              v125 = [proposals2 countByEnumeratingWithState:&v204 objects:v214 count:16];
            }

            while (v125);
          }

          v131 = objc_getProperty(v2, v130, 80, 1);
          extraSupportedSignatureHashes2 = [v131 extraSupportedSignatureHashes];
          v111 = [NEIKEv2Crypto copySignHashDataForSet:extraSupportedSignatureHashes2 authenticationSet:authenticationProtocol2];

          v101 = v188;
        }

LABEL_86:

        if (v111 && ![(NEIKEv2Packet *)initOutbound addNotification:v111 data:?])
        {
          authenticationProtocol2 = ne_log_obj();
          if (!os_log_type_enabled(authenticationProtocol2, OS_LOG_TYPE_FAULT))
          {
LABEL_143:

            goto LABEL_144;
          }

          *buf = 0;
          v182 = "[packet addNotification:NEIKEv2NotifyTypeSignatureHashAlgorithms] failed";
        }

        else
        {
          v134 = objc_getProperty(v2, v133, 80, 1);
          requestPPK = [v134 requestPPK];

          if (!requestPPK || [(NEIKEv2Packet *)initOutbound addNotification:0 data:?])
          {
            v187 = v111;
            v189 = v101;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v137 = objc_getProperty(v2, v136, 80, 1);
            proposals3 = [v137 proposals];

            v139 = [proposals3 countByEnumeratingWithState:&v200 objects:v213 count:16];
            if (v139)
            {
              v140 = v139;
              v141 = *v201;
              while (2)
              {
                for (j = 0; j != v140; ++j)
                {
                  if (*v201 != v141)
                  {
                    objc_enumerationMutation(proposals3);
                  }

                  additionalKEMProtocols = [*(*(&v200 + 1) + 8 * j) additionalKEMProtocols];

                  if (additionalKEMProtocols && ![(NEIKEv2Packet *)initOutbound addNotification:0 data:?])
                  {
                    v183 = ne_log_obj();
                    if (os_log_type_enabled(v183, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_1BA83C000, v183, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeIntermediateExchangeSupported] failed", buf, 2u);
                    }

                    v76 = 0;
                    goto LABEL_131;
                  }
                }

                v140 = [proposals3 countByEnumeratingWithState:&v200 objects:v213 count:16];
                if (v140)
                {
                  continue;
                }

                break;
              }
            }

            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v145 = objc_getProperty(v2, v144, 80, 1);
            customIKESAInitVendorPayloads = [v145 customIKESAInitVendorPayloads];

            obj = customIKESAInitVendorPayloads;
            v147 = [customIKESAInitVendorPayloads countByEnumeratingWithState:&v196 objects:v212 count:16];
            if (v147)
            {
              v148 = v147;
              v149 = *v197;
              do
              {
                for (k = 0; k != v148; ++k)
                {
                  if (*v197 != v149)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v151 = *(*(&v196 + 1) + 8 * k);
                  v152 = objc_alloc_init(NEIKEv2VendorIDPayload);
                  vendorData = [v151 vendorData];
                  if (v152)
                  {
                    objc_setProperty_atomic(v152, v153, vendorData, 32);
                  }

                  v156 = objc_getProperty(initOutbound, v155, 120, 1);

                  if (v156)
                  {
                    v158 = objc_getProperty(initOutbound, v157, 120, 1);
                    v159 = [v158 arrayByAddingObject:v152];
                    objc_setProperty_atomic(initOutbound, v160, v159, 120);
                  }

                  else
                  {
                    v211 = v152;
                    v158 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v211 count:1];
                    objc_setProperty_atomic(initOutbound, v161, v158, 120);
                  }
                }

                v148 = [obj countByEnumeratingWithState:&v196 objects:v212 count:16];
              }

              while (v148);
            }

            v194 = 0u;
            v195 = 0u;
            v192 = 0u;
            v193 = 0u;
            v163 = objc_getProperty(v2, v162, 80, 1);
            customIKESAInitPayloads = [v163 customIKESAInitPayloads];

            obja = customIKESAInitPayloads;
            v165 = [customIKESAInitPayloads countByEnumeratingWithState:&v192 objects:v210 count:16];
            if (v165)
            {
              v166 = v165;
              v167 = *v193;
              do
              {
                v168 = 0;
                do
                {
                  if (*v193 != v167)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v169 = *(*(&v192 + 1) + 8 * v168);
                  v170 = objc_alloc_init(NEIKEv2CustomPayload);
                  customType = [v169 customType];
                  if (v170)
                  {
                    v170->_customType = customType;
                    customData = [v169 customData];
                    objc_setProperty_atomic(v170, v173, customData, 40);
                  }

                  else
                  {
                    customData = [v169 customData];
                  }

                  v175 = objc_getProperty(initOutbound, v174, 56, 1);

                  if (v175)
                  {
                    v177 = objc_getProperty(initOutbound, v176, 56, 1);
                    v178 = [v177 arrayByAddingObject:v170];
                    objc_setProperty_atomic(initOutbound, v179, v178, 56);
                  }

                  else
                  {
                    v209 = v170;
                    v177 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v209 count:1];
                    objc_setProperty_atomic(initOutbound, v180, v177, 56);
                  }

                  ++v168;
                }

                while (v166 != v168);
                v181 = [obja countByEnumeratingWithState:&v192 objects:v210 count:16];
                v166 = v181;
              }

              while (v181);
            }

            v76 = initOutbound;
LABEL_131:
            v111 = v187;
            v101 = v189;
            goto LABEL_145;
          }

          authenticationProtocol2 = ne_log_obj();
          if (!os_log_type_enabled(authenticationProtocol2, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_143;
          }

          *buf = 0;
          v182 = "[packet addNotification:NEIKEv2NotifyTypeUsePPK] failed";
        }

        _os_log_fault_impl(&dword_1BA83C000, authenticationProtocol2, OS_LOG_TYPE_FAULT, v182, buf, 2u);
        goto LABEL_143;
      }

      v111 = ne_log_obj();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v120 = "[packet addNotification:NEIKEv2NotifyTypeIKEv2FragmentationSupported] failed";
        goto LABEL_75;
      }
    }

    else
    {
      v111 = ne_log_obj();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v120 = "[packet addNotification:NEIKEv2NotifyTypeNATDetectionDestinationIP] failed";
LABEL_75:
        _os_log_fault_impl(&dword_1BA83C000, v111, OS_LOG_TYPE_FAULT, v120, buf, 2u);
      }
    }

LABEL_144:
    v76 = 0;
LABEL_145:

LABEL_146:
    goto LABEL_64;
  }

  p_super = ne_log_obj();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    v77 = "[packet addNotification:NEIKEv2NotifyTypeRedirectSupported] failed";
LABEL_32:
    v78 = p_super;
    v79 = 2;
LABEL_38:
    _os_log_fault_impl(&dword_1BA83C000, v78, OS_LOG_TYPE_FAULT, v77, buf, v79);
  }

LABEL_63:
  v76 = 0;
LABEL_64:

LABEL_65:
  v118 = *MEMORY[0x1E69E9840];

  return v76;
}

+ (id)createIKESAInitResponse:(unint64_t)response errorCode:(void *)code errorData:
{
  v6 = a2;
  codeCopy = code;
  objc_opt_self();
  v8 = [(NEIKEv2Packet *)[NEIKEv2IKESAInitPacket alloc] initResponse:v6];
  if (v8)
  {
    v9 = v8;
    if ([(NEIKEv2Packet *)v8 addNotification:response data:codeCopy])
    {
      v9 = v9;
      v10 = v9;
      goto LABEL_11;
    }

    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v14 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "[packet addNotification:data:] failed", v14, 2u);
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "[[NEIKEv2IKESAInitPacket alloc] initResponse:] failed", buf, 2u);
    }

    v9 = 0;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (uint64_t)validateSAInitAsInitiator:(void *)initiator
{
  v389 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (!initiator)
  {
    v54 = 0;
    goto LABEL_53;
  }

  if (!v3)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_51;
    }

    buf = 136315138;
    v382 = "[NEIKEv2IKESAInitPacket(Exchange) validateSAInitAsInitiator:]";
    v18 = "%s called with null ikeSA";
    goto LABEL_23;
  }

  if ((v3[9] & 1) == 0)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_51;
    }

    buf = 136315138;
    v382 = "[NEIKEv2IKESAInitPacket(Exchange) validateSAInitAsInitiator:]";
    v18 = "%s called with null ikeSA.isInitiator";
    goto LABEL_23;
  }

  v6 = objc_getProperty(initiator, v4, 128, 1);

  if (!v6)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
LABEL_51:
      v54 = 0;
      goto LABEL_52;
    }

    buf = 136315138;
    v382 = "[NEIKEv2IKESAInitPacket(Exchange) validateSAInitAsInitiator:]";
    v18 = "%s called with null self.originalPacket";
LABEL_23:
    _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, v18, &buf, 0xCu);
    goto LABEL_51;
  }

  if (![(NEIKEv2Packet *)initiator hasErrors])
  {
    goto LABEL_16;
  }

  v379 = 0u;
  v380 = 0u;
  v377 = 0u;
  v378 = 0u;
  v9 = objc_getProperty(initiator, v8, 64, 1);
  v10 = [v9 countByEnumeratingWithState:&v377 objects:v388 count:16];
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = *v378;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v378 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v377 + 1) + 8 * i);
      if (v14 && (v14[4] - 1) <= 0x3FFE)
      {
        copyError = [(NEIKEv2NotifyPayload *)*(*(&v377 + 1) + 8 * i) copyError];
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription = [(NEIKEv2Packet *)initiator copyShortDescription];
          buf = 138412546;
          v382 = copyShortDescription;
          v383 = 2112;
          v384 = copyError;
          _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "%@ Initiator init received notify error %@", &buf, 0x16u);
        }

        if (v14[4] == 17)
        {
          v27 = objc_getProperty(v14, v26, 40, 1);
          v28 = v27;
          if (v27)
          {
            LOWORD(buf) = 0;
            [v27 getBytes:&buf length:2];
            v29 = [NEIKEv2KEMProtocol alloc];
            v30 = [(NEIKEv2KEMProtocol *)v29 initWithMethod:bswap32(buf) >> 16];
            objc_setProperty_atomic(v5, v31, v30, 144);
          }

          else
          {
            [(NEIKEv2IKESA *)v5 setState:copyError error:?];
          }
        }

        else
        {
          [(NEIKEv2IKESA *)v5 setState:copyError error:?];
        }

LABEL_50:

        goto LABEL_51;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v377 objects:v388 count:16];
  }

  while (v11);
LABEL_15:

LABEL_16:
  if ([(NEIKEv2Packet *)initiator hasNotification:?])
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription2 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v382 = copyShortDescription2;
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "%@ Received notify server redirect", &buf, 0xCu);
    }

    Error = NEIKEv2CreateError(5);
    goto LABEL_20;
  }

  v19 = objc_getProperty(initiator, v15, 88, 1);

  if (v19)
  {
    Property = objc_getProperty(initiator, v20, 88, 1);
    v9 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v22, 40, 1);
    }

    copyError = Property;
    objc_setProperty_atomic(v5, v24, copyError, 280);
    goto LABEL_50;
  }

  v32 = objc_getProperty(initiator, v20, 40, 1);
  value = [v32 value];

  if (!value)
  {
    v57 = ne_log_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription3 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v382 = copyShortDescription3;
      _os_log_error_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_ERROR, "%@ Received no remote SPI on SA_INIT", &buf, 0xCu);
    }

    Error = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received no remote SPI on SA_INIT", v58, v59, v60, v61, v62, v63, v64, v361);
LABEL_20:
    v9 = Error;
    [(NEIKEv2IKESA *)v5 setState:Error error:?];
    goto LABEL_51;
  }

  v35 = objc_getProperty(initiator, v34, 40, 1);
  [(NEIKEv2IKESA *)v5 assignRemoteSPI:v35];

  v37 = objc_getProperty(initiator, v36, 128, 1);
  objc_setProperty_atomic(v5, v38, v37, 320);

  objc_setProperty_atomic(initiator, v39, 0, 128);
  v41 = objc_getProperty(initiator, v40, 96, 1);
  v43 = v41;
  if (v41)
  {
    v41 = objc_getProperty(v41, v42, 32, 1);
  }

  v9 = v41;

  if ([v9 count]!= 1)
  {
    v65 = ne_log_obj();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription4 = [(NEIKEv2Packet *)initiator copyShortDescription];
      v169 = [v9 count];
      buf = 138412546;
      v382 = copyShortDescription4;
      v383 = 1024;
      LODWORD(v384) = v169;
      _os_log_error_impl(&dword_1BA83C000, v65, OS_LOG_TYPE_ERROR, "%@ Received %u SA proposals, require 1", &buf, 0x12u);
    }

    v66 = [v9 count];
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Invalid SA proposal count %u", v67, v68, v69, v70, v71, v72, v73, v66);
    [(NEIKEv2IKESA *)v5 setState:ErrorPeerInvalidSyntax error:?];
    v54 = 0;
    goto LABEL_127;
  }

  ErrorPeerInvalidSyntax = [v9 firstObject];
  if (([(NEIKEv2IKESAProposal *)ErrorPeerInvalidSyntax isAValidResponse]& 1) == 0)
  {
    v75 = ne_log_obj();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription5 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412546;
      v382 = copyShortDescription5;
      v383 = 2112;
      v384 = ErrorPeerInvalidSyntax;
      _os_log_error_impl(&dword_1BA83C000, v75, OS_LOG_TYPE_ERROR, "%@ Received invalid SA proposal %@", &buf, 0x16u);
    }

    v83 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received invalid SA proposal", v76, v77, v78, v79, v80, v81, v82, v361);
    [(NEIKEv2IKESA *)v5 setState:v83 error:?];
    v54 = 0;
    goto LABEL_126;
  }

  v375 = 0u;
  v376 = 0u;
  v373 = 0u;
  v374 = 0u;
  v47 = objc_getProperty(v5, v46, 80, 1);
  proposals = [v47 proposals];

  v49 = [proposals countByEnumeratingWithState:&v373 objects:v387 count:16];
  if (!v49)
  {
LABEL_47:

LABEL_92:
    v148 = ne_log_obj();
    if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription6 = [(NEIKEv2Packet *)initiator copyShortDescription];
      v183 = objc_getProperty(v5, v182, 80, 1);
      proposals2 = [v183 proposals];
      buf = 138412802;
      v382 = copyShortDescription6;
      v383 = 2112;
      v384 = ErrorPeerInvalidSyntax;
      v385 = 2112;
      v386 = proposals2;
      _os_log_error_impl(&dword_1BA83C000, v148, OS_LOG_TYPE_ERROR, "%@ Received proposal %@ does not match config %@", &buf, 0x20u);
    }

    v83 = objc_getProperty(v5, v149, 80, 1);
    proposals3 = [v83 proposals];
    v157 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received proposal %@ does not match config %@", v150, v151, v152, v153, v154, v155, v156, ErrorPeerInvalidSyntax);
    [(NEIKEv2IKESA *)v5 setState:v157 error:?];
LABEL_95:

LABEL_124:
    v54 = 0;
    goto LABEL_125;
  }

  v50 = v49;
  v51 = *v374;
LABEL_41:
  v52 = 0;
  while (1)
  {
    if (*v374 != v51)
    {
      objc_enumerationMutation(proposals);
    }

    v53 = *(*(&v373 + 1) + 8 * v52);
    if (([(NEIKEv2IKESAProposal *)v53 matchesLocalProposal:0 preferRemoteProposal:?]& 1) != 0)
    {
      break;
    }

    if (v50 == ++v52)
    {
      v50 = [proposals countByEnumeratingWithState:&v373 objects:v387 count:16];
      if (v50)
      {
        goto LABEL_41;
      }

      goto LABEL_47;
    }
  }

  v83 = v53;

  if (!v83)
  {
    goto LABEL_92;
  }

  v85 = [(NEIKEv2IKESAProposal *)v83 copyFromRemote:0 preferRemoteProposal:?];
  objc_setProperty_atomic(v5, v86, v85, 96);

  v88 = objc_getProperty(v5, v87, 96, 1);
  if (!v88)
  {
    v158 = ne_log_obj();
    if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription7 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412546;
      v382 = copyShortDescription7;
      v383 = 2112;
      v384 = ErrorPeerInvalidSyntax;
      _os_log_error_impl(&dword_1BA83C000, v158, OS_LOG_TYPE_ERROR, "%@ Could not set chosen proposal values %@", &buf, 0x16u);
    }

    v166 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Could not set chosen proposal values %@", v159, v160, v161, v162, v163, v164, v165, ErrorPeerInvalidSyntax);
    goto LABEL_123;
  }

  v90 = objc_getProperty(v5, v89, 96, 1);
  v92 = v90;
  if (v90)
  {
    v90 = objc_getProperty(v90, v91, 136, 1);
  }

  v93 = v90;

  if (v93 && ([(NEIKEv2Packet *)initiator hasNotification:?]& 1) == 0)
  {
    v336 = ne_log_obj();
    if (os_log_type_enabled(v336, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription8 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412546;
      v382 = copyShortDescription8;
      v383 = 2112;
      v384 = ErrorPeerInvalidSyntax;
      _os_log_error_impl(&dword_1BA83C000, v336, OS_LOG_TYPE_ERROR, "%@ Chosen proposal requires IKE_INTERMEDIATE but peer does not support it %@ ", &buf, 0x16u);
    }

    v166 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Chosen proposal requires IKE_INTERMEDIATE but peer does not support it %@", v337, v338, v339, v340, v341, v342, v343, ErrorPeerInvalidSyntax);
    goto LABEL_123;
  }

  v95 = objc_getProperty(initiator, v94, 104, 1);

  if (!v95)
  {
    v170 = ne_log_obj();
    if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription9 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v382 = copyShortDescription9;
      _os_log_error_impl(&dword_1BA83C000, v170, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload", &buf, 0xCu);
    }

    v178 = @"Did not receive KE payload";
    goto LABEL_122;
  }

  v97 = objc_getProperty(initiator, v96, 104, 1);
  v99 = v97;
  if (v97)
  {
    v97 = objc_getProperty(v97, v98, 32, 1);
  }

  v100 = v97;

  if (!v100)
  {
    v180 = ne_log_obj();
    if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription10 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v382 = copyShortDescription10;
      _os_log_error_impl(&dword_1BA83C000, v180, OS_LOG_TYPE_ERROR, "%@ Did not receive method in KE payload", &buf, 0xCu);
    }

    v178 = @"Did not receive method in KE payload";
    goto LABEL_122;
  }

  v102 = objc_getProperty(initiator, v101, 104, 1);
  v104 = v102;
  if (v102)
  {
    v102 = objc_getProperty(v102, v103, 40, 1);
  }

  v105 = v102;

  if (!v105)
  {
    v185 = ne_log_obj();
    if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription11 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v382 = copyShortDescription11;
      _os_log_error_impl(&dword_1BA83C000, v185, OS_LOG_TYPE_ERROR, "%@ Did not receive data in KE payload", &buf, 0xCu);
    }

    v178 = @"Did not receive data in KE payload";
    goto LABEL_122;
  }

  v107 = objc_getProperty(initiator, v106, 104, 1);
  v109 = v107;
  if (v107)
  {
    v107 = objc_getProperty(v107, v108, 32, 1);
  }

  v110 = v107;
  selfb = [v110 method];
  v112 = objc_getProperty(v5, v111, 96, 1);
  kemProtocol = [(NEIKEv2IKESAProposal *)v112 kemProtocol];
  method = [kemProtocol method];

  if (selfb != method)
  {
    v186 = ne_log_obj();
    v187 = &OBJC_IVAR___NEFilterFlow__direction;
    if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
    {
      v367 = v83;
      copyShortDescription12 = [(NEIKEv2Packet *)initiator copyShortDescription];
      v305 = objc_getProperty(initiator, v304, 104, 1);
      v307 = v305;
      if (v305)
      {
        v305 = objc_getProperty(v305, v306, 32, 1);
      }

      selfc = v305;
      method2 = [selfc method];
      v310 = objc_getProperty(v5, v309, 96, 1);
      kemProtocol2 = [(NEIKEv2IKESAProposal *)v310 kemProtocol];
      method3 = [kemProtocol2 method];
      buf = 138412802;
      v382 = copyShortDescription12;
      v383 = 2048;
      v384 = method2;
      v385 = 2048;
      v386 = method3;
      _os_log_error_impl(&dword_1BA83C000, v186, OS_LOG_TYPE_ERROR, "%@ Did not receive matching method from KE payload (%zu != %zu)", &buf, 0x20u);

      v83 = v367;
      v187 = &OBJC_IVAR___NEFilterFlow__direction;
    }

    v189 = objc_getProperty(initiator, v188, v187[585], 1);
    proposals3 = v189;
    if (v189)
    {
      v189 = objc_getProperty(v189, v190, 32, 1);
    }

    v157 = v189;
    method4 = [v157 method];
    v193 = objc_getProperty(v5, v192, 96, 1);
    kemProtocol3 = [(NEIKEv2IKESAProposal *)v193 kemProtocol];
    [kemProtocol3 method];
    v203 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive matching method from KE payload (%zu != %zu)", v196, v197, v198, v199, v200, v201, v202, method4);
    [(NEIKEv2IKESA *)v5 setState:v203 error:?];

    goto LABEL_95;
  }

  v117 = objc_getProperty(initiator, v116, 104, 1);
  v119 = v117;
  if (v117)
  {
    v117 = objc_getProperty(v117, v118, 40, 1);
  }

  v120 = v117;
  objc_setProperty_atomic(v5, v121, v120, 152);

  v123 = objc_getProperty(initiator, v122, 112, 1);

  if (!v123)
  {
    v204 = ne_log_obj();
    if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription13 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v382 = copyShortDescription13;
      _os_log_error_impl(&dword_1BA83C000, v204, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE payload", &buf, 0xCu);
    }

    v178 = @"Did not receive NONCE payload";
    goto LABEL_122;
  }

  v125 = objc_getProperty(initiator, v124, 112, 1);
  v127 = v125;
  if (v125)
  {
    v125 = objc_getProperty(v125, v126, 32, 1);
  }

  v128 = v125;

  if (!v128)
  {
    v206 = ne_log_obj();
    if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription14 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v382 = copyShortDescription14;
      _os_log_error_impl(&dword_1BA83C000, v206, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE data", &buf, 0xCu);
    }

    v178 = @"Did not receive NONCE data";
LABEL_122:
    v166 = NEIKEv2CreateErrorPeerInvalidSyntax(v178, v171, v172, v173, v174, v175, v176, v177, v361);
LABEL_123:
    proposals3 = v166;
    [(NEIKEv2IKESA *)v5 setState:v166 error:?];
    goto LABEL_124;
  }

  v130 = objc_getProperty(v5, v129, 80, 1);
  strictNonceSizeChecks = [v130 strictNonceSizeChecks];

  v366 = v83;
  if (!strictNonceSizeChecks)
  {
    goto LABEL_133;
  }

  v133 = objc_getProperty(initiator, v132, 112, 1);
  v135 = v133;
  if (v133)
  {
    v133 = objc_getProperty(v133, v134, 32, 1);
  }

  v136 = v133;
  v137 = [v136 length];

  self = v137;
  if ((v137 - 257) <= 0xFFFFFFFFFFFFFF0ELL)
  {
    v139 = ne_log_obj();
    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription15 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412546;
      v382 = copyShortDescription15;
      v383 = 2048;
      v384 = v137;
      _os_log_error_impl(&dword_1BA83C000, v139, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is out of bounds", &buf, 0x16u);
    }

    proposals3 = NEIKEv2CreateErrorPeerInvalidSyntax(@"NONCE data length %zu is out of bounds", v140, v141, v142, v143, v144, v145, v146, v137);
    [(NEIKEv2IKESA *)v5 setState:proposals3 error:?];
    goto LABEL_132;
  }

  v209 = objc_getProperty(v5, v138, 96, 1);
  prfProtocol = [(NEIKEv2IKESAProposal *)v209 prfProtocol];
  nonceSize = [prfProtocol nonceSize];

  if (self >= nonceSize)
  {
LABEL_133:
    v224 = objc_getProperty(initiator, v132, 112, 1);
    v226 = v224;
    if (v224)
    {
      v224 = objc_getProperty(v224, v225, 32, 1);
    }

    v227 = v224;
    objc_setProperty_atomic(v5, v228, v227, 136);

    selfa = [(NEIKEv2Packet *)initiator copyNotification:?];
    if (selfa)
    {
      v230 = objc_getProperty(selfa, v229, 40, 1);
      v231 = [NEIKEv2Crypto copySignHashSetForData:v230];
      objc_storeStrong((v5 + 112), v231);
    }

    v232 = objc_getProperty(v5, v229, 88, 1);
    authenticationProtocol = [v232 authenticationProtocol];
    isSecurePassword = [authenticationProtocol isSecurePassword];

    if (isSecurePassword)
    {
      v235 = [(NEIKEv2Packet *)initiator copyNotification:?];
      if (!v235)
      {
        v347 = ne_log_obj();
        if (os_log_type_enabled(v347, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription16 = [(NEIKEv2Packet *)initiator copyShortDescription];
          buf = 138412290;
          v382 = copyShortDescription16;
          _os_log_error_impl(&dword_1BA83C000, v347, OS_LOG_TYPE_ERROR, "%@ Did not receive secure password methods notify", &buf, 0xCu);
        }

        v265 = @"Did not receive secure password methods notify";
LABEL_183:
        v315 = NEIKEv2CreateErrorPeerInvalidSyntax(v265, v258, v259, v260, v261, v262, v263, v264, v361);
        [(NEIKEv2IKESA *)v5 setState:v315 error:?];

        goto LABEL_184;
      }

      v237 = v235;
      v238 = objc_getProperty(v235, v236, 40, 1);
      if ([v238 length] == 2)
      {
        v372 = 0;
        [v238 getBytes:&v372 length:2];
        v239 = [NEIKEv2AuthenticationProtocol alloc];
        v240 = [(NEIKEv2AuthenticationProtocol *)v239 initWithSecurePassword:bswap32(v372) >> 16];
        v242 = objc_getProperty(v5, v241, 88, 1);
        authenticationProtocol2 = [v242 authenticationProtocol];
        v244 = [(NEIKEv2AuthenticationProtocol *)v240 isEqual:authenticationProtocol2];

        if (v244)
        {
          objc_storeStrong((v5 + 104), v240);

          goto LABEL_142;
        }

        v292 = ne_log_obj();
        if (os_log_type_enabled(v292, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription17 = [(NEIKEv2Packet *)initiator copyShortDescription];
          v326 = objc_getProperty(v5, v325, 88, 1);
          authenticationProtocol3 = [v326 authenticationProtocol];
          buf = 138412802;
          v382 = copyShortDescription17;
          v383 = 2112;
          v384 = v240;
          v385 = 2112;
          v386 = authenticationProtocol3;
          _os_log_error_impl(&dword_1BA83C000, v292, OS_LOG_TYPE_ERROR, "%@ Secure password method %@ does not match configured %@", &buf, 0x20u);
        }

        v294 = objc_getProperty(v5, v293, 88, 1);
        authenticationProtocol4 = [v294 authenticationProtocol];
        v302 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Secure password method %@ does not match configured %@", v295, v296, v297, v298, v299, v300, v301, v240);
        [(NEIKEv2IKESA *)v5 setState:v302 error:?];
      }

      else
      {
        v348 = ne_log_obj();
        if (os_log_type_enabled(v348, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription18 = [(NEIKEv2Packet *)initiator copyShortDescription];
          v360 = [v238 length];
          buf = 138412546;
          v382 = copyShortDescription18;
          v383 = 2048;
          v384 = v360;
          _os_log_error_impl(&dword_1BA83C000, v348, OS_LOG_TYPE_ERROR, "%@ Secure password methods notify has incorrect length %zu != sizeof(uint16_t)", &buf, 0x16u);
        }

        v349 = [v238 length];
        v357 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Secure password methods notify has incorrect length %zu != sizeof(uint16_t)", v350, v351, v352, v353, v354, v355, v356, v349);
        [(NEIKEv2IKESA *)v5 setState:v357 error:?];
      }

LABEL_184:
      v54 = 0;
LABEL_191:
      proposals3 = selfa;
      goto LABEL_192;
    }

LABEL_142:
    if ([(NEIKEv2Packet *)initiator hasNotification:?]&& (*(v5 + 13) & 1) == 0)
    {
      *(v5 + 10) = 1;
      v245 = ne_log_obj();
      if (os_log_type_enabled(v245, OS_LOG_TYPE_DEBUG))
      {
        copyShortDescription19 = [(NEIKEv2Packet *)initiator copyShortDescription];
        buf = 138412290;
        v382 = copyShortDescription19;
        _os_log_debug_impl(&dword_1BA83C000, v245, OS_LOG_TYPE_DEBUG, "%@ IKEv2 fragmentation supported", &buf, 0xCu);
      }
    }

    if ([(NEIKEv2Packet *)initiator hasNotification:?])
    {
      v246 = ne_log_obj();
      if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
      {
        copyShortDescription20 = [(NEIKEv2Packet *)initiator copyShortDescription];
        buf = 138412290;
        v382 = copyShortDescription20;
        _os_log_debug_impl(&dword_1BA83C000, v246, OS_LOG_TYPE_DEBUG, "%@ Childless IKEv2 supported", &buf, 0xCu);
      }

      v248 = objc_getProperty(v5, v247, 80, 1);
      requestChildlessSA = [v248 requestChildlessSA];

      if (requestChildlessSA)
      {
        *(v5 + 23) = 1;
      }
    }

    if ([(NEIKEv2Packet *)initiator hasNotification:?])
    {
      v251 = objc_getProperty(v5, v250, 80, 1);
      requestPPK = [v251 requestPPK];

      if (requestPPK)
      {
        *(v5 + 24) = 1;
        v253 = ne_log_obj();
        if (os_log_type_enabled(v253, OS_LOG_TYPE_INFO))
        {
          copyShortDescription21 = [(NEIKEv2Packet *)initiator copyShortDescription];
          buf = 138412290;
          v382 = copyShortDescription21;
          _os_log_impl(&dword_1BA83C000, v253, OS_LOG_TYPE_INFO, "%@ PPK use requested", &buf, 0xCu);
        }

LABEL_161:
        v364 = [(NEIKEv2Packet *)initiator copyNotification:?];
        v365 = [(NEIKEv2Packet *)initiator copyNotification:?];
        if (!v364 || !v365)
        {
          goto LABEL_190;
        }

        initiatorSPI = [(NEIKEv2IKESA *)v5 initiatorSPI];
        responderSPI = [(NEIKEv2IKESA *)v5 responderSPI];
        v271 = objc_getProperty(v5, v270, 72, 1);
        v272 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI responderSPI:responderSPI address:v271];

        initiatorSPI2 = [(NEIKEv2IKESA *)v5 initiatorSPI];
        responderSPI2 = [(NEIKEv2IKESA *)v5 responderSPI];
        v278 = objc_getProperty(v5, v277, 64, 1);
        v279 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI2 responderSPI:responderSPI2 address:v278];

        v281 = objc_getProperty(v364, v280, 40, 1);
        LOBYTE(v278) = [v272 isEqualToData:v281];

        if ((v278 & 1) == 0)
        {
          *(v5 + 15) = 1;
          v283 = ne_log_obj();
          if (os_log_type_enabled(v283, OS_LOG_TYPE_DEBUG))
          {
            copyShortDescription22 = [(NEIKEv2Packet *)initiator copyShortDescription];
            buf = 138412290;
            v382 = copyShortDescription22;
            _os_log_debug_impl(&dword_1BA83C000, v283, OS_LOG_TYPE_DEBUG, "%@ Detected incoming NAT", &buf, 0xCu);
          }
        }

        v284 = objc_getProperty(v365, v282, 40, 1);
        v285 = [v279 isEqualToData:v284];

        if ((v285 & 1) == 0)
        {
          *(v5 + 14) = 1;
          v287 = ne_log_obj();
          if (os_log_type_enabled(v287, OS_LOG_TYPE_DEBUG))
          {
            copyShortDescription23 = [(NEIKEv2Packet *)initiator copyShortDescription];
            buf = 138412290;
            v382 = copyShortDescription23;
            _os_log_debug_impl(&dword_1BA83C000, v287, OS_LOG_TYPE_DEBUG, "%@ Detected outgoing NAT", &buf, 0xCu);
          }
        }

        v288 = objc_getProperty(v5, v286, 80, 1);
        if ([v288 disableSwitchToNATTPorts])
        {
        }

        else
        {
          v316 = objc_getProperty(v5, v289, 88, 1);
          if ([v316 negotiateMOBIKE] & 1) != 0 || (*(v5 + 15))
          {
          }

          else
          {
            v322 = *(v5 + 14);

            if ((v322 & 1) == 0)
            {
              goto LABEL_189;
            }
          }

          [(NEIKEv2IKESA *)v5 switchToNATTraversalPorts];
        }

LABEL_189:
        v317 = objc_getProperty(v365, v290, 40, 1);
        objc_setProperty_atomic(v5, v318, v317, 504);

LABEL_190:
        v54 = 1;
        goto LABEL_191;
      }

      v314 = ne_log_obj();
      if (os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription24 = [(NEIKEv2Packet *)initiator copyShortDescription];
        buf = 138412290;
        v382 = copyShortDescription24;
        _os_log_error_impl(&dword_1BA83C000, v314, OS_LOG_TYPE_ERROR, "%@ PPK use requested but PPK use is not configured", &buf, 0xCu);
      }

      v265 = @"PPK use requested but PPK use is not configured";
    }

    else
    {
      v255 = objc_getProperty(v5, v250, 88, 1);
      ppkMandatory = [v255 ppkMandatory];

      if (!ppkMandatory)
      {
        goto LABEL_161;
      }

      v257 = ne_log_obj();
      if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription25 = [(NEIKEv2Packet *)initiator copyShortDescription];
        buf = 138412290;
        v382 = copyShortDescription25;
        _os_log_error_impl(&dword_1BA83C000, v257, OS_LOG_TYPE_ERROR, "%@ PPK use not requested but PPK use is mandatory", &buf, 0xCu);
      }

      v265 = @"PPK use not requested but PPK use is mandatory";
    }

    goto LABEL_183;
  }

  v213 = ne_log_obj();
  if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
  {
    copyShortDescription26 = [(NEIKEv2Packet *)initiator copyShortDescription];
    v330 = objc_getProperty(v5, v329, 96, 1);
    prfProtocol2 = [(NEIKEv2IKESAProposal *)v330 prfProtocol];
    buf = 138412802;
    v382 = copyShortDescription26;
    v383 = 2048;
    v384 = self;
    v385 = 2112;
    v386 = prfProtocol2;
    _os_log_error_impl(&dword_1BA83C000, v213, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is shorter than the minimum for PRF protocol %@", &buf, 0x20u);
  }

  proposals3 = objc_getProperty(v5, v214, 96, 1);
  prfProtocol3 = [(NEIKEv2IKESAProposal *)proposals3 prfProtocol];
  v223 = NEIKEv2CreateErrorPeerInvalidSyntax(@"NONCE data length %zu is shorter than the minimum for PRF protocol %@", v216, v217, v218, v219, v220, v221, v222, self);
  [(NEIKEv2IKESA *)v5 setState:v223 error:?];

LABEL_132:
  v54 = 0;
LABEL_192:
  v83 = v366;
LABEL_125:

LABEL_126:
LABEL_127:

LABEL_52:
LABEL_53:

  v55 = *MEMORY[0x1E69E9840];
  return v54;
}

- (uint64_t)validateSAInitAsResponder:(void *)responder errorCodeToSend:
{
  v275 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = v5;
  if (v5 && (v5[9] & 1) != 0)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_77;
    }

    *buf = 136315138;
    v269 = "[NEIKEv2IKESAInitPacket(Exchange) validateSAInitAsResponder:errorCodeToSend:]";
    v109 = "%s called with null !ikeSA.isInitiator";
    goto LABEL_70;
  }

  v8 = objc_getProperty(self, v6, 128, 1);

  if (!v8)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_77;
    }

    *buf = 136315138;
    v269 = "[NEIKEv2IKESAInitPacket(Exchange) validateSAInitAsResponder:errorCodeToSend:]";
    v109 = "%s called with null self.originalPacket";
LABEL_70:
    _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, v109, buf, 0xCu);
    goto LABEL_77;
  }

  if ([(NEIKEv2Packet *)self hasErrors])
  {
    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    if (self)
    {
      Property = objc_getProperty(self, v10, 64, 1);
    }

    else
    {
      Property = 0;
    }

    v12 = Property;
    v13 = [v12 countByEnumeratingWithState:&v264 objects:v274 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v265;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v265 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v264 + 1) + 8 * i);
          if (v17 && v17[1].isa - 1 <= 0x3FFE)
          {
            copyError = [(NEIKEv2NotifyPayload *)v17 copyError];
            v111 = ne_log_obj();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription = [(NEIKEv2Packet *)self copyShortDescription];
              *buf = 138412546;
              v269 = copyShortDescription;
              v270 = 2112;
              v271 = copyError;
              _os_log_error_impl(&dword_1BA83C000, v111, OS_LOG_TYPE_ERROR, "%@ Responder init received notify error %@", buf, 0x16u);
            }

            [(NEIKEv2IKESA *)v7 setState:copyError error:?];
            goto LABEL_77;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v264 objects:v274 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }
  }

  v18 = objc_getProperty(self, v10, 32, 1);
  value = [v18 value];

  if (value)
  {
    v21 = objc_getProperty(self, v20, 32, 1);
    [(NEIKEv2IKESA *)v7 assignRemoteSPI:v21];

    v24 = objc_getProperty(self, v22, 128, 1);
    if (v7)
    {
      objc_setProperty_atomic(v7, v23, v24, 320);
    }

    objc_setProperty_atomic(self, v25, 0, 128);
    v27 = objc_getProperty(self, v26, 96, 1);
    v29 = v27;
    if (v27)
    {
      v27 = objc_getProperty(v27, v28, 32, 1);
    }

    v12 = v27;

    if (v7)
    {
      v31 = objc_getProperty(v7, v30, 80, 1);
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    proposals = [v32 proposals];

    if ([v12 count])
    {
      if (v7)
      {
        v35 = objc_getProperty(v7, v34, 80, 1);
      }

      else
      {
        v35 = 0;
      }

      v36 = v35;
      v37 = +[NEIKEv2IKESAProposal chooseSAProposalFromLocalProposals:remoteProposals:preferRemoteProposals:](NEIKEv2IKESAProposal, proposals, v12, [v36 preferInitiatorProposalOrder]);
      objc_setProperty_atomic(v7, v38, v37, 96);

      v39 = ne_log_obj();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        copyShortDescription2 = [(NEIKEv2Packet *)self copyShortDescription];
        if (v7)
        {
          v42 = objc_getProperty(v7, v40, 96, 1);
        }

        else
        {
          v42 = 0;
        }

        v43 = v42;
        *buf = 138412802;
        v269 = copyShortDescription2;
        v270 = 2112;
        v271 = v43;
        v272 = 2112;
        v273 = v12;
        _os_log_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_INFO, "%@ Choosing SA proposal %@ from %@", buf, 0x20u);
      }

      if (v7)
      {
        v45 = objc_getProperty(v7, v44, 96, 1);
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;

      if (v46)
      {
        if (v7)
        {
          v48 = objc_getProperty(v7, v47, 96, 1);
          v50 = v48;
          if (v48)
          {
            v48 = objc_getProperty(v48, v49, 136, 1);
          }
        }

        else
        {
          v50 = 0;
          v48 = 0;
        }

        v51 = v48;

        if (v51 && ([(NEIKEv2Packet *)self hasNotification:?]& 1) == 0)
        {
          v243 = ne_log_obj();
          if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription3 = [(NEIKEv2Packet *)self copyShortDescription];
            if (v7)
            {
              v256 = objc_getProperty(v7, v254, 96, 1);
            }

            else
            {
              v256 = 0;
            }

            v257 = v256;
            *buf = 138412546;
            v269 = copyShortDescription3;
            v270 = 2112;
            v271 = v257;
            _os_log_error_impl(&dword_1BA83C000, v243, OS_LOG_TYPE_ERROR, "%@ Chosen proposal requires IKE_INTERMEDIATE but peer does not support it %@", buf, 0x16u);
          }

          if (v7)
          {
            v245 = objc_getProperty(v7, v244, 96, 1);
          }

          else
          {
            v245 = 0;
          }

          v134 = v245;
          ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Chosen proposal requires IKE_INTERMEDIATE but peer does not support it %@", v246, v247, v248, v249, v250, v251, v252, v134);
          [(NEIKEv2IKESA *)v7 setState:ErrorPeerInvalidSyntax error:?];

          goto LABEL_96;
        }

        v53 = objc_getProperty(self, v52, 104, 1);

        if (v53)
        {
          v55 = objc_getProperty(self, v54, 104, 1);
          v57 = v55;
          if (v55)
          {
            v55 = objc_getProperty(v55, v56, 32, 1);
          }

          v58 = v55;

          if (v58)
          {
            v60 = objc_getProperty(self, v59, 104, 1);
            v62 = v60;
            if (v60)
            {
              v60 = objc_getProperty(v60, v61, 40, 1);
            }

            v63 = v60;

            if (v63)
            {
              v65 = objc_getProperty(self, v64, 104, 1);
              v67 = v65;
              if (v65)
              {
                v65 = objc_getProperty(v65, v66, 32, 1);
              }

              v68 = v65;
              method = [v68 method];
              v263 = proposals;
              if (v7)
              {
                v71 = objc_getProperty(v7, v69, 96, 1);
              }

              else
              {
                v71 = 0;
              }

              v72 = v71;
              kemProtocol = [(NEIKEv2IKESAProposal *)v72 kemProtocol];
              method2 = [kemProtocol method];

              if (method == method2)
              {
                v77 = objc_getProperty(self, v76, 104, 1);
                v79 = v77;
                proposals = v263;
                if (v77)
                {
                  v77 = objc_getProperty(v77, v78, 40, 1);
                }

                v81 = v77;
                if (v7)
                {
                  objc_setProperty_atomic(v7, v80, v81, 152);
                }

                v83 = objc_getProperty(self, v82, 112, 1);

                if (v83)
                {
                  v85 = objc_getProperty(self, v84, 112, 1);
                  v87 = v85;
                  if (v85)
                  {
                    v85 = objc_getProperty(v85, v86, 32, 1);
                  }

                  v88 = v85;

                  if (v88)
                  {
                    if (v7)
                    {
                      v90 = objc_getProperty(v7, v89, 80, 1);
                    }

                    else
                    {
                      v90 = 0;
                    }

                    v91 = v90;
                    strictNonceSizeChecks = [v91 strictNonceSizeChecks];

                    if (strictNonceSizeChecks)
                    {
                      v94 = objc_getProperty(self, v93, 112, 1);
                      v96 = v94;
                      if (v94)
                      {
                        v94 = objc_getProperty(v94, v95, 32, 1);
                      }

                      v97 = v94;
                      v98 = [v97 length];

                      if (v98 - 257 <= 0xFFFFFFFFFFFFFF0ELL)
                      {
                        v100 = ne_log_obj();
                        if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                        {
                          copyShortDescription4 = [(NEIKEv2Packet *)self copyShortDescription];
                          *buf = 138412546;
                          v269 = copyShortDescription4;
                          v270 = 2048;
                          v271 = v98;
                          _os_log_error_impl(&dword_1BA83C000, v100, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is out of bounds", buf, 0x16u);
                        }

                        v108 = NEIKEv2CreateErrorPeerInvalidSyntax(@"NONCE data length %zu is out of bounds", v101, v102, v103, v104, v105, v106, v107, v98);
                        goto LABEL_110;
                      }

                      if (v7)
                      {
                        v155 = objc_getProperty(v7, v99, 96, 1);
                      }

                      else
                      {
                        v155 = 0;
                      }

                      v156 = v155;
                      prfProtocol = [(NEIKEv2IKESAProposal *)v156 prfProtocol];
                      nonceSize = [prfProtocol nonceSize];

                      if (v98 < nonceSize)
                      {
                        v160 = ne_log_obj();
                        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                        {
                          copyShortDescription5 = [(NEIKEv2Packet *)self copyShortDescription];
                          if (v7)
                          {
                            v239 = objc_getProperty(v7, v237, 96, 1);
                          }

                          else
                          {
                            v239 = 0;
                          }

                          v240 = v239;
                          prfProtocol2 = [(NEIKEv2IKESAProposal *)v240 prfProtocol];
                          *buf = 138412802;
                          v269 = copyShortDescription5;
                          v270 = 2048;
                          v271 = v98;
                          v272 = 2112;
                          v273 = prfProtocol2;
                          _os_log_error_impl(&dword_1BA83C000, v160, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is shorter than the minimum for PRF protocol %@", buf, 0x20u);
                        }

                        if (v7)
                        {
                          v162 = objc_getProperty(v7, v161, 96, 1);
                        }

                        else
                        {
                          v162 = 0;
                        }

                        v152 = v162;
                        prfProtocol3 = [(NEIKEv2IKESAProposal *)v152 prfProtocol];
                        v171 = NEIKEv2CreateErrorPeerInvalidSyntax(@"NONCE data length %zu is shorter than the minimum for PRF protocol %@", v164, v165, v166, v167, v168, v169, v170, v98);
                        [(NEIKEv2IKESA *)v7 setState:v171 error:?];

                        goto LABEL_111;
                      }
                    }

                    v172 = objc_getProperty(self, v93, 112, 1);
                    v174 = v172;
                    if (v172)
                    {
                      v172 = objc_getProperty(v172, v173, 32, 1);
                    }

                    v175 = v172;
                    objc_setProperty_atomic(v7, v176, v175, 136);

                    v177 = [(NEIKEv2Packet *)self copyNotification:?];
                    v179 = v177;
                    if (v177)
                    {
                      v180 = objc_getProperty(v177, v178, 40, 1);
                      v181 = [NEIKEv2Crypto copySignHashSetForData:v180];
                      objc_storeStrong((v7 + 112), v181);
                    }

                    v182 = [(NEIKEv2Packet *)self copyNotification:?];
                    v183 = [(NEIKEv2IKESA *)v7 selectSecurePasswordMethod:v182];
                    objc_storeStrong((v7 + 104), v183);

                    if ([(NEIKEv2Packet *)self hasNotification:?]&& (*(v7 + 13) & 1) == 0)
                    {
                      *(v7 + 10) = 1;
                      v184 = ne_log_obj();
                      if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
                      {
                        copyShortDescription6 = [(NEIKEv2Packet *)self copyShortDescription];
                        *buf = 138412290;
                        v269 = copyShortDescription6;
                        _os_log_debug_impl(&dword_1BA83C000, v184, OS_LOG_TYPE_DEBUG, "%@ IKEv2 fragmentation supported", buf, 0xCu);
                      }
                    }

                    if (![(NEIKEv2Packet *)self hasNotification:?])
                    {
LABEL_136:
                      v192 = [(NEIKEv2Packet *)self copyNotification:?];
                      v193 = [(NEIKEv2Packet *)self copyNotification:?];
                      v195 = v193;
                      if (!v192 || !v193)
                      {
                        goto LABEL_153;
                      }

                      v260 = v179;
                      v262 = v182;
                      initiatorSPI = [(NEIKEv2IKESA *)v7 initiatorSPI];
                      v198 = objc_getProperty(v7, v197, 72, 1);
                      v199 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI responderSPI:0 address:v198];

                      initiatorSPI2 = [(NEIKEv2IKESA *)v7 initiatorSPI];
                      v203 = objc_getProperty(v7, v202, 64, 1);
                      v204 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI2 responderSPI:0 address:v203];

                      v206 = objc_getProperty(v192, v205, 40, 1);
                      v261 = v199;
                      LOBYTE(v203) = [v199 isEqualToData:v206];

                      if ((v203 & 1) == 0)
                      {
                        *(v7 + 15) = 1;
                        v208 = ne_log_obj();
                        if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
                        {
                          copyShortDescription7 = [(NEIKEv2Packet *)self copyShortDescription];
                          *buf = 138412290;
                          v269 = copyShortDescription7;
                          _os_log_debug_impl(&dword_1BA83C000, v208, OS_LOG_TYPE_DEBUG, "%@ Detected incoming NAT", buf, 0xCu);
                        }
                      }

                      v209 = objc_getProperty(v195, v207, 40, 1);
                      v210 = [v204 isEqualToData:v209];

                      v179 = v260;
                      if ((v210 & 1) == 0)
                      {
                        *(v7 + 14) = 1;
                        v212 = ne_log_obj();
                        if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
                        {
                          copyShortDescription8 = [(NEIKEv2Packet *)self copyShortDescription];
                          *buf = 138412290;
                          v269 = copyShortDescription8;
                          _os_log_debug_impl(&dword_1BA83C000, v212, OS_LOG_TYPE_DEBUG, "%@ Detected outgoing NAT", buf, 0xCu);
                        }
                      }

                      v213 = objc_getProperty(v7, v211, 80, 1);
                      if ([v213 disableSwitchToNATTPorts])
                      {
                      }

                      else
                      {
                        v215 = objc_getProperty(v7, v214, 88, 1);
                        if ([v215 negotiateMOBIKE] & 1) != 0 || (*(v7 + 15))
                        {
                        }

                        else
                        {
                          v231 = *(v7 + 14);

                          if ((v231 & 1) == 0)
                          {
                            goto LABEL_152;
                          }
                        }

                        [(NEIKEv2IKESA *)v7 switchToNATTraversalPorts];
                      }

LABEL_152:

                      v182 = v262;
                      proposals = v263;
LABEL_153:

                      v120 = 1;
                      goto LABEL_98;
                    }

                    v186 = objc_getProperty(v7, v185, 80, 1);
                    requestPPK = [v186 requestPPK];

                    if (requestPPK)
                    {
                      *(v7 + 24) = 1;
                      v188 = ne_log_obj();
                      if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
                      {
                        copyShortDescription9 = [(NEIKEv2Packet *)self copyShortDescription];
                        *buf = 138412290;
                        v269 = copyShortDescription9;
                        v190 = "%@ PPK use requested";
LABEL_134:
                        _os_log_impl(&dword_1BA83C000, v188, OS_LOG_TYPE_INFO, v190, buf, 0xCu);
                      }
                    }

                    else
                    {
                      v188 = ne_log_obj();
                      if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
                      {
                        copyShortDescription9 = [(NEIKEv2Packet *)self copyShortDescription];
                        *buf = 138412290;
                        v269 = copyShortDescription9;
                        v190 = "%@ PPK use requested but PPK use is not configured";
                        goto LABEL_134;
                      }
                    }

                    goto LABEL_136;
                  }

                  v151 = ne_log_obj();
                  if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
                  {
                    copyShortDescription10 = [(NEIKEv2Packet *)self copyShortDescription];
                    *buf = 138412290;
                    v269 = copyShortDescription10;
                    _os_log_error_impl(&dword_1BA83C000, v151, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE data", buf, 0xCu);
                  }

                  v149 = @"Did not receive NONCE data";
                }

                else
                {
                  v141 = ne_log_obj();
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                  {
                    copyShortDescription11 = [(NEIKEv2Packet *)self copyShortDescription];
                    *buf = 138412290;
                    v269 = copyShortDescription11;
                    _os_log_error_impl(&dword_1BA83C000, v141, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE payload", buf, 0xCu);
                  }

                  v149 = @"Did not receive NONCE payload";
                }

                v108 = NEIKEv2CreateErrorPeerInvalidSyntax(v149, v142, v143, v144, v145, v146, v147, v148, v258);
LABEL_110:
                v152 = v108;
                [(NEIKEv2IKESA *)v7 setState:v108 error:?];
LABEL_111:

                goto LABEL_97;
              }

              v137 = ne_log_obj();
              proposals = v263;
              if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
              {
                copyShortDescription12 = [(NEIKEv2Packet *)self copyShortDescription];
                v219 = objc_getProperty(self, v218, 104, 1);
                v221 = v219;
                if (v219)
                {
                  v219 = objc_getProperty(v219, v220, 32, 1);
                }

                v222 = v219;
                method3 = [v222 method];
                if (v7)
                {
                  v225 = objc_getProperty(v7, v223, 96, 1);
                }

                else
                {
                  v225 = 0;
                }

                v226 = v225;
                kemProtocol2 = [(NEIKEv2IKESAProposal *)v226 kemProtocol];
                method4 = [kemProtocol2 method];
                *buf = 138412802;
                v269 = copyShortDescription12;
                v270 = 2048;
                v271 = method3;
                v272 = 2048;
                v273 = method4;
                _os_log_error_impl(&dword_1BA83C000, v137, OS_LOG_TYPE_ERROR, "%@ Received KE method %zu does not match KE method %zu in SA proposal", buf, 0x20u);

                proposals = v263;
              }

              if (responder)
              {
                v120 = 0;
                *responder = 17;
                goto LABEL_98;
              }

LABEL_97:
              v120 = 0;
LABEL_98:

              goto LABEL_99;
            }

            v133 = ne_log_obj();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription13 = [(NEIKEv2Packet *)self copyShortDescription];
              *buf = 138412290;
              v269 = copyShortDescription13;
              _os_log_error_impl(&dword_1BA83C000, v133, OS_LOG_TYPE_ERROR, "%@ Did not receive data in KE payload", buf, 0xCu);
            }

            v129 = @"Did not receive data in KE payload";
          }

          else
          {
            v132 = ne_log_obj();
            if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription14 = [(NEIKEv2Packet *)self copyShortDescription];
              *buf = 138412290;
              v269 = copyShortDescription14;
              _os_log_error_impl(&dword_1BA83C000, v132, OS_LOG_TYPE_ERROR, "%@ Did not receive method in KE payload", buf, 0xCu);
            }

            v129 = @"Did not receive method in KE payload";
          }
        }

        else
        {
          v131 = ne_log_obj();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription15 = [(NEIKEv2Packet *)self copyShortDescription];
            *buf = 138412290;
            v269 = copyShortDescription15;
            _os_log_error_impl(&dword_1BA83C000, v131, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload", buf, 0xCu);
          }

          v129 = @"Did not receive KE payload";
        }
      }

      else
      {
        v130 = ne_log_obj();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription16 = [(NEIKEv2Packet *)self copyShortDescription];
          *buf = 138412290;
          v269 = copyShortDescription16;
          _os_log_error_impl(&dword_1BA83C000, v130, OS_LOG_TYPE_ERROR, "%@ No matching proposal found", buf, 0xCu);
        }

        if (responder)
        {
          *responder = 14;
        }

        v129 = @"No matching proposal found";
      }
    }

    else
    {
      v121 = ne_log_obj();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription17 = [(NEIKEv2Packet *)self copyShortDescription];
        *buf = 138412290;
        v269 = copyShortDescription17;
        _os_log_error_impl(&dword_1BA83C000, v121, OS_LOG_TYPE_ERROR, "%@ Received no SA proposals", buf, 0xCu);
      }

      v129 = @"Received no SA proposals";
    }

    v134 = NEIKEv2CreateErrorPeerInvalidSyntax(v129, v122, v123, v124, v125, v126, v127, v128, v258);
    [(NEIKEv2IKESA *)v7 setState:v134 error:?];
LABEL_96:

    goto LABEL_97;
  }

  v112 = ne_log_obj();
  if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
  {
    copyShortDescription18 = [(NEIKEv2Packet *)self copyShortDescription];
    *buf = 138412290;
    v269 = copyShortDescription18;
    _os_log_error_impl(&dword_1BA83C000, v112, OS_LOG_TYPE_ERROR, "%@ Received no remote SPI on SA_INIT", buf, 0xCu);
  }

  v12 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received no remote SPI on SA_INIT", v113, v114, v115, v116, v117, v118, v119, v258);
  [(NEIKEv2IKESA *)v7 setState:v12 error:?];
LABEL_77:
  v120 = 0;
LABEL_99:

  v135 = *MEMORY[0x1E69E9840];
  return v120;
}

- (void)filloutPayloads
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  if (self)
  {
    rawPayloads = self->super._rawPayloads;
  }

  else
  {
    rawPayloads = 0;
  }

  v4 = rawPayloads;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v38;
    v9 = 0x1E7F04000uLL;
    *&v6 = 138412546;
    v36 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        type = [v11 type];
        if (type <= 39)
        {
          if (type == 33)
          {
            v24 = *(v9 + 2600);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (!self)
              {
                goto LABEL_48;
              }

              v19 = 96;
              goto LABEL_27;
            }

            v27 = ne_log_obj();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
LABEL_33:
              copyShortDescription = [(NEIKEv2Packet *)self copyShortDescription];
              typeDescription = [v11 typeDescription];
              *buf = v36;
              v45 = copyShortDescription;
              v46 = 2112;
              v47 = typeDescription;
              _os_log_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEFAULT, "%@ ignoring unexpected %@ payload", buf, 0x16u);

              v9 = 0x1E7F04000;
            }

LABEL_34:

            goto LABEL_48;
          }

          if (type == 34)
          {
            if (!self)
            {
              goto LABEL_48;
            }

            v19 = 104;
LABEL_27:
            objc_setProperty_atomic(self, v13, v11, v19);
            goto LABEL_48;
          }
        }

        else
        {
          switch(type)
          {
            case '(':
              if (!self)
              {
                goto LABEL_48;
              }

              v19 = 112;
              goto LABEL_27;
            case ')':
              v15 = v11;
              if (self && objc_getProperty(self, v20, 64, 1))
              {
                v23 = [objc_getProperty(self v21];
                goto LABEL_36;
              }

              v43 = v15;
              v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
              if (self)
              {
LABEL_36:
                objc_setProperty_atomic(self, v22, v23, 64);
              }

              if (v15 && self && v15[4] == 16390)
              {
                objc_setProperty_atomic(self, v30, v15, 88);
              }

              goto LABEL_47;
            case '+':
              v15 = v11;
              if (self && objc_getProperty(self, v14, 120, 1))
              {
                v18 = [objc_getProperty(self v16];
LABEL_42:
                v31 = 120;
                selfCopy2 = self;
                v33 = v18;
                goto LABEL_45;
              }

              v42 = v15;
              v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
              if (self)
              {
                goto LABEL_42;
              }

              goto LABEL_46;
          }
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }

        v15 = v11;
        if (self && objc_getProperty(self, v25, 56, 1))
        {
          v18 = [objc_getProperty(self v26];
LABEL_44:
          selfCopy2 = self;
          v33 = v18;
          v31 = 56;
LABEL_45:
          objc_setProperty_atomic(selfCopy2, v17, v33, v31);
          goto LABEL_46;
        }

        v41 = v15;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
        if (self)
        {
          goto LABEL_44;
        }

LABEL_46:

LABEL_47:
LABEL_48:
        ++v10;
      }

      while (v7 != v10);
      v34 = [(NSArray *)v4 countByEnumeratingWithState:&v37 objects:v48 count:16];
      v7 = v34;
    }

    while (v34);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)gatherPayloads
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self)
  {
    if (objc_getProperty(self, v3, 88, 1))
    {
      [v11 addObject:{objc_getProperty(self, v4, 88, 1)}];
    }

    if (objc_getProperty(self, v4, 96, 1))
    {
      [v11 addObject:{objc_getProperty(self, v5, 96, 1)}];
    }

    if (objc_getProperty(self, v5, 104, 1))
    {
      [v11 addObject:{objc_getProperty(self, v6, 104, 1)}];
    }

    if (objc_getProperty(self, v6, 112, 1))
    {
      [v11 addObject:{objc_getProperty(self, v7, 112, 1)}];
    }

    [v11 addObjectsFromArray:{objc_getProperty(self, v7, 120, 1)}];
    [v11 addObjectsFromArray:{objc_getProperty(self, v8, 64, 1)}];
    Property = objc_getProperty(self, v9, 56, 1);
  }

  else
  {
    [v11 addObjectsFromArray:0];
    [v11 addObjectsFromArray:0];
    Property = 0;
  }

  [v11 addObjectsFromArray:Property];
  [(NEIKEv2Packet *)self setRawPayloads:v11];
}

@end