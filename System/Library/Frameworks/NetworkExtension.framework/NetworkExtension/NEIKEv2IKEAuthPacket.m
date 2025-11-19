@interface NEIKEv2IKEAuthPacket
+ (NSObject)createIKEAuthForInitiatorIKESA:(void *)a3 childSA:;
+ (id)createIKEAuthResponse:(unint64_t)a3 refusalError:;
- (uint64_t)validateAuthInitialAsInitiator:(int)a3 beforeEAP:;
- (uint64_t)validateAuthPayloadAsInitiator:(char)a3 beforeEAP:;
- (void)filloutPayloads;
- (void)gatherPayloads;
@end

@implementation NEIKEv2IKEAuthPacket

+ (NSObject)createIKEAuthForInitiatorIKESA:(void *)a3 childSA:
{
  v296 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_153;
    }

    buf = 136315138;
    v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
    v56 = "%s called with null ikeSA";
    goto LABEL_31;
  }

  if (!v5 && (*(v4 + 23) & 1) == 0)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
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
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
LABEL_153:
      v129 = 0;
      goto LABEL_154;
    }

    buf = 136315138;
    v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
    v56 = "%s called with null ikeSA.chosenProposal";
LABEL_31:
    _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, v56, &buf, 0xCu);
    goto LABEL_153;
  }

  v8 = [(NEIKEv2Packet *)[NEIKEv2IKEAuthPacket alloc] initOutbound];
  if (!v8)
  {
    v57 = ne_log_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_FAULT, "[[NEIKEv2IKEAuthPacket alloc] initOutbound:] failed", &buf, 2u);
    }

    v9 = 0;
    goto LABEL_153;
  }

  v9 = v8;
  v10 = objc_alloc_init(NEIKEv2InitiatorIdentifierPayload);
  objc_setProperty_atomic(v9, v11, v10, 96);

  v13 = [(NEIKEv2IKESA *)v4 localIdentifier];
  v15 = objc_getProperty(v9, v14, 96, 1);
  v17 = v15;
  if (v15)
  {
    objc_setProperty_atomic(v15, v16, v13, 32);
  }

  v19 = objc_getProperty(v9, v18, 96, 1);
  v20 = v19;
  if (v19)
  {
    objc_storeWeak((v19 + 40), v4);
  }

  v22 = objc_getProperty(v9, v21, 96, 1);
  v23 = [(NEIKEv2Payload *)v22 isValid];

  if ((v23 & 1) == 0)
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

  v25 = objc_getProperty(v9, v24, 96, 1);
  objc_storeStrong(v4 + 41, v25);

  v27 = [(NEIKEv2IKESA *)v4 remoteIdentifier];

  if (v27)
  {
    v29 = objc_alloc_init(NEIKEv2ResponderIdentifierPayload);
    objc_setProperty_atomic(v9, v30, v29, 104);

    v32 = [(NEIKEv2IKESA *)v4 remoteIdentifier];
    v34 = objc_getProperty(v9, v33, 104, 1);
    v36 = v34;
    if (v34)
    {
      objc_setProperty_atomic(v34, v35, v32, 32);
    }

    v38 = objc_getProperty(v9, v37, 104, 1);
    v39 = [(NEIKEv2Payload *)v38 isValid];

    if ((v39 & 1) == 0)
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
  self = v9;
  if ((*(v4 + 23) & 1) == 0)
  {
    v60 = objc_alloc_init(NEIKEv2ChildSAPayload);
    objc_setProperty_atomic(v9, v61, v60, 88);

    v63 = [(NEIKEv2ChildSA *)v5 configProposalsWithoutKEM];
    v65 = objc_getProperty(v9, v64, 88, 1);
    v67 = v65;
    if (v65)
    {
      objc_setProperty_atomic(v65, v66, v63, 32);
    }

    v69 = objc_getProperty(v9, v68, 88, 1);
    v70 = [(NEIKEv2Payload *)v69 isValid];

    if (v70)
    {
      v71 = objc_alloc_init(NEIKEv2InitiatorTrafficSelectorPayload);
      objc_setProperty_atomic(v9, v72, v71, 160);

      v74 = [(NEIKEv2ChildSA *)v5 configuredInitiatorTrafficSelectors];
      v76 = objc_getProperty(v9, v75, 160, 1);
      v78 = v76;
      if (v76)
      {
        objc_setProperty_atomic(v76, v77, v74, 32);
      }

      v80 = objc_getProperty(v9, v79, 160, 1);
      v81 = [(NEIKEv2Payload *)v80 isValid];

      if (v81)
      {
        v82 = objc_alloc_init(NEIKEv2ResponderTrafficSelectorPayload);
        objc_setProperty_atomic(v9, v83, v82, 168);

        v85 = [(NEIKEv2ChildSA *)v5 configuredResponderTrafficSelectors];
        v87 = objc_getProperty(v9, v86, 168, 1);
        v89 = v87;
        if (v87)
        {
          objc_setProperty_atomic(v87, v88, v85, 32);
        }

        v91 = objc_getProperty(v9, v90, 168, 1);
        v92 = [(NEIKEv2Payload *)v91 isValid];

        if (v92)
        {
          if (v5)
          {
            Property = objc_getProperty(v5, v93, 48, 1);
          }

          else
          {
            Property = 0;
          }

          v95 = Property;
          v96 = [v95 mode];

          if (v96 == 1 && ![(NEIKEv2Packet *)v9 addNotification:0 data:?])
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

          if (![(NEIKEv2Packet *)v9 addNotification:0 data:?])
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

          if (![(NEIKEv2Packet *)v9 addNotification:0 data:?])
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

          if (v5)
          {
            v98 = objc_getProperty(v5, v97, 48, 1);
          }

          else
          {
            v98 = 0;
          }

          v99 = v98;
          v100 = [v99 sequencePerTrafficClass];

          if (v100)
          {
            v102 = +[NEIKEv2NotifyPayload createNotifyPayloadType:];
            v103 = [(NEIKEv2Packet *)v9 addNotifyPayload:v102];

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
          v105 = [v104 configurationRequest];

          if (!v105)
          {
            goto LABEL_77;
          }

          v106 = v5;
          v107 = objc_alloc_init(NEIKEv2ConfigPayload);
          objc_setProperty_atomic(v9, v108, v107, 152);

          v110 = objc_getProperty(v4, v109, 88, 1);
          v111 = [v110 configurationRequest];
          v113 = objc_getProperty(v9, v112, 152, 1);
          v115 = v113;
          if (v113)
          {
            objc_setProperty_atomic(v113, v114, v111, 32);
          }

          v117 = objc_getProperty(v9, v116, 152, 1);
          v118 = [(NEIKEv2Payload *)v117 isValid];

          v5 = v106;
          if (v118)
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
  v41 = [v40 configurationRequest];

  if (!v41)
  {
    goto LABEL_77;
  }

  v43 = v5;
  v44 = objc_getProperty(v4, v42, 88, 1);
  v45 = [v44 configurationRequest];
  if (!v45)
  {

    v55 = 0;
LABEL_76:

    v5 = v43;
LABEL_77:
    v130 = objc_getProperty(v4, v42, 88, 1);
    v131 = [v130 initialContactDisabled];

    if ((v131 & 1) != 0 || [(NEIKEv2Packet *)v9 addNotification:0 data:?])
    {
      v133 = objc_getProperty(v4, v132, 88, 1);
      v134 = [v133 negotiateMOBIKE];

      if (!v134 || [(NEIKEv2Packet *)v9 addNotification:0 data:?])
      {
        v267 = v5;
        v136 = [(NEIKEv2IKESA *)v4 remoteAuthentication];
        if ([v136 method])
        {
          if ([v136 isSignature])
          {
            v139 = objc_getProperty(v4, v138, 88, 1);
            if (!v139 || (v140 = v139, v141 = [v139 remotePublicKeyRef], v140, !v141))
            {
              v142 = [(NEIKEv2IKESA *)v4 copyRemoteCertificateAuthorityHashData];
              if (v142)
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
                objc_setProperty_atomic(v143, v144, v142, 40);
                v145->_encoding = 4;
                v293 = v145;
                v146 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v293 count:1];
                objc_setProperty_atomic(v9, v147, v146, 120);
              }
            }
          }

          if ([v136 isSecurePassword])
          {
            v149 = [[NEIKEv2GSPM alloc] initWithIKESA:v4];
            if (v149)
            {
              v150 = v149;
              v151 = objc_alloc_init(NEIKEv2GSPMPayload);
              objc_setProperty_atomic(v9, v152, v151, 144);

              v153 = v150->super._payloadSubHeader;
              v155 = objc_getProperty(v9, v154, 144, 1);
              [(NEIKEv2GSPMPayload *)v155 setGspmData:v153];

              objc_setProperty_atomic(v4, v156, v150, 464);
LABEL_92:

LABEL_102:
              v281 = 0u;
              v282 = 0u;
              v279 = 0u;
              v280 = 0u;
              v165 = objc_getProperty(v4, v157, 88, 1);
              v166 = [v165 customIKEAuthPrivateNotifies];

              v167 = [v166 countByEnumeratingWithState:&v279 objects:v291 count:16];
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
                      objc_enumerationMutation(v166);
                    }

                    v171 = *(*(&v279 + 1) + 8 * v170);
                    v172 = objc_alloc_init(NEIKEv2NotifyPayload);
                    v173 = [v171 notifyStatus];
                    if (v172)
                    {
                      v172->_notifyType = v173;
                      v174 = [v171 notifyData];
                      objc_setProperty_atomic(v172, v175, v174, 40);
                    }

                    else
                    {
                      v174 = [v171 notifyData];
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
                      v5 = v267;
                      goto LABEL_147;
                    }

                    ++v170;
                    v4 = v268;
                  }

                  while (v168 != v170);
                  v176 = [v166 countByEnumeratingWithState:&v279 objects:v291 count:16];
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
              v179 = [v178 customIKEAuthVendorPayloads];

              v180 = [v179 countByEnumeratingWithState:&v275 objects:v290 count:16];
              v9 = self;
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
                      objc_enumerationMutation(v179);
                    }

                    v184 = *(*(&v275 + 1) + 8 * i);
                    v185 = objc_alloc_init(NEIKEv2VendorIDPayload);
                    v187 = [v184 vendorData];
                    if (v185)
                    {
                      objc_setProperty_atomic(v185, v186, v187, 32);
                    }

                    v189 = objc_getProperty(v9, v188, 176, 1);

                    if (v189)
                    {
                      v191 = objc_getProperty(v9, v190, 176, 1);
                      v192 = [v191 arrayByAddingObject:v185];
                      objc_setProperty_atomic(self, v193, v192, 176);

                      v9 = self;
                    }

                    else
                    {
                      v289 = v185;
                      v191 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v289 count:1];
                      objc_setProperty_atomic(v9, v194, v191, 176);
                    }
                  }

                  v181 = [v179 countByEnumeratingWithState:&v275 objects:v290 count:16];
                }

                while (v181);
              }

              v273 = 0u;
              v274 = 0u;
              v271 = 0u;
              v272 = 0u;
              v196 = objc_getProperty(v268, v195, 88, 1);
              v197 = [v196 customIKEAuthPayloads];

              v198 = [v197 countByEnumeratingWithState:&v271 objects:v288 count:16];
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
                      objc_enumerationMutation(v197);
                    }

                    v202 = *(*(&v271 + 1) + 8 * v201);
                    v203 = objc_alloc_init(NEIKEv2CustomPayload);
                    v204 = [v202 customType];
                    if (v203)
                    {
                      v203->_customType = v204;
                      v205 = [v202 customData];
                      objc_setProperty_atomic(v203, v206, v205, 40);
                    }

                    else
                    {
                      v205 = [v202 customData];
                    }

                    v208 = objc_getProperty(v9, v207, 56, 1);

                    if (v208)
                    {
                      v210 = objc_getProperty(v9, v209, 56, 1);
                      v211 = [v210 arrayByAddingObject:v203];
                      objc_setProperty_atomic(self, v212, v211, 56);

                      v9 = self;
                    }

                    else
                    {
                      v287 = v203;
                      v210 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v287 count:1];
                      objc_setProperty_atomic(v9, v213, v210, 56);
                    }

                    ++v201;
                  }

                  while (v199 != v201);
                  v214 = [v197 countByEnumeratingWithState:&v271 objects:v288 count:16];
                  v199 = v214;
                }

                while (v214);
              }

              v4 = v268;
              v216 = objc_getProperty(v268, v215, 88, 1);
              v217 = [v216 pduSessionID];

              if (!v217)
              {
                goto LABEL_143;
              }

              v219 = objc_getProperty(v268, v218, 88, 1);
              v220 = [v219 pduSessionID];
              v221 = [v220 unsignedCharValue];

              LOBYTE(v283) = v221;
              v270 = 1;
              v150 = objc_alloc_init(MEMORY[0x1E695DF88]);
              [(NEIKEv2CertificatePayload *)v150 appendBytes:&v270 length:1];
              [(NEIKEv2CertificatePayload *)v150 appendBytes:&v283 length:1];
              if ([(NEIKEv2Packet *)v9 addNotification:v150 data:?])
              {

LABEL_143:
                v129 = v9;
LABEL_199:
                v5 = v267;
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

            v142 = ne_log_obj();
            if (!os_log_type_enabled(v142, OS_LOG_TYPE_FAULT))
            {
LABEL_206:

              v129 = 0;
              v5 = v267;
LABEL_147:
              v9 = self;
              goto LABEL_200;
            }

            LOWORD(buf) = 0;
            v263 = "[NEIKEv2GSPM initWithIKESA:] failed";
            v264 = v142;
            v265 = 2;
LABEL_213:
            _os_log_fault_impl(&dword_1BA83C000, v264, OS_LOG_TYPE_FAULT, v263, &buf, v265);
            goto LABEL_206;
          }

          v163 = objc_getProperty(v4, v148, 96, 1);
          v164 = [(NEIKEv2IKESAProposal *)v163 hasEAPMethods];

          if (v164)
          {
            goto LABEL_102;
          }

          v227 = [(NEIKEv2IKESA *)v4 copyAuthenticationPayloadUsingPrimeKey:?];
          objc_setProperty_atomic(v9, v228, v227, 128);

          v230 = objc_getProperty(v9, v229, 128, 1);
          v231 = [(NEIKEv2Payload *)v230 isValid];

          if (v231)
          {
            if ((v4[3] & 1) == 0)
            {
              goto LABEL_166;
            }

            v233 = objc_getProperty(v4, v232, 88, 1);
            v234 = [v233 ppkIDType];

            LOBYTE(v283) = v234;
            if (v234)
            {
              v236 = objc_getProperty(v4, v235, 88, 1);
              v150 = [v236 ppkID];

              if (v283 != 2 || v150)
              {
                v237 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{-[NEIKEv2CertificatePayload length](v150, "length") + 1}];
                [v237 appendBytes:&v283 length:1];
                [v237 appendData:v150];
                if (![(NEIKEv2Packet *)v9 addNotification:v237 data:?])
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
                v240 = [v239 ppkMandatory];

                if (v240)
                {
LABEL_165:

                  v4 = v268;
LABEL_166:
                  v150 = [(NEIKEv2IKESA *)v4 authenticationProtocol];
                  if ([(NEIKEv2CertificatePayload *)v150 isSignature])
                  {
                    v244 = objc_getProperty(v4, v243, 88, 1);
                    if (v244)
                    {
                      v245 = v244;
                      v246 = [v244 localPrivateKeyRef];

                      if (v246)
                      {
                        goto LABEL_102;
                      }
                    }

                    else
                    {
                    }

                    v150 = objc_alloc_init(NEIKEv2CertificatePayload);
                    v248 = [(NEIKEv2IKESA *)v4 copyLocalCertificateData];
                    v250 = v248;
                    if (v150)
                    {
                      objc_setProperty_atomic(v150, v249, v248, 40);

                      v150->_encoding = 4;
                      v252 = objc_getProperty(v150, v251, 40, 1);
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

                    v292 = v150;
                    v254 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v292 count:1];
                    objc_setProperty_atomic(v9, v255, v254, 112);
                  }

                  goto LABEL_92;
                }

                v241 = [(NEIKEv2IKESA *)v268 copyAuthenticationPayloadUsingPrimeKey:?];
                v242 = [(NEIKEv2AuthPayload *)v241 copyFullAuthenticationData];
                if (v242)
                {
                  if ([(NEIKEv2Packet *)v9 addNotification:v242 data:?])
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
                v9 = self;
LABEL_196:

                goto LABEL_197;
              }

              v142 = ne_log_obj();
              if (!os_log_type_enabled(v142, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_206;
              }

              buf = 136315138;
              v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
              v263 = "%s called with null ppkID";
            }

            else
            {
              v142 = ne_log_obj();
              if (!os_log_type_enabled(v142, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_206;
              }

              buf = 136315138;
              v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
              v263 = "%s called with null ppkIDType";
            }

            v264 = v142;
            v265 = 12;
            goto LABEL_213;
          }

          v150 = ne_log_obj();
          if (os_log_type_enabled(&v150->super.super, OS_LOG_TYPE_FAULT))
          {
            buf = 136315138;
            v295 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthForInitiatorIKESA:childSA:]";
            v160 = "%s called with null packet.auth.isValid";
            p_super = &v150->super.super;
            v162 = 12;
            goto LABEL_180;
          }
        }

        else
        {
          v158 = objc_getProperty(v4, v137, 96, 1);
          v159 = [(NEIKEv2IKESAProposal *)v158 hasEAPMethods];

          if (!v159 || [(NEIKEv2Packet *)v9 addNotification:0 data:?])
          {
            goto LABEL_102;
          }

          v150 = ne_log_obj();
          if (os_log_type_enabled(&v150->super.super, OS_LOG_TYPE_FAULT))
          {
            LOWORD(buf) = 0;
            v160 = "[packet addNotification:NEIKEv2NotifyTypeEAPOnlyAuthentication] failed";
            p_super = &v150->super.super;
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

  v46 = v45;
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
  v9 = self;

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
  v127 = [(NEIKEv2Payload *)v126 isValid];

  if (v127)
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
  v5 = v43;
LABEL_154:

  v225 = *MEMORY[0x1E69E9840];
  return v129;
}

- (uint64_t)validateAuthPayloadAsInitiator:(char)a3 beforeEAP:
{
  v261 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = objc_getProperty(a1, v6, 128, 1);

  if (!v7)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v116 = [(NEIKEv2Packet *)a1 copyShortDescription];
      *buf = 138412290;
      v256 = v116;
      _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "%@ Authentication payload missing from IKE_AUTH", buf, 0xCu);
    }

    v29 = @"Authentication payload missing from IKE_AUTH";
    goto LABEL_22;
  }

  v9 = objc_getProperty(a1, v8, 128, 1);
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
      v136 = [(NEIKEv2Packet *)a1 copyShortDescription];
      *buf = 138412290;
      v256 = v136;
      _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "%@ Authentication protocol missing from AUTH payload", buf, 0xCu);
    }

    v29 = @"Authentication protocol missing from AUTH payload";
    goto LABEL_22;
  }

  v14 = objc_getProperty(a1, v13, 128, 1);
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
      v138 = [(NEIKEv2Packet *)a1 copyShortDescription];
      *buf = 138412290;
      v256 = v138;
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
    v37 = objc_getProperty(a1, v18, 128, 1);
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
            v191 = [(NEIKEv2Packet *)a1 copyShortDescription];
            *buf = 138412290;
            v256 = v191;
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
              v52 = [(NEIKEv2EAP *)v51 sessionKey];

              if (v52)
              {
LABEL_44:
                v56 = [(NEIKEv2IKESA *)v5 createAuthenticationDataForSharedSecret:v52 octetVector:v50];
                if (v56)
                {
                  v57 = v56;

                  v59 = objc_getProperty(a1, v58, 128, 1);
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
                v52 = v55;
                goto LABEL_44;
              }

              v52 = ne_log_obj();
              if (!os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
              {
LABEL_138:

                goto LABEL_139;
              }

              *buf = 0;
              v137 = "skPr failed";
            }

            else
            {
              v52 = ne_log_obj();
              if (!os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_138;
              }

              *buf = 0;
              v137 = "createResponderSignedOctetVectorUsingPrimeKey: failed";
            }

            _os_log_fault_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_FAULT, v137, buf, 2u);
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
        v146 = [(NEIKEv2Packet *)a1 copyShortDescription];
        *buf = 138412290;
        v256 = v146;
        _os_log_error_impl(&dword_1BA83C000, v78, OS_LOG_TYPE_ERROR, "%@ Authentication method for EAP was not shared key", buf, 0xCu);
      }

      v86 = NEIKEv2CreateErrorAuthentication(@"Authentication method for EAP was not shared key", v79, v80, v81, v82, v83, v84, v85, v242);
      [(NEIKEv2IKESA *)v5 setState:v86 error:?];
LABEL_90:

LABEL_144:
      v33 = 0;
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
        v70 = [(NEIKEv2IKESA *)v5 createResponderGSPMAuthenticationDataUsingPrimeKey:?];
        if (!v70)
        {
          goto LABEL_80;
        }

        v71 = objc_getProperty(a1, v69, 128, 1);
        v72 = v71;
        v73 = v71 ? *(v71 + 40) : 0;
        v74 = v73;
        v75 = [NEIKEv2Crypto validateCalculatedSharedKeyAuthData:v70 remoteAuthData:v74];

        if (!v75)
        {
LABEL_80:
          v117 = ne_log_obj();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            v204 = [(NEIKEv2Packet *)a1 copyShortDescription];
            *buf = 138412290;
            v256 = v204;
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
                v33 = 1;
                if (v5)
                {
                  BYTE3(v5[2].isa) = 1;
                }

                goto LABEL_145;
              }

              [(NEIKEv2IKESA *)v5 restorePrimeKeys];
            }

            v33 = 1;
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
        v193 = [(NEIKEv2Packet *)a1 copyShortDescription];
        v195 = objc_getProperty(a1, v194, 128, 1);
        *buf = 138412546;
        v256 = v193;
        v257 = 2112;
        v258 = v195;
        _os_log_error_impl(&dword_1BA83C000, v105, OS_LOG_TYPE_ERROR, "%@ Wrong authentication method %@ for GSPM", buf, 0x16u);
      }

      v86 = objc_getProperty(a1, v106, 128, 1);
      v114 = NEIKEv2CreateErrorAuthentication(@"Wrong authentication method %@ for GSPM", v107, v108, v109, v110, v111, v112, v113, v86);
LABEL_89:
      v135 = v114;
      [(NEIKEv2IKESA *)v5 setState:v114 error:?];

      goto LABEL_90;
    }

    v87 = [(NEIKEv2IKESA *)v5 remoteAuthentication];
    v88 = [NEIKEv2Crypto isRemoteAuthenticationPacketProtocol:v40 compatibleWithConfiguredProtocol:v87];

    if ((v88 & 1) == 0)
    {
      v126 = ne_log_obj();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        v205 = [(NEIKEv2Packet *)a1 copyShortDescription];
        v207 = [(NEIKEv2IKESA *)v5 remoteAuthentication];
        *buf = 138412802;
        v256 = v205;
        v257 = 2112;
        v258 = v40;
        v259 = 2112;
        v260 = v207;
        _os_log_error_impl(&dword_1BA83C000, v126, OS_LOG_TYPE_ERROR, "%@ Initiator packet authentication method %@ is not compatible with configuration %@", buf, 0x20u);
      }

      v86 = [(NEIKEv2IKESA *)v5 remoteAuthentication];
      v114 = NEIKEv2CreateErrorAuthentication(@"Packet authentication method %@ is not compatible with configuration %@", v128, v129, v130, v131, v132, v133, v134, v40);
      goto LABEL_89;
    }

    v32 = v40;
    v90 = [(NEIKEv2IKESA *)v5 remoteAuthentication];
    v91 = [v90 isNonStandard];

    v70 = v32;
    if (v91)
    {
      v70 = [(NEIKEv2IKESA *)v5 remoteAuthentication];
    }

    if (![v70 isSignature])
    {
      v139 = objc_getProperty(a1, v93, 128, 1);
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
        v226 = [(NEIKEv2Packet *)a1 copyShortDescription];
        *buf = 138412546;
        v256 = v226;
        v257 = 2112;
        v258 = v70;
        _os_log_error_impl(&dword_1BA83C000, v76, OS_LOG_TYPE_ERROR, "%@ Initiator failed to validate remote authentication data %@", buf, 0x16u);
      }

      v76 = NEIKEv2CreateErrorAuthentication(@"Failed to validate remote authentication data %@", v147, v148, v149, v150, v151, v152, v153, v70);
      [(NEIKEv2IKESA *)v5 setState:v76 error:?];
      v33 = 0;
LABEL_161:

      goto LABEL_146;
    }

    v245 = v70;
    if (v5)
    {
      v94 = objc_getProperty(v5, v93, 88, 1);
    }

    else
    {
      v94 = 0;
    }

    v95 = v94;
    v96 = [(NEIKEv2SessionConfiguration *)v95 copyRemoteAuthKey];

    v243 = v20;
    if (v96)
    {
      goto LABEL_71;
    }

    v154 = objc_getProperty(a1, v97, 112, 1);
    v155 = [v154 count];

    if (!v155)
    {
      v196 = ne_log_obj();
      if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
      {
        v240 = [(NEIKEv2Packet *)a1 copyShortDescription];
        *buf = 138412290;
        v256 = v240;
        _os_log_error_impl(&dword_1BA83C000, v196, OS_LOG_TYPE_ERROR, "%@ No certificate payload received", buf, 0xCu);
      }

      v76 = NEIKEv2CreateErrorAuthentication(@"No certificate payload received", v197, v198, v199, v200, v201, v202, v203, v242);
      [(NEIKEv2IKESA *)v5 setState:v76 error:?];
      v33 = 0;
      v70 = v245;
      goto LABEL_161;
    }

    v249 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v249)
    {
      v252 = 0u;
      v253 = 0u;
      v250 = 0u;
      v251 = 0u;
      obj = objc_getProperty(a1, v156, 112, 1);
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
                v241 = [(NEIKEv2Packet *)a1 copyShortDescription];
                *buf = 138412290;
                v256 = v241;
                _os_log_error_impl(&dword_1BA83C000, v208, OS_LOG_TYPE_ERROR, "%@ Certificate missing data", buf, 0xCu);
              }

              v216 = NEIKEv2CreateErrorAuthentication(@"Certificate missing data", v209, v210, v211, v212, v213, v214, v215, v242);
              [(NEIKEv2IKESA *)v5 setState:v216 error:?];

              v33 = 0;
              v178 = obj;
              v70 = v245;
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
        v96 = v168;

LABEL_71:
        v248 = [(NEIKEv2IKESA *)v5 createRemoteSignedOctetVectorUsingPrimeKey:?];
        v99 = objc_getProperty(a1, v98, 128, 1);
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
        v103 = [NEIKEv2Crypto validateSignature:v102 signedDataVector:v248 authProtocol:v245 publicKey:v96];

        CFRelease(v96);
        if (v103)
        {
          v70 = v245;
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
        v33 = [v170 disableRemoteCertificateValidation];

        if (v33)
        {
          v178 = ne_log_obj();
          if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
          {
            v179 = [(NEIKEv2Packet *)a1 copyShortDescription];
            *buf = 138412290;
            v256 = v179;
            _os_log_impl(&dword_1BA83C000, v178, OS_LOG_TYPE_INFO, "%@ Passing authentication because configuration does not require remote signature validation", buf, 0xCu);
          }

          v70 = v245;
        }

        else
        {
          v70 = v245;
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
      v231 = [v230 disableRemoteCertificateValidation];

      if (v231)
      {
        v178 = ne_log_obj();
        v33 = 1;
        if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
        {
          v239 = [(NEIKEv2Packet *)a1 copyShortDescription];
          *buf = 138412290;
          v256 = v239;
          _os_log_impl(&dword_1BA83C000, v178, OS_LOG_TYPE_INFO, "%@ Passing authentication because configuration does not require certificate validation", buf, 0xCu);
        }

LABEL_158:
        v70 = v245;
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
    v33 = 0;
    goto LABEL_158;
  }

  isa = v5[3].isa;
  v20 = 1;
  if (isa & 1) == 0 || (a3)
  {
    goto LABEL_28;
  }

  if (([(NEIKEv2Packet *)a1 hasNotification:?]& 1) != 0)
  {
    v20 = 0;
    isa = 0;
    goto LABEL_28;
  }

  isa = 1;
  v34 = objc_getProperty(v5, v18, 88, 1);
  v35 = [v34 ppkMandatory];

  if (!v35)
  {
    v20 = 0;
    goto LABEL_28;
  }

  v36 = ne_log_obj();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v192 = [(NEIKEv2Packet *)a1 copyShortDescription];
    *buf = 138412290;
    v256 = v192;
    _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "%@ No PPK ID notify received with mandatory PPK auth", buf, 0xCu);
  }

  v29 = @"No PPK ID received with mandatory PPK auth";
LABEL_22:
  v32 = NEIKEv2CreateErrorAuthentication(v29, v22, v23, v24, v25, v26, v27, v28, v242);
  [(NEIKEv2IKESA *)v5 setState:v32 error:?];
  v33 = 0;
LABEL_146:

  v189 = *MEMORY[0x1E69E9840];
  return v33;
}

- (uint64_t)validateAuthInitialAsInitiator:(int)a3 beforeEAP:
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

  v10 = objc_getProperty(a1, v9, 104, 1);
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
      v50 = [(NEIKEv2Packet *)a1 copyShortDescription];
      *buf = 138412290;
      v68 = v50;
      _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "%@ Responder ID missing", buf, 0xCu);
    }

    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Responder ID missing", v32, v33, v34, v35, v36, v37, v38, v65);
    [(NEIKEv2IKESA *)v7 setState:ErrorPeerInvalidSyntax error:?];
    goto LABEL_24;
  }

  v16 = [(NEIKEv2IKESA *)v7 remoteAuthentication];
  v17 = [v16 method];

  if (!v17)
  {
    v29 = 1;
    goto LABEL_26;
  }

  v19 = objc_getProperty(a1, v18, 128, 1);
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
  v24 = [(NEIKEv2IKESA *)v7 remoteAuthentication];
  v25 = [v24 isSecurePassword];

  if (v25)
  {
    if (ErrorPeerInvalidSyntax)
    {
      v52 = ne_log_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v62 = [(NEIKEv2Packet *)a1 copyShortDescription];
        v64 = [(NEIKEv2IKESA *)v7 remoteAuthentication];
        *buf = 138412802;
        v68 = v62;
        v69 = 2112;
        v70 = ErrorPeerInvalidSyntax;
        v71 = 2112;
        v72 = v64;
        _os_log_error_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_ERROR, "%@ Initiator packet authentication method %@ is not compatible with GSPM configuration %@", buf, 0x20u);
      }

      v66 = [(NEIKEv2IKESA *)v7 remoteAuthentication];
      ErrorAuthentication = NEIKEv2CreateErrorAuthentication(@"Initiator packet authentication method %@ is not compatible with GSPM configuration %@", v54, v55, v56, v57, v58, v59, v60, ErrorPeerInvalidSyntax);
      [(NEIKEv2IKESA *)v7 setState:ErrorAuthentication error:?];

      goto LABEL_24;
    }

    v27 = a1 ? objc_getProperty(a1, v26, 144, 1) : 0;
    v28 = v27;

    if (!v28)
    {
      v41 = ne_log_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v51 = [(NEIKEv2Packet *)a1 copyShortDescription];
        *buf = 138412290;
        v68 = v51;
        _os_log_error_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_ERROR, "%@ Packet missing GSPM payload", buf, 0xCu);
      }

      v49 = NEIKEv2CreateErrorAuthentication(@"Packet missing GSPM payload", v42, v43, v44, v45, v46, v47, v48, v65);
      [(NEIKEv2IKESA *)v7 setState:v49 error:?];

      ErrorPeerInvalidSyntax = 0;
      goto LABEL_24;
    }
  }

  if (a3 && ![(NEIKEv2IKEAuthPacket *)a1 validateAuthPayloadAsInitiator:v7 beforeEAP:1])
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

+ (id)createIKEAuthResponse:(unint64_t)a3 refusalError:
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

  if (![(NEIKEv2Packet *)v5 addNotification:a3 data:0])
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
                v39 = [(NEIKEv2Packet *)self copyShortDescription];
                v40 = [v13 typeDescription];
                *buf = v43;
                v54 = v39;
                v55 = 2112;
                v56 = v40;
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

            v37 = self;
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
            v37 = self;
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
                v37 = self;
                v38 = v21;
                v36 = 56;
LABEL_57:
                objc_setProperty_atomic(v37, v20, v38, v36);
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
              v34 = [(NEIKEv2Packet *)self copyShortDescription];
              v35 = [v13 typeDescription];
              *buf = v43;
              v54 = v34;
              v55 = 2112;
              v56 = v35;
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
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  v21 = [(NEIKEv2IKEAuthPacket *)self mutableCopy];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v3;
  if (v2)
  {
    if (objc_getProperty(v2, v4, 96, 1))
    {
      [v5 addObject:{objc_getProperty(v2, v6, 96, 1)}];
    }

    [v5 addObjectsFromArray:{objc_getProperty(v2, v6, 112, 1)}];
    [(NEIKEv2Packet *)v2 addNotification:v21 fromArray:v5 toPayloads:?];
    [(NEIKEv2Packet *)v2 addNotification:v21 fromArray:v5 toPayloads:?];
    [v5 addObjectsFromArray:{objc_getProperty(v2, v7, 120, 1)}];
    if (objc_getProperty(v2, v8, 104, 1))
    {
      [v5 addObject:{objc_getProperty(v2, v9, 104, 1)}];
    }

    if (objc_getProperty(v2, v9, 128, 1))
    {
      [v5 addObject:{objc_getProperty(v2, v10, 128, 1)}];
    }

    if (objc_getProperty(v2, v10, 152, 1))
    {
      [v5 addObject:{objc_getProperty(v2, v11, 152, 1)}];
    }
  }

  else
  {
    [v3 addObjectsFromArray:0];
    [(NEIKEv2Packet *)0 addNotification:v21 fromArray:v5 toPayloads:?];
    [(NEIKEv2Packet *)0 addNotification:v21 fromArray:v5 toPayloads:?];
    [v5 addObjectsFromArray:0];
  }

  [(NEIKEv2Packet *)v2 addNotification:v21 fromArray:v5 toPayloads:?];
  [(NEIKEv2Packet *)v2 addNotification:v21 fromArray:v5 toPayloads:?];
  [(NEIKEv2Packet *)v2 addNotification:v21 fromArray:v5 toPayloads:?];
  [(NEIKEv2Packet *)v2 addNotification:v21 fromArray:v5 toPayloads:?];
  if (v2)
  {
    if (objc_getProperty(v2, v12, 136, 1))
    {
      [v5 addObject:{objc_getProperty(v2, v13, 136, 1)}];
    }

    if (objc_getProperty(v2, v13, 144, 1))
    {
      [v5 addObject:{objc_getProperty(v2, v14, 144, 1)}];
    }

    if (objc_getProperty(v2, v14, 88, 1))
    {
      [v5 addObject:{objc_getProperty(v2, v15, 88, 1)}];
    }

    if (objc_getProperty(v2, v15, 160, 1))
    {
      [v5 addObject:{objc_getProperty(v2, v16, 160, 1)}];
    }

    if (objc_getProperty(v2, v16, 168, 1))
    {
      [v5 addObject:{objc_getProperty(v2, v17, 168, 1)}];
    }

    [(NEIKEv2Packet *)v2 addNotification:v21 fromArray:v5 toPayloads:?];
    [v5 addObjectsFromArray:{objc_getProperty(v2, v18, 176, 1)}];
    [v5 addObjectsFromArray:v21];
    Property = objc_getProperty(v2, v19, 56, 1);
  }

  else
  {
    [(NEIKEv2Packet *)0 addNotification:v21 fromArray:v5 toPayloads:?];
    [v5 addObjectsFromArray:0];
    [v5 addObjectsFromArray:v21];
    Property = 0;
  }

  [v5 addObjectsFromArray:Property];
  [(NEIKEv2Packet *)v2 setRawPayloads:v5];
}

@end