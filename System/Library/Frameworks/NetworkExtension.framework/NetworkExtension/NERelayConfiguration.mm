@interface NERelayConfiguration
+ (uint64_t)fqdnOverlap:(void *)overlap otherRelay:;
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)isFullDevice;
- (BOOL)overlapsWithAppVPNConfiguration:(id)configuration;
- (BOOL)overlapsWithRelayConfiguration:(id)configuration;
- (BOOL)overlapsWithVPNConfiguration:(id)configuration;
- (NERelayConfiguration)init;
- (NERelayConfiguration)initWithCoder:(id)coder;
- (NSArray)excludedDomains;
- (NSArray)matchDomains;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)onDemandRules:(void *)rules overlapWithOtherRules:(void *)otherRules;
- (uint64_t)overlapsWithAppsFromOtherAppRules:(uint64_t)rules;
- (void)encodeWithCoder:(id)coder;
- (void)setExcludedDomains:(id)domains;
- (void)setMatchDomains:(id)domains;
@end

@implementation NERelayConfiguration

- (BOOL)isFullDevice
{
  matchDomains = [(NERelayConfiguration *)self matchDomains];
  if ([matchDomains count])
  {
    v4 = 0;
  }

  else
  {
    matchFQDNs = [(NERelayConfiguration *)self matchFQDNs];
    v4 = [matchFQDNs count] == 0;
  }

  return v4;
}

- (BOOL)overlapsWithAppVPNConfiguration:(id)configuration
{
  configurationCopy = configuration;
  perApp = [(NERelayConfiguration *)self perApp];
  appRules = [perApp appRules];
  v7 = [appRules count];

  if (v7)
  {
    appRules2 = [configurationCopy appRules];
    v9 = [(NERelayConfiguration *)self overlapsWithAppsFromOtherAppRules:appRules2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)overlapsWithAppsFromOtherAppRules:(uint64_t)rules
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (rules)
  {
    perApp = [rules perApp];
    appRules = [perApp appRules];
    if ([appRules count])
    {
      v6 = [v3 count];

      if (v6)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        perApp2 = [rules perApp];
        appRules2 = [perApp2 appRules];

        v9 = [appRules2 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          do
          {
            v12 = 0;
            do
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(appRules2);
              }

              v13 = *(*(&v25 + 1) + 8 * v12);
              v21 = 0u;
              v22 = 0u;
              v23 = 0u;
              v24 = 0u;
              v14 = v3;
              v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v22;
                while (2)
                {
                  v18 = 0;
                  do
                  {
                    if (*v22 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    if ([v13 overlapsWithRule:*(*(&v21 + 1) + 8 * v18)])
                    {

                      rules = 1;
                      goto LABEL_23;
                    }

                    ++v18;
                  }

                  while (v16 != v18);
                  v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }
              }

              ++v12;
            }

            while (v12 != v10);
            v10 = [appRules2 countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v10);
        }
      }
    }

    else
    {
    }

    rules = 0;
  }

LABEL_23:

  v19 = *MEMORY[0x1E69E9840];
  return rules;
}

- (BOOL)overlapsWithVPNConfiguration:(id)configuration
{
  perApp = [(NERelayConfiguration *)self perApp];
  appRules = [perApp appRules];
  v6 = [appRules count];

  matchDomains = [(NERelayConfiguration *)self matchDomains];
  v8 = v6 | [matchDomains count];

  return v8 == 0;
}

- (BOOL)overlapsWithRelayConfiguration:(id)configuration
{
  v89 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  perApp = [(NERelayConfiguration *)self perApp];
  appRules = [perApp appRules];
  v7 = [appRules count];

  perApp2 = [configurationCopy perApp];
  appRules2 = [perApp2 appRules];
  v10 = [appRules2 count];

  if ((v7 != 0) != (v10 == 0))
  {
    matchDomains = [(NERelayConfiguration *)self matchDomains];
    if ([matchDomains count])
    {
      v12 = 1;
    }

    else
    {
      matchFQDNs = [(NERelayConfiguration *)self matchFQDNs];
      v12 = [matchFQDNs count] != 0;
    }

    matchDomains2 = [configurationCopy matchDomains];
    if ([matchDomains2 count])
    {
      v15 = 1;
    }

    else
    {
      matchFQDNs2 = [configurationCopy matchFQDNs];
      v15 = matchFQDNs2 != 0;
    }

    if (v15 == v12)
    {
      onDemandRules = [configurationCopy onDemandRules];
      v18 = onDemandRules;
      if (self)
      {
        onDemandRules2 = [(NERelayConfiguration *)self onDemandRules];
        if (![onDemandRules2 count])
        {
          goto LABEL_13;
        }

        v20 = [v18 count];

        if (!v20)
        {
LABEL_14:

          goto LABEL_15;
        }

        onDemandRules2 = [(NERelayConfiguration *)self onDemandRules];
        if ([NERelayConfiguration onDemandRules:onDemandRules2 overlapWithOtherRules:v18])
        {
LABEL_13:

          goto LABEL_14;
        }

        onDemandRules3 = [(NERelayConfiguration *)self onDemandRules];
        v54 = [NERelayConfiguration onDemandRules:v18 overlapWithOtherRules:onDemandRules3];

        if (v54)
        {
LABEL_15:
          perApp3 = [configurationCopy perApp];
          appRules3 = [perApp3 appRules];
          v23 = [(NERelayConfiguration *)self overlapsWithAppsFromOtherAppRules:appRules3];

          v24 = configurationCopy;
          matchDomains3 = [(NERelayConfiguration *)self matchDomains];
          if ([matchDomains3 count])
          {
            matchDomains4 = [v24 matchDomains];
            v27 = [matchDomains4 count];

            if (v27)
            {
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              matchDomains5 = [(NERelayConfiguration *)self matchDomains];
              v64 = [matchDomains5 countByEnumeratingWithState:&v81 objects:v88 count:16];
              if (v64)
              {
                v29 = *v82;
                v59 = configurationCopy;
                v60 = matchDomains5;
                v63 = v7;
                selfCopy = self;
                v67 = v24;
                v61 = v23;
                v62 = v12;
                v58 = *v82;
                do
                {
                  v30 = 0;
                  do
                  {
                    if (*v82 != v29)
                    {
                      objc_enumerationMutation(matchDomains5);
                    }

                    v65 = v30;
                    v31 = *(*(&v81 + 1) + 8 * v30);
                    if (v31)
                    {
                      v79 = 0u;
                      v80 = 0u;
                      v77 = 0u;
                      v78 = 0u;
                      obj = [v24 matchDomains];
                      v32 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
                      if (v32)
                      {
                        v33 = v32;
                        v34 = *v78;
                        do
                        {
                          for (i = 0; i != v33; ++i)
                          {
                            if (*v78 != v34)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v36 = *(*(&v77 + 1) + 8 * i);
                            if (v36 && (([v31 hasSuffix:*(*(&v77 + 1) + 8 * i)] & 1) != 0 || objc_msgSend(v36, "hasSuffix:", v31)))
                            {
                              v75 = 0u;
                              v76 = 0u;
                              v73 = 0u;
                              v74 = 0u;
                              excludedDomains = [v67 excludedDomains];
                              v38 = [excludedDomains countByEnumeratingWithState:&v73 objects:v86 count:16];
                              if (v38)
                              {
                                v39 = v38;
                                v40 = *v74;
                                while (2)
                                {
                                  for (j = 0; j != v39; ++j)
                                  {
                                    if (*v74 != v40)
                                    {
                                      objc_enumerationMutation(excludedDomains);
                                    }

                                    if ([v31 hasSuffix:*(*(&v73 + 1) + 8 * j)])
                                    {
                                      v42 = 0;
                                      goto LABEL_41;
                                    }
                                  }

                                  v39 = [excludedDomains countByEnumeratingWithState:&v73 objects:v86 count:16];
                                  if (v39)
                                  {
                                    continue;
                                  }

                                  break;
                                }
                              }

                              v42 = 1;
LABEL_41:

                              v71 = 0u;
                              v72 = 0u;
                              v69 = 0u;
                              v70 = 0u;
                              excludedDomains2 = [(NERelayConfiguration *)selfCopy excludedDomains];
                              v44 = [excludedDomains2 countByEnumeratingWithState:&v69 objects:v85 count:16];
                              if (v44)
                              {
                                v45 = v44;
                                v46 = *v70;
                                while (2)
                                {
                                  for (k = 0; k != v45; ++k)
                                  {
                                    if (*v70 != v46)
                                    {
                                      objc_enumerationMutation(excludedDomains2);
                                    }

                                    if ([v36 hasSuffix:*(*(&v69 + 1) + 8 * k)])
                                    {

                                      goto LABEL_52;
                                    }
                                  }

                                  v45 = [excludedDomains2 countByEnumeratingWithState:&v69 objects:v85 count:16];
                                  if (v45)
                                  {
                                    continue;
                                  }

                                  break;
                                }
                              }

                              if (v42)
                              {

                                v52 = 0;
                                configurationCopy = v59;
                                v7 = v63;
                                v23 = v61;
                                LOBYTE(v12) = v62;
                                v24 = v67;
                                goto LABEL_70;
                              }
                            }

LABEL_52:
                            ;
                          }

                          v33 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
                        }

                        while (v33);
                      }

                      v7 = v63;
                      self = selfCopy;
                      v24 = v67;
                      v23 = v61;
                      LOBYTE(v12) = v62;
                      matchDomains5 = v60;
                      v29 = v58;
                    }

                    v30 = v65 + 1;
                  }

                  while (v65 + 1 != v64);
                  configurationCopy = v59;
                  v64 = [matchDomains5 countByEnumeratingWithState:&v81 objects:v88 count:16];
                }

                while (v64);
              }
            }
          }

          else
          {
          }

          matchFQDNs3 = [(NERelayConfiguration *)self matchFQDNs];
          if ([matchFQDNs3 count])
          {
            v49 = [NERelayConfiguration fqdnOverlap:v24 otherRelay:?];

            if (v49)
            {
              goto LABEL_65;
            }
          }

          else
          {
          }

          matchFQDNs4 = [v24 matchFQDNs];
          if ([matchFQDNs4 count])
          {
            v51 = [NERelayConfiguration fqdnOverlap:v24 otherRelay:self];

            if (v51)
            {
LABEL_65:
              v52 = 0;
LABEL_70:

              v55 = (v23 ^ 1 | v52 & v12) & (v52 | (v7 != 0)) ^ 1;
              goto LABEL_71;
            }
          }

          else
          {
          }

          v52 = 1;
          goto LABEL_70;
        }
      }

      else
      {
      }
    }
  }

  v55 = 0;
LABEL_71:

  v56 = *MEMORY[0x1E69E9840];
  return v55 & 1;
}

+ (uint64_t)fqdnOverlap:(void *)overlap otherRelay:
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a2;
  overlapCopy = overlap;
  objc_opt_self();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  matchFQDNs = [v4 matchFQDNs];
  v36 = [matchFQDNs countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v36)
  {
    v7 = *v54;
    while (2)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v54 != v7)
        {
          objc_enumerationMutation(matchFQDNs);
        }

        v9 = *(*(&v53 + 1) + 8 * i);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        matchFQDNs2 = [overlapCopy matchFQDNs];
        v11 = [matchFQDNs2 countByEnumeratingWithState:&v49 objects:v60 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v50;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v50 != v13)
              {
                objc_enumerationMutation(matchFQDNs2);
              }

              if ([v9 isEqualToString:*(*(&v49 + 1) + 8 * j)])
              {

                goto LABEL_44;
              }
            }

            v12 = [matchFQDNs2 countByEnumeratingWithState:&v49 objects:v60 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v35 = v7;

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        matchDomains = [overlapCopy matchDomains];
        v16 = [matchDomains countByEnumeratingWithState:&v45 objects:v59 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v46;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v46 != v19)
              {
                objc_enumerationMutation(matchDomains);
              }

              v18 |= [v9 hasSuffix:{*(*(&v45 + 1) + 8 * k), v35}];
            }

            v17 = [matchDomains countByEnumeratingWithState:&v45 objects:v59 count:16];
          }

          while (v17);

          if (v18)
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            excludedFQDNs = [overlapCopy excludedFQDNs];
            v22 = [excludedFQDNs countByEnumeratingWithState:&v41 objects:v58 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v42;
              v25 = 1;
              do
              {
                for (m = 0; m != v23; ++m)
                {
                  if (*v42 != v24)
                  {
                    objc_enumerationMutation(excludedFQDNs);
                  }

                  v25 &= [v9 isEqualToString:*(*(&v41 + 1) + 8 * m)] ^ 1;
                }

                v23 = [excludedFQDNs countByEnumeratingWithState:&v41 objects:v58 count:16];
              }

              while (v23);
            }

            else
            {
              v25 = 1;
            }

            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            excludedDomains = [overlapCopy excludedDomains];
            v28 = [excludedDomains countByEnumeratingWithState:&v37 objects:v57 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v38;
              do
              {
                for (n = 0; n != v29; ++n)
                {
                  if (*v38 != v30)
                  {
                    objc_enumerationMutation(excludedDomains);
                  }

                  v25 &= [v9 hasSuffix:*(*(&v37 + 1) + 8 * n)] ^ 1;
                }

                v29 = [excludedDomains countByEnumeratingWithState:&v37 objects:v57 count:16];
              }

              while (v29);
            }

            if (v25)
            {
LABEL_44:
              v32 = 1;
              goto LABEL_46;
            }
          }
        }

        else
        {
        }

        v7 = v35;
      }

      v32 = 0;
      v36 = [matchFQDNs countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v32 = 0;
  }

LABEL_46:

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

- (uint64_t)onDemandRules:(void *)rules overlapWithOtherRules:(void *)otherRules
{
  v65 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  otherRulesCopy = otherRules;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v4 = rulesCopy;
  v5 = [v4 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (!v5)
  {
    goto LABEL_51;
  }

  dNSSearchDomainMatch3 = v5;
  v7 = *v60;
  v38 = v4;
  v36 = *v60;
LABEL_3:
  dNSSearchDomainMatch4 = 0;
  v37 = dNSSearchDomainMatch3;
  while (1)
  {
    if (*v60 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v59 + 1) + 8 * dNSSearchDomainMatch4);
    if ([v9 action] != 2 && objc_msgSend(v9, "action") != 4)
    {
      break;
    }

LABEL_49:
    if (++dNSSearchDomainMatch4 == dNSSearchDomainMatch3)
    {
      dNSSearchDomainMatch3 = [v4 countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (!dNSSearchDomainMatch3)
      {
LABEL_51:
        v33 = 0;
        goto LABEL_53;
      }

      goto LABEL_3;
    }
  }

  v40 = dNSSearchDomainMatch4;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = otherRulesCopy;
  v10 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
  v54 = v9;
  if (!v10)
  {
    goto LABEL_52;
  }

  v11 = v10;
  v12 = *v56;
  v46 = *v56;
LABEL_10:
  v13 = 0;
  v47 = v11;
  while (1)
  {
    if (*v56 != v12)
    {
      objc_enumerationMutation(obj);
    }

    v14 = *(*(&v55 + 1) + 8 * v13);
    v15 = v54;
    if (!v14)
    {
      goto LABEL_32;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_32;
    }

    dNSSearchDomainMatch = [v14 DNSSearchDomainMatch];
    dNSSearchDomainMatch2 = [v15 DNSSearchDomainMatch];
    if (dNSSearchDomainMatch != dNSSearchDomainMatch2)
    {
      dNSSearchDomainMatch3 = [v14 DNSSearchDomainMatch];
      dNSSearchDomainMatch4 = [v15 DNSSearchDomainMatch];
      if (![dNSSearchDomainMatch3 isEqualToArray:dNSSearchDomainMatch4])
      {
        goto LABEL_30;
      }
    }

    v51 = dNSSearchDomainMatch4;
    v52 = dNSSearchDomainMatch3;
    dNSSearchDomainMatch3 = [v14 DNSServerAddressMatch];
    dNSServerAddressMatch = [v15 DNSServerAddressMatch];
    dNSSearchDomainMatch4 = dNSServerAddressMatch;
    if (dNSSearchDomainMatch3 != dNSServerAddressMatch)
    {
      v19 = dNSSearchDomainMatch2;
      v20 = dNSServerAddressMatch;
      dNSServerAddressMatch2 = [v14 DNSServerAddressMatch];
      dNSServerAddressMatch3 = [v15 DNSServerAddressMatch];
      v49 = dNSServerAddressMatch2;
      if (![dNSServerAddressMatch2 isEqualToArray:?])
      {
        v53 = 0;
        dNSSearchDomainMatch4 = v20;
        dNSSearchDomainMatch2 = v19;
        goto LABEL_28;
      }

      dNSSearchDomainMatch4 = v20;
      dNSSearchDomainMatch2 = v19;
    }

    interfaceTypeMatch = [v14 interfaceTypeMatch];
    if (interfaceTypeMatch == [v15 interfaceTypeMatch])
    {
      sSIDMatch = [v14 SSIDMatch];
      sSIDMatch2 = [v15 SSIDMatch];
      v45 = sSIDMatch;
      v25 = sSIDMatch == sSIDMatch2;
      v12 = v46;
      if (v25 || ([v14 SSIDMatch], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "SSIDMatch"), v42 = objc_claimAutoreleasedReturnValue(), v43 = v26, objc_msgSend(v26, "isEqualToArray:")))
      {
        v44 = sSIDMatch2;
        probeURL = [v14 probeURL];
        probeURL2 = [v15 probeURL];
        v29 = probeURL2;
        if (probeURL == probeURL2)
        {

          v53 = 1;
        }

        else
        {
          [v14 probeURL];
          v30 = v41 = probeURL;
          probeURL3 = [v15 probeURL];
          v53 = [v30 isEqual:probeURL3];
        }

        sSIDMatch2 = v44;
        v32 = v45;
        v12 = v46;
        if (v45 == v44)
        {
LABEL_37:

          v11 = v47;
          if (dNSSearchDomainMatch3 == dNSSearchDomainMatch4)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v53 = 0;
        v32 = v45;
      }

      goto LABEL_37;
    }

    v12 = v46;
    if (dNSSearchDomainMatch3 == dNSSearchDomainMatch4)
    {

      v11 = v47;
      dNSSearchDomainMatch4 = v51;
      dNSSearchDomainMatch3 = v52;
      if (dNSSearchDomainMatch != dNSSearchDomainMatch2)
      {
LABEL_30:
      }

LABEL_32:
      goto LABEL_43;
    }

    v53 = 0;
LABEL_28:
    v11 = v47;
LABEL_38:

LABEL_39:
    if (dNSSearchDomainMatch == dNSSearchDomainMatch2)
    {
      break;
    }

    if (v53)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v11 == ++v13)
    {
      v11 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v11)
      {
        goto LABEL_10;
      }

      goto LABEL_52;
    }
  }

  if (!v53)
  {
    goto LABEL_43;
  }

LABEL_46:
  if ([v14 action] == 2 || objc_msgSend(v14, "action") == 4)
  {

    dNSSearchDomainMatch3 = v37;
    v4 = v38;
    v7 = v36;
    dNSSearchDomainMatch4 = v40;
    goto LABEL_49;
  }

LABEL_52:

  v33 = 1;
  v4 = v38;
LABEL_53:

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v141 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  relays = [(NERelayConfiguration *)self relays];
  v6 = [relays count];
  v7 = v6 != 0;

  if (!v6)
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  selfCopy = self;
  relays2 = [(NERelayConfiguration *)self relays];
  v9 = [relays2 countByEnumeratingWithState:&v128 objects:v140 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v129;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v129 != v11)
        {
          objc_enumerationMutation(relays2);
        }

        v7 &= [*(*(&v128 + 1) + 8 * i) checkValidityAndCollectErrors:errorsCopy];
      }

      v10 = [relays2 countByEnumeratingWithState:&v128 objects:v140 count:16];
    }

    while (v10);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  matchDomains = [(NERelayConfiguration *)selfCopy matchDomains];
  v14 = [matchDomains countByEnumeratingWithState:&v124 objects:v139 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v125;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v125 != v16)
        {
          objc_enumerationMutation(matchDomains);
        }

        if ((isa_nsstring(*(*(&v124 + 1) + 8 * j)) & 1) == 0)
        {
          [NEConfiguration addError:errorsCopy toList:?];
          v7 = 0;
        }
      }

      v15 = [matchDomains countByEnumeratingWithState:&v124 objects:v139 count:16];
    }

    while (v15);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  excludedDomains = [(NERelayConfiguration *)selfCopy excludedDomains];
  v19 = [excludedDomains countByEnumeratingWithState:&v120 objects:v138 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v121;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v121 != v21)
        {
          objc_enumerationMutation(excludedDomains);
        }

        if ((isa_nsstring(*(*(&v120 + 1) + 8 * k)) & 1) == 0)
        {
          [NEConfiguration addError:errorsCopy toList:?];
          v7 = 0;
        }
      }

      v20 = [excludedDomains countByEnumeratingWithState:&v120 objects:v138 count:16];
    }

    while (v20);
  }

  v95 = errorsCopy;

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = [(NERelayConfiguration *)selfCopy matchFQDNs];
  v23 = [obj countByEnumeratingWithState:&v116 objects:v137 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v117;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v117 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v116 + 1) + 8 * m);
        if ((isa_nsstring(v27) & 1) == 0)
        {
          [NEConfiguration addError:v95 toList:?];
          v7 = 0;
        }

        v28 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*."];
        v29 = [v27 stringByTrimmingCharactersInSet:v28];

        if (([v27 isEqualToString:v29] & 1) == 0)
        {
          [NEConfiguration addError:v95 toList:?];
          v7 = 0;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v116 objects:v137 count:16];
    }

    while (v24);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  obja = [(NERelayConfiguration *)selfCopy excludedFQDNs];
  v30 = [obja countByEnumeratingWithState:&v112 objects:v136 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v113;
    do
    {
      for (n = 0; n != v31; ++n)
      {
        if (*v113 != v32)
        {
          objc_enumerationMutation(obja);
        }

        v34 = *(*(&v112 + 1) + 8 * n);
        if ((isa_nsstring(v34) & 1) == 0)
        {
          [NEConfiguration addError:v95 toList:?];
          v7 = 0;
        }

        v35 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*."];
        v36 = [v34 stringByTrimmingCharactersInSet:v35];

        if (([v34 isEqualToString:v36] & 1) == 0)
        {
          [NEConfiguration addError:v95 toList:?];
          v7 = 0;
        }
      }

      v31 = [obja countByEnumeratingWithState:&v112 objects:v136 count:16];
    }

    while (v31);
  }

  v37 = selfCopy;
  matchFQDNs = [(NERelayConfiguration *)selfCopy matchFQDNs];
  v39 = v95;
  if (![matchFQDNs count])
  {
    goto LABEL_53;
  }

  matchDomains2 = [(NERelayConfiguration *)selfCopy matchDomains];
  if ([matchDomains2 count])
  {

LABEL_53:
    goto LABEL_54;
  }

  excludedDomains2 = [(NERelayConfiguration *)selfCopy excludedDomains];
  if ([excludedDomains2 count])
  {

LABEL_99:
    [NEConfiguration addError:v95 toList:?];
    LOBYTE(v74) = 0;
    goto LABEL_116;
  }

  excludedFQDNs = [(NERelayConfiguration *)selfCopy excludedFQDNs];
  v77 = [excludedFQDNs count];

  if (v77)
  {
    goto LABEL_99;
  }

LABEL_54:
  perApp = [(NERelayConfiguration *)selfCopy perApp];
  if (perApp)
  {
    v42 = perApp;
    perApp2 = [(NERelayConfiguration *)selfCopy perApp];
    v44 = [perApp2 checkValidityAndCollectErrors:v95];

    v37 = selfCopy;
    if (v44 & v7)
    {
      goto LABEL_56;
    }

LABEL_94:
    v74 = 0;
    goto LABEL_104;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_56:
  perApp3 = [(NERelayConfiguration *)v37 perApp];
  if ([perApp3 restrictDomains])
  {
    matchDomains3 = [(NERelayConfiguration *)v37 matchDomains];
    v47 = [matchDomains3 count];

    if (!v47)
    {
      v74 = 1;
      goto LABEL_104;
    }

    perApp3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    relays3 = [(NERelayConfiguration *)v37 relays];
    v49 = [relays3 countByEnumeratingWithState:&v108 objects:v135 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v109;
      do
      {
        for (ii = 0; ii != v50; ++ii)
        {
          if (*v109 != v51)
          {
            objc_enumerationMutation(relays3);
          }

          v53 = *(*(&v108 + 1) + 8 * ii);
          hTTP3RelayURL = [v53 HTTP3RelayURL];
          host = [hTTP3RelayURL host];
          v56 = NECopyETLDPlusOne(host);

          if (v56)
          {
            [perApp3 addObject:v56];
          }

          hTTP2RelayURL = [v53 HTTP2RelayURL];
          host2 = [hTTP2RelayURL host];
          v59 = NECopyETLDPlusOne(host2);

          if (v59)
          {
            [perApp3 addObject:v59];
          }
        }

        v50 = [relays3 countByEnumeratingWithState:&v108 objects:v135 count:16];
      }

      while (v50);
    }

    if ([perApp3 count])
    {
      v88 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      matchDomains4 = [(NERelayConfiguration *)selfCopy matchDomains];
      v39 = v95;
      objb = [matchDomains4 countByEnumeratingWithState:&v104 objects:v134 count:16];
      if (objb)
      {
        v60 = *v105;
        v89 = *v105;
        v90 = perApp3;
        do
        {
          for (jj = 0; jj != objb; jj = jj + 1)
          {
            if (*v105 != v60)
            {
              objc_enumerationMutation(matchDomains4);
            }

            v62 = *(*(&v104 + 1) + 8 * jj);
            v63 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*."];
            v64 = [v62 stringByTrimmingCharactersInSet:v63];

            if (([perApp3 containsObject:v64] & 1) == 0)
            {
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v65 = perApp3;
              v66 = [v65 countByEnumeratingWithState:&v100 objects:v133 count:16];
              if (v66)
              {
                v67 = v66;
                v68 = *v101;
                while (2)
                {
                  for (kk = 0; kk != v67; ++kk)
                  {
                    if (*v101 != v68)
                    {
                      objc_enumerationMutation(v65);
                    }

                    v70 = *(*(&v100 + 1) + 8 * kk);
                    v71 = [@"." stringByAppendingString:v70];
                    v72 = [v64 length];
                    if (v72 > [v70 length] && objc_msgSend(v64, "hasSuffix:", v71))
                    {

                      goto LABEL_87;
                    }
                  }

                  v67 = [v65 countByEnumeratingWithState:&v100 objects:v133 count:16];
                  if (v67)
                  {
                    continue;
                  }

                  break;
                }
              }

              [v88 addObject:v64];
LABEL_87:
              v39 = v95;
              v60 = v89;
              perApp3 = v90;
            }
          }

          objb = [matchDomains4 countByEnumeratingWithState:&v104 objects:v134 count:16];
        }

        while (objb);
      }

      v73 = [v88 count];
      v74 = v73 == 0;
      if (v73)
      {
        [NEConfiguration addError:do not match relay domains"") toList:v39];
      }
    }

    else
    {
      v39 = v95;
      [NEConfiguration addError:v95 toList:?];
      v74 = 0;
    }

    v37 = selfCopy;
  }

  else
  {
    v74 = 1;
  }

LABEL_104:
  onDemandRules = [(NERelayConfiguration *)v37 onDemandRules];

  if (onDemandRules)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    onDemandRules2 = [(NERelayConfiguration *)v37 onDemandRules];
    v80 = [onDemandRules2 countByEnumeratingWithState:&v96 objects:v132 count:16];
    if (v80)
    {
      v81 = v80;
      v82 = *v97;
      do
      {
        for (mm = 0; mm != v81; ++mm)
        {
          if (*v97 != v82)
          {
            objc_enumerationMutation(onDemandRules2);
          }

          v84 = *(*(&v96 + 1) + 8 * mm);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v74 &= [v84 checkValidityAndCollectErrors:v39];
          }

          else
          {
            [NEConfiguration addError:v39 toList:?];
            v74 = 0;
          }
        }

        v81 = [onDemandRules2 countByEnumeratingWithState:&v96 objects:v132 count:16];
      }

      while (v81);
    }
  }

LABEL_116:

  v85 = *MEMORY[0x1E69E9840];
  return v74;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NERelayConfiguration allocWithZone:?]];
  [(NERelayConfiguration *)v4 setEnabled:[(NERelayConfiguration *)self isEnabled]];
  [(NERelayConfiguration *)v4 setUiToggleEnabled:[(NERelayConfiguration *)self isUIToggleEnabled]];
  [(NERelayConfiguration *)v4 setAllowDNSFailover:[(NERelayConfiguration *)self isDNSFailoverAllowed]];
  relays = [(NERelayConfiguration *)self relays];
  [(NERelayConfiguration *)v4 setRelays:relays];

  matchDomains = [(NERelayConfiguration *)self matchDomains];
  [(NERelayConfiguration *)v4 setMatchDomains:matchDomains];

  excludedDomains = [(NERelayConfiguration *)self excludedDomains];
  [(NERelayConfiguration *)v4 setExcludedDomains:excludedDomains];

  matchFQDNs = [(NERelayConfiguration *)self matchFQDNs];
  [(NERelayConfiguration *)v4 setMatchFQDNs:matchFQDNs];

  excludedFQDNs = [(NERelayConfiguration *)self excludedFQDNs];
  [(NERelayConfiguration *)v4 setExcludedFQDNs:excludedFQDNs];

  perApp = [(NERelayConfiguration *)self perApp];
  [(NERelayConfiguration *)v4 setPerApp:perApp];

  onDemandRules = [(NERelayConfiguration *)self onDemandRules];

  if (onDemandRules)
  {
    v12 = objc_alloc(MEMORY[0x1E695DEC8]);
    onDemandRules2 = [(NERelayConfiguration *)self onDemandRules];
    v14 = [v12 initWithArray:onDemandRules2 copyItems:1];
    [(NERelayConfiguration *)v4 setOnDemandRules:v14];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NERelayConfiguration isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  [coderCopy encodeBool:-[NERelayConfiguration isUIToggleEnabled](self forKey:{"isUIToggleEnabled"), @"ToggleEnabled"}];
  [coderCopy encodeBool:-[NERelayConfiguration isDNSFailoverAllowed](self forKey:{"isDNSFailoverAllowed"), @"AllowDNSFailover"}];
  relays = [(NERelayConfiguration *)self relays];
  [coderCopy encodeObject:relays forKey:@"Relays"];

  matchDomains = [(NERelayConfiguration *)self matchDomains];
  [coderCopy encodeObject:matchDomains forKey:@"MatchDomains"];

  excludedDomains = [(NERelayConfiguration *)self excludedDomains];
  [coderCopy encodeObject:excludedDomains forKey:@"ExcludedDomains"];

  matchFQDNs = [(NERelayConfiguration *)self matchFQDNs];
  [coderCopy encodeObject:matchFQDNs forKey:@"MatchFQDNs"];

  excludedFQDNs = [(NERelayConfiguration *)self excludedFQDNs];
  [coderCopy encodeObject:excludedFQDNs forKey:@"ExcludedFQDNs"];

  perApp = [(NERelayConfiguration *)self perApp];
  [coderCopy encodeObject:perApp forKey:@"PerApp"];

  onDemandRules = [(NERelayConfiguration *)self onDemandRules];
  [coderCopy encodeObject:onDemandRules forKey:@"OnDemandRules"];
}

- (NERelayConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = NERelayConfiguration;
  v5 = [(NERelayConfiguration *)&v38 init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"Enabled"];
    if ([coderCopy containsValueForKey:@"ToggleEnabled"])
    {
      v6 = [coderCopy decodeBoolForKey:@"ToggleEnabled"];
    }

    else
    {
      v6 = 1;
    }

    v5->_uiToggleEnabled = v6;
    v5->_allowDNSFailover = [coderCopy decodeBoolForKey:@"AllowDNSFailover"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"Relays"];
    relays = v5->_relays;
    v5->_relays = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"MatchDomains"];
    [(NERelayConfiguration *)v5 setMatchDomains:v15];

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"ExcludedDomains"];
    [(NERelayConfiguration *)v5 setExcludedDomains:v19];

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"MatchFQDNs"];
    matchFQDNs = v5->_matchFQDNs;
    v5->_matchFQDNs = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"ExcludedFQDNs"];
    excludedFQDNs = v5->_excludedFQDNs;
    v5->_excludedFQDNs = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PerApp"];
    perApp = v5->_perApp;
    v5->_perApp = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"OnDemandRules"];
    onDemandRules = v5->_onDemandRules;
    v5->_onDemandRules = v35;
  }

  return v5;
}

- (NSArray)excludedDomains
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_internalExcludedDomains;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setExcludedDomains:(id)domains
{
  v4 = trimStars(domains);
  obj = self;
  objc_sync_enter(obj);
  internalExcludedDomains = obj->_internalExcludedDomains;
  obj->_internalExcludedDomains = v4;

  objc_sync_exit(obj);
}

- (NSArray)matchDomains
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_internalMatchDomains;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setMatchDomains:(id)domains
{
  v4 = trimStars(domains);
  obj = self;
  objc_sync_enter(obj);
  internalMatchDomains = obj->_internalMatchDomains;
  obj->_internalMatchDomains = v4;

  objc_sync_exit(obj);
}

- (NERelayConfiguration)init
{
  v5.receiver = self;
  v5.super_class = NERelayConfiguration;
  v2 = [(NERelayConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NERelayConfiguration *)v2 setEnabled:0];
  }

  return v3;
}

@end