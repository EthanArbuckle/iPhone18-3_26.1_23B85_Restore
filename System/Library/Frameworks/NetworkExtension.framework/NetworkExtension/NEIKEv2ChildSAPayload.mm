@interface NEIKEv2ChildSAPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)a3;
@end

@implementation NEIKEv2ChildSAPayload

- (BOOL)parsePayloadData:(id)a3
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length] <= 7)
  {
    newValue = ne_log_obj();
    if (os_log_type_enabled(newValue, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v91 = "[NEIKEv2ChildSAPayload parsePayloadData:]";
      _os_log_error_impl(&dword_1BA83C000, newValue, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_proposal_t))", buf, 0xCu);
    }

    goto LABEL_112;
  }

  newValue = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v4 bytes];
  v7 = [v4 length];
  if (v7 < 8)
  {
LABEL_96:
    if (!v7)
    {
      if (!self)
      {
LABEL_99:
        v55 = [(NEIKEv2ChildSAPayload *)self hasRequiredFields];
        goto LABEL_113;
      }

LABEL_98:
      objc_setProperty_atomic(self, v6, newValue, 32);
      goto LABEL_99;
    }

LABEL_118:
    v69 = ne_log_obj();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v91 = v7;
      _os_log_error_impl(&dword_1BA83C000, v69, OS_LOG_TYPE_ERROR, "Ignoring %u remaining bytes in Child SA payload", buf, 8u);
    }

    if (!self)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  v72 = self;
  v73 = v4;
  while (1)
  {
    v8 = bswap32(*(v5 + 2));
    v9 = HIWORD(v8);
    if (v7 < HIWORD(v8))
    {
      v65 = ne_log_obj();
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
LABEL_117:

        goto LABEL_118;
      }

      *buf = 67109376;
      *v91 = v7;
      *&v91[4] = 1024;
      *&v91[6] = v9;
      v66 = "Not enough bytes remaining (%u) to process proposal length %u";
      v67 = v65;
      v68 = 14;
LABEL_132:
      _os_log_error_impl(&dword_1BA83C000, v67, OS_LOG_TYPE_ERROR, v66, buf, v68);
      goto LABEL_117;
    }

    if (*(v5 + 6) + 8 > v9)
    {
      v65 = ne_log_obj();
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_117;
      }

      *buf = 67109120;
      *v91 = v9;
      v66 = "Proposal length %u is too short";
      v67 = v65;
      v68 = 8;
      goto LABEL_132;
    }

    v10 = *(v5 + 7);
    v11 = *(v5 + 5);
    selfa = [[NEIKEv2ChildSAProposal alloc] initWithProtocol:v11];
    v79 = v11;
    v77 = v7;
    if ((v11 & 0xFE) == 2)
    {
      if (*(v5 + 6) != 4)
      {
        goto LABEL_92;
      }

      v12 = *(v5 + 8);
      if (!v12)
      {
        v54 = ne_log_obj();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v70 = "IPsec SA value 0 is invalid";
          goto LABEL_126;
        }

        goto LABEL_94;
      }

      v13 = v5 + 12;
      v14 = v9 - 12;
      v15 = [[NEIKEv2ESPSPI alloc] initWithValue:v12];
    }

    else
    {
      if (v11 != 240 || *(v5 + 6) != 8)
      {
LABEL_92:
        v54 = ne_log_obj();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v62 = *(v5 + 4);
          v63 = *(v5 + 6);
          v64 = NEIKEv2ProtocolIDCreateString(v11);
          *buf = 67109634;
          *v91 = v62;
          *&v91[4] = 1024;
          *&v91[6] = v63;
          v92 = 2112;
          v93 = v64;
          _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, "SA proposal %u has wrong SPI length %u for protocol %@", buf, 0x18u);
        }

        goto LABEL_94;
      }

      v17 = *(v5 + 8);
      if (!v17)
      {
        v54 = ne_log_obj();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v70 = "TLS SA value 0 is invalid";
LABEL_126:
          _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, v70, buf, 2u);
        }

LABEL_94:

        goto LABEL_111;
      }

      v13 = v5 + 16;
      v14 = v9 - 16;
      v15 = [[NEIKEv2TLSSPI alloc] initWithValue:v17];
    }

    v18 = v15;
    if (selfa)
    {
      objc_setProperty_atomic(selfa, v16, v15, 80);
    }

    v75 = v9;
    v76 = v5;

    if (v10)
    {
      break;
    }

    v19 = 0;
    v78 = 0;
    v81 = 0;
LABEL_77:
    v4 = v73;
    if (v14)
    {
      v52 = ne_log_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = v76[4];
        *buf = 67109376;
        *v91 = v14;
        *&v91[4] = 1024;
        *&v91[6] = v53;
        _os_log_error_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_ERROR, "Ignoring %u remaining bytes in proposal %u", buf, 0xEu);
      }
    }

    if (selfa)
    {
      selfa->_proposalNumber = v76[4];
      selfa->_noESNTransformPresent = v78 & 1;
    }

    self = v72;
    if (v19)
    {
      v49 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v19];
      [(NEIKEv2ChildSAProposal *)selfa setAdditionalKEMProtocols:v49];
    }

    if (v81)
    {
      v51 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v81];
      if (selfa)
      {
        objc_setProperty_atomic(selfa, v50, v51, 72);
      }
    }

    [newValue addObject:selfa, v72];
    v7 = v77 - v75;
    if (*v76 != 2)
    {

      goto LABEL_96;
    }

    v5 = &v76[v75];

    if (v7 <= 7)
    {
      goto LABEL_96;
    }
  }

  v81 = 0;
  v78 = 0;
  v19 = 0;
  v20 = 1;
  v21 = 1;
  v22 = 0x1E696A000uLL;
  v80 = v10;
  while (1)
  {
    if (v14 <= 7)
    {
      v56 = ne_log_obj();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_110;
      }

      *buf = 67109376;
      *v91 = v14;
      *&v91[4] = 1024;
      *&v91[6] = v20;
      v57 = "Not enough bytes remaining (%u) for transform %u";
      goto LABEL_106;
    }

    v85 = v20;
    v23 = bswap32(*(v13 + 2)) >> 16;
    if (v14 < v23)
    {
      v56 = ne_log_obj();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_110;
      }

      *buf = 67109632;
      *v91 = v14;
      *&v91[4] = 1024;
      *&v91[6] = v20;
      v92 = 1024;
      LODWORD(v93) = v23;
      v57 = "Not enough bytes remaining (%u) to process transform %u with length %u";
      v58 = v56;
      v59 = 20;
      goto LABEL_107;
    }

    if (v23 <= 7)
    {
      v56 = ne_log_obj();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_110;
      }

      *buf = 67109376;
      *v91 = v20;
      *&v91[4] = 1024;
      *&v91[6] = v23;
      v57 = "Transform %u length %u is too short";
LABEL_106:
      v58 = v56;
      v59 = 14;
LABEL_107:
      _os_log_error_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_ERROR, v57, buf, v59);
      goto LABEL_110;
    }

    v24 = v23 - 8;
    v25 = *(v13 + 4);
    if (*(v13 + 4) <= 4u)
    {
      break;
    }

    if ((v25 - 6) >= 7)
    {
      if (v25 == 5 && v79 != 240)
      {
        v78 |= *(v13 + 6) == 0;
        goto LABEL_34;
      }

LABEL_45:
      if (!v81)
      {
        v81 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v25 = *(v13 + 4);
      }

      v38 = [*(v22 + 3480) numberWithUnsignedChar:{v25, v72}];
      [v81 addObject:v38];

      v39 = ne_log_obj();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = *(v13 + 4);
        *buf = 67109376;
        *v91 = v85;
        *&v91[4] = 1024;
        *&v91[6] = v40;
        _os_log_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_INFO, "Transform %u type %u in Child SA proposal is unsupported", buf, 0xEu);
      }

      goto LABEL_49;
    }

    v83 = v14;
    v26 = [*(v22 + 3480) numberWithUnsignedChar:?];
    v27 = [[NEIKEv2KEMProtocol alloc] initWithMethod:bswap32(*(v13 + 6)) >> 16];
    if (!v19)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v28 = [v19 objectForKeyedSubscript:{v26, v72}];

    if (v28)
    {
      v29 = [v19 objectForKeyedSubscript:v26];
      v30 = [v29 arrayByAddingObject:v27];
      [v19 setObject:v30 forKeyedSubscript:v26];

      v10 = v80;
      v22 = 0x1E696A000;
    }

    else
    {
      v86 = v27;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
      [v19 setObject:v29 forKeyedSubscript:v26];
    }

    v14 = v83;
LABEL_34:
    if (v24)
    {
      goto LABEL_74;
    }

LABEL_50:
    v13 += v23;
    v14 -= v23;
    v20 = ++v21;
    if (v21 > v10)
    {
      goto LABEL_77;
    }
  }

  if (v25 != 1)
  {
    if (v25 == 3)
    {
      if (v79 == 240)
      {
        goto LABEL_45;
      }

      v84 = v23 - 8;
      v41 = [[NEIKEv2IntegrityProtocol alloc] initWithType:bswap32(*(v13 + 6)) >> 16];
      v42 = [(NEIKEv2ChildSAProposal *)selfa integrityProtocols];

      if (v42)
      {
        v43 = [(NEIKEv2ChildSAProposal *)selfa integrityProtocols];
        [v43 arrayByAddingObject:v41];
        v45 = v44 = v14;
        [(NEIKEv2ChildSAProposal *)selfa setIntegrityProtocols:v45];
        goto LABEL_62;
      }

      v88 = v41;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
      [(NEIKEv2ChildSAProposal *)selfa setIntegrityProtocols:v43];
LABEL_70:

      v24 = v84;
      goto LABEL_34;
    }

    if (v25 != 4)
    {
      goto LABEL_45;
    }

    v31 = [[NEIKEv2KEMProtocol alloc] initWithMethod:bswap32(*(v13 + 6)) >> 16];
    v32 = [(NEIKEv2ChildSAProposal *)selfa kemProtocols];

    if (v32)
    {
      v33 = [(NEIKEv2ChildSAProposal *)selfa kemProtocols];
      [v33 arrayByAddingObject:v31];
      v35 = v34 = v14;
      [(NEIKEv2ChildSAProposal *)selfa setKemProtocols:v35];

      v14 = v34;
      v10 = v80;
    }

    else
    {
      v87 = v31;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
      [(NEIKEv2ChildSAProposal *)selfa setKemProtocols:v33];
    }

    v24 = v23 - 8;
    v22 = 0x1E696A000;
    goto LABEL_34;
  }

  if (v79 == 240)
  {
    goto LABEL_45;
  }

  if ((v23 - 8) >= 4u)
  {
    v36 = *(v13 + 8);
    if (v36 == 3712)
    {
      if (*(v13 + 10))
      {
        v84 = v23 - 12;
        v37 = __rev16(*(v13 + 10));
        goto LABEL_57;
      }

      v56 = ne_log_obj();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_110;
      }

      *buf = 67109120;
      *v91 = v20;
      v57 = "Transform %u has a key length attribute with length 0";
      v58 = v56;
      v59 = 8;
      goto LABEL_107;
    }

    v48 = ne_log_obj();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v91 = v85;
      *&v91[4] = 1024;
      *&v91[6] = __rev16(v36);
      _os_log_error_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_ERROR, "Transform %u has an unrecognized attribute type %u, ignoring", buf, 0xEu);
    }

LABEL_74:
    v39 = ne_log_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v91 = v24;
      *&v91[4] = 1024;
      *&v91[6] = v85;
      _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, "Ignoring %u remaining bytes in transform %u ", buf, 0xEu);
    }

LABEL_49:

    goto LABEL_50;
  }

  v84 = v23 - 8;
  v37 = 0;
LABEL_57:
  v46 = bswap32(*(v13 + 6)) >> 16;
  objc_opt_self();
  if (v46 > 0x1F)
  {
LABEL_60:
    v41 = [[NEIKEv2EncryptionProtocol alloc] initWithEncryptionWireType:v37 keyLength:?];
    v47 = [(NEIKEv2ChildSAProposal *)selfa encryptionProtocols];

    if (v47)
    {
      v43 = [(NEIKEv2ChildSAProposal *)selfa encryptionProtocols];
      [v43 arrayByAddingObject:v41];
      v45 = v44 = v14;
      [(NEIKEv2ChildSAProposal *)selfa setEncryptionProtocols:v45];
LABEL_62:

      v14 = v44;
      v10 = v80;
    }

    else
    {
      v89 = v41;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
      [(NEIKEv2ChildSAProposal *)selfa setEncryptionProtocols:v43];
    }

    goto LABEL_70;
  }

  if (((1 << v46) & 0x9000000C) != 0)
  {
    if (v37)
    {
      goto LABEL_108;
    }

    goto LABEL_60;
  }

  if (((1 << v46) & 0x40101000) == 0 || v37 == 128 || v37 == 192 || v37 == 256)
  {
    goto LABEL_60;
  }

LABEL_108:
  v56 = ne_log_obj();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    String = NEIKEv2EncryptionWireTypeCreateString(v46);
    *buf = 67109634;
    *v91 = v85;
    *&v91[4] = 1024;
    *&v91[6] = v37;
    v92 = 2112;
    v93 = String;
    _os_log_error_impl(&dword_1BA83C000, v56, OS_LOG_TYPE_ERROR, "Transform %u has invalid key length %u for encryption type %@", buf, 0x18u);
  }

LABEL_110:
  v4 = v73;

LABEL_111:
LABEL_112:
  v55 = 0;
LABEL_113:

  v60 = *MEMORY[0x1E69E9840];
  return v55;
}

- (BOOL)generatePayloadData
{
  v198 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v133 = [0 hasRequiredFields];
    Property = 0;
    if (v133)
    {
      goto LABEL_6;
    }

LABEL_158:
    log = ne_log_obj();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *v173 = 0;
      _os_log_error_impl(&dword_1BA83C000, log, OS_LOG_TYPE_ERROR, "Child SA payload missing required fields", v173, 2u);
    }

    goto LABEL_160;
  }

  if (self->super._payloadDataVector)
  {
    v3 = 1;
    goto LABEL_162;
  }

  if (![(NEIKEv2ChildSAPayload *)self hasRequiredFields])
  {
    goto LABEL_158;
  }

  Property = objc_getProperty(self, v4, 32, 1);
LABEL_6:
  v6 = [Property count];
  log = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v136 = self;
  if (self)
  {
    v8 = objc_getProperty(self, v7, 32, 1);
  }

  else
  {
    v8 = 0;
  }

  obj = v8;
  v141 = [obj countByEnumeratingWithState:&v182 objects:v197 count:16];
  if (!v141)
  {
LABEL_147:

    [(NEIKEv2KeyExchangeHandler *)v136 setSharedSecret:?];
    v3 = 1;
    goto LABEL_161;
  }

  v9 = v6;
  v10 = 0;
  v137 = v9;
  v11 = 1;
  v12 = *v183;
  v138 = *v183;
LABEL_10:
  if (v12 != v138)
  {
    objc_enumerationMutation(obj);
  }

  v13 = *(*(&v182 + 1) + 8 * v10);
  v15 = [v13 encryptionProtocols];
  v142 = v10;
  if (v13)
  {
    v16 = objc_getProperty(v13, v14, 96, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    if (v13)
    {
      v19 = objc_getProperty(v13, v18, 96, 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v196 = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v196 count:1];

    v15 = v21;
  }

  v23 = [v13 integrityProtocols];
  if (v13)
  {
    v24 = objc_getProperty(v13, v22, 104, 1);
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    if (v13)
    {
      v27 = objc_getProperty(v13, v26, 104, 1);
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    v195 = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v195 count:1];

    v23 = v29;
  }

  if ([v13 protocol] != 240)
  {
    if ([v13 protocol] != 240 && !objc_msgSend(v15, "count"))
    {
      v131 = ne_log_obj();
      if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_155;
      }

      *v173 = 0;
      v130 = "Child SA proposal missing encryption protocol";
      goto LABEL_154;
    }

LABEL_30:
    v30 = [v13 additionalKEMProtocols];
    v31 = [(NEIKEv2IKESAProposal *)v13 chosenAdditionalKEMProtocols];

    v148 = v13;
    v144 = v11;
    v145 = v23;
    v146 = v15;
    if (v31)
    {
      v32 = [(NEIKEv2IKESAProposal *)v13 chosenAdditionalKEMProtocols];
      if ([v32 count])
      {
        v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v32, "count")}];
        v178 = 0u;
        v179 = 0u;
        v180 = 0u;
        v181 = 0u;
        v34 = v32;
        v35 = [v34 countByEnumeratingWithState:&v178 objects:v194 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v179;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v179 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v178 + 1) + 8 * i);
              v40 = [v34 objectForKeyedSubscript:v39];
              v193 = v40;
              v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v193 count:1];
              [v33 setObject:v41 forKeyedSubscript:v39];
            }

            v36 = [v34 countByEnumeratingWithState:&v178 objects:v194 count:16];
          }

          while (v36);
        }

        LOBYTE(v11) = v144;
        v23 = v145;
        v15 = v146;
        v13 = v148;
      }

      else
      {
        v33 = MEMORY[0x1E695E0F8];
      }

      v30 = v33;
    }

    v43 = [v13 kemProtocols];
    if (v13)
    {
      v44 = objc_getProperty(v13, v42, 112, 1);
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;

    if (v45)
    {
      if (v13)
      {
        v47 = objc_getProperty(v13, v46, 112, 1);
      }

      else
      {
        v47 = 0;
      }

      v48 = v47;
      v192 = v48;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v192 count:1];

      v147 = v49;
    }

    else
    {
      v147 = v43;
    }

    v50 = [v13 protocol];
    v51 = [v15 count];
    if (v50 == 240)
    {
      v52 = v51;
    }

    else
    {
      v52 = v51 + 1;
    }

    v53 = v52 + [v23 count];
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v54 = v30;
    v55 = [v54 countByEnumeratingWithState:&v174 objects:v191 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v175;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v175 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = [v54 objectForKeyedSubscript:*(*(&v174 + 1) + 8 * j)];
          v53 += [v59 count];
        }

        v56 = [v54 countByEnumeratingWithState:&v174 objects:v191 count:16];
      }

      while (v56);
    }

    v60 = [v147 count];
    *v173 = (2 * (v137 > v11));
    if (v148)
    {
      v173[4] = v148[8];
      v173[5] = [v148 protocol];
      v62 = objc_getProperty(v148, v61, 80, 1);
    }

    else
    {
      v173[4] = 0;
      v129 = [0 protocol];
      v62 = 0;
      v173[5] = v129;
    }

    v63 = v60 + v53;
    v64 = v62;
    v65 = [v64 copySPIData];

    v173[6] = [v65 length];
    v173[7] = v63;
    v66 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:8 * v63 + v173[6] + 8];
    [v66 appendBytes:v173 length:8];
    v143 = v65;
    [v66 appendData:v65];
    if ([v148 protocol] == 240)
    {
      goto LABEL_95;
    }

    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v67 = v146;
    v68 = [v67 countByEnumeratingWithState:&v169 objects:v190 count:16];
    if (!v68)
    {

LABEL_90:
      if (![v145 count])
      {
        goto LABEL_95;
      }

      v93 = ne_log_obj();
      v11 = v144;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v93, OS_LOG_TYPE_ERROR, "Child SA proposal with authenticated encryption includes integrity options", buf, 2u);
      }

      v94 = 0;
      goto LABEL_128;
    }

    v69 = v68;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = *v170;
    for (k = *v170; ; k = *v170)
    {
      if (k != v73)
      {
        objc_enumerationMutation(v67);
      }

      v75 = *(*(&v169 + 1) + 8 * v72);
      if (v75)
      {
        v76 = *(v75 + 16);
        v77 = *(v75 + 8);
        *buf = 0x100000003;
        *&buf[6] = bswap32(v76) >> 16;
        if (v77)
        {
          v167[0] = 3712;
          v167[1] = __rev16(v77);
          *&buf[2] = 3072;
          [v66 appendBytes:buf length:8];
          v78 = v167;
          v79 = v66;
          v80 = 4;
        }

        else
        {
          *&buf[2] = 2048;
          v78 = buf;
          v79 = v66;
          v80 = 8;
        }

        [v79 appendBytes:v78 length:v80];
        v81 = *(v75 + 16);
        if (v81 <= 0x1F)
        {
          v82 = 0xD0100000 >> v81;
          goto LABEL_74;
        }
      }

      else
      {
        *buf = 0x108000003;
        [v66 appendBytes:buf length:8];
      }

      v82 = 0;
LABEL_74:
      v70 |= v82 ^ 1;
      v71 |= v82;
      if (++v72 >= v69)
      {
        v83 = [v67 countByEnumeratingWithState:&v169 objects:v190 count:16];
        if (!v83)
        {

          if (v71 & v70)
          {
            v126 = ne_log_obj();
            v125 = v143;
            if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v127 = v126;
              v128 = "Child SA proposal mixes authenticated and unauthenticated encryption protocols";
              goto LABEL_138;
            }

LABEL_139:

            v94 = 0;
            v11 = v144;
            goto LABEL_129;
          }

          if ((v70 & 1) == 0)
          {
            goto LABEL_90;
          }

          if (![v145 count])
          {
            v126 = ne_log_obj();
            v125 = v143;
            if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v127 = v126;
              v128 = "Child SA proposal missing integrity protocol";
LABEL_138:
              _os_log_error_impl(&dword_1BA83C000, v127, OS_LOG_TYPE_ERROR, v128, buf, 2u);
            }

            goto LABEL_139;
          }

          v165 = 0u;
          v166 = 0u;
          v163 = 0u;
          v164 = 0u;
          v84 = v145;
          v85 = [v84 countByEnumeratingWithState:&v163 objects:v189 count:16];
          if (v85)
          {
            v86 = v85;
            v87 = 0;
            v88 = *v164;
            for (m = *v164; ; m = *v164)
            {
              if (m != v88)
              {
                objc_enumerationMutation(v84);
              }

              v90 = *(*(&v163 + 1) + 8 * v87);
              *buf = 0;
              v91 = [v90 type];
              buf[0] = 3;
              buf[4] = 3;
              *&buf[6] = bswap32(v91) >> 16;
              *&buf[2] = 2048;
              [v66 appendBytes:buf length:8];
              if (++v87 >= v86)
              {
                v92 = [v84 countByEnumeratingWithState:&v163 objects:v189 count:16];
                if (!v92)
                {
                  break;
                }

                v86 = v92;
                v87 = 0;
              }
            }
          }

LABEL_95:
          v161 = 0u;
          v162 = 0u;
          v159 = 0u;
          v160 = 0u;
          v95 = [v54 allKeys];
          v96 = [v95 sortedArrayUsingSelector:sel_compare_];

          v150 = v96;
          v97 = [v96 countByEnumeratingWithState:&v159 objects:v188 count:16];
          if (v97)
          {
            v98 = v97;
            v99 = 0;
            v100 = *v160;
            v149 = *v160;
            while (1)
            {
              if (v100 != v149)
              {
                objc_enumerationMutation(v150);
              }

              v101 = *(*(&v159 + 1) + 8 * v99);
              v102 = [v101 unsignedCharValue];
              v155 = 0u;
              v156 = 0u;
              v157 = 0u;
              v158 = 0u;
              v103 = [v54 objectForKeyedSubscript:v101];
              v104 = [v103 countByEnumeratingWithState:&v155 objects:v187 count:16];
              if (v104)
              {
                v105 = v104;
                v106 = 0;
                v107 = *v156;
                for (n = *v156; ; n = *v156)
                {
                  if (n != v107)
                  {
                    objc_enumerationMutation(v103);
                  }

                  v109 = *(*(&v155 + 1) + 8 * v106);
                  *buf = 0;
                  v110 = [v109 method];
                  buf[0] = 3;
                  buf[4] = v102;
                  *&buf[6] = bswap32(v110) >> 16;
                  *&buf[2] = 2048;
                  [v66 appendBytes:buf length:8];
                  ++v63;
                  if (++v106 >= v105)
                  {
                    v111 = [v103 countByEnumeratingWithState:&v155 objects:v187 count:16];
                    if (!v111)
                    {
                      break;
                    }

                    v105 = v111;
                    v106 = 0;
                  }
                }
              }

              if (++v99 >= v98)
              {
                v112 = [v150 countByEnumeratingWithState:&v159 objects:v188 count:16];
                if (!v112)
                {
                  break;
                }

                v98 = v112;
                v99 = 0;
              }

              v100 = *v160;
            }
          }

          if ([v148 protocol] == 240)
          {
            v113 = v147;
            v114 = (v63 + [v147 count]);
          }

          else
          {
            v114 = 0;
            v113 = v147;
          }

          v153 = 0u;
          v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v115 = v113;
          v116 = [v115 countByEnumeratingWithState:&v151 objects:v186 count:16];
          if (v116)
          {
            v117 = v116;
            v118 = 0;
            v119 = *v152;
            for (ii = *v152; ; ii = *v152)
            {
              if (ii != v119)
              {
                objc_enumerationMutation(v115);
              }

              v121 = *(*(&v151 + 1) + 8 * v118);
              *buf = 0;
              v122 = [v121 method];
              if (v63 + 1 == v114)
              {
                v123 = 0;
              }

              else
              {
                v123 = 3;
              }

              buf[0] = v123;
              buf[4] = 4;
              *&buf[6] = bswap32(v122) >> 16;
              *&buf[2] = 2048;
              [v66 appendBytes:buf length:8];
              if (++v118 >= v117)
              {
                v124 = [v115 countByEnumeratingWithState:&v151 objects:v186 count:16];
                if (!v124)
                {
                  break;
                }

                v117 = v124;
                v118 = 0;
              }

              ++v63;
            }
          }

          if ([v148 protocol] != 240)
          {
            *buf = 0x508000000;
            [v66 appendBytes:buf length:8];
          }

          *([v66 mutableBytes] + 2) = bswap32(objc_msgSend(v66, "length")) >> 16;
          [log addObject:v66];
          v11 = (v144 + 1);
          v94 = 1;
LABEL_128:
          v125 = v143;
LABEL_129:

          if (!v94)
          {
            goto LABEL_156;
          }

          v10 = v142 + 1;
          if (v142 + 1 < v141)
          {
            goto LABEL_133;
          }

          v141 = [obj countByEnumeratingWithState:&v182 objects:v197 count:16];
          if (!v141)
          {
            goto LABEL_147;
          }

          v10 = 0;
LABEL_133:
          v12 = *v183;
          goto LABEL_10;
        }

        v69 = v83;
        v72 = 0;
      }
    }
  }

  if ([v15 count])
  {
    v131 = ne_log_obj();
    if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_155;
    }

    *v173 = 0;
    v130 = "Child TLS SA proposal has encryption protocol";
    goto LABEL_154;
  }

  if (![v23 count])
  {
    goto LABEL_30;
  }

  v131 = ne_log_obj();
  if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
  {
    *v173 = 0;
    v130 = "Child TLS SA proposal has integrity protocols";
LABEL_154:
    _os_log_error_impl(&dword_1BA83C000, v131, OS_LOG_TYPE_ERROR, v130, v173, 2u);
  }

LABEL_155:

LABEL_156:
LABEL_160:
  v3 = 0;
LABEL_161:

LABEL_162:
  v134 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  return [(NEIKEv2ChildSAPayload *)self count]!= 0;
}

@end