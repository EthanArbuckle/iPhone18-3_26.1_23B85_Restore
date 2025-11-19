@interface NEHotspotConfiguration
- (NEHotspotConfiguration)init;
- (NEHotspotConfiguration)initWithCoder:(id)a3;
- (NEHotspotConfiguration)initWithHS20Settings:(NEHotspotHS20Settings *)hs20Settings eapSettings:(NEHotspotEAPSettings *)eapSettings;
- (NEHotspotConfiguration)initWithSSID:(NSString *)SSID;
- (NEHotspotConfiguration)initWithSSID:(NSString *)SSID eapSettings:(NEHotspotEAPSettings *)eapSettings;
- (NEHotspotConfiguration)initWithSSID:(NSString *)SSID passphrase:(NSString *)passphrase isWEP:(BOOL)isWEP;
- (NEHotspotConfiguration)initWithSSIDPrefix:(NSString *)SSIDPrefix;
- (NEHotspotConfiguration)initWithSSIDPrefix:(NSString *)SSIDPrefix passphrase:(NSString *)passphrase isWEP:(BOOL)isWEP;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)validate;
- (uint64_t)validateEAPSettings;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEHotspotConfiguration

- (int64_t)validate
{
  v104 = *MEMORY[0x1E69E9840];
  v5 = [(NEHotspotConfiguration *)self useSSIDPrefix];
  if (v5 || (-[NEHotspotConfiguration SSID](self, "SSID"), v2 = objc_claimAutoreleasedReturnValue(), ![v2 length]))
  {
    v6 = 0;
    v7 = 0;
    if (![(NEHotspotConfiguration *)self useSSIDPrefix])
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = [(NEHotspotConfiguration *)self SSID];
    if ([v3 length] <= 0x20)
    {

      goto LABEL_16;
    }

    if (![(NEHotspotConfiguration *)self useSSIDPrefix])
    {

      goto LABEL_37;
    }

    v6 = 1;
  }

  v8 = [(NEHotspotConfiguration *)self SSIDPrefix];
  if (![v8 length])
  {

    v7 = 0;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = [(NEHotspotConfiguration *)self SSIDPrefix];
  if ([v9 length] >= 3)
  {
    v10 = [(NEHotspotConfiguration *)self SSIDPrefix];
    v7 = [v10 length] < 0x21;

    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v7 = 0;
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v5)
  {
    if (!v7)
    {
LABEL_37:
      if ([(NEHotspotConfiguration *)self securityType]!= 4)
      {
        v25 = [(NEHotspotConfiguration *)self securityType];
        if (v25 != 4)
        {
          if (v25 == 3)
          {
            result = 101;
          }

          else if ([(NEHotspotConfiguration *)self useSSIDPrefix])
          {
            result = 110;
          }

          else
          {
            result = 101;
          }

          goto LABEL_84;
        }

LABEL_76:
        result = 106;
        goto LABEL_84;
      }

      if ([(NEHotspotConfiguration *)self joinOnce])
      {
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v103 = objc_opt_class();
          v22 = v103;
          v23 = "%@ JoinOnce is not supported for Hotspot 2.0 Wi-Fi networks.";
          goto LABEL_86;
        }

LABEL_40:

        result = 109;
        goto LABEL_84;
      }

      v26 = [(NEHotspotConfiguration *)self hs20Settings];
      if (v26)
      {
        v27 = v26;
        v28 = [(NEHotspotConfiguration *)self hs20Settings];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = [(NEHotspotConfiguration *)self hs20Settings];
          v30 = [v29 domainName];
          if ([v30 length])
          {
            v31 = [(NEHotspotConfiguration *)self hs20Settings];
            v32 = [v31 domainName];
            v33 = [v32 length];

            if (v33 <= 0x80)
            {
              v34 = [(NEHotspotConfiguration *)self eapSettings];
              if (v34)
              {
                v35 = v34;
                v36 = [(NEHotspotConfiguration *)self eapSettings];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v37 = [(NEHotspotConfiguration *)self validateEAPSettings];

                  if (v37)
                  {
                    v38 = [(NEHotspotConfiguration *)self hs20Settings];
                    v39 = [v38 isRoamingEnabled];

                    if (v39)
                    {
                      v40 = [(NEHotspotConfiguration *)self hs20Settings];
                      v41 = [v40 roamingConsortiumOIs];
                      if ([v41 count])
                      {
                      }

                      else
                      {
                        v64 = [(NEHotspotConfiguration *)self hs20Settings];
                        v65 = [v64 naiRealmNames];
                        v66 = [v65 count];

                        if (!v66)
                        {
                          v89 = ne_log_obj();
                          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v103 = objc_opt_class();
                            v94 = v103;
                            _os_log_error_impl(&dword_1BA83C000, v89, OS_LOG_TYPE_ERROR, "%@ invalid HS2.0 configuration(roaming consortium OIs/NAI realms not provided).", buf, 0xCu);
                          }

                          goto LABEL_121;
                        }
                      }
                    }

                    v67 = [(NEHotspotConfiguration *)self hs20Settings];
                    v68 = [v67 MCCAndMNCs];
                    v69 = [v68 count];

                    if (!v69)
                    {
                      goto LABEL_78;
                    }

                    v99 = 0u;
                    v100 = 0u;
                    v97 = 0u;
                    v98 = 0u;
                    v70 = [(NEHotspotConfiguration *)self hs20Settings];
                    v71 = [v70 MCCAndMNCs];

                    v72 = [v71 countByEnumeratingWithState:&v97 objects:v101 count:16];
                    if (!v72)
                    {
LABEL_115:

                      goto LABEL_78;
                    }

                    v73 = v72;
                    v74 = *v98;
                    v75 = 0x1E696A000uLL;
                    v76 = 0x1E696A000uLL;
                    v95 = *v98;
                    v96 = v71;
                    while (1)
                    {
                      v77 = 0;
LABEL_100:
                      if (*v98 != v74)
                      {
                        objc_enumerationMutation(v71);
                      }

                      v78 = *(*(&v97 + 1) + 8 * v77);
                      v79 = v75;
                      v80 = *(v75 + 3776);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0 || [v78 length] != 6)
                      {
                        break;
                      }

                      v81 = v76;
                      v82 = [*(v76 + 2824) characterSetWithCharactersInString:@"0123456789"];
                      for (i = 0; i != 6; ++i)
                      {
                        v84 = [v78 characterAtIndex:{i, v95}];
                        v85 = [v82 characterIsMember:v84];
                        if (i == 3)
                        {
                          if (v84 == 70)
                          {
                            v86 = 1;
                          }

                          else
                          {
                            v86 = v85;
                          }

                          if ((v86 & 1) == 0)
                          {
                            v87 = ne_log_obj();
                            if (!os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_119;
                            }

LABEL_127:
                            v92 = objc_opt_class();
                            *buf = 138412290;
                            v103 = v92;
                            v93 = v92;
                            _os_log_error_impl(&dword_1BA83C000, v87, OS_LOG_TYPE_ERROR, "%@ invalid HS2.0 configuration.", buf, 0xCu);

LABEL_119:
                            v71 = v96;

                            goto LABEL_120;
                          }
                        }

                        else if ((v85 & 1) == 0)
                        {
                          v87 = ne_log_obj();
                          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_127;
                          }

                          goto LABEL_119;
                        }
                      }

                      ++v77;
                      v75 = v79;
                      v74 = v95;
                      v71 = v96;
                      v76 = v81;
                      if (v77 != v73)
                      {
                        goto LABEL_100;
                      }

                      v73 = [v96 countByEnumeratingWithState:&v97 objects:v101 count:16];
                      if (!v73)
                      {
                        goto LABEL_115;
                      }
                    }

                    v82 = ne_log_obj();
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                    {
                      v90 = objc_opt_class();
                      *buf = 138412290;
                      v103 = v90;
                      v91 = v90;
                      _os_log_error_impl(&dword_1BA83C000, v82, OS_LOG_TYPE_ERROR, "%@ invalid HS2.0 configuration.", buf, 0xCu);
                    }

LABEL_120:

LABEL_121:
                    result = 105;
                    goto LABEL_84;
                  }
                }

                else
                {
                }
              }

              v59 = ne_log_obj();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v103 = objc_opt_class();
                v60 = v103;
                v61 = "%@ invalid HS2.0 EAP settings.";
                goto LABEL_94;
              }

LABEL_92:

              result = 104;
              goto LABEL_84;
            }

            goto LABEL_73;
          }
        }
      }

LABEL_73:
      v48 = ne_log_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v103 = objc_opt_class();
        v62 = v103;
        _os_log_error_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_ERROR, "%@ invalid HS2.0 domain name.", buf, 0xCu);
      }

      goto LABEL_76;
    }
  }

  else
  {

    if (!v7)
    {
      goto LABEL_37;
    }
  }

LABEL_16:
  if (![(NEHotspotConfiguration *)self securityType])
  {
    goto LABEL_78;
  }

  if ([(NEHotspotConfiguration *)self securityType]== 2)
  {
    v11 = [(NEHotspotConfiguration *)self passphrase];
    if ([v11 length])
    {
      v12 = [(NEHotspotConfiguration *)self passphrase];
      if ([v12 length] > 7)
      {
        v13 = [(NEHotspotConfiguration *)self passphrase];
        v14 = [v13 length];

        if (v14 < 0x40)
        {
          goto LABEL_78;
        }

        goto LABEL_59;
      }
    }

LABEL_59:
    v42 = ne_log_obj();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v103 = objc_opt_class();
      v58 = v103;
      _os_log_error_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_ERROR, "%@ invalid WPA/WPA2 passphrase length.", buf, 0xCu);
    }

    result = 102;
    goto LABEL_84;
  }

  if ([(NEHotspotConfiguration *)self securityType]!= 1)
  {
    if ([(NEHotspotConfiguration *)self securityType]!= 3)
    {
      goto LABEL_78;
    }

    if ([(NEHotspotConfiguration *)self joinOnce])
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v103 = objc_opt_class();
        v22 = v103;
        v23 = "%@ JoinOnce is not supported for Enterprise Wi-Fi networks.";
LABEL_86:
        _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);

        goto LABEL_40;
      }

      goto LABEL_40;
    }

    v43 = [(NEHotspotConfiguration *)self eapSettings];
    if (v43)
    {
      v44 = v43;
      v45 = [(NEHotspotConfiguration *)self eapSettings];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = [(NEHotspotConfiguration *)self validateEAPSettings];

        if (v46)
        {
          goto LABEL_78;
        }
      }

      else
      {
      }
    }

    v59 = ne_log_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v103 = objc_opt_class();
      v60 = v103;
      v61 = "%@ invalid EAP settings.";
LABEL_94:
      _os_log_error_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_ERROR, v61, buf, 0xCu);

      goto LABEL_92;
    }

    goto LABEL_92;
  }

  v15 = [(NEHotspotConfiguration *)self passphrase];
  if ([v15 length] && self)
  {
    v16 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
    v17 = [v16 invertedSet];

    v18 = [(NEHotspotConfiguration *)self passphrase];
    v19 = [v18 rangeOfCharacterFromSet:v17];

    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [(NEHotspotConfiguration *)self passphrase];
      if ([v20 length] == 10)
      {

        goto LABEL_78;
      }

      v49 = [(NEHotspotConfiguration *)self passphrase];
      v50 = [v49 length];

      if (v50 == 26)
      {
LABEL_78:
        v51 = [(NEHotspotConfiguration *)self lifeTimeInDays];
        if (v51)
        {
          v52 = v51;
          v53 = [(NEHotspotConfiguration *)self lifeTimeInDays];
          if ([v53 intValue] >= 366)
          {

LABEL_82:
            lifeTimeInDays = self->_lifeTimeInDays;
            self->_lifeTimeInDays = 0;

            goto LABEL_83;
          }

          v54 = [(NEHotspotConfiguration *)self lifeTimeInDays];
          v55 = [v54 intValue];

          if (v55 <= 0)
          {
            goto LABEL_82;
          }
        }

LABEL_83:
        result = 100;
        goto LABEL_84;
      }

      goto LABEL_68;
    }
  }

LABEL_68:
  v47 = ne_log_obj();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v103 = objc_opt_class();
    v63 = v103;
    _os_log_error_impl(&dword_1BA83C000, v47, OS_LOG_TYPE_ERROR, "%@ invalid WEP passphrase length.", buf, 0xCu);
  }

  result = 103;
LABEL_84:
  v57 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)validateEAPSettings
{
  v1 = a1;
  v176 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_55;
  }

  v2 = 0x1E695D000uLL;
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F38BA478, &unk_1F38BA490, &unk_1F38BA4A8, &unk_1F38BA4C0, 0}];
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v4 = [v1 eapSettings];
  v5 = [v4 supportedEAPTypes];

  v6 = [v5 countByEnumeratingWithState:&v159 objects:v170 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v160;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v160 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v159 + 1) + 8 * i);
        if (([v3 containsObject:v10] & 1) == 0)
        {
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v65 = objc_opt_class();
            *buf = 138412546;
            v173 = v65;
            v174 = 2112;
            v175 = v10;
            v66 = v65;
            _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "%@ invalid EAP type %@", buf, 0x16u);
          }

          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v159 objects:v170 count:16];
    }

    while (v7);
  }

  v11 = [v1 eapSettings];
  v12 = [v11 supportedEAPTypes];
  if ([v12 containsObject:&unk_1F38BA478])
  {
  }

  else
  {
    v14 = [v1 eapSettings];
    v15 = [v14 isTLSClientCertificateRequired];

    if (!v15)
    {
      goto LABEL_42;
    }
  }

  v16 = [v1 eapSettings];
  v17 = [v16 identityReference];

  if (!v17)
  {
    v5 = ne_log_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v58 = objc_opt_class();
    *buf = 138412290;
    v173 = v58;
    v56 = v58;
    v57 = "%@ identity not provided";
    goto LABEL_89;
  }

  v18 = [v1 eapSettings];
  v19 = [v18 clientTrustChainReference];

  result = 0;
  v20 = [v1 eapSettings];
  v21 = [v20 identityReference];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_49;
  }

  v22 = [v1 eapSettings];
  v23 = [v22 identityReference];
  v24 = [v23 length];

  if (!v24)
  {
LABEL_49:
    v59 = ne_log_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v109 = objc_opt_class();
      *buf = 138412290;
      v173 = v109;
      v110 = v109;
      _os_log_error_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_ERROR, "%@ configuration with EAP-TLS type must have identity reference.", buf, 0xCu);
    }

    v30 = 0;
    goto LABEL_52;
  }

  v25 = MEMORY[0x1E695DF90];
  v26 = [v1 eapSettings];
  v27 = [v26 identityReference];
  v28 = *MEMORY[0x1E695E4D0];
  v29 = *MEMORY[0x1E697AFF8];
  v157 = *MEMORY[0x1E697B328];
  obj = *MEMORY[0x1E697B3C8];
  v30 = [v25 dictionaryWithObjectsAndKeys:{v27, *MEMORY[0x1E697B3C8], *MEMORY[0x1E695E4D0], *MEMORY[0x1E697B328], *MEMORY[0x1E697B010], *MEMORY[0x1E697AFF8], 0}];

  if (SecItemCopyMatching(v30, &result) || !result)
  {
    v59 = ne_log_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v87 = objc_opt_class();
      *buf = 138412290;
      v173 = v87;
      v88 = v87;
      v89 = "%@ failed to find the identity item in the keychain.";
LABEL_87:
      _os_log_error_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_ERROR, v89, buf, 0xCu);
    }

LABEL_52:

    v5 = ne_log_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v108 = objc_opt_class();
    *buf = 138412290;
    v173 = v108;
    v56 = v108;
    v57 = "%@ invalid identity reference";
    goto LABEL_89;
  }

  v31 = CFGetTypeID(result);
  if (v31 != SecIdentityGetTypeID())
  {
    v59 = ne_log_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v107 = objc_opt_class();
      *buf = 138412290;
      v173 = v107;
      v88 = v107;
      v89 = "%@ failed to find valid identity item in the keychain.";
      goto LABEL_87;
    }

    goto LABEL_52;
  }

  if (v19)
  {
    goto LABEL_23;
  }

  v112 = result;
  certificateRef[0] = 0;
  *trust = 0;
  v164 = 0;
  BasicX509 = SecPolicyCreateBasicX509();
  if (BasicX509)
  {
    v114 = BasicX509;
    if (SecIdentityCopyCertificate(v112, certificateRef) || !certificateRef[0])
    {
      v117 = ne_log_obj();
      if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_149;
      }

      v131 = objc_opt_class();
      *buf = 138412290;
      v173 = v131;
      v119 = v131;
      v120 = "%@ SecIdentityCopyCertificate() failed";
    }

    else
    {
      v115 = CFArrayCreate(0, certificateRef, 1, MEMORY[0x1E695E9C0]);
      CFRelease(certificateRef[0]);
      if (v115)
      {
        v116 = SecTrustCreateWithCertificates(v115, v114, trust);
        CFRelease(v115);
        if (v116)
        {
          v117 = ne_log_obj();
          v2 = 0x1E695D000;
          if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_149;
          }

          v118 = objc_opt_class();
          *buf = 138412290;
          v173 = v118;
          v119 = v118;
          v120 = "%@ SecTrustCreateWithCertificates() failed";
        }

        else if (MEMORY[0x1BFAFA1B0](*trust, &v164))
        {
          v117 = ne_log_obj();
          v2 = 0x1E695D000;
          if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_149;
          }

          v137 = objc_opt_class();
          *buf = 138412290;
          v173 = v137;
          v119 = v137;
          v120 = "%@ SecTrustEvaluate() failed";
        }

        else
        {
          CertificateCount = SecTrustGetCertificateCount(*trust);
          if (CertificateCount > 1)
          {
            v148 = *MEMORY[0x1E697B320];
            v117 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v28, *MEMORY[0x1E697B320], *MEMORY[0x1E697B000], v29, 0}];
            v156 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v154 = *MEMORY[0x1E697B3D0];
            v149 = 1;
            while (1)
            {
              cf = 0;
              [v117 setObject:SecTrustGetCertificateAtIndex(*trust forKeyedSubscript:v149), v154];
              if (SecItemCopyMatching(v117, &cf))
              {
                break;
              }

              [v156 addObject:cf];
              CFRelease(cf);
              if (CertificateCount == ++v149)
              {
                v150 = [v1 eapSettings];
                [v150 setClientTrustChainReference:v156];
                goto LABEL_147;
              }
            }

            v150 = ne_log_obj();
            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              v152 = objc_opt_class();
              *buf = 138412290;
              v173 = v152;
              v153 = v152;
              _os_log_error_impl(&dword_1BA83C000, v150, OS_LOG_TYPE_ERROR, "%@ SecItemCopyMatching() failed", buf, 0xCu);
            }

LABEL_147:

            goto LABEL_148;
          }

          v117 = ne_log_obj();
          if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
LABEL_148:
            v2 = 0x1E695D000;
LABEL_149:

            CFRelease(v114);
            if (*trust)
            {
              CFRelease(*trust);
            }

            goto LABEL_23;
          }

          v145 = objc_opt_class();
          *buf = 138412290;
          v173 = v145;
          v119 = v145;
          v120 = "%@ failed to find the trust chain for the client certificate";
        }
      }

      else
      {
        v117 = ne_log_obj();
        if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_149;
        }

        v132 = objc_opt_class();
        *buf = 138412290;
        v173 = v132;
        v119 = v132;
        v120 = "%@ failed to allocate certificate array";
      }
    }

    _os_log_error_impl(&dword_1BA83C000, v117, OS_LOG_TYPE_ERROR, v120, buf, 0xCu);

    goto LABEL_148;
  }

  v130 = ne_log_obj();
  if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
  {
    v146 = objc_opt_class();
    *buf = 138412290;
    v173 = v146;
    v147 = v146;
    _os_log_error_impl(&dword_1BA83C000, v130, OS_LOG_TYPE_ERROR, "%@ SecPolicyCreateBasicX509 failed", buf, 0xCu);
  }

LABEL_23:
  if (result)
  {
    CFRelease(result);
  }

  if (!v19)
  {
    goto LABEL_41;
  }

  v32 = [v1 eapSettings];
  v33 = [v32 clientTrustChainReference];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_101;
  }

  v34 = [v1 eapSettings];
  v35 = [v34 clientTrustChainReference];
  v36 = [v35 count];

  if (!v36)
  {
LABEL_101:
    v37 = ne_log_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v121 = objc_opt_class();
      *trust = 138412290;
      *&trust[4] = v121;
      v122 = v121;
      _os_log_error_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_ERROR, "%@ invalid client trust chain", trust, 0xCu);
    }

LABEL_133:

    v5 = ne_log_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v143 = objc_opt_class();
    *buf = 138412290;
    v173 = v143;
    v56 = v143;
    v57 = "%@ invalid client trust chain";
    goto LABEL_89;
  }

  v37 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v28, v157, *MEMORY[0x1E697B000], v29, 0}];
  *certificateRef = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v38 = [v1 eapSettings];
  v39 = [v38 clientTrustChainReference];

  v40 = [v39 countByEnumeratingWithState:certificateRef objects:buf count:16];
  if (!v40)
  {
    goto LABEL_40;
  }

  v41 = v40;
  v42 = *v167;
  while (2)
  {
    for (j = 0; j != v41; ++j)
    {
      if (*v167 != v42)
      {
        objc_enumerationMutation(v39);
      }

      v44 = *(certificateRef[1] + j);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v44 length])
      {
        goto LABEL_132;
      }

      cf = 0;
      [v37 setObject:v44 forKeyedSubscript:obj];
      if (SecItemCopyMatching(v37, &cf))
      {
        v138 = ne_log_obj();
        if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          v139 = objc_opt_class();
          *trust = 138412290;
          *&trust[4] = v139;
          v140 = v139;
          v141 = "%@ failed to find the certificate item in the keychain.";
          goto LABEL_152;
        }

LABEL_131:

LABEL_132:
        goto LABEL_133;
      }

      if (!cf)
      {
        v138 = ne_log_obj();
        if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          v142 = objc_opt_class();
          *trust = 138412290;
          *&trust[4] = v142;
          v140 = v142;
          v141 = "%@ found nil certificate item in the keychain.";
          goto LABEL_152;
        }

        goto LABEL_131;
      }

      v45 = CFGetTypeID(cf);
      TypeID = SecCertificateGetTypeID();
      CFRelease(cf);
      if (v45 != TypeID)
      {
        v138 = ne_log_obj();
        if (!os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_131;
        }

        v151 = objc_opt_class();
        *trust = 138412290;
        *&trust[4] = v151;
        v140 = v151;
        v141 = "%@ failed to find valid certificate item in the keychain.";
LABEL_152:
        _os_log_error_impl(&dword_1BA83C000, v138, OS_LOG_TYPE_ERROR, v141, trust, 0xCu);

        goto LABEL_131;
      }
    }

    v41 = [v39 countByEnumeratingWithState:certificateRef objects:buf count:16];
    if (v41)
    {
      continue;
    }

    break;
  }

LABEL_40:

  v2 = 0x1E695D000;
LABEL_41:
  v47 = [v1 eapSettings];
  [v47 setTlsClientCertificateRequired:1];

LABEL_42:
  v48 = [v1 eapSettings];
  v49 = [v48 trustedServerCertificateReferences];
  v50 = [v49 count];

  v51 = [v1 eapSettings];
  v52 = v51;
  if (!v50)
  {
    v62 = [v51 trustedServerNames];
    v63 = [v62 count];

    if (!v63)
    {
      v5 = ne_log_obj();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      v64 = objc_opt_class();
      *buf = 138412290;
      v173 = v64;
      v56 = v64;
      v57 = "%@ EAP settings must have either trusted server certificates or trusted server names configured.";
      goto LABEL_89;
    }

    goto LABEL_72;
  }

  v53 = [v51 trustedServerCertificateReferences];
  v54 = [v53 count];

  if (v54 < 0xB)
  {
    v67 = *MEMORY[0x1E697B328];
    v68 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E695E4D0], *MEMORY[0x1E697B328], *MEMORY[0x1E697B000], *MEMORY[0x1E697AFF8], 0}];
    *certificateRef = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v69 = [v1 eapSettings];
    v70 = [v69 trustedServerCertificateReferences];

    v71 = [v70 countByEnumeratingWithState:certificateRef objects:buf count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v167;
      v74 = *MEMORY[0x1E697B3C8];
LABEL_61:
      v75 = 0;
      while (1)
      {
        if (*v167 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v76 = *(certificateRef[1] + v75);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v76 length])
        {
          break;
        }

        cf = 0;
        [v68 setObject:v76 forKeyedSubscript:v74];
        if (SecItemCopyMatching(v68, &cf))
        {
          v123 = ne_log_obj();
          if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            v124 = objc_opt_class();
            *trust = 138412290;
            *&trust[4] = v124;
            v125 = v124;
            v126 = "%@ failed to find the certificate item in the keychain.";
            goto LABEL_136;
          }

LABEL_108:

          break;
        }

        if (!cf)
        {
          v123 = ne_log_obj();
          if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            v127 = objc_opt_class();
            *trust = 138412290;
            *&trust[4] = v127;
            v125 = v127;
            v126 = "%@ found nil certificate item in the keychain.";
            goto LABEL_136;
          }

          goto LABEL_108;
        }

        v77 = CFGetTypeID(cf);
        v78 = SecCertificateGetTypeID();
        CFRelease(cf);
        if (v77 != v78)
        {
          v123 = ne_log_obj();
          if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_108;
          }

          v144 = objc_opt_class();
          *trust = 138412290;
          *&trust[4] = v144;
          v125 = v144;
          v126 = "%@ failed to find valid certificate item in the keychain.";
LABEL_136:
          _os_log_error_impl(&dword_1BA83C000, v123, OS_LOG_TYPE_ERROR, v126, trust, 0xCu);

          goto LABEL_108;
        }

        if (v72 == ++v75)
        {
          v72 = [v70 countByEnumeratingWithState:certificateRef objects:buf count:16];
          if (v72)
          {
            goto LABEL_61;
          }

          goto LABEL_71;
        }
      }

      v5 = ne_log_obj();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      v128 = objc_opt_class();
      *buf = 138412290;
      v173 = v128;
      v56 = v128;
      v57 = "%@ invalid trusted server certificate references";
      goto LABEL_89;
    }

LABEL_71:

    v2 = 0x1E695D000uLL;
LABEL_72:
    v79 = [v1 eapSettings];
    v80 = [v79 supportedEAPTypes];
    v81 = [v80 containsObject:&unk_1F38BA478];

    if (v81)
    {
      goto LABEL_73;
    }

    v90 = [v1 eapSettings];
    v91 = [v90 username];
    if ([v91 length])
    {
      v92 = [v1 eapSettings];
      v93 = [v92 username];
      v94 = [v93 length];

      if (v94 < 0xFE)
      {
        v95 = [v1 eapSettings];
        v96 = [v95 password];
        if ([v96 length])
        {
          v97 = [v1 eapSettings];
          v98 = [v97 password];
          v99 = [v98 length];

          if (v99 < 0x41)
          {
            v100 = [v1 eapSettings];
            v101 = [v100 supportedEAPTypes];
            v102 = [v101 containsObject:&unk_1F38BA490];

            if (v102)
            {
              v5 = [*(v2 + 4056) setWithObjects:{&unk_1F38BA4D8, &unk_1F38BA4F0, &unk_1F38BA508, &unk_1F38BA520, &unk_1F38BA538, 0}];
              v103 = MEMORY[0x1E696AD98];
              v104 = [v1 eapSettings];
              v105 = [v103 numberWithInteger:{objc_msgSend(v104, "ttlsInnerAuthenticationType")}];
              v106 = [v5 containsObject:v105];

              if (!v106)
              {
                v13 = ne_log_obj();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  v133 = objc_opt_class();
                  v134 = v133;
                  v135 = [v1 eapSettings];
                  v136 = [v135 ttlsInnerAuthenticationType];
                  *buf = 138412546;
                  v173 = v133;
                  v174 = 2048;
                  v175 = v136;
                  _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "%@ invalid EAP type %ld", buf, 0x16u);
                }

LABEL_14:

                goto LABEL_53;
              }
            }

LABEL_73:
            v5 = [*(v2 + 4056) setWithObjects:{&unk_1F38BA4D8, &unk_1F38BA4F0, &unk_1F38BA508, 0}];
            v82 = MEMORY[0x1E696AD98];
            v83 = [v1 eapSettings];
            v84 = [v82 numberWithInteger:{objc_msgSend(v83, "preferredTLSVersion")}];
            v85 = [v5 containsObject:v84];

            if ((v85 & 1) == 0)
            {
              v86 = [v1 eapSettings];
              [v86 setPreferredTLSVersion:2];
            }

            v1 = 1;
            goto LABEL_54;
          }
        }

        else
        {
        }

        v5 = ne_log_obj();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        v129 = objc_opt_class();
        *buf = 138412290;
        v173 = v129;
        v56 = v129;
        v57 = "%@ invalid password in EAP settings";
LABEL_89:
        _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, v57, buf, 0xCu);

        goto LABEL_53;
      }
    }

    else
    {
    }

    v5 = ne_log_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v111 = objc_opt_class();
    *buf = 138412290;
    v173 = v111;
    v56 = v111;
    v57 = "%@ invalid username in EAP settings";
    goto LABEL_89;
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v55 = objc_opt_class();
    *buf = 138412290;
    v173 = v55;
    v56 = v55;
    v57 = "%@ too many trusted server certificates";
    goto LABEL_89;
  }

LABEL_53:
  v1 = 0;
LABEL_54:

LABEL_55:
  v60 = *MEMORY[0x1E69E9840];
  return v1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEHotspotConfiguration *)self SSID];
  [v4 encodeObject:v5 forKey:@"SSID"];

  v6 = [(NEHotspotConfiguration *)self SSIDPrefix];
  [v4 encodeObject:v6 forKey:@"SSIDPrefix"];

  [v4 encodeBool:-[NEHotspotConfiguration useSSIDPrefix](self forKey:{"useSSIDPrefix"), @"UseSSIDPrefix"}];
  [v4 encodeInt64:-[NEHotspotConfiguration securityType](self forKey:{"securityType"), @"SecurityType"}];
  v7 = [(NEHotspotConfiguration *)self lifeTimeInDays];
  [v4 encodeObject:v7 forKey:@"LifeTimeInDays"];

  [v4 encodeBool:-[NEHotspotConfiguration joinOnce](self forKey:{"joinOnce"), @"JoinOnce"}];
  [v4 encodeBool:-[NEHotspotConfiguration isAccessory](self forKey:{"isAccessory"), @"IsAccessory"}];
  [v4 encodeBool:-[NEHotspotConfiguration hidden](self forKey:{"hidden"), @"hidden"}];
  v8 = [(NEHotspotConfiguration *)self passphrase];
  [v4 encodeObject:v8 forKey:@"passphrase"];

  v9 = [(NEHotspotConfiguration *)self eapSettings];
  [v4 encodeObject:v9 forKey:@"EAPSettings"];

  v10 = [(NEHotspotConfiguration *)self hs20Settings];
  [v4 encodeObject:v10 forKey:@"HSSettings"];
}

- (NEHotspotConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEHotspotConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSID"];
    SSID = v5->_SSID;
    v5->_SSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSIDPrefix"];
    SSIDPrefix = v5->_SSIDPrefix;
    v5->_SSIDPrefix = v8;

    v5->_useSSIDPrefix = [v4 decodeBoolForKey:@"UseSSIDPrefix"];
    v5->_securityType = [v4 decodeInt64ForKey:@"SecurityType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LifeTimeInDays"];
    lifeTimeInDays = v5->_lifeTimeInDays;
    v5->_lifeTimeInDays = v10;

    v5->_joinOnce = [v4 decodeBoolForKey:@"JoinOnce"];
    v5->_isAccessory = [v4 decodeBoolForKey:@"IsAccessory"];
    v5->_hidden = [v4 decodeBoolForKey:@"hidden"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passphrase"];
    passphrase = v5->_passphrase;
    v5->_passphrase = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EAPSettings"];
    eapSettings = v5->_eapSettings;
    v5->_eapSettings = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HSSettings"];
    hs20Settings = v5->_hs20Settings;
    v5->_hs20Settings = v16;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (![(NEHotspotConfiguration *)self securityType])
  {
    v13 = [(NEHotspotConfiguration *)self useSSIDPrefix];
    v14 = [objc_opt_class() allocWithZone:a3];
    if (v13)
    {
      v7 = [(NEHotspotConfiguration *)self SSIDPrefix];
      v15 = [v14 initWithSSIDPrefix:v7];
    }

    else
    {
      v7 = [(NEHotspotConfiguration *)self SSID];
      v15 = [v14 initWithSSID:v7];
    }

    v19 = v15;
    goto LABEL_20;
  }

  if ([(NEHotspotConfiguration *)self securityType]== 1)
  {
    v5 = [(NEHotspotConfiguration *)self useSSIDPrefix];
    v6 = [objc_opt_class() allocWithZone:a3];
    if (v5)
    {
      v7 = [(NEHotspotConfiguration *)self SSIDPrefix];
      v8 = [(NEHotspotConfiguration *)self passphrase];
      v9 = v6;
      v10 = v7;
      v11 = v8;
      v12 = 1;
LABEL_10:
      v18 = [v9 initWithSSIDPrefix:v10 passphrase:v11 isWEP:v12];
LABEL_19:
      v19 = v18;

LABEL_20:
      goto LABEL_21;
    }

    v7 = [(NEHotspotConfiguration *)self SSID];
    v8 = [(NEHotspotConfiguration *)self passphrase];
    v20 = v6;
    v21 = v7;
    v22 = v8;
    v23 = 1;
    goto LABEL_18;
  }

  if ([(NEHotspotConfiguration *)self securityType]== 2)
  {
    v16 = [(NEHotspotConfiguration *)self useSSIDPrefix];
    v17 = [objc_opt_class() allocWithZone:a3];
    if (v16)
    {
      v7 = [(NEHotspotConfiguration *)self SSIDPrefix];
      v8 = [(NEHotspotConfiguration *)self passphrase];
      v9 = v17;
      v10 = v7;
      v11 = v8;
      v12 = 0;
      goto LABEL_10;
    }

    v7 = [(NEHotspotConfiguration *)self SSID];
    v8 = [(NEHotspotConfiguration *)self passphrase];
    v20 = v17;
    v21 = v7;
    v22 = v8;
    v23 = 0;
LABEL_18:
    v18 = [v20 initWithSSID:v21 passphrase:v22 isWEP:v23];
    goto LABEL_19;
  }

  if ([(NEHotspotConfiguration *)self securityType]!= 3)
  {
    if ([(NEHotspotConfiguration *)self securityType]!= 4)
    {
      v19 = 0;
      goto LABEL_21;
    }

    v27 = [objc_opt_class() allocWithZone:a3];
    v7 = [(NEHotspotConfiguration *)self hs20Settings];
    v8 = [(NEHotspotConfiguration *)self eapSettings];
    v18 = [v27 initWithHS20Settings:v7 eapSettings:v8];
    goto LABEL_19;
  }

  v19 = [(NEHotspotConfiguration *)self eapSettings];

  if (v19)
  {
    v24 = [objc_opt_class() allocWithZone:a3];
    v7 = [(NEHotspotConfiguration *)self SSID];
    v8 = [(NEHotspotConfiguration *)self eapSettings];
    v18 = [v24 initWithSSID:v7 eapSettings:v8];
    goto LABEL_19;
  }

LABEL_21:
  [v19 setUseSSIDPrefix:{-[NEHotspotConfiguration useSSIDPrefix](self, "useSSIDPrefix")}];
  [v19 setSecurityType:{-[NEHotspotConfiguration securityType](self, "securityType")}];
  v25 = [(NEHotspotConfiguration *)self lifeTimeInDays];
  [v19 setLifeTimeInDays:v25];

  [v19 setJoinOnce:{-[NEHotspotConfiguration joinOnce](self, "joinOnce")}];
  [v19 setHidden:{-[NEHotspotConfiguration hidden](self, "hidden")}];
  return v19;
}

- (NEHotspotConfiguration)initWithSSIDPrefix:(NSString *)SSIDPrefix passphrase:(NSString *)passphrase isWEP:(BOOL)isWEP
{
  v5 = isWEP;
  v8 = SSIDPrefix;
  v9 = passphrase;
  v19.receiver = self;
  v19.super_class = NEHotspotConfiguration;
  v10 = [(NEHotspotConfiguration *)&v19 init];
  v11 = v10;
  if (v10)
  {
    SSID = v10->_SSID;
    v10->_SSID = &stru_1F3880810;

    v13 = [(NSString *)v8 copy];
    v14 = v11->_SSIDPrefix;
    v11->_SSIDPrefix = v13;

    if (v5)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    v11->_securityType = v15;
    v16 = [(NSString *)v9 copy];
    v17 = v11->_passphrase;
    v11->_passphrase = v16;

    v11->_useSSIDPrefix = 1;
  }

  return v11;
}

- (NEHotspotConfiguration)initWithSSIDPrefix:(NSString *)SSIDPrefix
{
  v4 = SSIDPrefix;
  v11.receiver = self;
  v11.super_class = NEHotspotConfiguration;
  v5 = [(NEHotspotConfiguration *)&v11 init];
  v6 = v5;
  if (v5)
  {
    SSID = v5->_SSID;
    v5->_SSID = &stru_1F3880810;

    v8 = [(NSString *)v4 copy];
    v9 = v6->_SSIDPrefix;
    v6->_SSIDPrefix = v8;

    v6->_securityType = 0;
    v6->_useSSIDPrefix = 1;
  }

  return v6;
}

- (NEHotspotConfiguration)initWithHS20Settings:(NEHotspotHS20Settings *)hs20Settings eapSettings:(NEHotspotEAPSettings *)eapSettings
{
  v6 = hs20Settings;
  v7 = eapSettings;
  v17.receiver = self;
  v17.super_class = NEHotspotConfiguration;
  v8 = [(NEHotspotConfiguration *)&v17 init];
  v9 = v8;
  if (v8)
  {
    SSID = v8->_SSID;
    v8->_SSID = &stru_1F3880810;

    v9->_securityType = 4;
    v11 = [(NEHotspotEAPSettings *)v7 copy];
    v12 = v9->_eapSettings;
    v9->_eapSettings = v11;

    v13 = v9->_eapSettings;
    if (v13)
    {
      [(NEHotspotEAPSettings *)v13 setPreferredTLSVersion:2];
      [(NEHotspotEAPSettings *)v9->_eapSettings setTlsClientCertificateRequired:0];
    }

    v14 = [(NEHotspotHS20Settings *)v6 copy];
    v15 = v9->_hs20Settings;
    v9->_hs20Settings = v14;
  }

  return v9;
}

- (NEHotspotConfiguration)initWithSSID:(NSString *)SSID eapSettings:(NEHotspotEAPSettings *)eapSettings
{
  v6 = SSID;
  v7 = eapSettings;
  v15.receiver = self;
  v15.super_class = NEHotspotConfiguration;
  v8 = [(NEHotspotConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [(NSString *)v6 copy];
    v10 = v8->_SSID;
    v8->_SSID = v9;

    v8->_securityType = 3;
    v11 = [(NEHotspotEAPSettings *)v7 copy];
    v12 = v8->_eapSettings;
    v8->_eapSettings = v11;

    v13 = v8->_eapSettings;
    if (v13)
    {
      [(NEHotspotEAPSettings *)v13 setPreferredTLSVersion:2];
      [(NEHotspotEAPSettings *)v8->_eapSettings setTlsClientCertificateRequired:0];
    }
  }

  return v8;
}

- (NEHotspotConfiguration)initWithSSID:(NSString *)SSID passphrase:(NSString *)passphrase isWEP:(BOOL)isWEP
{
  v5 = isWEP;
  v8 = SSID;
  v9 = passphrase;
  v18.receiver = self;
  v18.super_class = NEHotspotConfiguration;
  v10 = [(NEHotspotConfiguration *)&v18 init];
  if (v10)
  {
    v11 = [(NSString *)v8 copy];
    v12 = v10->_SSID;
    v10->_SSID = v11;

    SSIDPrefix = v10->_SSIDPrefix;
    v10->_SSIDPrefix = &stru_1F3880810;

    v14 = 1;
    if (!v5)
    {
      v14 = 2;
    }

    v10->_securityType = v14;
    v15 = [(NSString *)v9 copy];
    v16 = v10->_passphrase;
    v10->_passphrase = v15;

    v10->_useSSIDPrefix = 0;
  }

  return v10;
}

- (NEHotspotConfiguration)initWithSSID:(NSString *)SSID
{
  v4 = SSID;
  v10.receiver = self;
  v10.super_class = NEHotspotConfiguration;
  v5 = [(NEHotspotConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [(NSString *)v4 copy];
    v7 = v5->_SSID;
    v5->_SSID = v6;

    SSIDPrefix = v5->_SSIDPrefix;
    v5->_SSIDPrefix = &stru_1F3880810;

    v5->_securityType = 0;
    v5->_useSSIDPrefix = 0;
  }

  return v5;
}

- (NEHotspotConfiguration)init
{
  v3.receiver = self;
  v3.super_class = NEHotspotConfiguration;
  result = [(NEHotspotConfiguration *)&v3 init];
  if (result)
  {
    result->_securityType = 0;
    *&result->_joinOnce = 0;
    result->_useSSIDPrefix = 0;
  }

  return result;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(NEHotspotConfiguration *)self SSID];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(NEHotspotConfiguration *)self SSID];
    [v3 appendPrettyObject:v6 withName:@"SSID" andIndent:0 options:0];
  }

  v7 = [(NEHotspotConfiguration *)self SSIDPrefix];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(NEHotspotConfiguration *)self SSIDPrefix];
    [v3 appendPrettyObject:v9 withName:@"SSID Prefix" andIndent:0 options:0];
  }

  v10 = [(NEHotspotConfiguration *)self lifeTimeInDays];
  [v3 appendFormat:@"\tLife Time : %@ Days\n", v10];

  v11 = [(NEHotspotConfiguration *)self securityType];
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      [v3 appendPrettyObject:@"WPA/WPA2 Enterprise" withName:@"Security Type" andIndent:0 options:0];
      v12 = [(NEHotspotConfiguration *)self eapSettings];
      v13 = @"EAP Configuration";
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_12;
      }

      [v3 appendPrettyObject:@"Hotspot 2.0" withName:@"Security Type" andIndent:0 options:0];
      v14 = [(NEHotspotConfiguration *)self eapSettings];
      [v3 appendPrettyObject:v14 withName:@"EAP Configuration" andIndent:0 options:0];

      v12 = [(NEHotspotConfiguration *)self hs20Settings];
      v13 = @"Hotspot 2.0 Configuration";
    }

    v15 = v3;
    v16 = v12;
    v17 = 0;
    goto LABEL_17;
  }

  if (v11 == 1)
  {
    [v3 appendPrettyObject:@"WEP" withName:@"Security Type" andIndent:0 options:0];
    v12 = [(NEHotspotConfiguration *)self passphrase];
    v13 = @"WEP Passphrase";
    goto LABEL_14;
  }

  if (v11 != 2)
  {
LABEL_12:
    [v3 appendPrettyObject:@"Open" withName:@"Security Type" andIndent:0 options:0];
    goto LABEL_18;
  }

  [v3 appendPrettyObject:@"WPA/WPA2 Personal" withName:@"Security Type" andIndent:0 options:0];
  v12 = [(NEHotspotConfiguration *)self passphrase];
  v13 = @"WPA/WPA2 Personal Passphrase";
LABEL_14:
  v15 = v3;
  v16 = v12;
  v17 = 3;
LABEL_17:
  [v15 appendPrettyObject:v16 withName:v13 andIndent:0 options:v17];

LABEL_18:

  return v3;
}

@end