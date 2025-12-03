@interface NEIKEv2IKEAuthPacket
+ (NSObject)createIKEAuthForInitiatorIKESA:(void *)a childSA:;
+ (id)createIKEAuthResponse:(unint64_t)response refusalError:;
- (uint64_t)validateAuthInitialAsInitiator:(int)initiator beforeEAP:;
- (uint64_t)validateAuthPayloadAsInitiator:(char)initiator beforeEAP:;
- (void)filloutPayloads;
- (void)gatherPayloads;
@end

@implementation NEIKEv2IKEAuthPacket

+ (NSObject)createIKEAuthForInitiatorIKESA:(void *)a childSA:
{
  v296 = *MEMORY[0x1E69E9840];
  v4 = a2;
  aCopy = a;
  objc_opt_self();
  if (!v4)
  {
    selfCopy6 = ne_log_obj();
    if (!os_log_type_enabled(selfCopy6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_153;
    }

    buf = 136315138;
    v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
    v56 = "%s called with null ikeSA";
    goto LABEL_31;
  }

  if (!aCopy && (*(v4 + 23) & 1) == 0)
  {
    selfCopy6 = ne_log_obj();
    if (!os_log_type_enabled(selfCopy6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_153;
    }

    buf = 136315138;
    v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
    v56 = "%s called with null childSA";
    goto LABEL_31;
  }

  v7 = objc_getProperty(v4, v6, 96, 1);

  if (!v7)
  {
    selfCopy6 = ne_log_obj();
    if (!os_log_type_enabled(selfCopy6, OS_LOG_TYPE_FAULT))
    {
LABEL_153:
      v129 = 0;
      goto LABEL_154;
    }

    buf = 136315138;
    v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
    v56 = "%s called with null ikeSA.chosenProposal";
LABEL_31:
    _os_log_fault_impl(&dword_1BA83C000, selfCopy6, OS_LOG_TYPE_FAULT, v56, &buf, 0xCu);
    goto LABEL_153;
  }

  initOutbound = [(NEIKEv2Packet *)[NEIKEv2IKEAuthPacket alloc] initOutbound];
  if (!initOutbound)
  {
    v57 = ne_log_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_FAULT, "[[NEIKEv2IKEAuthPacket alloc] initOutbound:] failed", &buf, 2u);
    }

    selfCopy6 = 0;
    goto LABEL_153;
  }

  selfCopy6 = initOutbound;
  v10 = objc_alloc_init(NEIKEv2InitiatorIdentifierPayload);
  objc_setProperty_atomic(selfCopy6, v11, v10, 96);

  localIdentifier = [(NEIKEv2IKESA *)v4 localIdentifier];
  v15 = objc_getProperty(selfCopy6, v14, 96, 1);
  v17 = v15;
  if (v15)
  {
    objc_setProperty_atomic(v15, v16, localIdentifier, 32);
  }

  v19 = objc_getProperty(selfCopy6, v18, 96, 1);
  v20 = v19;
  if (v19)
  {
    objc_storeWeak((v19 + 40), v4);
  }

  v22 = objc_getProperty(selfCopy6, v21, 96, 1);
  isValid = [(NEIKEv2Payload *)v22 isValid];

  if ((isValid & 1) == 0)
  {
    v58 = ne_log_obj();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_152;
    }

    buf = 136315138;
    v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
    v59 = "%s called with null packet.idi.isValid";
    goto LABEL_150;
  }

  v25 = objc_getProperty(selfCopy6, v24, 96, 1);
  objc_storeStrong(v4 + 41, v25);

  remoteIdentifier = [(NEIKEv2IKESA *)v4 remoteIdentifier];

  if (remoteIdentifier)
  {
    v29 = objc_alloc_init(NEIKEv2ResponderIdentifierPayload);
    objc_setProperty_atomic(selfCopy6, v30, v29, 104);

    remoteIdentifier2 = [(NEIKEv2IKESA *)v4 remoteIdentifier];
    v34 = objc_getProperty(selfCopy6, v33, 104, 1);
    v36 = v34;
    if (v34)
    {
      objc_setProperty_atomic(v34, v35, remoteIdentifier2, 32);
    }

    v38 = objc_getProperty(selfCopy6, v37, 104, 1);
    isValid2 = [(NEIKEv2Payload *)v38 isValid];

    if ((isValid2 & 1) == 0)
    {
      v58 = ne_log_obj();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_152;
      }

      buf = 136315138;
      v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
      v59 = "%s called with null packet.idr.isValid";
      goto LABEL_150;
    }
  }

  v268 = v4;
  self = selfCopy6;
  if ((*(v4 + 23) & 1) == 0)
  {
    v60 = objc_alloc_init(NEIKEv2ChildSAPayload);
    objc_setProperty_atomic(selfCopy6, v61, v60, 88);

    configProposalsWithoutKEM = [(NEIKEv2ChildSA *)aCopy configProposalsWithoutKEM];
    v65 = objc_getProperty(selfCopy6, v64, 88, 1);
    v67 = v65;
    if (v65)
    {
      objc_setProperty_atomic(v65, v66, configProposalsWithoutKEM, 32);
    }

    v69 = objc_getProperty(selfCopy6, v68, 88, 1);
    isValid3 = [(NEIKEv2Payload *)v69 isValid];

    if (isValid3)
    {
      v71 = objc_alloc_init(NEIKEv2InitiatorTrafficSelectorPayload);
      objc_setProperty_atomic(selfCopy6, v72, v71, 160);

      configuredInitiatorTrafficSelectors = [(NEIKEv2ChildSA *)aCopy configuredInitiatorTrafficSelectors];
      v76 = objc_getProperty(selfCopy6, v75, 160, 1);
      v78 = v76;
      if (v76)
      {
        objc_setProperty_atomic(v76, v77, configuredInitiatorTrafficSelectors, 32);
      }

      v80 = objc_getProperty(selfCopy6, v79, 160, 1);
      isValid4 = [(NEIKEv2Payload *)v80 isValid];

      if (isValid4)
      {
        v82 = objc_alloc_init(NEIKEv2ResponderTrafficSelectorPayload);
        objc_setProperty_atomic(selfCopy6, v83, v82, 168);

        configuredResponderTrafficSelectors = [(NEIKEv2ChildSA *)aCopy configuredResponderTrafficSelectors];
        v87 = objc_getProperty(selfCopy6, v86, 168, 1);
        v89 = v87;
        if (v87)
        {
          objc_setProperty_atomic(v87, v88, configuredResponderTrafficSelectors, 32);
        }

        v91 = objc_getProperty(selfCopy6, v90, 168, 1);
        isValid5 = [(NEIKEv2Payload *)v91 isValid];

        if (isValid5)
        {
          if (aCopy)
          {
            Property = objc_getProperty(aCopy, v93, 48, 1);
          }

          else
          {
            Property = 0;
          }

          v95 = Property;
          mode = [v95 mode];

          if (mode == 1 && ![(NEIKEv2Packet *)selfCopy6 addNotification:0 data:?])
          {
            v58 = ne_log_obj();
            if (!os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_152;
            }

            LOWORD(buf) = 0;
            v59 = "[packet addNotification:NEIKEv2NotifyTypeUseTransportMode] failed";
            goto LABEL_185;
          }

          if (![(NEIKEv2Packet *)selfCopy6 addNotification:0 data:?])
          {
            v58 = ne_log_obj();
            if (!os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_152;
            }

            LOWORD(buf) = 0;
            v59 = "[packet addNotification:NEIKEv2NotifyTypeESPTFCPaddingNotSupported] failed";
            goto LABEL_185;
          }

          if (![(NEIKEv2Packet *)selfCopy6 addNotification:0 data:?])
          {
            v58 = ne_log_obj();
            if (!os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_152;
            }

            LOWORD(buf) = 0;
            v59 = "[packet addNotification:NEIKEv2NotifyTypeNonFirstFragmentsAlso] failed";
            goto LABEL_185;
          }

          if (aCopy)
          {
            v98 = objc_getProperty(aCopy, v97, 48, 1);
          }

          else
          {
            v98 = 0;
          }

          v99 = v98;
          sequencePerTrafficClass = [v99 sequencePerTrafficClass];

          if (sequencePerTrafficClass)
          {
            v102 = +[NEIKEv2NotifyPayload createNotifyPayloadType:];
            v103 = [(NEIKEv2Packet *)selfCopy6 addNotifyPayload:v102];

            if (!v103)
            {
              v58 = ne_log_obj();
              if (!os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_152;
              }

              LOWORD(buf) = 0;
              v59 = "[packet addNotifyPayload:notifyPayload] failed";
              goto LABEL_185;
            }
          }

          v104 = objc_getProperty(v4, v101, 88, 1);
          configurationRequest = [v104 configurationRequest];

          if (!configurationRequest)
          {
            goto LABEL_77;
          }

          v106 = aCopy;
          v107 = objc_alloc_init(NEIKEv2ConfigPayload);
          objc_setProperty_atomic(selfCopy6, v108, v107, 152);

          v110 = objc_getProperty(v4, v109, 88, 1);
          configurationRequest2 = [v110 configurationRequest];
          v113 = objc_getProperty(selfCopy6, v112, 152, 1);
          v115 = v113;
          if (v113)
          {
            objc_setProperty_atomic(v113, v114, configurationRequest2, 32);
          }

          v117 = objc_getProperty(selfCopy6, v116, 152, 1);
          isValid6 = [(NEIKEv2Payload *)v117 isValid];

          aCopy = v106;
          if (isValid6)
          {
            goto LABEL_77;
          }

          v58 = ne_log_obj();
          if (!os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_152;
          }

          buf = 136315138;
          v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
          v59 = "%s called with null packet.config.isValid";
        }

        else
        {
          v58 = ne_log_obj();
          if (!os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_152;
          }

          buf = 136315138;
          v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
          v59 = "%s called with null packet.tsr.isValid";
        }
      }

      else
      {
        v58 = ne_log_obj();
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_152;
        }

        buf = 136315138;
        v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
        v59 = "%s called with null packet.tsi.isValid";
      }
    }

    else
    {
      v58 = ne_log_obj();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_152;
      }

      buf = 136315138;
      v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
      v59 = "%s called with null packet.sa.isValid";
    }

LABEL_150:
    v223 = v58;
    v224 = 12;
LABEL_151:
    _os_log_fault_impl(&dword_1BA83C000, v223, OS_LOG_TYPE_FAULT, v59, &buf, v224);
    goto LABEL_152;
  }

  v40 = objc_getProperty(v4, v28, 88, 1);
  configurationRequest3 = [v40 configurationRequest];

  if (!configurationRequest3)
  {
    goto LABEL_77;
  }

  v43 = aCopy;
  v44 = objc_getProperty(v4, v42, 88, 1);
  configurationRequest4 = [v44 configurationRequest];
  if (!configurationRequest4)
  {

    v55 = 0;
LABEL_76:

    aCopy = v43;
LABEL_77:
    v130 = objc_getProperty(v4, v42, 88, 1);
    initialContactDisabled = [v130 initialContactDisabled];

    if ((initialContactDisabled & 1) != 0 || [(NEIKEv2Packet *)selfCopy6 addNotification:0 data:?])
    {
      v133 = objc_getProperty(v4, v132, 88, 1);
      negotiateMOBIKE = [v133 negotiateMOBIKE];

      if (!negotiateMOBIKE || [(NEIKEv2Packet *)selfCopy6 addNotification:0 data:?])
      {
        v267 = aCopy;
        remoteAuthentication = [(NEIKEv2IKESA *)v4 remoteAuthentication];
        if ([remoteAuthentication method])
        {
          if ([remoteAuthentication isSignature])
          {
            v139 = objc_getProperty(v4, v138, 88, 1);
            if (!v139 || (v140 = v139, v141 = [v139 remotePublicKeyRef], v140, !v141))
            {
              copyRemoteCertificateAuthorityHashData = [(NEIKEv2IKESA *)v4 copyRemoteCertificateAuthorityHashData];
              if (copyRemoteCertificateAuthorityHashData)
              {
                v143 = objc_alloc_init(NEIKEv2CertificateRequestPayload);
                if (!v143)
                {
                  v266 = ne_log_obj();
                  if (os_log_type_enabled(v266, OS_LOG_TYPE_FAULT))
                  {
                    buf = 136315138;
                    v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
                    _os_log_fault_impl(&dword_1BA83C000, v266, OS_LOG_TYPE_FAULT, "%s called with null certReq", &buf, 0xCu);
                  }

                  goto LABEL_206;
                }

                v145 = v143;
                objc_setProperty_atomic(v143, v144, copyRemoteCertificateAuthorityHashData, 40);
                v145->_encoding = 4;
                v293 = v145;
                v146 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v293 count:1];
                objc_setProperty_atomic(selfCopy6, v147, v146, 120);
              }
            }
          }

          if ([remoteAuthentication isSecurePassword])
          {
            v149 = [[NEIKEv2GSPM alloc] initWithIKESA:v4];
            if (v149)
            {
              ppkID = v149;
              v151 = objc_alloc_init(NEIKEv2GSPMPayload);
              objc_setProperty_atomic(selfCopy6, v152, v151, 144);

              v153 = ppkID->super._payloadSubHeader;
              v155 = objc_getProperty(selfCopy6, v154, 144, 1);
              [(NEIKEv2GSPMPayload *)v155 setGspmData:v153];

              objc_setProperty_atomic(v4, v156, ppkID, 464);
LABEL_92:

LABEL_102:
              v281 = 0u;
              v282 = 0u;
              v279 = 0u;
              v280 = 0u;
              v165 = objc_getProperty(v4, v157, 88, 1);
              customIKEAuthPrivateNotifies = [v165 customIKEAuthPrivateNotifies];

              v167 = [customIKEAuthPrivateNotifies countByEnumeratingWithState:&v279 objects:v291 count:16];
              if (v167)
              {
                v168 = v167;
                v169 = *v280;
                while (2)
                {
                  v170 = 0;
                  do
                  {
                    if (*v280 != v169)
                    {
                      objc_enumerationMutation(customIKEAuthPrivateNotifies);
                    }

                    v171 = *(*(&v279 + 1) + 8 * v170);
                    v172 = objc_alloc_init(NEIKEv2NotifyPayload);
                    notifyStatus = [v171 notifyStatus];
                    if (v172)
                    {
                      v172->_notifyType = notifyStatus;
                      notifyData = [v171 notifyData];
                      objc_setProperty_atomic(v172, v175, notifyData, 40);
                    }

                    else
                    {
                      notifyData = [v171 notifyData];
                    }

                    if (![(NEIKEv2Packet *)self addNotifyPayload:v172])
                    {
                      v222 = ne_log_obj();
                      v4 = v268;
                      if (os_log_type_enabled(v222, OS_LOG_TYPE_FAULT))
                      {
                        LOWORD(buf) = 0;
                        _os_log_fault_impl(&dword_1BA83C000, v222, OS_LOG_TYPE_FAULT, "[packet addNotifyPayload:notifyPayload] failed", &buf, 2u);
                      }

                      v129 = 0;
                      aCopy = v267;
                      goto LABEL_147;
                    }

                    ++v170;
                    v4 = v268;
                  }

                  while (v168 != v170);
                  v176 = [customIKEAuthPrivateNotifies countByEnumeratingWithState:&v279 objects:v291 count:16];
                  v168 = v176;
                  if (v176)
                  {
                    continue;
                  }

                  break;
                }
              }

              v277 = 0u;
              v278 = 0u;
              v275 = 0u;
              v276 = 0u;
              v178 = objc_getProperty(v4, v177, 88, 1);
              customIKEAuthVendorPayloads = [v178 customIKEAuthVendorPayloads];

              v180 = [customIKEAuthVendorPayloads countByEnumeratingWithState:&v275 objects:v290 count:16];
              selfCopy6 = self;
              if (v180)
              {
                v181 = v180;
                v182 = *v276;
                do
                {
                  for (i = 0; i != v181; ++i)
                  {
                    if (*v276 != v182)
                    {
                      objc_enumerationMutation(customIKEAuthVendorPayloads);
                    }

                    v184 = *(*(&v275 + 1) + 8 * i);
                    v185 = objc_alloc_init(NEIKEv2VendorIDPayload);
                    vendorData = [v184 vendorData];
                    if (v185)
                    {
                      objc_setProperty_atomic(v185, v186, vendorData, 32);
                    }

                    v189 = objc_getProperty(selfCopy6, v188, 176, 1);

                    if (v189)
                    {
                      v191 = objc_getProperty(selfCopy6, v190, 176, 1);
                      v192 = [v191 arrayByAddingObject:v185];
                      objc_setProperty_atomic(self, v193, v192, 176);

                      selfCopy6 = self;
                    }

                    else
                    {
                      v289 = v185;
                      v191 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v289 count:1];
                      objc_setProperty_atomic(selfCopy6, v194, v191, 176);
                    }
                  }

                  v181 = [customIKEAuthVendorPayloads countByEnumeratingWithState:&v275 objects:v290 count:16];
                }

                while (v181);
              }

              v273 = 0u;
              v274 = 0u;
              v271 = 0u;
              v272 = 0u;
              v196 = objc_getProperty(v268, v195, 88, 1);
              customIKEAuthPayloads = [v196 customIKEAuthPayloads];

              v198 = [customIKEAuthPayloads countByEnumeratingWithState:&v271 objects:v288 count:16];
              if (v198)
              {
                v199 = v198;
                v200 = *v272;
                do
                {
                  v201 = 0;
                  do
                  {
                    if (*v272 != v200)
                    {
                      objc_enumerationMutation(customIKEAuthPayloads);
                    }

                    v202 = *(*(&v271 + 1) + 8 * v201);
                    v203 = objc_alloc_init(NEIKEv2CustomPayload);
                    customType = [v202 customType];
                    if (v203)
                    {
                      v203->_customType = customType;
                      customData = [v202 customData];
                      objc_setProperty_atomic(v203, v206, customData, 40);
                    }

                    else
                    {
                      customData = [v202 customData];
                    }

                    v208 = objc_getProperty(selfCopy6, v207, 56, 1);

                    if (v208)
                    {
                      v210 = objc_getProperty(selfCopy6, v209, 56, 1);
                      v211 = [v210 arrayByAddingObject:v203];
                      objc_setProperty_atomic(self, v212, v211, 56);

                      selfCopy6 = self;
                    }

                    else
                    {
                      v287 = v203;
                      v210 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v287 count:1];
                      objc_setProperty_atomic(selfCopy6, v213, v210, 56);
                    }

                    ++v201;
                  }

                  while (v199 != v201);
                  v214 = [customIKEAuthPayloads countByEnumeratingWithState:&v271 objects:v288 count:16];
                  v199 = v214;
                }

                while (v214);
              }

              v4 = v268;
              v216 = objc_getProperty(v268, v215, 88, 1);
              pduSessionID = [v216 pduSessionID];

              if (!pduSessionID)
              {
                goto LABEL_143;
              }

              v219 = objc_getProperty(v268, v218, 88, 1);
              pduSessionID2 = [v219 pduSessionID];
              unsignedCharValue = [pduSessionID2 unsignedCharValue];

              LOBYTE(v283) = unsignedCharValue;
              v270 = 1;
              ppkID = objc_alloc_init(MEMORY[0x1E695DF88]);
              [(NEIKEv2CertificatePayload *)ppkID appendBytes:&v270 length:1];
              [(NEIKEv2CertificatePayload *)ppkID appendBytes:&v283 length:1];
              if ([(NEIKEv2Packet *)selfCopy6 addNotification:ppkID data:?])
              {

LABEL_143:
                v129 = selfCopy6;
LABEL_199:
                aCopy = v267;
LABEL_200:

                goto LABEL_154;
              }

              v237 = ne_log_obj();
              if (!os_log_type_enabled(v237, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_197;
              }

              LOWORD(buf) = 0;
              v256 = "[packet addNotification:NEIKEv2NotifyTypeMOBIKESupported] failed";
              v257 = v237;
              v258 = 2;
LABEL_177:
              _os_log_fault_impl(&dword_1BA83C000, v257, OS_LOG_TYPE_FAULT, v256, &buf, v258);
LABEL_197:

              goto LABEL_198;
            }

            copyRemoteCertificateAuthorityHashData = ne_log_obj();
            if (!os_log_type_enabled(copyRemoteCertificateAuthorityHashData, OS_LOG_TYPE_FAULT))
            {
LABEL_206:

              v129 = 0;
              aCopy = v267;
LABEL_147:
              selfCopy6 = self;
              goto LABEL_200;
            }

            LOWORD(buf) = 0;
            v263 = "[NEIKEv2GSPM initWithIKESA:] failed";
            v264 = copyRemoteCertificateAuthorityHashData;
            v265 = 2;
LABEL_213:
            _os_log_fault_impl(&dword_1BA83C000, v264, OS_LOG_TYPE_FAULT, v263, &buf, v265);
            goto LABEL_206;
          }

          v163 = objc_getProperty(v4, v148, 96, 1);
          hasEAPMethods = [(NEIKEv2IKESAProposal *)v163 hasEAPMethods];

          if (hasEAPMethods)
          {
            goto LABEL_102;
          }

          v227 = [(NEIKEv2IKESA *)v4 copyAuthenticationPayloadUsingPrimeKey:?];
          objc_setProperty_atomic(selfCopy6, v228, v227, 128);

          v230 = objc_getProperty(selfCopy6, v229, 128, 1);
          isValid7 = [(NEIKEv2Payload *)v230 isValid];

          if (isValid7)
          {
            if ((v4[3] & 1) == 0)
            {
              goto LABEL_166;
            }

            v233 = objc_getProperty(v4, v232, 88, 1);
            ppkIDType = [v233 ppkIDType];

            LOBYTE(v283) = ppkIDType;
            if (ppkIDType)
            {
              v236 = objc_getProperty(v4, v235, 88, 1);
              ppkID = [v236 ppkID];

              if (v283 != 2 || ppkID)
              {
                v237 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{-[NEIKEv2CertificatePayload length](ppkID, "length") + 1}];
                [v237 appendBytes:&v283 length:1];
                [v237 appendData:ppkID];
                if (![(NEIKEv2Packet *)selfCopy6 addNotification:v237 data:?])
                {
                  v241 = ne_log_obj();
                  if (os_log_type_enabled(v241, OS_LOG_TYPE_FAULT))
                  {
                    LOWORD(buf) = 0;
                    _os_log_fault_impl(&dword_1BA83C000, v241, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypePPKIdentity] failed", &buf, 2u);
                  }

                  goto LABEL_196;
                }

                v239 = objc_getProperty(v4, v238, 88, 1);
                ppkMandatory = [v239 ppkMandatory];

                if (ppkMandatory)
                {
LABEL_165:

                  v4 = v268;
LABEL_166:
                  ppkID = [(NEIKEv2IKESA *)v4 authenticationProtocol];
                  if ([(NEIKEv2CertificatePayload *)ppkID isSignature])
                  {
                    v244 = objc_getProperty(v4, v243, 88, 1);
                    if (v244)
                    {
                      v245 = v244;
                      localPrivateKeyRef = [v244 localPrivateKeyRef];

                      if (localPrivateKeyRef)
                      {
                        goto LABEL_102;
                      }
                    }

                    else
                    {
                    }

                    ppkID = objc_alloc_init(NEIKEv2CertificatePayload);
                    copyLocalCertificateData = [(NEIKEv2IKESA *)v4 copyLocalCertificateData];
                    v250 = copyLocalCertificateData;
                    if (ppkID)
                    {
                      objc_setProperty_atomic(ppkID, v249, copyLocalCertificateData, 40);

                      ppkID->_encoding = 4;
                      v252 = objc_getProperty(ppkID, v251, 40, 1);
                    }

                    else
                    {

                      v252 = 0;
                    }

                    v253 = v252;

                    if (!v253)
                    {
                      v237 = ne_log_obj();
                      if (!os_log_type_enabled(v237, OS_LOG_TYPE_FAULT))
                      {
                        goto LABEL_197;
                      }

                      buf = 136315138;
                      v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
                      v256 = "%s called with null cert.certificateData";
                      v257 = v237;
                      v258 = 12;
                      goto LABEL_177;
                    }

                    v292 = ppkID;
                    v254 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v292 count:1];
                    objc_setProperty_atomic(selfCopy6, v255, v254, 112);
                  }

                  goto LABEL_92;
                }

                v241 = [(NEIKEv2IKESA *)v268 copyAuthenticationPayloadUsingPrimeKey:?];
                copyFullAuthenticationData = [(NEIKEv2AuthPayload *)v241 copyFullAuthenticationData];
                if (copyFullAuthenticationData)
                {
                  if ([(NEIKEv2Packet *)selfCopy6 addNotification:copyFullAuthenticationData data:?])
                  {

                    goto LABEL_165;
                  }

                  v259 = ne_log_obj();
                  if (!os_log_type_enabled(v259, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_195;
                  }

                  LOWORD(buf) = 0;
                  v260 = "[packet addNotification:NEIKEv2NotifyTypeNoPPKAuth] failed";
                  v261 = v259;
                  v262 = 2;
                }

                else
                {
                  v259 = ne_log_obj();
                  if (!os_log_type_enabled(v259, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_195;
                  }

                  buf = 136315138;
                  v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
                  v260 = "%s called with null authenticationData";
                  v261 = v259;
                  v262 = 12;
                }

                _os_log_fault_impl(&dword_1BA83C000, v261, OS_LOG_TYPE_FAULT, v260, &buf, v262);
LABEL_195:

                v4 = v268;
                selfCopy6 = self;
LABEL_196:

                goto LABEL_197;
              }

              copyRemoteCertificateAuthorityHashData = ne_log_obj();
              if (!os_log_type_enabled(copyRemoteCertificateAuthorityHashData, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_206;
              }

              buf = 136315138;
              v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
              v263 = "%s called with null ppkID";
            }

            else
            {
              copyRemoteCertificateAuthorityHashData = ne_log_obj();
              if (!os_log_type_enabled(copyRemoteCertificateAuthorityHashData, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_206;
              }

              buf = 136315138;
              v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
              v263 = "%s called with null ppkIDType";
            }

            v264 = copyRemoteCertificateAuthorityHashData;
            v265 = 12;
            goto LABEL_213;
          }

          ppkID = ne_log_obj();
          if (os_log_type_enabled(&ppkID->super.super, OS_LOG_TYPE_FAULT))
          {
            buf = 136315138;
            v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
            v160 = "%s called with null packet.auth.isValid";
            p_super = &ppkID->super.super;
            v162 = 12;
            goto LABEL_180;
          }
        }

        else
        {
          v158 = objc_getProperty(v4, v137, 96, 1);
          hasEAPMethods2 = [(NEIKEv2IKESAProposal *)v158 hasEAPMethods];

          if (!hasEAPMethods2 || [(NEIKEv2Packet *)selfCopy6 addNotification:0 data:?])
          {
            goto LABEL_102;
          }

          ppkID = ne_log_obj();
          if (os_log_type_enabled(&ppkID->super.super, OS_LOG_TYPE_FAULT))
          {
            LOWORD(buf) = 0;
            v160 = "[packet addNotification:NEIKEv2NotifyTypeEAPOnlyAuthentication] failed";
            p_super = &ppkID->super.super;
            v162 = 2;
LABEL_180:
            _os_log_fault_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_FAULT, v160, &buf, v162);
          }
        }

LABEL_198:

        v129 = 0;
        goto LABEL_199;
      }

      v58 = ne_log_obj();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_152;
      }

      LOWORD(buf) = 0;
      v59 = "[packet addNotification:NEIKEv2NotifyTypeMOBIKESupported] failed";
      goto LABEL_185;
    }

    v58 = ne_log_obj();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      v59 = "[packet addNotification:NEIKEv2NotifyTypeInitialContact] failed";
LABEL_185:
      v223 = v58;
      v224 = 2;
      goto LABEL_151;
    }

LABEL_152:

    goto LABEL_153;
  }

  v46 = configurationRequest4;
  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v283 = 0u;
  v284 = 0u;
  v285 = 0u;
  v286 = 0u;
  v49 = objc_getProperty(v46, v48, 16, 1);
  v50 = [v49 countByEnumeratingWithState:&v283 objects:&buf count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v284;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v284 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v283 + 1) + 8 * j);
        if ([v54 validForChildlessSA])
        {
          [v47 addObject:v54];
        }
      }

      v51 = [v49 countByEnumeratingWithState:&v283 objects:&buf count:16];
    }

    while (v51);
  }

  if ([v47 count])
  {
    v55 = [[NEIKEv2ConfigurationMessage alloc] initWithWithAttributes:v47];
  }

  else
  {
    v55 = 0;
  }

  v4 = v268;
  selfCopy6 = self;

  if (!v55)
  {
    goto LABEL_76;
  }

  v119 = objc_alloc_init(NEIKEv2ConfigPayload);
  objc_setProperty_atomic(self, v120, v119, 152);

  v122 = objc_getProperty(self, v121, 152, 1);
  v124 = v122;
  if (v122)
  {
    objc_setProperty_atomic(v122, v123, v55, 32);
  }

  v126 = objc_getProperty(self, v125, 152, 1);
  isValid8 = [(NEIKEv2Payload *)v126 isValid];

  if (isValid8)
  {
    goto LABEL_76;
  }

  v128 = ne_log_obj();
  if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
  {
    buf = 136315138;
    v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
    _os_log_fault_impl(&dword_1BA83C000, v128, OS_LOG_TYPE_FAULT, "%s called with null packet.config.isValid", &buf, 0xCu);
  }

  v129 = 0;
  aCopy = v43;
LABEL_154:

  v225 = *MEMORY[0x1E69E9840];
  return v129;
}

- (uint64_t)validateAuthPayloadAsInitiator:(char)initiator beforeEAP:
{
  v261 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = objc_getProperty(self, v6, 128, 1);

  if (!v7)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription = [(NEIKEv2Packet *)self copyShortDescription];
      *buf = 138412290;
      v256 = copyShortDescription;
      _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "%@ Authentication payload missing from IKE_AUTH", buf, 0xCu);
    }

    v29 = @"Authentication payload missing from IKE_AUTH";
    goto LABEL_22;
  }

  v9 = objc_getProperty(self, v8, 128, 1);
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (!v12)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription2 = [(NEIKEv2Packet *)self copyShortDescription];
      *buf = 138412290;
      v256 = copyShortDescription2;
      _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "%@ Authentication protocol missing from AUTH payload", buf, 0xCu);
    }

    v29 = @"Authentication protocol missing from AUTH payload";
    goto LABEL_22;
  }

  v14 = objc_getProperty(self, v13, 128, 1);
  v15 = v14;
  if (v14)
  {
    v16 = *(v14 + 40);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (!v17)
  {
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription3 = [(NEIKEv2Packet *)self copyShortDescription];
      *buf = 138412290;
      v256 = copyShortDescription3;
      _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "%@ Authentication data missing from AUTH payload", buf, 0xCu);
    }

    v29 = @"Authentication data missing from AUTH payload";
    goto LABEL_22;
  }

  if (!v5)
  {
    isa = 0;
    v20 = 1;
LABEL_28:
    v37 = objc_getProperty(self, v18, 128, 1);
    v38 = v37;
    if (v37)
    {
      v39 = *(v37 + 32);
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;

    if (v5)
    {
      Property = objc_getProperty(v5, v41, 456, 1);
    }

    else
    {
      Property = 0;
    }

    v43 = Property;

    if (v43)
    {
      if ([v40 method] == 2)
      {
        if (!v5)
        {
LABEL_140:
          v57 = 0;
LABEL_141:
          v180 = ne_log_obj();
          if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription4 = [(NEIKEv2Packet *)self copyShortDescription];
            *buf = 138412290;
            v256 = copyShortDescription4;
            _os_log_error_impl(&dword_1BA83C000, v180, OS_LOG_TYPE_ERROR, "%@ EAP authentication data could not be verified", buf, 0xCu);
          }

          ErrorAuthentication = NEIKEv2CreateErrorAuthentication(@"EAP authentication data could not be verified", v181, v182, v183, v184, v185, v186, v187, v242);
          [(NEIKEv2IKESA *)v5 setState:ErrorAuthentication error:?];

          goto LABEL_144;
        }

        v46 = objc_getProperty(v5, v45, 456, 1);

        if (v46)
        {
          v48 = objc_getProperty(v5, v47, 96, 1);

          if (v48)
          {
            v50 = [(NEIKEv2IKESA *)v5 createResponderSignedOctetVectorUsingPrimeKey:?];
            if (v50)
            {
              v51 = objc_getProperty(v5, v49, 456, 1);
              sessionKey = [(NEIKEv2EAP *)v51 sessionKey];

              if (sessionKey)
              {
LABEL_44:
                v56 = [(NEIKEv2IKESA *)v5 createAuthenticationDataForSharedSecret:sessionKey octetVector:v50];
                if (v56)
                {
                  v57 = v56;

                  v59 = objc_getProperty(self, v58, 128, 1);
                  v60 = v59;
                  if (v59)
                  {
                    v61 = *(v59 + 40);
                  }

                  else
                  {
                    v61 = 0;
                  }

                  v62 = v61;
                  v63 = [NEIKEv2Crypto validateCalculatedSharedKeyAuthData:v57 remoteAuthData:v62];

                  if (v63)
                  {
                    v64 = ne_log_obj();
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_debug_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_DEBUG, "Peer EAP MAC is valid", buf, 2u);
                    }

                    goto LABEL_99;
                  }

                  goto LABEL_141;
                }

                v145 = ne_log_obj();
                if (os_log_type_enabled(v145, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_1BA83C000, v145, OS_LOG_TYPE_FAULT, "createAuthenticationDataForSharedSecret failed", buf, 2u);
                }

                goto LABEL_138;
              }

              if (isa)
              {
                v54 = 256;
              }

              else
              {
                v54 = 248;
              }

              v55 = objc_getProperty(v5, v53, v54, 1);
              if (v55)
              {
                sessionKey = v55;
                goto LABEL_44;
              }

              sessionKey = ne_log_obj();
              if (!os_log_type_enabled(sessionKey, OS_LOG_TYPE_FAULT))
              {
LABEL_138:

                goto LABEL_139;
              }

              *buf = 0;
              v137 = "skPr failed";
            }

            else
            {
              sessionKey = ne_log_obj();
              if (!os_log_type_enabled(sessionKey, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_138;
              }

              *buf = 0;
              v137 = "createResponderSignedOctetVectorUsingPrimeKey: failed";
            }

            _os_log_fault_impl(&dword_1BA83C000, sessionKey, OS_LOG_TYPE_FAULT, v137, buf, 2u);
            goto LABEL_138;
          }

          v50 = ne_log_obj();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v256 = "[NEIKEv2IKESA(Crypto) createResponderEAPAuthenticationDataUsingPrimeKey:]";
            v115 = "%s called with null self.chosenProposal";
            goto LABEL_85;
          }
        }

        else
        {
          v50 = ne_log_obj();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v256 = "[NEIKEv2IKESA(Crypto) createResponderEAPAuthenticationDataUsingPrimeKey:]";
            v115 = "%s called with null self.eapClient";
LABEL_85:
            _os_log_fault_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_FAULT, v115, buf, 0xCu);
          }
        }

LABEL_139:

        goto LABEL_140;
      }

      v78 = ne_log_obj();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription5 = [(NEIKEv2Packet *)self copyShortDescription];
        *buf = 138412290;
        v256 = copyShortDescription5;
        _os_log_error_impl(&dword_1BA83C000, v78, OS_LOG_TYPE_ERROR, "%@ Authentication method for EAP was not shared key", buf, 0xCu);
      }

      remoteAuthentication3 = NEIKEv2CreateErrorAuthentication(@"Authentication method for EAP was not shared key", v79, v80, v81, v82, v83, v84, v85, v242);
      [(NEIKEv2IKESA *)v5 setState:remoteAuthentication3 error:?];
LABEL_90:

LABEL_144:
      disableRemoteCertificateValidation = 0;
      goto LABEL_145;
    }

    if (v5)
    {
      v66 = objc_getProperty(v5, v44, 464, 1);
    }

    else
    {
      v66 = 0;
    }

    v67 = v66;

    if (v67)
    {
      if ([v40 method] == 12)
      {
        remoteAuthentication5 = [(NEIKEv2IKESA *)v5 createResponderGSPMAuthenticationDataUsingPrimeKey:?];
        if (!remoteAuthentication5)
        {
          goto LABEL_80;
        }

        v71 = objc_getProperty(self, v69, 128, 1);
        v72 = v71;
        v73 = v71 ? *(v71 + 40) : 0;
        v74 = v73;
        v75 = [NEIKEv2Crypto validateCalculatedSharedKeyAuthData:remoteAuthentication5 remoteAuthData:v74];

        if (!v75)
        {
LABEL_80:
          v117 = ne_log_obj();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription6 = [(NEIKEv2Packet *)self copyShortDescription];
            *buf = 138412290;
            v256 = copyShortDescription6;
            _os_log_error_impl(&dword_1BA83C000, v117, OS_LOG_TYPE_ERROR, "%@ GSPM authentication data could not be verified", buf, 0xCu);
          }

          v125 = NEIKEv2CreateErrorAuthentication(@"GSPM authentication data could not be verified", v118, v119, v120, v121, v122, v123, v124, v242);
          [(NEIKEv2IKESA *)v5 setState:v125 error:?];

          goto LABEL_144;
        }

        v76 = ne_log_obj();
        if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
LABEL_98:

          if (!v5)
          {
LABEL_100:
            if ((v20 & 1) == 0)
            {
              if ((isa & 1) == 0)
              {
                disableRemoteCertificateValidation = 1;
                if (v5)
                {
                  BYTE3(v5[2].isa) = 1;
                }

                goto LABEL_145;
              }

              [(NEIKEv2IKESA *)v5 restorePrimeKeys];
            }

            disableRemoteCertificateValidation = 1;
LABEL_145:
            v32 = v40;
            goto LABEL_146;
          }

LABEL_99:
          BYTE2(v5[2].isa) = 1;
          goto LABEL_100;
        }

        *buf = 0;
        v77 = "Peer GSPM MAC is valid";
LABEL_163:
        _os_log_debug_impl(&dword_1BA83C000, v76, OS_LOG_TYPE_DEBUG, v77, buf, 2u);
        goto LABEL_98;
      }

      v105 = ne_log_obj();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription7 = [(NEIKEv2Packet *)self copyShortDescription];
        v195 = objc_getProperty(self, v194, 128, 1);
        *buf = 138412546;
        v256 = copyShortDescription7;
        v257 = 2112;
        v258 = v195;
        _os_log_error_impl(&dword_1BA83C000, v105, OS_LOG_TYPE_ERROR, "%@ Wrong authentication method %@ for GSPM", buf, 0x16u);
      }

      remoteAuthentication3 = objc_getProperty(self, v106, 128, 1);
      v114 = NEIKEv2CreateErrorAuthentication(@"Wrong authentication method %@ for GSPM", v107, v108, v109, v110, v111, v112, v113, remoteAuthentication3);
LABEL_89:
      v135 = v114;
      [(NEIKEv2IKESA *)v5 setState:v114 error:?];

      goto LABEL_90;
    }

    remoteAuthentication = [(NEIKEv2IKESA *)v5 remoteAuthentication];
    v88 = [NEIKEv2Crypto isRemoteAuthenticationPacketProtocol:v40 compatibleWithConfiguredProtocol:remoteAuthentication];

    if ((v88 & 1) == 0)
    {
      v126 = ne_log_obj();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription8 = [(NEIKEv2Packet *)self copyShortDescription];
        remoteAuthentication2 = [(NEIKEv2IKESA *)v5 remoteAuthentication];
        *buf = 138412802;
        v256 = copyShortDescription8;
        v257 = 2112;
        v258 = v40;
        v259 = 2112;
        v260 = remoteAuthentication2;
        _os_log_error_impl(&dword_1BA83C000, v126, OS_LOG_TYPE_ERROR, "%@ Initiator packet authentication method %@ is not compatible with configuration %@", buf, 0x20u);
      }

      remoteAuthentication3 = [(NEIKEv2IKESA *)v5 remoteAuthentication];
      v114 = NEIKEv2CreateErrorAuthentication(@"Packet authentication method %@ is not compatible with configuration %@", v128, v129, v130, v131, v132, v133, v134, v40);
      goto LABEL_89;
    }

    v32 = v40;
    remoteAuthentication4 = [(NEIKEv2IKESA *)v5 remoteAuthentication];
    isNonStandard = [remoteAuthentication4 isNonStandard];

    remoteAuthentication5 = v32;
    if (isNonStandard)
    {
      remoteAuthentication5 = [(NEIKEv2IKESA *)v5 remoteAuthentication];
    }

    if (![remoteAuthentication5 isSignature])
    {
      v139 = objc_getProperty(self, v93, 128, 1);
      v140 = v139;
      if (v139)
      {
        v141 = *(v139 + 40);
      }

      else
      {
        v141 = 0;
      }

      v142 = v141;
      v143 = [(NEIKEv2IKESA *)v5 checkSharedKeyAuthData:v142 usingPrimeKey:(isa & 1)];

      v144 = ne_log_obj();
      v76 = v144;
      if (v143)
      {
        if (!os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_98;
        }

        *buf = 0;
        v77 = "Peer PSK MAC is valid";
        goto LABEL_163;
      }

      if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription9 = [(NEIKEv2Packet *)self copyShortDescription];
        *buf = 138412546;
        v256 = copyShortDescription9;
        v257 = 2112;
        v258 = remoteAuthentication5;
        _os_log_error_impl(&dword_1BA83C000, v76, OS_LOG_TYPE_ERROR, "%@ Initiator failed to validate remote authentication data %@", buf, 0x16u);
      }

      v76 = NEIKEv2CreateErrorAuthentication(@"Failed to validate remote authentication data %@", v147, v148, v149, v150, v151, v152, v153, remoteAuthentication5);
      [(NEIKEv2IKESA *)v5 setState:v76 error:?];
      disableRemoteCertificateValidation = 0;
LABEL_161:

      goto LABEL_146;
    }

    v245 = remoteAuthentication5;
    if (v5)
    {
      v94 = objc_getProperty(v5, v93, 88, 1);
    }

    else
    {
      v94 = 0;
    }

    v95 = v94;
    copyRemoteAuthKey = [(NEIKEv2SessionConfiguration *)v95 copyRemoteAuthKey];

    v243 = v20;
    if (copyRemoteAuthKey)
    {
      goto LABEL_71;
    }

    v154 = objc_getProperty(self, v97, 112, 1);
    v155 = [v154 count];

    if (!v155)
    {
      v196 = ne_log_obj();
      if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription10 = [(NEIKEv2Packet *)self copyShortDescription];
        *buf = 138412290;
        v256 = copyShortDescription10;
        _os_log_error_impl(&dword_1BA83C000, v196, OS_LOG_TYPE_ERROR, "%@ No certificate payload received", buf, 0xCu);
      }

      v76 = NEIKEv2CreateErrorAuthentication(@"No certificate payload received", v197, v198, v199, v200, v201, v202, v203, v242);
      [(NEIKEv2IKESA *)v5 setState:v76 error:?];
      disableRemoteCertificateValidation = 0;
      remoteAuthentication5 = v245;
      goto LABEL_161;
    }

    v249 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v249)
    {
      v252 = 0u;
      v253 = 0u;
      v250 = 0u;
      v251 = 0u;
      obj = objc_getProperty(self, v156, 112, 1);
      v247 = [obj countByEnumeratingWithState:&v250 objects:v254 count:16];
      if (v247)
      {
        v246 = *v251;
        v158 = &OBJC_IVAR___NEFilterFlow__direction;
        while (2)
        {
          v159 = 0;
          do
          {
            if (*v251 != v246)
            {
              objc_enumerationMutation(obj);
            }

            v160 = *(*(&v250 + 1) + 8 * v159);
            v161 = v158;
            if (v160)
            {
              v162 = objc_getProperty(*(*(&v250 + 1) + 8 * v159), v157, v158[549], 1);
            }

            else
            {
              v162 = 0;
            }

            v163 = v162;

            if (!v163)
            {
              v208 = ne_log_obj();
              if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
              {
                copyShortDescription11 = [(NEIKEv2Packet *)self copyShortDescription];
                *buf = 138412290;
                v256 = copyShortDescription11;
                _os_log_error_impl(&dword_1BA83C000, v208, OS_LOG_TYPE_ERROR, "%@ Certificate missing data", buf, 0xCu);
              }

              v216 = NEIKEv2CreateErrorAuthentication(@"Certificate missing data", v209, v210, v211, v212, v213, v214, v215, v242);
              [(NEIKEv2IKESA *)v5 setState:v216 error:?];

              disableRemoteCertificateValidation = 0;
              v178 = obj;
              remoteAuthentication5 = v245;
              goto LABEL_159;
            }

            if (v160)
            {
              v158 = v161;
              v165 = objc_getProperty(v160, v164, v161[549], 1);
            }

            else
            {
              v165 = 0;
              v158 = v161;
            }

            v166 = v165;
            [v249 addObject:v166];

            ++v159;
          }

          while (v247 != v159);
          v167 = [obj countByEnumeratingWithState:&v250 objects:v254 count:16];
          v247 = v167;
          if (v167)
          {
            continue;
          }

          break;
        }
      }

      v168 = [(NEIKEv2IKESA *)v5 checkValidityOfCertificates:v249];
      if (v168)
      {
        copyRemoteAuthKey = v168;

LABEL_71:
        v248 = [(NEIKEv2IKESA *)v5 createRemoteSignedOctetVectorUsingPrimeKey:?];
        v99 = objc_getProperty(self, v98, 128, 1);
        v100 = v99;
        if (v99)
        {
          v101 = *(v99 + 40);
        }

        else
        {
          v101 = 0;
        }

        v102 = v101;
        v76 = v248;
        v103 = [NEIKEv2Crypto validateSignature:v102 signedDataVector:v248 authProtocol:v245 publicKey:copyRemoteAuthKey];

        CFRelease(copyRemoteAuthKey);
        if (v103)
        {
          remoteAuthentication5 = v245;
          v20 = v243;
          goto LABEL_98;
        }

        if (v5)
        {
          v169 = objc_getProperty(v5, v104, 88, 1);
        }

        else
        {
          v169 = 0;
        }

        v170 = v169;
        disableRemoteCertificateValidation = [v170 disableRemoteCertificateValidation];

        if (disableRemoteCertificateValidation)
        {
          v178 = ne_log_obj();
          if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
          {
            copyShortDescription12 = [(NEIKEv2Packet *)self copyShortDescription];
            *buf = 138412290;
            v256 = copyShortDescription12;
            _os_log_impl(&dword_1BA83C000, v178, OS_LOG_TYPE_INFO, "%@ Passing authentication because configuration does not require remote signature validation", buf, 0xCu);
          }

          remoteAuthentication5 = v245;
        }

        else
        {
          remoteAuthentication5 = v245;
          v178 = NEIKEv2CreateErrorAuthentication(@"Authentication data could not be verified %@", v171, v172, v173, v174, v175, v176, v177, v245);
          [(NEIKEv2IKESA *)v5 setState:v178 error:?];
        }

        goto LABEL_160;
      }

      v227 = ne_log_obj();
      if (os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v227, OS_LOG_TYPE_ERROR, "Certificate chain could not be verified", buf, 2u);
      }

      if (v5)
      {
        v229 = objc_getProperty(v5, v228, 88, 1);
      }

      else
      {
        v229 = 0;
      }

      v230 = v229;
      disableRemoteCertificateValidation2 = [v230 disableRemoteCertificateValidation];

      if (disableRemoteCertificateValidation2)
      {
        v178 = ne_log_obj();
        disableRemoteCertificateValidation = 1;
        if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
        {
          copyShortDescription13 = [(NEIKEv2Packet *)self copyShortDescription];
          *buf = 138412290;
          v256 = copyShortDescription13;
          _os_log_impl(&dword_1BA83C000, v178, OS_LOG_TYPE_INFO, "%@ Passing authentication because configuration does not require certificate validation", buf, 0xCu);
        }

LABEL_158:
        remoteAuthentication5 = v245;
LABEL_159:
        v76 = v249;
LABEL_160:

        goto LABEL_161;
      }

      ErrorInternal = NEIKEv2CreateErrorAuthentication(@"Certificate chain could not be verified", v232, v233, v234, v235, v236, v237, v238, v242);
    }

    else
    {
      v217 = ne_log_obj();
      if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v217, OS_LOG_TYPE_FAULT, "[[NSMutableArray alloc] init] failed", buf, 2u);
      }

      ErrorInternal = NEIKEv2CreateErrorInternal(@"[[NSMutableArray alloc] init] failed", v218, v219, v220, v221, v222, v223, v224, v242);
    }

    v178 = ErrorInternal;
    [(NEIKEv2IKESA *)v5 setState:ErrorInternal error:?];
    disableRemoteCertificateValidation = 0;
    goto LABEL_158;
  }

  isa = v5[3].isa;
  v20 = 1;
  if (isa & 1) == 0 || (initiator)
  {
    goto LABEL_28;
  }

  if (([(NEIKEv2Packet *)self hasNotification:?]& 1) != 0)
  {
    v20 = 0;
    isa = 0;
    goto LABEL_28;
  }

  isa = 1;
  v34 = objc_getProperty(v5, v18, 88, 1);
  ppkMandatory = [v34 ppkMandatory];

  if (!ppkMandatory)
  {
    v20 = 0;
    goto LABEL_28;
  }

  v36 = ne_log_obj();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    copyShortDescription14 = [(NEIKEv2Packet *)self copyShortDescription];
    *buf = 138412290;
    v256 = copyShortDescription14;
    _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "%@ No PPK ID notify received with mandatory PPK auth", buf, 0xCu);
  }

  v29 = @"No PPK ID received with mandatory PPK auth";
LABEL_22:
  v32 = NEIKEv2CreateErrorAuthentication(v29, v22, v23, v24, v25, v26, v27, v28, v242);
  [(NEIKEv2IKESA *)v5 setState:v32 error:?];
  disableRemoteCertificateValidation = 0;
LABEL_146:

  v189 = *MEMORY[0x1E69E9840];
  return disableRemoteCertificateValidation;
}

- (uint64_t)validateAuthInitialAsInitiator:(int)initiator beforeEAP:
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = v5;
  if (!v5 || (v5[9] & 1) == 0)
  {
    ErrorPeerInvalidSyntax = ne_log_obj();
    if (!os_log_type_enabled(ErrorPeerInvalidSyntax, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_24;
    }

    *buf = 136315138;
    v68 = "[NEIKEv2IKEAuthPacket(Exchange) validateAuthInitialAsInitiator:beforeEAP:]";
    v30 = "%s called with null ikeSA.isInitiator";
    goto LABEL_20;
  }

  v8 = objc_getProperty(v5, v6, 96, 1);

  if (!v8)
  {
    ErrorPeerInvalidSyntax = ne_log_obj();
    if (!os_log_type_enabled(ErrorPeerInvalidSyntax, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_24;
    }

    *buf = 136315138;
    v68 = "[NEIKEv2IKEAuthPacket(Exchange) validateAuthInitialAsInitiator:beforeEAP:]";
    v30 = "%s called with null ikeSA.chosenProposal";
LABEL_20:
    _os_log_fault_impl(&dword_1BA83C000, ErrorPeerInvalidSyntax, OS_LOG_TYPE_FAULT, v30, buf, 0xCu);
    goto LABEL_24;
  }

  v10 = objc_getProperty(self, v9, 104, 1);
  [(NEIKEv2IKESA *)v7 setResponderIdentifierPayload:v10];

  Property = v7[42];
  v13 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v12, 32, 1);
  }

  v14 = Property;

  if (!v14)
  {
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription = [(NEIKEv2Packet *)self copyShortDescription];
      *buf = 138412290;
      v68 = copyShortDescription;
      _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "%@ Responder ID missing", buf, 0xCu);
    }

    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Responder ID missing", v32, v33, v34, v35, v36, v37, v38, v65);
    [(NEIKEv2IKESA *)v7 setState:ErrorPeerInvalidSyntax error:?];
    goto LABEL_24;
  }

  remoteAuthentication = [(NEIKEv2IKESA *)v7 remoteAuthentication];
  method = [remoteAuthentication method];

  if (!method)
  {
    v29 = 1;
    goto LABEL_26;
  }

  v19 = objc_getProperty(self, v18, 128, 1);
  v20 = v19;
  if (v19)
  {
    v21 = *(v19 + 32);
  }

  else
  {
    v21 = 0;
  }

  ErrorPeerInvalidSyntax = v21;

  [(NEIKEv2IKESA *)v7 setRemoteAuthProtocolUsed:?];
  remoteAuthentication2 = [(NEIKEv2IKESA *)v7 remoteAuthentication];
  isSecurePassword = [remoteAuthentication2 isSecurePassword];

  if (isSecurePassword)
  {
    if (ErrorPeerInvalidSyntax)
    {
      v52 = ne_log_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription2 = [(NEIKEv2Packet *)self copyShortDescription];
        remoteAuthentication3 = [(NEIKEv2IKESA *)v7 remoteAuthentication];
        *buf = 138412802;
        v68 = copyShortDescription2;
        v69 = 2112;
        v70 = ErrorPeerInvalidSyntax;
        v71 = 2112;
        v72 = remoteAuthentication3;
        _os_log_error_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_ERROR, "%@ Initiator packet authentication method %@ is not compatible with GSPM configuration %@", buf, 0x20u);
      }

      remoteAuthentication4 = [(NEIKEv2IKESA *)v7 remoteAuthentication];
      ErrorAuthentication = NEIKEv2CreateErrorAuthentication(@"Initiator packet authentication method %@ is not compatible with GSPM configuration %@", v54, v55, v56, v57, v58, v59, v60, ErrorPeerInvalidSyntax);
      [(NEIKEv2IKESA *)v7 setState:ErrorAuthentication error:?];

      goto LABEL_24;
    }

    v27 = self ? objc_getProperty(self, v26, 144, 1) : 0;
    v28 = v27;

    if (!v28)
    {
      v41 = ne_log_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription3 = [(NEIKEv2Packet *)self copyShortDescription];
        *buf = 138412290;
        v68 = copyShortDescription3;
        _os_log_error_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_ERROR, "%@ Packet missing GSPM payload", buf, 0xCu);
      }

      v49 = NEIKEv2CreateErrorAuthentication(@"Packet missing GSPM payload", v42, v43, v44, v45, v46, v47, v48, v65);
      [(NEIKEv2IKESA *)v7 setState:v49 error:?];

      ErrorPeerInvalidSyntax = 0;
      goto LABEL_24;
    }
  }

  if (initiator && ![(NEIKEv2IKEAuthPacket *)self validateAuthPayloadAsInitiator:v7 beforeEAP:1])
  {
LABEL_24:
    v29 = 0;
    goto LABEL_25;
  }

  v29 = 1;
LABEL_25:

LABEL_26:
  v39 = *MEMORY[0x1E69E9840];
  return v29;
}

+ (id)createIKEAuthResponse:(unint64_t)response refusalError:
{
  v4 = a2;
  objc_opt_self();
  v5 = [(NEIKEv2Packet *)[NEIKEv2IKEAuthPacket alloc] initResponse:v4];

  if (!v5)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
LABEL_7:

      v6 = 0;
      goto LABEL_8;
    }

    v12 = 0;
    v8 = "[[NEIKEv2IKESAInitPacket alloc] initResponse:] failed";
    v9 = &v12;
LABEL_10:
    _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, v8, v9, 2u);
    goto LABEL_7;
  }

  if (![(NEIKEv2Packet *)v5 addNotification:response data:0])
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_7;
    }

    v11 = 0;
    v8 = "[packet addNotification:refusalError] failed";
    v9 = &v11;
    goto LABEL_10;
  }

  v6 = v5;
LABEL_8:

  return v6;
}

- (void)filloutPayloads
{
  v58 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  if (self)
  {
    rawPayloads = self->super._rawPayloads;
  }

  else
  {
    rawPayloads = 0;
  }

  v4 = rawPayloads;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0x1E7F04000uLL;
    v9 = 0x1E695D000uLL;
    v10 = *v45;
    v11 = 0x1E7F04000uLL;
    *&v6 = 138412546;
    v43 = v6;
    while (1)
    {
      v12 = 0;
      while (2)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v44 + 1) + 8 * v12);
        switch([v13 type])
        {
          case '!':
            v15 = *(v11 + 2344);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v31 = ne_log_obj();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                copyShortDescription = [(NEIKEv2Packet *)self copyShortDescription];
                typeDescription = [v13 typeDescription];
                *buf = v43;
                v54 = copyShortDescription;
                v55 = 2112;
                v56 = typeDescription;
                _os_log_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_DEFAULT, "%@ ignoring unexpected %@ payload", buf, 0x16u);

                v8 = 0x1E7F04000;
              }

              goto LABEL_47;
            }

            if (self)
            {
              v16 = 88;
              goto LABEL_44;
            }

            goto LABEL_59;
          case '#':
            if (self)
            {
              v16 = 96;
              goto LABEL_44;
            }

            goto LABEL_59;
          case '$':
            if (self)
            {
              v16 = 104;
              goto LABEL_44;
            }

            goto LABEL_59;
          case '%':
            v18 = v13;
            if (self && objc_getProperty(self, v22, 112, 1))
            {
              v21 = [objc_getProperty(self v23];
            }

            else
            {
              v52 = v18;
              v21 = [*(v9 + 3784) arrayWithObjects:&v52 count:1];
              if (!self)
              {
                goto LABEL_58;
              }
            }

            v36 = 112;
            goto LABEL_56;
          case '&':
            v18 = v13;
            if (self && objc_getProperty(self, v17, 120, 1))
            {
              v21 = [objc_getProperty(self v19];
            }

            else
            {
              v51 = v18;
              v21 = [*(v9 + 3784) arrayWithObjects:&v51 count:1];
              if (!self)
              {
                goto LABEL_58;
              }
            }

            v36 = 120;
            goto LABEL_56;
          case '\'':
            if (!self)
            {
              goto LABEL_59;
            }

            v16 = 128;
            goto LABEL_44;
          case ')':
            v18 = v13;
            if (self && objc_getProperty(self, v27, 64, 1))
            {
              v21 = [objc_getProperty(self v28];
            }

            else
            {
              v50 = v18;
              v21 = [*(v9 + 3784) arrayWithObjects:&v50 count:1];
              if (!self)
              {
                goto LABEL_58;
              }
            }

            selfCopy3 = self;
            v38 = v21;
            v36 = 64;
            goto LABEL_57;
          case '+':
            v18 = v13;
            if (self && objc_getProperty(self, v29, 176, 1))
            {
              v21 = [objc_getProperty(self v30];
            }

            else
            {
              v49 = v18;
              v21 = [*(v9 + 3784) arrayWithObjects:&v49 count:1];
              if (!self)
              {
                goto LABEL_58;
              }
            }

            v36 = 176;
LABEL_56:
            selfCopy3 = self;
            v38 = v21;
            goto LABEL_57;
          case ',':
            if (!self)
            {
              goto LABEL_59;
            }

            v16 = 160;
            goto LABEL_44;
          case '-':
            if (!self)
            {
              goto LABEL_59;
            }

            v16 = 168;
            goto LABEL_44;
          case '/':
            if (!self)
            {
              goto LABEL_59;
            }

            v16 = 152;
            goto LABEL_44;
          case '0':
            if (!self)
            {
              goto LABEL_59;
            }

            v16 = 136;
            goto LABEL_44;
          case '1':
            if (!self)
            {
              goto LABEL_59;
            }

            v16 = 144;
LABEL_44:
            objc_setProperty_atomic(self, v14, v13, v16);
            goto LABEL_59;
          default:
            v24 = *(v8 + 2416);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v13;
              if (self && objc_getProperty(self, v25, 56, 1))
              {
                v21 = [objc_getProperty(self v26];
LABEL_62:
                selfCopy3 = self;
                v38 = v21;
                v36 = 56;
LABEL_57:
                objc_setProperty_atomic(selfCopy3, v20, v38, v36);
              }

              else
              {
                v48 = v18;
                v21 = [*(v9 + 3784) arrayWithObjects:&v48 count:1];
                if (self)
                {
                  goto LABEL_62;
                }
              }

LABEL_58:

              goto LABEL_59;
            }

            v31 = ne_log_obj();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = v9;
              v33 = v8;
              copyShortDescription2 = [(NEIKEv2Packet *)self copyShortDescription];
              typeDescription2 = [v13 typeDescription];
              *buf = v43;
              v54 = copyShortDescription2;
              v55 = 2112;
              v56 = typeDescription2;
              _os_log_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_DEFAULT, "%@ ignoring unexpected %@ payload", buf, 0x16u);

              v8 = v33;
              v9 = v32;
              v11 = 0x1E7F04000;
            }

LABEL_47:

LABEL_59:
            if (v7 != ++v12)
            {
              continue;
            }

            v41 = [(NSArray *)v4 countByEnumeratingWithState:&v44 objects:v57 count:16];
            v7 = v41;
            if (!v41)
            {
              goto LABEL_66;
            }

            break;
        }

        break;
      }
    }
  }

LABEL_66:

  v42 = *MEMORY[0x1E69E9840];
}

- (void)gatherPayloads
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  v21 = [(NEIKEv2IKEAuthPacket *)self mutableCopy];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v3;
  if (selfCopy)
  {
    if (objc_getProperty(selfCopy, v4, 96, 1))
    {
      [v5 addObject:{objc_getProperty(selfCopy, v6, 96, 1)}];
    }

    [v5 addObjectsFromArray:{objc_getProperty(selfCopy, v6, 112, 1)}];
    [(NEIKEv2Packet *)selfCopy addNotification:v21 fromArray:v5 toPayloads:?];
    [(NEIKEv2Packet *)selfCopy addNotification:v21 fromArray:v5 toPayloads:?];
    [v5 addObjectsFromArray:{objc_getProperty(selfCopy, v7, 120, 1)}];
    if (objc_getProperty(selfCopy, v8, 104, 1))
    {
      [v5 addObject:{objc_getProperty(selfCopy, v9, 104, 1)}];
    }

    if (objc_getProperty(selfCopy, v9, 128, 1))
    {
      [v5 addObject:{objc_getProperty(selfCopy, v10, 128, 1)}];
    }

    if (objc_getProperty(selfCopy, v10, 152, 1))
    {
      [v5 addObject:{objc_getProperty(selfCopy, v11, 152, 1)}];
    }
  }

  else
  {
    [v3 addObjectsFromArray:0];
    [(NEIKEv2Packet *)0 addNotification:v21 fromArray:v5 toPayloads:?];
    [(NEIKEv2Packet *)0 addNotification:v21 fromArray:v5 toPayloads:?];
    [v5 addObjectsFromArray:0];
  }

  [(NEIKEv2Packet *)selfCopy addNotification:v21 fromArray:v5 toPayloads:?];
  [(NEIKEv2Packet *)selfCopy addNotification:v21 fromArray:v5 toPayloads:?];
  [(NEIKEv2Packet *)selfCopy addNotification:v21 fromArray:v5 toPayloads:?];
  [(NEIKEv2Packet *)selfCopy addNotification:v21 fromArray:v5 toPayloads:?];
  if (selfCopy)
  {
    if (objc_getProperty(selfCopy, v12, 136, 1))
    {
      [v5 addObject:{objc_getProperty(selfCopy, v13, 136, 1)}];
    }

    if (objc_getProperty(selfCopy, v13, 144, 1))
    {
      [v5 addObject:{objc_getProperty(selfCopy, v14, 144, 1)}];
    }

    if (objc_getProperty(selfCopy, v14, 88, 1))
    {
      [v5 addObject:{objc_getProperty(selfCopy, v15, 88, 1)}];
    }

    if (objc_getProperty(selfCopy, v15, 160, 1))
    {
      [v5 addObject:{objc_getProperty(selfCopy, v16, 160, 1)}];
    }

    if (objc_getProperty(selfCopy, v16, 168, 1))
    {
      [v5 addObject:{objc_getProperty(selfCopy, v17, 168, 1)}];
    }

    [(NEIKEv2Packet *)selfCopy addNotification:v21 fromArray:v5 toPayloads:?];
    [v5 addObjectsFromArray:{objc_getProperty(selfCopy, v18, 176, 1)}];
    [v5 addObjectsFromArray:v21];
    Property = objc_getProperty(selfCopy, v19, 56, 1);
  }

  else
  {
    [(NEIKEv2Packet *)0 addNotification:v21 fromArray:v5 toPayloads:?];
    [v5 addObjectsFromArray:0];
    [v5 addObjectsFromArray:v21];
    Property = 0;
  }

  [v5 addObjectsFromArray:Property];
  [(NEIKEv2Packet *)selfCopy setRawPayloads:v5];
}

@end