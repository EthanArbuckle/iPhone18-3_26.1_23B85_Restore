@interface NEIKEv2Helper
+ (NEIKEv2ChildSAProposal)createIKEv2ChildSAProposalFromProtocol:(void *)a3 saParameters:;
+ (NEIKEv2IKESAProposal)createIKESAProposalFromProtocol:(void *)a3 saParameters:(void *)a4 options:(unsigned int *)a5 nonceSize:;
+ (id)createRouteArrayFromTunnelConfig:(void *)a3 localTS:(void *)a4 remoteTS:(void *)a5 gatewayAddress:(int)a6 isIPv4:;
+ (uint64_t)copyAdditionalKEMProtocolsForSAParameters:(uint64_t)a1;
+ (uint64_t)getIdentifierType:(uint64_t)a1;
@end

@implementation NEIKEv2Helper

+ (uint64_t)getIdentifierType:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if ([v2 rangeOfString:@".+@.+\\..+" options:1024] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v2 rangeOfString:@"^[1-2]?[0-9]{1 options:{2}\\.[1-2]?[0-9]{1, 2}\\.[1-2]?[0-9]{1, 2}\\.[1-2]?[0-9]{1, 2}$", 1024}] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v2 rangeOfString:@"^(:|(([0-9A-Fa-f]{1 options:{4}):)){1, 7}[0-9A-Fa-f]{1, 4}$", 1024}] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v3 = 2;
      }

      else
      {
        v3 = 5;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

+ (id)createRouteArrayFromTunnelConfig:(void *)a3 localTS:(void *)a4 remoteTS:(void *)a5 gatewayAddress:(int)a6 isIPv4:
{
  v77 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v56 = a3;
  v61 = a4;
  v64 = a5;
  objc_opt_self();
  v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v72;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v72 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v71 + 1) + 8 * i);
      if (a6)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        v16 = [NEIPv4Route alloc];
        v17 = [v15 address];
        v18 = [v17 hostname];
        v19 = [v15 subnetMaskAddress];
        v20 = [v19 hostname];
        v21 = [(NEIPv4Route *)v16 initWithDestinationAddress:v18 subnetMask:v20];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        v22 = [NEIPv6Route alloc];
        v17 = [v15 address];
        v18 = [v17 hostname];
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v15, "prefix")}];
        v21 = [(NEIPv6Route *)v22 initWithDestinationAddress:v18 networkPrefixLength:v19];
      }

      [(NEIPv4Route *)v21 setGatewayAddress:v64];
      [v63 addObject:v21];
      ++v12;
    }

    v11 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
  }

  while (v11);
LABEL_16:

  if (a6)
  {
    v23 = 7;
  }

  else
  {
    v23 = 8;
  }

  v24 = @"::";
  if (a6)
  {
    v24 = @"0.0.0.0";
    v25 = @"255.255.255.255";
  }

  else
  {
    v25 = @"ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff";
  }

  v58 = v24;
  v57 = v25;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v26 = v61;
  v27 = [v26 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v27)
  {
    v28 = v27;
    v60 = 0;
    v62 = 0;
    v29 = *v68;
    v59 = *v68;
LABEL_24:
    v30 = 0;
    while (1)
    {
      if (*v68 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = *(*(&v67 + 1) + 8 * v30);
      if ([(NEIKEv2TrafficSelector *)v31 type]!= v23)
      {
        goto LABEL_48;
      }

      v32 = [v31 startAddress];
      v33 = [v32 hostname];
      if (v33)
      {
        v34 = v33;
        v35 = v26;
        v36 = [v31 endAddress];
        v37 = [v36 hostname];

        if (v37)
        {
          v38 = [v31 startAddress];
          v39 = [v38 hostname];

          v40 = [v31 endAddress];
          v41 = [v40 hostname];

          v26 = v35;
          if (v39 && v41 && ([(__CFString *)v39 isEqualToString:v58]&& [(__CFString *)v41 isEqualToString:v57]|| [(__CFString *)v39 isEqualToString:v58, v56]&& [(__CFString *)v41 isEqualToString:v58]))
          {
            if (!v12)
            {
              v52 = off_1E7F04C50;
              if (!a6)
              {
                v52 = off_1E7F04C60;
              }

              v53 = [(__objc2_class *)*v52 defaultRoute];
              [v63 addObject:v53];

              v49 = v63;
              v51 = v63;

              goto LABEL_59;
            }
          }

          else
          {
            v42 = NEGetPrefixForAddressRangeStrings(v39, v41);
            if (v42)
            {
              v43 = v42;
              if (!a6)
              {
                v47 = [NEIPv6Route alloc];
                v48 = [MEMORY[0x1E696AD98] numberWithInt:v43];
                v45 = [(NEIPv6Route *)v47 initWithDestinationAddress:v39 networkPrefixLength:v48];

                v26 = v35;
                [(NEIPv6Route *)v45 setGatewayAddress:v64];
                [v63 addObject:v45];
                goto LABEL_47;
              }

              v44 = NECreateIPv4AddressMaskStringFromPrefix(v42);
              if (v44)
              {
                v45 = v44;
                v46 = [[NEIPv4Route alloc] initWithDestinationAddress:v39 subnetMask:v44];
                [(NEIPv4Route *)v46 setGatewayAddress:v64];
                [v63 addObject:v46];

LABEL_47:
                v29 = v59;

                ++v12;
                v60 = v39;
                v62 = v41;
                goto LABEL_48;
              }
            }
          }

          v60 = v39;
          v62 = v41;
        }

        else
        {
          v26 = v35;
        }

        v29 = v59;
      }

      else
      {
      }

LABEL_48:
      if (v28 == ++v30)
      {
        v28 = [v26 countByEnumeratingWithState:&v67 objects:v75 count:16];
        if (v28)
        {
          goto LABEL_24;
        }

        goto LABEL_52;
      }
    }
  }

  v60 = 0;
  v62 = 0;
LABEL_52:

  v49 = v63;
  if (v12)
  {
    v50 = v63;
  }

  else
  {
    v50 = 0;
  }

  v51 = v50;
  v39 = v60;
  v41 = v62;
LABEL_59:

  v54 = *MEMORY[0x1E69E9840];

  return v51;
}

+ (uint64_t)copyAdditionalKEMProtocolsForSAParameters:(uint64_t)a1
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [v2 postQuantumKeyExchangeMethods];
  v4 = [v3 count];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v4];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      v10 = 6;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v20 + 1) + 8 * i) intValue];
          if (v12)
          {
            v13 = [[NEIKEv2KEMProtocol alloc] initWithMethod:v12];
            v24 = v13;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
            v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
            [v5 setObject:v14 forKeyedSubscript:v15];
          }

          ++v10;
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v5];
    }

    else
    {
      v16 = 0;
    }

    v3 = v19;
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (NEIKEv2IKESAProposal)createIKESAProposalFromProtocol:(void *)a3 saParameters:(void *)a4 options:(unsigned int *)a5 nonceSize:
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v45 = a4;
  objc_opt_self();
  if (v9)
  {
    v10 = objc_alloc_init(NEIKEv2IKESAProposal);
    -[NEIKEv2IKESAProposal setLifetimeSeconds:](v10, "setLifetimeSeconds:", (60 * [v9 lifetimeMinutes]));
    v11 = [v9 encryptionAlgorithm];
    v12 = [NEIKEv2EncryptionProtocol alloc];
    v43 = v8;
    if (v11 > 3)
    {
      if (v11 > 5)
      {
        if (v11 == 6)
        {
          v13 = 5;
          goto LABEL_17;
        }

        if (v11 == 7)
        {
          v13 = 6;
          goto LABEL_17;
        }
      }

      else if (v11 != 4)
      {
        v13 = 4;
LABEL_17:
        v17 = [(NEIKEv2EncryptionProtocol *)v12 initWithEncryptionType:v13, v8];
        v18 = 0;
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    switch(v11)
    {
      case 1:
        v16 = 2;
        break;
      case 2:
        v16 = 3;
        break;
      case 3:
        v14 = 2;
LABEL_14:
        v15 = [(NEIKEv2EncryptionProtocol *)v12 initWithEncryptionType:v14, v8];
LABEL_20:
        v17 = v15;
        v18 = 1;
LABEL_21:
        v49 = v17;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:{1, v43}];
        [(NEIKEv2IKESAProposal *)v10 setEncryptionProtocols:v19];

        v20 = [v9 integrityAlgorithm];
        if (v20 > 3)
        {
          if (v20 == 4)
          {
            v21 = 6;
            if (v18)
            {
              v22 = 13;
              goto LABEL_36;
            }

            goto LABEL_37;
          }

          if (v20 == 5)
          {
            v21 = 7;
            if (v18)
            {
              v22 = 14;
              goto LABEL_36;
            }

LABEL_37:
            v23 = 0;
LABEL_38:
            v24 = [[NEIKEv2PRFProtocol alloc] initWithType:v21];
            v48 = v24;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
            [(NEIKEv2IKESAProposal *)v10 setPrfProtocols:v25];

            v26 = [(NEIKEv2PRFProtocol *)v24 nonceSize];
            if (v18)
            {
              v47 = v23;
              v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
              [(NEIKEv2IKESAProposal *)v10 setIntegrityProtocols:v27];
            }

            if (a5 && v26 > *a5)
            {
              *a5 = v26;
            }

            v28 = -[NEIKEv2KEMProtocol initWithMethod:]([NEIKEv2KEMProtocol alloc], "initWithMethod:", [v9 diffieHellmanGroup]);
            v46 = v28;
            v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
            [(NEIKEv2IKESAProposal *)v10 setKemProtocols:v29];

            v30 = [NEIKEv2Helper copyAdditionalKEMProtocolsForSAParameters:v9];
            [(NEIKEv2IKESAProposal *)v10 setAdditionalKEMProtocols:v30];

            v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v8 = v44;
            if ([v44 useExtendedAuthentication])
            {
              v32 = [v45 objectForKeyedSubscript:@"AccountName"];
              if (v32)
              {
                [v45 objectForKeyedSubscript:@"AccountName"];
              }

              else
              {
                [v44 username];
              }
              v33 = ;

              if (v33)
              {
                v34 = [v44 identityReferenceInternal];

                if (v34)
                {
                  v35 = [[NEIKEv2EAPProtocol alloc] initWithMethod:7];
                  [v31 addObject:v35];
                }

                v36 = [[NEIKEv2EAPProtocol alloc] initWithMethod:4];
                [v31 addObject:v36];
              }

              v37 = [v44 identityReferenceInternal];

              if (v37)
              {
                v38 = [[NEIKEv2EAPProtocol alloc] initWithMethod:6];
                [v31 addObject:v38];
              }

              if (![v31 count])
              {
                v42 = ne_log_obj();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_ERROR, "missing eap protocol", buf, 2u);
                }

                v39 = 0;
                goto LABEL_56;
              }
            }

            else
            {
              v33 = [[NEIKEv2EAPProtocol alloc] initWithMethod:0];
              [v31 addObject:v33];
            }

            [(NEIKEv2IKESAProposal *)v10 setEapProtocols:v31];
            v39 = v10;
LABEL_56:

            goto LABEL_57;
          }
        }

        else
        {
          if (v20 == 1)
          {
            v21 = 2;
            if (v18)
            {
              v22 = 2;
              goto LABEL_36;
            }

            goto LABEL_37;
          }

          if (v20 == 2)
          {
            v21 = 2;
            if (v18)
            {
              v22 = 7;
LABEL_36:
              v23 = [[NEIKEv2IntegrityProtocol alloc] initWithType:v22];
              goto LABEL_38;
            }

            goto LABEL_37;
          }
        }

        v21 = 5;
        if (v18)
        {
          v22 = 12;
          goto LABEL_36;
        }

        goto LABEL_37;
      default:
LABEL_13:
        v14 = 3;
        goto LABEL_14;
    }

    v15 = [(NEIKEv2EncryptionProtocol *)v12 initWithEncryptionWireType:v16 keyLength:0];
    goto LABEL_20;
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v51 = "+[NEIKEv2Helper createIKESAProposalFromProtocol:saParameters:options:nonceSize:]";
    _os_log_fault_impl(&dword_1BA83C000, &v10->super, OS_LOG_TYPE_FAULT, "%s called with null saParameters", buf, 0xCu);
  }

  v39 = 0;
LABEL_57:

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (NEIKEv2ChildSAProposal)createIKEv2ChildSAProposalFromProtocol:(void *)a3 saParameters:
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (v5)
  {
    v6 = objc_alloc_init(NEIKEv2ChildSAProposal);
    [(NEIKEv2ChildSAProposal *)v6 setProtocol:3];
    -[NEIKEv2ChildSAProposal setLifetimeSeconds:](v6, "setLifetimeSeconds:", (60 * [v5 lifetimeMinutes]));
    v7 = [v5 encryptionAlgorithm];
    v8 = [NEIKEv2EncryptionProtocol alloc];
    if (v7 <= 4)
    {
      switch(v7)
      {
        case 1:
          v11 = 2;
          break;
        case 2:
          v11 = 3;
          break;
        case 3:
          v9 = 2;
LABEL_14:
          v12 = [(NEIKEv2EncryptionProtocol *)v8 initWithEncryptionType:v9];
LABEL_17:
          p_super = &v12->super;
          v14 = 1;
LABEL_20:
          v28 = p_super;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
          [(NEIKEv2ChildSAProposal *)v6 setEncryptionProtocols:v15];

          if (v14)
          {
            v16 = [v5 integrityAlgorithm];
            v17 = [NEIKEv2IntegrityProtocol alloc];
            if ((v16 - 1) > 4)
            {
              v18 = 12;
            }

            else
            {
              v18 = qword_1BAA4F928[v16 - 1];
            }

            v19 = [(NEIKEv2IntegrityProtocol *)v17 initWithType:v18];
            v27 = v19;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
            [(NEIKEv2ChildSAProposal *)v6 setIntegrityProtocols:v20];
          }

          if ([v4 enablePFS])
          {
            v21 = -[NEIKEv2KEMProtocol initWithMethod:]([NEIKEv2KEMProtocol alloc], "initWithMethod:", [v5 diffieHellmanGroup]);
            v26 = v21;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
            [(NEIKEv2ChildSAProposal *)v6 setKemProtocols:v22];

            v23 = [NEIKEv2Helper copyAdditionalKEMProtocolsForSAParameters:v5];
            [(NEIKEv2ChildSAProposal *)v6 setAdditionalKEMProtocols:v23];
          }

          goto LABEL_27;
        default:
LABEL_13:
          v9 = 3;
          goto LABEL_14;
      }

      v12 = [(NEIKEv2EncryptionProtocol *)v8 initWithEncryptionWireType:v11 keyLength:0];
      goto LABEL_17;
    }

    switch(v7)
    {
      case 5:
        v10 = 4;
        break;
      case 6:
        v10 = 5;
        break;
      case 7:
        v10 = 6;
        break;
      default:
        goto LABEL_13;
    }

    p_super = [(NEIKEv2EncryptionProtocol *)v8 initWithEncryptionType:v10];
    v14 = 0;
    goto LABEL_20;
  }

  p_super = ne_log_obj();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v30 = "+[NEIKEv2Helper createIKEv2ChildSAProposalFromProtocol:saParameters:]";
    _os_log_fault_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_FAULT, "%s called with null saParameters", buf, 0xCu);
  }

  v6 = 0;
LABEL_27:

  v24 = *MEMORY[0x1E69E9840];

  return v6;
}

@end