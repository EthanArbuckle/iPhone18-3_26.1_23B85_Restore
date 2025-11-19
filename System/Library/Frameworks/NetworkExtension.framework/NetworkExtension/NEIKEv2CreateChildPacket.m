@interface NEIKEv2CreateChildPacket
+ (NSObject)createRekeyRequestChildSA:(uint64_t)a1;
+ (id)createChildSAResponse:(unint64_t)a3 errorCode:(void *)a4 errorData:;
- (uint64_t)validateRekeyResponseChildSA:(uint64_t)a1;
- (void)filloutPayloads;
- (void)gatherPayloads;
@end

@implementation NEIKEv2CreateChildPacket

+ (NSObject)createRekeyRequestChildSA:(uint64_t)a1
{
  v93 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if (!v2)
  {
    v6 = ne_log_obj();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
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
    v6 = ne_log_obj();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
LABEL_34:
      v82 = 0;
      goto LABEL_59;
    }

    v91 = 136315138;
    v92 = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyRequestChildSA:]";
    v87 = "%s called with null childSA.rekeyRequestProposals";
LABEL_49:
    _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, v87, &v91, 0xCu);
    goto LABEL_34;
  }

  v6 = [(NEIKEv2Packet *)[NEIKEv2CreateChildPacket alloc] initOutbound];
  if (!v6)
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

  if (![(NEIKEv2Packet *)v6 addNotifyPayload:?])
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
  v16 = [v15 mode];

  if (v16 == 1 && ![(NEIKEv2Packet *)v6 addNotification:0 data:?])
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
  objc_setProperty_atomic(v6, v18, v17, 96);

  v20 = objc_getProperty(v2, v19, 176, 1);
  v22 = objc_getProperty(v6, v21, 96, 1);
  v24 = v22;
  if (v22)
  {
    objc_setProperty_atomic(v22, v23, v20, 32);
  }

  if ([(NEIKEv2ChildSA *)v2 shouldGenerateNewDHKeys])
  {
    v27 = objc_alloc_init(NEIKEv2KeyExchangePayload);
    objc_setProperty_atomic(v6, v28, v27, 104);

    v30 = [(NEIKEv2ChildSA *)v2 preferredKEMProtocol];
    v32 = objc_getProperty(v6, v31, 104, 1);
    v34 = v32;
    if (v32)
    {
      objc_setProperty_atomic(v32, v33, v30, 32);
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
    v41 = objc_getProperty(v6, v40, 104, 1);
    v43 = v41;
    if (v41)
    {
      objc_setProperty_atomic(v41, v42, v39, 40);
    }

    v45 = objc_getProperty(v6, v44, 104, 1);
    v46 = [(NEIKEv2Payload *)v45 isValid];

    if ((v46 & 1) == 0)
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

  v47 = objc_getProperty(v6, v26, 96, 1);
  v48 = [(NEIKEv2Payload *)v47 isValid];

  if ((v48 & 1) == 0)
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
  objc_setProperty_atomic(v6, v50, v49, 112);

  v52 = objc_getProperty(v2, v51, 80, 1);
  v54 = objc_getProperty(v6, v53, 112, 1);
  v56 = v54;
  if (v54)
  {
    objc_setProperty_atomic(v54, v55, v52, 32);
  }

  v58 = objc_getProperty(v6, v57, 112, 1);
  v59 = [(NEIKEv2Payload *)v58 isValid];

  if ((v59 & 1) == 0)
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
  objc_setProperty_atomic(v6, v61, v60, 128);

  v63 = [(NEIKEv2ChildSA *)v2 initiatorTrafficSelectors];
  v65 = objc_getProperty(v6, v64, 128, 1);
  v67 = v65;
  if (v65)
  {
    objc_setProperty_atomic(v65, v66, v63, 32);
  }

  v69 = objc_getProperty(v6, v68, 128, 1);
  v70 = [(NEIKEv2Payload *)v69 isValid];

  if ((v70 & 1) == 0)
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
  objc_setProperty_atomic(v6, v72, v71, 136);

  v74 = [(NEIKEv2ChildSA *)v2 responderTrafficSelectors];
  v76 = objc_getProperty(v6, v75, 136, 1);
  v78 = v76;
  if (v76)
  {
    objc_setProperty_atomic(v76, v77, v74, 32);
  }

  v80 = objc_getProperty(v6, v79, 136, 1);
  v81 = [(NEIKEv2Payload *)v80 isValid];

  if ((v81 & 1) == 0)
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

  v82 = v6;
LABEL_58:

LABEL_59:
  v88 = *MEMORY[0x1E69E9840];

  return v82;
}

- (uint64_t)validateRekeyResponseChildSA:(uint64_t)a1
{
  v168 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (a1)
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
      a1 = 0;
LABEL_122:

      goto LABEL_123;
    }

    if ([(NEIKEv2Packet *)a1 hasErrors])
    {
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v7 = objc_getProperty(a1, v6, 64, 1);
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
          v73 = [(NEIKEv2Packet *)a1 copyShortDescription];
          v74 = [(NEIKEv2NotifyPayload *)v12 copyError];
          *buf = 138412546;
          v162 = v73;
          v163 = 2112;
          v164 = v74;
          _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "%@ Rekey child received notify error %@", buf, 0x16u);
        }

        if (v12[1].isa == 17)
        {
          v32 = objc_getProperty(v12, v31, 40, 1);
          v16 = v32;
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
      v14 = [(NEIKEv2Packet *)a1 hasNotification:?];

      if ((v14 & 1) == 0)
      {
        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v16 = [(NEIKEv2Packet *)a1 copyShortDescription];
          *buf = 138412290;
          v162 = v16;
          _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "%@ Transport mode Child SA was not accepted", buf, 0xCu);
LABEL_34:
        }

        goto LABEL_35;
      }
    }

    else
    {
    }

    Property = objc_getProperty(a1, v15, 96, 1);
    v19 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v18, 32, 1);
    }

    v7 = Property;

    if ([v7 count]!= 1)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v75 = [(NEIKEv2Packet *)a1 copyShortDescription];
        v76 = [v7 count];
        *buf = 138412546;
        v162 = v75;
        v163 = 1024;
        LODWORD(v164) = v76;
        _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%@ Received %u child SA proposals, require 1", buf, 0x12u);
      }

      a1 = 0;
      goto LABEL_121;
    }

    v20 = [v7 firstObject];
    v23 = objc_getProperty(v5, v21, 176, 1);
    if (v20)
    {
      v24 = objc_getProperty(v20, v22, 80, 1);
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
        v28 = [(NEIKEv2Packet *)a1 copyShortDescription];
        *buf = 138412290;
        v162 = v28;
        v29 = "%@ Child SA proposal missing SPI";
        goto LABEL_69;
      }

LABEL_40:
      a1 = 0;
LABEL_120:

LABEL_121:
      goto LABEL_122;
    }

    if (v20)
    {
      v26 = *(v20 + 8);
      if ([v23 count] < v26)
      {
        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = [(NEIKEv2Packet *)a1 copyShortDescription];
          *buf = 138412290;
          v162 = v28;
          v29 = "%@ Child SA proposal out of range";
LABEL_69:
          _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, v29, buf, 0xCu);

          goto LABEL_40;
        }

        goto LABEL_40;
      }

      v36 = *(v20 + 8) - 1;
    }

    else
    {
      [v23 count];
      v36 = -1;
    }

    v27 = [v23 objectAtIndexedSubscript:v36];
    if (([(NEIKEv2ChildSAProposal *)v20 matchesLocalProposal:v27 preferRemoteProposal:0 checkKEMethod:1]& 1) != 0)
    {
      v37 = [(NEIKEv2ChildSAProposal *)v27 copyFromRemote:v20 preferRemoteProposal:0 checkKEMethod:1];
      objc_setProperty_atomic(v5, v38, v37, 56);

      v40 = objc_getProperty(v5, v39, 56, 1);
      if (v40)
      {
        objc_setProperty_atomic(v5, v41, 0, 176);
        *(v5 + 9) = 1;
        v42 = &OBJC_IVAR___NEFilterFlow__direction;
        v44 = objc_getProperty(a1, v43, 112, 1);

        if (v44)
        {
          v46 = objc_getProperty(a1, v45, 112, 1);
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
            v54 = [v53 strictNonceSizeChecks];

            if (v54)
            {
              v56 = objc_getProperty(a1, v55, 112, 1);
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
                  v63 = [(NEIKEv2Packet *)a1 copyShortDescription];
                  *buf = 138412546;
                  v162 = v63;
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
              v80 = [(NEIKEv2IKESAProposal *)v78 prfProtocol];
              v81 = [v80 nonceSize];

              v42 = &OBJC_IVAR___NEFilterFlow__direction;
              if (self < v81)
              {
                v62 = ne_log_obj();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  v63 = [(NEIKEv2Packet *)a1 copyShortDescription];
                  if (v52)
                  {
                    v83 = objc_getProperty(v52, v82, 96, 1);
                  }

                  else
                  {
                    v83 = 0;
                  }

                  v84 = v83;
                  v86 = [(NEIKEv2IKESAProposal *)v84 prfProtocol];
                  *buf = 138412802;
                  v162 = v63;
                  v163 = 2048;
                  v164 = self;
                  v165 = 2112;
                  v166 = v86;
                  _os_log_error_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is shorter than the minimum for PRF protocol %@", buf, 0x20u);

                  goto LABEL_113;
                }

                goto LABEL_117;
              }
            }

            v87 = objc_getProperty(a1, v55, v42[604], 1);
            v89 = v87;
            if (v87)
            {
              v87 = objc_getProperty(v87, v88, 32, 1);
            }

            v90 = v87;
            objc_setProperty_atomic(v5, v91, v90, 88);

            v93 = objc_getProperty(v5, v92, 56, 1);
            v95 = [(NEIKEv2ChildSAProposal *)v93 kemProtocol];
            v96 = [v95 method];

            if (v96)
            {
              v98 = objc_getProperty(a1, v97, 104, 1);

              if (!v98)
              {
                v62 = ne_log_obj();
                if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_117;
                }

                v63 = [(NEIKEv2Packet *)a1 copyShortDescription];
                *buf = 138412290;
                v162 = v63;
                v64 = "%@ Did not receive KE payload";
LABEL_111:
                v65 = v62;
                v66 = 12;
                goto LABEL_112;
              }

              v100 = objc_getProperty(a1, v99, 104, 1);
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

                v63 = [(NEIKEv2Packet *)a1 copyShortDescription];
                *buf = 138412290;
                v162 = v63;
                v64 = "%@ Did not receive method in KE payload";
                goto LABEL_111;
              }

              v105 = objc_getProperty(a1, v104, 104, 1);
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

                v63 = [(NEIKEv2Packet *)a1 copyShortDescription];
                *buf = 138412290;
                v162 = v63;
                v64 = "%@ Did not receive data in KE payload";
                goto LABEL_111;
              }

              v110 = objc_getProperty(a1, v109, 104, 1);
              selfa = v110;
              if (v110)
              {
                v110 = objc_getProperty(v110, v111, 32, 1);
              }

              v150 = v110;
              v152 = [v150 method];
              v113 = objc_getProperty(v5, v112, 56, 1);
              v115 = [(NEIKEv2ChildSAProposal *)v113 kemProtocol];
              v116 = [v115 method];

              if (v152 != v116)
              {
                v62 = ne_log_obj();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  v153 = [(NEIKEv2Packet *)a1 copyShortDescription];
                  v142 = objc_getProperty(a1, v141, 104, 1);
                  selfb = v142;
                  if (v142)
                  {
                    v142 = objc_getProperty(v142, v143, 32, 1);
                  }

                  v151 = v142;
                  v149 = [v151 method];
                  v145 = objc_getProperty(v5, v144, 56, 1);
                  v147 = [(NEIKEv2ChildSAProposal *)v145 kemProtocol];
                  v148 = [v147 method];
                  *buf = 138412802;
                  v162 = v153;
                  v163 = 2048;
                  v164 = v149;
                  v165 = 2048;
                  v166 = v148;
                  _os_log_error_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_ERROR, "%@ Did not receive matching method from KE payload (%zu != %zu)", buf, 0x20u);
                }

                goto LABEL_117;
              }

              v118 = objc_getProperty(a1, v117, 104, 1);
              v120 = v118;
              if (v118)
              {
                v118 = objc_getProperty(v118, v119, 40, 1);
              }

              v121 = v118;
              objc_setProperty_atomic(v5, v122, v121, 104);

              v123 = [(NEIKEv2Packet *)a1 copyNotification:?];
              objc_setProperty_atomic(v5, v124, v123, 128);
            }

            else
            {
              objc_setProperty_atomic(v5, v97, 0, 112);
            }

            v126 = objc_getProperty(a1, v125, 128, 1);
            v128 = v126;
            if (v126)
            {
              v126 = objc_getProperty(v126, v127, 32, 1);
            }

            v129 = v126;
            [(NEIKEv2ChildSA *)v5 setInitiatorTrafficSelectors:v129];

            v131 = [(NEIKEv2ChildSA *)v5 initiatorTrafficSelectors];

            if (v131)
            {
              v133 = objc_getProperty(a1, v132, 136, 1);
              v135 = v133;
              if (v133)
              {
                v133 = objc_getProperty(v133, v134, 32, 1);
              }

              v136 = v133;
              [(NEIKEv2ChildSA *)v5 setResponderTrafficSelectors:v136];

              v138 = [(NEIKEv2ChildSA *)v5 responderTrafficSelectors];

              if (v138)
              {
                a1 = 1;
LABEL_119:

                goto LABEL_120;
              }

              v62 = ne_log_obj();
              if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }

              v63 = [(NEIKEv2Packet *)a1 copyShortDescription];
              *buf = 138412290;
              v162 = v63;
              v64 = "%@ Could not set responder traffic selectors";
            }

            else
            {
              v62 = ne_log_obj();
              if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }

              v63 = [(NEIKEv2Packet *)a1 copyShortDescription];
              *buf = 138412290;
              v162 = v63;
              v64 = "%@ Could not set initiator traffic selectors";
            }

            goto LABEL_111;
          }

          v52 = ne_log_obj();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v68 = [(NEIKEv2Packet *)a1 copyShortDescription];
            *buf = 138412290;
            v162 = v68;
            v70 = "%@ Did not receive NONCE data";
            goto LABEL_66;
          }

LABEL_118:
          a1 = 0;
          goto LABEL_119;
        }

        v52 = ne_log_obj();
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_118;
        }

        v68 = [(NEIKEv2Packet *)a1 copyShortDescription];
        *buf = 138412290;
        v162 = v68;
        v70 = "%@ Did not receive NONCE payload";
      }

      else
      {
        v52 = ne_log_obj();
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_118;
        }

        v68 = [(NEIKEv2Packet *)a1 copyShortDescription];
        *buf = 138412290;
        v162 = v68;
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
      v67 = [(NEIKEv2Packet *)a1 copyShortDescription];
      v68 = v67;
      if (v20)
      {
        v69 = *(v20 + 8);
      }

      else
      {
        v69 = 0;
      }

      *buf = 138412546;
      v162 = v67;
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
  return a1;
}

+ (id)createChildSAResponse:(unint64_t)a3 errorCode:(void *)a4 errorData:
{
  v6 = a2;
  v7 = a4;
  objc_opt_self();
  v8 = [(NEIKEv2Packet *)[NEIKEv2CreateChildPacket alloc] initResponse:v6];
  if (v8)
  {
    v9 = v8;
    if ([(NEIKEv2Packet *)v8 addNotification:a3 data:v7])
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
        v14 = [v13 type];
        if (v14 > 42)
        {
          if (v14 <= 44)
          {
            if (v14 != 43)
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
            v34 = self;
            v35 = v21;
            goto LABEL_53;
          }

          if (v14 == 45)
          {
            if (!self)
            {
              continue;
            }

            v16 = 136;
            goto LABEL_43;
          }

          if (v14 == 47)
          {
            if (!self)
            {
              continue;
            }

            v16 = 120;
            goto LABEL_43;
          }
        }

        else if (v14 > 39)
        {
          if (v14 == 40)
          {
            if (!self)
            {
              continue;
            }

            v16 = 112;
            goto LABEL_43;
          }

          if (v14 == 41)
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
              v34 = self;
              v35 = v21;
              v33 = 64;
              goto LABEL_53;
            }

            goto LABEL_54;
          }
        }

        else
        {
          if (v14 == 33)
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

          if (v14 == 34)
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

          v34 = self;
          v35 = v21;
          v33 = 56;
LABEL_53:
          objc_setProperty_atomic(v34, v20, v35, v33);
LABEL_54:

          continue;
        }

        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v11;
          v29 = v10;
          v30 = v9;
          v31 = [(NEIKEv2Packet *)self copyShortDescription];
          v32 = [v13 typeDescription];
          *buf = v37;
          v44 = v31;
          v45 = 2112;
          v46 = v32;
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
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  v16 = [(NEIKEv2CreateChildPacket *)self mutableCopy];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(NEIKEv2Packet *)v2 addNotification:v16 fromArray:v3 toPayloads:?];
  if (v2)
  {
    if (objc_getProperty(v2, v4, 120, 1))
    {
      [v3 addObject:{objc_getProperty(v2, v5, 120, 1)}];
    }

    [(NEIKEv2Packet *)v2 addNotification:v16 fromArray:v3 toPayloads:?];
    [(NEIKEv2Packet *)v2 addNotification:v16 fromArray:v3 toPayloads:?];
    [(NEIKEv2Packet *)v2 addNotification:v16 fromArray:v3 toPayloads:?];
    [(NEIKEv2Packet *)v2 addNotification:v16 fromArray:v3 toPayloads:?];
    if (objc_getProperty(v2, v6, 88, 1))
    {
      [v3 addObject:{objc_getProperty(v2, v7, 88, 1)}];
    }

    if (objc_getProperty(v2, v7, 96, 1))
    {
      [v3 addObject:{objc_getProperty(v2, v8, 96, 1)}];
    }

    if (objc_getProperty(v2, v8, 112, 1))
    {
      [v3 addObject:{objc_getProperty(v2, v9, 112, 1)}];
    }

    if (objc_getProperty(v2, v9, 104, 1))
    {
      [v3 addObject:{objc_getProperty(v2, v10, 104, 1)}];
    }

    if (objc_getProperty(v2, v10, 128, 1))
    {
      [v3 addObject:{objc_getProperty(v2, v11, 128, 1)}];
    }

    if (objc_getProperty(v2, v11, 136, 1))
    {
      [v3 addObject:{objc_getProperty(v2, v12, 136, 1)}];
    }

    [(NEIKEv2Packet *)v2 addNotification:v16 fromArray:v3 toPayloads:?];
    [v3 addObjectsFromArray:{objc_getProperty(v2, v13, 144, 1)}];
    [v3 addObjectsFromArray:v16];
    Property = objc_getProperty(v2, v14, 56, 1);
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
  [(NEIKEv2Packet *)v2 setRawPayloads:v3];
}

@end