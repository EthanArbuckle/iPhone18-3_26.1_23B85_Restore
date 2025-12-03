@interface NEIKEv2CreateChildPacket
+ (NSObject)createRekeyRequestChildSA:(uint64_t)a;
+ (id)createChildSAResponse:(unint64_t)response errorCode:(void *)code errorData:;
- (uint64_t)validateRekeyResponseChildSA:(uint64_t)a;
- (void)filloutPayloads;
- (void)gatherPayloads;
@end

@implementation NEIKEv2CreateChildPacket

+ (NSObject)createRekeyRequestChildSA:(uint64_t)a
{
  v93 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if (!v2)
  {
    initOutbound = ne_log_obj();
    if (!os_log_type_enabled(initOutbound, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_34;
    }

    v91 = 136315138;
    v92 = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyRequestChildSA:]";
    v87 = "%s called with null childSA";
    goto LABEL_49;
  }

  v4 = objc_getProperty(v2, v3, 176, 1);

  if (!v4)
  {
    initOutbound = ne_log_obj();
    if (!os_log_type_enabled(initOutbound, OS_LOG_TYPE_FAULT))
    {
LABEL_34:
      v82 = 0;
      goto LABEL_59;
    }

    v91 = 136315138;
    v92 = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyRequestChildSA:]";
    v87 = "%s called with null childSA.rekeyRequestProposals";
LABEL_49:
    _os_log_fault_impl(&dword_1BA83C000, initOutbound, OS_LOG_TYPE_FAULT, v87, &v91, 0xCu);
    goto LABEL_34;
  }

  initOutbound = [(NEIKEv2Packet *)[NEIKEv2CreateChildPacket alloc] initOutbound];
  if (!initOutbound)
  {
    p_super = ne_log_obj();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v91) = 0;
      _os_log_fault_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_FAULT, "[[NEIKEv2CreateChildPacket alloc] initOutbound:] failed", &v91, 2u);
    }

    goto LABEL_57;
  }

  Property = objc_getProperty(v2, v5, 56, 1);
  v9 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v8, 80, 1);
  }

  v10 = Property;
  objc_opt_self();
  if (v10)
  {
    v11 = objc_alloc_init(NEIKEv2NotifyPayload);
    p_super = &v11->super.super;
    if (v11)
    {
      v11->_notifyType = 16393;
      objc_setProperty_atomic(v11, v12, v10, 48);
    }
  }

  else
  {
    v90 = ne_log_obj();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
    {
      v91 = 136315138;
      v92 = "+[NEIKEv2NotifyPayload createNotifyPayloadType:spi:]";
      _os_log_fault_impl(&dword_1BA83C000, v90, OS_LOG_TYPE_FAULT, "%s called with null spi", &v91, 0xCu);
    }

    p_super = 0;
  }

  if (![(NEIKEv2Packet *)initOutbound addNotifyPayload:?])
  {
    v83 = ne_log_obj();
    if (!os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_56;
    }

    LOWORD(v91) = 0;
    v84 = "[packet addNotification:NEIKEv2NotifyTypeRekeySA] failed";
LABEL_39:
    v85 = v83;
    v86 = 2;
LABEL_55:
    _os_log_fault_impl(&dword_1BA83C000, v85, OS_LOG_TYPE_FAULT, v84, &v91, v86);
    goto LABEL_56;
  }

  v15 = objc_getProperty(v2, v14, 48, 1);
  mode = [v15 mode];

  if (mode == 1 && ![(NEIKEv2Packet *)initOutbound addNotification:0 data:?])
  {
    v83 = ne_log_obj();
    if (!os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_56;
    }

    LOWORD(v91) = 0;
    v84 = "[packet addNotification:NEIKEv2NotifyTypeUseTransportMode] failed";
    goto LABEL_39;
  }

  v17 = objc_alloc_init(NEIKEv2ChildSAPayload);
  objc_setProperty_atomic(initOutbound, v18, v17, 96);

  v20 = objc_getProperty(v2, v19, 176, 1);
  v22 = objc_getProperty(initOutbound, v21, 96, 1);
  v24 = v22;
  if (v22)
  {
    objc_setProperty_atomic(v22, v23, v20, 32);
  }

  if ([(NEIKEv2ChildSA *)v2 shouldGenerateNewDHKeys])
  {
    v27 = objc_alloc_init(NEIKEv2KeyExchangePayload);
    objc_setProperty_atomic(initOutbound, v28, v27, 104);

    preferredKEMProtocol = [(NEIKEv2ChildSA *)v2 preferredKEMProtocol];
    v32 = objc_getProperty(initOutbound, v31, 104, 1);
    v34 = v32;
    if (v32)
    {
      objc_setProperty_atomic(v32, v33, preferredKEMProtocol, 32);
    }

    v36 = objc_getProperty(v2, v35, 112, 1);
    v37 = v36;
    if (v36)
    {
      v38 = *(v36 + 2);
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    v41 = objc_getProperty(initOutbound, v40, 104, 1);
    v43 = v41;
    if (v41)
    {
      objc_setProperty_atomic(v41, v42, v39, 40);
    }

    v45 = objc_getProperty(initOutbound, v44, 104, 1);
    isValid = [(NEIKEv2Payload *)v45 isValid];

    if ((isValid & 1) == 0)
    {
      v83 = ne_log_obj();
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_56;
      }

      v91 = 136315138;
      v92 = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyRequestChildSA:]";
      v84 = "%s called with null packet.ke.isValid";
      goto LABEL_54;
    }
  }

  v47 = objc_getProperty(initOutbound, v26, 96, 1);
  isValid2 = [(NEIKEv2Payload *)v47 isValid];

  if ((isValid2 & 1) == 0)
  {
    v83 = ne_log_obj();
    if (!os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_56;
    }

    v91 = 136315138;
    v92 = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyRequestChildSA:]";
    v84 = "%s called with null packet.childSA.isValid";
LABEL_54:
    v85 = v83;
    v86 = 12;
    goto LABEL_55;
  }

  v49 = objc_alloc_init(NEIKEv2NoncePayload);
  objc_setProperty_atomic(initOutbound, v50, v49, 112);

  v52 = objc_getProperty(v2, v51, 80, 1);
  v54 = objc_getProperty(initOutbound, v53, 112, 1);
  v56 = v54;
  if (v54)
  {
    objc_setProperty_atomic(v54, v55, v52, 32);
  }

  v58 = objc_getProperty(initOutbound, v57, 112, 1);
  isValid3 = [(NEIKEv2Payload *)v58 isValid];

  if ((isValid3 & 1) == 0)
  {
    v83 = ne_log_obj();
    if (!os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_56;
    }

    v91 = 136315138;
    v92 = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyRequestChildSA:]";
    v84 = "%s called with null packet.nonce.isValid";
    goto LABEL_54;
  }

  v60 = objc_alloc_init(NEIKEv2InitiatorTrafficSelectorPayload);
  objc_setProperty_atomic(initOutbound, v61, v60, 128);

  initiatorTrafficSelectors = [(NEIKEv2ChildSA *)v2 initiatorTrafficSelectors];
  v65 = objc_getProperty(initOutbound, v64, 128, 1);
  v67 = v65;
  if (v65)
  {
    objc_setProperty_atomic(v65, v66, initiatorTrafficSelectors, 32);
  }

  v69 = objc_getProperty(initOutbound, v68, 128, 1);
  isValid4 = [(NEIKEv2Payload *)v69 isValid];

  if ((isValid4 & 1) == 0)
  {
    v83 = ne_log_obj();
    if (!os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_56;
    }

    v91 = 136315138;
    v92 = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyRequestChildSA:]";
    v84 = "%s called with null packet.tsi.isValid";
    goto LABEL_54;
  }

  v71 = objc_alloc_init(NEIKEv2ResponderTrafficSelectorPayload);
  objc_setProperty_atomic(initOutbound, v72, v71, 136);

  responderTrafficSelectors = [(NEIKEv2ChildSA *)v2 responderTrafficSelectors];
  v76 = objc_getProperty(initOutbound, v75, 136, 1);
  v78 = v76;
  if (v76)
  {
    objc_setProperty_atomic(v76, v77, responderTrafficSelectors, 32);
  }

  v80 = objc_getProperty(initOutbound, v79, 136, 1);
  isValid5 = [(NEIKEv2Payload *)v80 isValid];

  if ((isValid5 & 1) == 0)
  {
    v83 = ne_log_obj();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
    {
      v91 = 136315138;
      v92 = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyRequestChildSA:]";
      v84 = "%s called with null packet.tsr.isValid";
      goto LABEL_54;
    }

LABEL_56:

LABEL_57:
    v82 = 0;
    goto LABEL_58;
  }

  v82 = initOutbound;
LABEL_58:

LABEL_59:
  v88 = *MEMORY[0x1E69E9840];

  return v82;
}

- (uint64_t)validateRekeyResponseChildSA:(uint64_t)a
{
  v168 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (a)
  {
    if (!v3)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v162 = "[NEIKEv2CreateChildPacket(Exchange) validateRekeyResponseChildSA:]";
        _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "%s called with null childSA", buf, 0xCu);
      }

LABEL_35:
      a = 0;
LABEL_122:

      goto LABEL_123;
    }

    if ([(NEIKEv2Packet *)a hasErrors])
    {
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v7 = objc_getProperty(a, v6, 64, 1);
      v8 = [v7 countByEnumeratingWithState:&v157 objects:v167 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v158;
LABEL_6:
        v11 = 0;
        while (1)
        {
          if (*v158 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v157 + 1) + 8 * v11);
          if (v12)
          {
            if (v12[1].isa - 1 <= 0x3FFE)
            {
              break;
            }
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v157 objects:v167 count:16];
            if (v9)
            {
              goto LABEL_6;
            }

            goto LABEL_13;
          }
        }

        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription = [(NEIKEv2Packet *)a copyShortDescription];
          copyError = [(NEIKEv2NotifyPayload *)v12 copyError];
          *buf = 138412546;
          v162 = copyShortDescription;
          v163 = 2112;
          v164 = copyError;
          _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "%@ Rekey child received notify error %@", buf, 0x16u);
        }

        if (v12[1].isa == 17)
        {
          v32 = objc_getProperty(v12, v31, 40, 1);
          copyShortDescription2 = v32;
          if (v32)
          {
            *buf = 0;
            [v32 getBytes:buf length:2];
            v33 = [NEIKEv2KEMProtocol alloc];
            v34 = [(NEIKEv2KEMProtocol *)v33 initWithMethod:bswap32(*buf) >> 16];
            objc_setProperty_atomic(v5, v35, v34, 96);
          }

          goto LABEL_34;
        }

        goto LABEL_35;
      }

LABEL_13:
    }

    v13 = objc_getProperty(v5, v6, 48, 1);
    if ([v13 mode] == 1)
    {
      v14 = [(NEIKEv2Packet *)a hasNotification:?];

      if ((v14 & 1) == 0)
      {
        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription2 = [(NEIKEv2Packet *)a copyShortDescription];
          *buf = 138412290;
          v162 = copyShortDescription2;
          _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "%@ Transport mode Child SA was not accepted", buf, 0xCu);
LABEL_34:
        }

        goto LABEL_35;
      }
    }

    else
    {
    }

    Property = objc_getProperty(a, v15, 96, 1);
    v19 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v18, 32, 1);
    }

    v7 = Property;

    if ([v7 count]!= 1)
    {
      firstObject = ne_log_obj();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription3 = [(NEIKEv2Packet *)a copyShortDescription];
        v76 = [v7 count];
        *buf = 138412546;
        v162 = copyShortDescription3;
        v163 = 1024;
        LODWORD(v164) = v76;
        _os_log_error_impl(&dword_1BA83C000, firstObject, OS_LOG_TYPE_ERROR, "%@ Received %u child SA proposals, require 1", buf, 0x12u);
      }

      a = 0;
      goto LABEL_121;
    }

    firstObject = [v7 firstObject];
    v23 = objc_getProperty(v5, v21, 176, 1);
    if (firstObject)
    {
      v24 = objc_getProperty(firstObject, v22, 80, 1);
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    if (!v25)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription4 = [(NEIKEv2Packet *)a copyShortDescription];
        *buf = 138412290;
        v162 = copyShortDescription4;
        v29 = "%@ Child SA proposal missing SPI";
        goto LABEL_69;
      }

LABEL_40:
      a = 0;
LABEL_120:

LABEL_121:
      goto LABEL_122;
    }

    if (firstObject)
    {
      v26 = *(firstObject + 8);
      if ([v23 count] < v26)
      {
        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription4 = [(NEIKEv2Packet *)a copyShortDescription];
          *buf = 138412290;
          v162 = copyShortDescription4;
          v29 = "%@ Child SA proposal out of range";
LABEL_69:
          _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, v29, buf, 0xCu);

          goto LABEL_40;
        }

        goto LABEL_40;
      }

      v36 = *(firstObject + 8) - 1;
    }

    else
    {
      [v23 count];
      v36 = -1;
    }

    v27 = [v23 objectAtIndexedSubscript:v36];
    if (([(NEIKEv2ChildSAProposal *)firstObject matchesLocalProposal:v27 preferRemoteProposal:0 checkKEMethod:1]& 1) != 0)
    {
      v37 = [(NEIKEv2ChildSAProposal *)v27 copyFromRemote:firstObject preferRemoteProposal:0 checkKEMethod:1];
      objc_setProperty_atomic(v5, v38, v37, 56);

      v40 = objc_getProperty(v5, v39, 56, 1);
      if (v40)
      {
        objc_setProperty_atomic(v5, v41, 0, 176);
        *(v5 + 9) = 1;
        v42 = &OBJC_IVAR___NEFilterFlow__direction;
        v44 = objc_getProperty(a, v43, 112, 1);

        if (v44)
        {
          v46 = objc_getProperty(a, v45, 112, 1);
          v48 = v46;
          if (v46)
          {
            v46 = objc_getProperty(v46, v47, 32, 1);
          }

          v49 = v46;

          if (v49)
          {
            WeakRetained = objc_loadWeakRetained(v5 + 3);
            v52 = WeakRetained;
            if (WeakRetained)
            {
              WeakRetained = objc_getProperty(WeakRetained, v51, 80, 1);
            }

            v53 = WeakRetained;
            strictNonceSizeChecks = [v53 strictNonceSizeChecks];

            if (strictNonceSizeChecks)
            {
              v56 = objc_getProperty(a, v55, 112, 1);
              v58 = v56;
              if (v56)
              {
                v56 = objc_getProperty(v56, v57, 32, 1);
              }

              v59 = v56;
              v60 = [v59 length];

              if ((v60 - 257) <= 0xFFFFFFFFFFFFFF0ELL)
              {
                v62 = ne_log_obj();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  copyShortDescription5 = [(NEIKEv2Packet *)a copyShortDescription];
                  *buf = 138412546;
                  v162 = copyShortDescription5;
                  v163 = 2048;
                  v164 = v60;
                  v64 = "%@ NONCE data length %zu is out of bounds";
                  v65 = v62;
                  v66 = 22;
LABEL_112:
                  _os_log_error_impl(&dword_1BA83C000, v65, OS_LOG_TYPE_ERROR, v64, buf, v66);
LABEL_113:
                }

LABEL_117:

                goto LABEL_118;
              }

              self = v60;
              if (v52)
              {
                v77 = objc_getProperty(v52, v61, 96, 1);
              }

              else
              {
                v77 = 0;
              }

              v78 = v77;
              prfProtocol = [(NEIKEv2IKESAProposal *)v78 prfProtocol];
              nonceSize = [prfProtocol nonceSize];

              v42 = &OBJC_IVAR___NEFilterFlow__direction;
              if (self < nonceSize)
              {
                v62 = ne_log_obj();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  copyShortDescription5 = [(NEIKEv2Packet *)a copyShortDescription];
                  if (v52)
                  {
                    v83 = objc_getProperty(v52, v82, 96, 1);
                  }

                  else
                  {
                    v83 = 0;
                  }

                  v84 = v83;
                  prfProtocol2 = [(NEIKEv2IKESAProposal *)v84 prfProtocol];
                  *buf = 138412802;
                  v162 = copyShortDescription5;
                  v163 = 2048;
                  v164 = self;
                  v165 = 2112;
                  v166 = prfProtocol2;
                  _os_log_error_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is shorter than the minimum for PRF protocol %@", buf, 0x20u);

                  goto LABEL_113;
                }

                goto LABEL_117;
              }
            }

            v87 = objc_getProperty(a, v55, v42[604], 1);
            v89 = v87;
            if (v87)
            {
              v87 = objc_getProperty(v87, v88, 32, 1);
            }

            v90 = v87;
            objc_setProperty_atomic(v5, v91, v90, 88);

            v93 = objc_getProperty(v5, v92, 56, 1);
            kemProtocol = [(NEIKEv2ChildSAProposal *)v93 kemProtocol];
            method = [kemProtocol method];

            if (method)
            {
              v98 = objc_getProperty(a, v97, 104, 1);

              if (!v98)
              {
                v62 = ne_log_obj();
                if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_117;
                }

                copyShortDescription5 = [(NEIKEv2Packet *)a copyShortDescription];
                *buf = 138412290;
                v162 = copyShortDescription5;
                v64 = "%@ Did not receive KE payload";
LABEL_111:
                v65 = v62;
                v66 = 12;
                goto LABEL_112;
              }

              v100 = objc_getProperty(a, v99, 104, 1);
              v102 = v100;
              if (v100)
              {
                v100 = objc_getProperty(v100, v101, 32, 1);
              }

              v103 = v100;

              if (!v103)
              {
                v62 = ne_log_obj();
                if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_117;
                }

                copyShortDescription5 = [(NEIKEv2Packet *)a copyShortDescription];
                *buf = 138412290;
                v162 = copyShortDescription5;
                v64 = "%@ Did not receive method in KE payload";
                goto LABEL_111;
              }

              v105 = objc_getProperty(a, v104, 104, 1);
              v107 = v105;
              if (v105)
              {
                v105 = objc_getProperty(v105, v106, 40, 1);
              }

              v108 = v105;

              if (!v108)
              {
                v62 = ne_log_obj();
                if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_117;
                }

                copyShortDescription5 = [(NEIKEv2Packet *)a copyShortDescription];
                *buf = 138412290;
                v162 = copyShortDescription5;
                v64 = "%@ Did not receive data in KE payload";
                goto LABEL_111;
              }

              v110 = objc_getProperty(a, v109, 104, 1);
              selfa = v110;
              if (v110)
              {
                v110 = objc_getProperty(v110, v111, 32, 1);
              }

              v150 = v110;
              method2 = [v150 method];
              v113 = objc_getProperty(v5, v112, 56, 1);
              kemProtocol2 = [(NEIKEv2ChildSAProposal *)v113 kemProtocol];
              method3 = [kemProtocol2 method];

              if (method2 != method3)
              {
                v62 = ne_log_obj();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  copyShortDescription6 = [(NEIKEv2Packet *)a copyShortDescription];
                  v142 = objc_getProperty(a, v141, 104, 1);
                  selfb = v142;
                  if (v142)
                  {
                    v142 = objc_getProperty(v142, v143, 32, 1);
                  }

                  v151 = v142;
                  method4 = [v151 method];
                  v145 = objc_getProperty(v5, v144, 56, 1);
                  kemProtocol3 = [(NEIKEv2ChildSAProposal *)v145 kemProtocol];
                  method5 = [kemProtocol3 method];
                  *buf = 138412802;
                  v162 = copyShortDescription6;
                  v163 = 2048;
                  v164 = method4;
                  v165 = 2048;
                  v166 = method5;
                  _os_log_error_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_ERROR, "%@ Did not receive matching method from KE payload (%zu != %zu)", buf, 0x20u);
                }

                goto LABEL_117;
              }

              v118 = objc_getProperty(a, v117, 104, 1);
              v120 = v118;
              if (v118)
              {
                v118 = objc_getProperty(v118, v119, 40, 1);
              }

              v121 = v118;
              objc_setProperty_atomic(v5, v122, v121, 104);

              v123 = [(NEIKEv2Packet *)a copyNotification:?];
              objc_setProperty_atomic(v5, v124, v123, 128);
            }

            else
            {
              objc_setProperty_atomic(v5, v97, 0, 112);
            }

            v126 = objc_getProperty(a, v125, 128, 1);
            v128 = v126;
            if (v126)
            {
              v126 = objc_getProperty(v126, v127, 32, 1);
            }

            v129 = v126;
            [(NEIKEv2ChildSA *)v5 setInitiatorTrafficSelectors:v129];

            initiatorTrafficSelectors = [(NEIKEv2ChildSA *)v5 initiatorTrafficSelectors];

            if (initiatorTrafficSelectors)
            {
              v133 = objc_getProperty(a, v132, 136, 1);
              v135 = v133;
              if (v133)
              {
                v133 = objc_getProperty(v133, v134, 32, 1);
              }

              v136 = v133;
              [(NEIKEv2ChildSA *)v5 setResponderTrafficSelectors:v136];

              responderTrafficSelectors = [(NEIKEv2ChildSA *)v5 responderTrafficSelectors];

              if (responderTrafficSelectors)
              {
                a = 1;
LABEL_119:

                goto LABEL_120;
              }

              v62 = ne_log_obj();
              if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }

              copyShortDescription5 = [(NEIKEv2Packet *)a copyShortDescription];
              *buf = 138412290;
              v162 = copyShortDescription5;
              v64 = "%@ Could not set responder traffic selectors";
            }

            else
            {
              v62 = ne_log_obj();
              if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }

              copyShortDescription5 = [(NEIKEv2Packet *)a copyShortDescription];
              *buf = 138412290;
              v162 = copyShortDescription5;
              v64 = "%@ Could not set initiator traffic selectors";
            }

            goto LABEL_111;
          }

          v52 = ne_log_obj();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription7 = [(NEIKEv2Packet *)a copyShortDescription];
            *buf = 138412290;
            v162 = copyShortDescription7;
            v70 = "%@ Did not receive NONCE data";
            goto LABEL_66;
          }

LABEL_118:
          a = 0;
          goto LABEL_119;
        }

        v52 = ne_log_obj();
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_118;
        }

        copyShortDescription7 = [(NEIKEv2Packet *)a copyShortDescription];
        *buf = 138412290;
        v162 = copyShortDescription7;
        v70 = "%@ Did not receive NONCE payload";
      }

      else
      {
        v52 = ne_log_obj();
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_118;
        }

        copyShortDescription7 = [(NEIKEv2Packet *)a copyShortDescription];
        *buf = 138412290;
        v162 = copyShortDescription7;
        v70 = "%@ Could not set chosen proposal values";
      }

LABEL_66:
      v71 = v52;
      v72 = 12;
LABEL_67:
      _os_log_error_impl(&dword_1BA83C000, v71, OS_LOG_TYPE_ERROR, v70, buf, v72);

      goto LABEL_118;
    }

    v52 = ne_log_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription8 = [(NEIKEv2Packet *)a copyShortDescription];
      copyShortDescription7 = copyShortDescription8;
      if (firstObject)
      {
        v69 = *(firstObject + 8);
      }

      else
      {
        v69 = 0;
      }

      *buf = 138412546;
      v162 = copyShortDescription8;
      v163 = 1024;
      LODWORD(v164) = v69;
      v70 = "%@ SA proposal number %u does not match";
      v71 = v52;
      v72 = 18;
      goto LABEL_67;
    }

    goto LABEL_118;
  }

LABEL_123:

  v139 = *MEMORY[0x1E69E9840];
  return a;
}

+ (id)createChildSAResponse:(unint64_t)response errorCode:(void *)code errorData:
{
  v6 = a2;
  codeCopy = code;
  objc_opt_self();
  v8 = [(NEIKEv2Packet *)[NEIKEv2CreateChildPacket alloc] initResponse:v6];
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
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "[[NEIKEv2CreateChildPacket alloc] initResponse:] failed", buf, 2u);
    }

    v9 = 0;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)filloutPayloads
{
  v51 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  if (self)
  {
    rawPayloads = self->super._rawPayloads;
  }

  else
  {
    rawPayloads = 0;
  }

  v4 = rawPayloads;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v40;
    v9 = 0x1E7F04000uLL;
    v10 = &OBJC_IVAR___NEFilterFlow__direction;
    v11 = &OBJC_IVAR___NEFilterFlow__direction;
    *&v6 = 138412546;
    v37 = v6;
    v38 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        type = [v13 type];
        if (type > 42)
        {
          if (type <= 44)
          {
            if (type != 43)
            {
              if (!self)
              {
                continue;
              }

              v16 = 128;
              goto LABEL_43;
            }

            v18 = v13;
            if (self && objc_getProperty(self, v23, 144, 1))
            {
              v21 = [objc_getProperty(self v24];
            }

            else
            {
              v48 = v18;
              v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
              if (!self)
              {
                goto LABEL_54;
              }
            }

            v33 = 144;
            selfCopy3 = self;
            v35 = v21;
            goto LABEL_53;
          }

          if (type == 45)
          {
            if (!self)
            {
              continue;
            }

            v16 = 136;
            goto LABEL_43;
          }

          if (type == 47)
          {
            if (!self)
            {
              continue;
            }

            v16 = 120;
            goto LABEL_43;
          }
        }

        else if (type > 39)
        {
          if (type == 40)
          {
            if (!self)
            {
              continue;
            }

            v16 = 112;
            goto LABEL_43;
          }

          if (type == 41)
          {
            v18 = v13;
            if (self && objc_getProperty(self, v17, 64, 1))
            {
              v21 = [objc_getProperty(self v19];
              goto LABEL_50;
            }

            v49 = v18;
            v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
            if (self)
            {
LABEL_50:
              selfCopy3 = self;
              v35 = v21;
              v33 = 64;
              goto LABEL_53;
            }

            goto LABEL_54;
          }
        }

        else
        {
          if (type == 33)
          {
            v22 = *(v9 + 2600);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (!self)
              {
                continue;
              }

              v16 = v10[601];
            }

            else
            {
              if (!self)
              {
                continue;
              }

              v16 = v11[602];
            }

            goto LABEL_43;
          }

          if (type == 34)
          {
            if (!self)
            {
              continue;
            }

            v16 = 104;
LABEL_43:
            objc_setProperty_atomic(self, v15, v13, v16);
            continue;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v13;
          if (self && objc_getProperty(self, v25, 56, 1))
          {
            v21 = [objc_getProperty(self v26];
          }

          else
          {
            v47 = v18;
            v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
            if (!self)
            {
              goto LABEL_54;
            }
          }

          selfCopy3 = self;
          v35 = v21;
          v33 = 56;
LABEL_53:
          objc_setProperty_atomic(selfCopy3, v20, v35, v33);
LABEL_54:

          continue;
        }

        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v11;
          v29 = v10;
          v30 = v9;
          copyShortDescription = [(NEIKEv2Packet *)self copyShortDescription];
          typeDescription = [v13 typeDescription];
          *buf = v37;
          v44 = copyShortDescription;
          v45 = 2112;
          v46 = typeDescription;
          _os_log_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEFAULT, "%@ ignoring unexpected %@ payload", buf, 0x16u);

          v9 = v30;
          v10 = v29;
          v11 = v28;
          v4 = v38;
        }
      }

      v7 = [(NSArray *)v4 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v7);
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)gatherPayloads
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  v16 = [(NEIKEv2CreateChildPacket *)self mutableCopy];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(NEIKEv2Packet *)selfCopy addNotification:v16 fromArray:v3 toPayloads:?];
  if (selfCopy)
  {
    if (objc_getProperty(selfCopy, v4, 120, 1))
    {
      [v3 addObject:{objc_getProperty(selfCopy, v5, 120, 1)}];
    }

    [(NEIKEv2Packet *)selfCopy addNotification:v16 fromArray:v3 toPayloads:?];
    [(NEIKEv2Packet *)selfCopy addNotification:v16 fromArray:v3 toPayloads:?];
    [(NEIKEv2Packet *)selfCopy addNotification:v16 fromArray:v3 toPayloads:?];
    [(NEIKEv2Packet *)selfCopy addNotification:v16 fromArray:v3 toPayloads:?];
    if (objc_getProperty(selfCopy, v6, 88, 1))
    {
      [v3 addObject:{objc_getProperty(selfCopy, v7, 88, 1)}];
    }

    if (objc_getProperty(selfCopy, v7, 96, 1))
    {
      [v3 addObject:{objc_getProperty(selfCopy, v8, 96, 1)}];
    }

    if (objc_getProperty(selfCopy, v8, 112, 1))
    {
      [v3 addObject:{objc_getProperty(selfCopy, v9, 112, 1)}];
    }

    if (objc_getProperty(selfCopy, v9, 104, 1))
    {
      [v3 addObject:{objc_getProperty(selfCopy, v10, 104, 1)}];
    }

    if (objc_getProperty(selfCopy, v10, 128, 1))
    {
      [v3 addObject:{objc_getProperty(selfCopy, v11, 128, 1)}];
    }

    if (objc_getProperty(selfCopy, v11, 136, 1))
    {
      [v3 addObject:{objc_getProperty(selfCopy, v12, 136, 1)}];
    }

    [(NEIKEv2Packet *)selfCopy addNotification:v16 fromArray:v3 toPayloads:?];
    [v3 addObjectsFromArray:{objc_getProperty(selfCopy, v13, 144, 1)}];
    [v3 addObjectsFromArray:v16];
    Property = objc_getProperty(selfCopy, v14, 56, 1);
  }

  else
  {
    [(NEIKEv2Packet *)0 addNotification:v16 fromArray:v3 toPayloads:?];
    [(NEIKEv2Packet *)0 addNotification:v16 fromArray:v3 toPayloads:?];
    [(NEIKEv2Packet *)0 addNotification:v16 fromArray:v3 toPayloads:?];
    [(NEIKEv2Packet *)0 addNotification:v16 fromArray:v3 toPayloads:?];
    [(NEIKEv2Packet *)0 addNotification:v16 fromArray:v3 toPayloads:?];
    [v3 addObjectsFromArray:0];
    [v3 addObjectsFromArray:v16];
    Property = 0;
  }

  [v3 addObjectsFromArray:Property];
  [(NEIKEv2Packet *)selfCopy setRawPayloads:v3];
}

@end