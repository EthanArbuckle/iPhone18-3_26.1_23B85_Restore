@interface NERelayConfiguration
+ (uint64_t)fqdnOverlap:(void *)a3 otherRelay:;
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)isFullDevice;
- (BOOL)overlapsWithAppVPNConfiguration:(id)a3;
- (BOOL)overlapsWithRelayConfiguration:(id)a3;
- (BOOL)overlapsWithVPNConfiguration:(id)a3;
- (NERelayConfiguration)init;
- (NERelayConfiguration)initWithCoder:(id)a3;
- (NSArray)excludedDomains;
- (NSArray)matchDomains;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)onDemandRules:(void *)a1 overlapWithOtherRules:(void *)a2;
- (uint64_t)overlapsWithAppsFromOtherAppRules:(uint64_t)a1;
- (void)encodeWithCoder:(id)a3;
- (void)setExcludedDomains:(id)a3;
- (void)setMatchDomains:(id)a3;
@end

@implementation NERelayConfiguration

- (BOOL)isFullDevice
{
  v3 = [(NERelayConfiguration *)self matchDomains];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(NERelayConfiguration *)self matchFQDNs];
    v4 = [v5 count] == 0;
  }

  return v4;
}

- (BOOL)overlapsWithAppVPNConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(NERelayConfiguration *)self perApp];
  v6 = [v5 appRules];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v4 appRules];
    v9 = [(NERelayConfiguration *)self overlapsWithAppsFromOtherAppRules:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)overlapsWithAppsFromOtherAppRules:(uint64_t)a1
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 perApp];
    v5 = [v4 appRules];
    if ([v5 count])
    {
      v6 = [v3 count];

      if (v6)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v7 = [a1 perApp];
        v8 = [v7 appRules];

        v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
                objc_enumerationMutation(v8);
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

                      a1 = 1;
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
            v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v10);
        }
      }
    }

    else
    {
    }

    a1 = 0;
  }

LABEL_23:

  v19 = *MEMORY[0x1E69E9840];
  return a1;
}

- (BOOL)overlapsWithVPNConfiguration:(id)a3
{
  v4 = [(NERelayConfiguration *)self perApp];
  v5 = [v4 appRules];
  v6 = [v5 count];

  v7 = [(NERelayConfiguration *)self matchDomains];
  v8 = v6 | [v7 count];

  return v8 == 0;
}

- (BOOL)overlapsWithRelayConfiguration:(id)a3
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NERelayConfiguration *)self perApp];
  v6 = [v5 appRules];
  v7 = [v6 count];

  v8 = [v4 perApp];
  v9 = [v8 appRules];
  v10 = [v9 count];

  if ((v7 != 0) != (v10 == 0))
  {
    v11 = [(NERelayConfiguration *)self matchDomains];
    if ([v11 count])
    {
      v12 = 1;
    }

    else
    {
      v13 = [(NERelayConfiguration *)self matchFQDNs];
      v12 = [v13 count] != 0;
    }

    v14 = [v4 matchDomains];
    if ([v14 count])
    {
      v15 = 1;
    }

    else
    {
      v16 = [v4 matchFQDNs];
      v15 = v16 != 0;
    }

    if (v15 == v12)
    {
      v17 = [v4 onDemandRules];
      v18 = v17;
      if (self)
      {
        v19 = [(NERelayConfiguration *)self onDemandRules];
        if (![v19 count])
        {
          goto LABEL_13;
        }

        v20 = [v18 count];

        if (!v20)
        {
LABEL_14:

          goto LABEL_15;
        }

        v19 = [(NERelayConfiguration *)self onDemandRules];
        if ([NERelayConfiguration onDemandRules:v19 overlapWithOtherRules:v18])
        {
LABEL_13:

          goto LABEL_14;
        }

        v53 = [(NERelayConfiguration *)self onDemandRules];
        v54 = [NERelayConfiguration onDemandRules:v18 overlapWithOtherRules:v53];

        if (v54)
        {
LABEL_15:
          v21 = [v4 perApp];
          v22 = [v21 appRules];
          v23 = [(NERelayConfiguration *)self overlapsWithAppsFromOtherAppRules:v22];

          v24 = v4;
          v25 = [(NERelayConfiguration *)self matchDomains];
          if ([v25 count])
          {
            v26 = [v24 matchDomains];
            v27 = [v26 count];

            if (v27)
            {
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v28 = [(NERelayConfiguration *)self matchDomains];
              v64 = [v28 countByEnumeratingWithState:&v81 objects:v88 count:16];
              if (v64)
              {
                v29 = *v82;
                v59 = v4;
                v60 = v28;
                v63 = v7;
                v66 = self;
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
                      objc_enumerationMutation(v28);
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
                              v37 = [v67 excludedDomains];
                              v38 = [v37 countByEnumeratingWithState:&v73 objects:v86 count:16];
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
                                      objc_enumerationMutation(v37);
                                    }

                                    if ([v31 hasSuffix:*(*(&v73 + 1) + 8 * j)])
                                    {
                                      v42 = 0;
                                      goto LABEL_41;
                                    }
                                  }

                                  v39 = [v37 countByEnumeratingWithState:&v73 objects:v86 count:16];
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
                              v43 = [(NERelayConfiguration *)v66 excludedDomains];
                              v44 = [v43 countByEnumeratingWithState:&v69 objects:v85 count:16];
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
                                      objc_enumerationMutation(v43);
                                    }

                                    if ([v36 hasSuffix:*(*(&v69 + 1) + 8 * k)])
                                    {

                                      goto LABEL_52;
                                    }
                                  }

                                  v45 = [v43 countByEnumeratingWithState:&v69 objects:v85 count:16];
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
                                v4 = v59;
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
                      self = v66;
                      v24 = v67;
                      v23 = v61;
                      LOBYTE(v12) = v62;
                      v28 = v60;
                      v29 = v58;
                    }

                    v30 = v65 + 1;
                  }

                  while (v65 + 1 != v64);
                  v4 = v59;
                  v64 = [v28 countByEnumeratingWithState:&v81 objects:v88 count:16];
                }

                while (v64);
              }
            }
          }

          else
          {
          }

          v48 = [(NERelayConfiguration *)self matchFQDNs];
          if ([v48 count])
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

          v50 = [v24 matchFQDNs];
          if ([v50 count])
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

+ (uint64_t)fqdnOverlap:(void *)a3 otherRelay:
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = [v4 matchFQDNs];
  v36 = [v6 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v36)
  {
    v7 = *v54;
    while (2)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v54 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v53 + 1) + 8 * i);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v10 = [v5 matchFQDNs];
        v11 = [v10 countByEnumeratingWithState:&v49 objects:v60 count:16];
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
                objc_enumerationMutation(v10);
              }

              if ([v9 isEqualToString:*(*(&v49 + 1) + 8 * j)])
              {

                goto LABEL_44;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v49 objects:v60 count:16];
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
        v15 = [v5 matchDomains];
        v16 = [v15 countByEnumeratingWithState:&v45 objects:v59 count:16];
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
                objc_enumerationMutation(v15);
              }

              v18 |= [v9 hasSuffix:{*(*(&v45 + 1) + 8 * k), v35}];
            }

            v17 = [v15 countByEnumeratingWithState:&v45 objects:v59 count:16];
          }

          while (v17);

          if (v18)
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v21 = [v5 excludedFQDNs];
            v22 = [v21 countByEnumeratingWithState:&v41 objects:v58 count:16];
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
                    objc_enumerationMutation(v21);
                  }

                  v25 &= [v9 isEqualToString:*(*(&v41 + 1) + 8 * m)] ^ 1;
                }

                v23 = [v21 countByEnumeratingWithState:&v41 objects:v58 count:16];
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
            v27 = [v5 excludedDomains];
            v28 = [v27 countByEnumeratingWithState:&v37 objects:v57 count:16];
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
                    objc_enumerationMutation(v27);
                  }

                  v25 &= [v9 hasSuffix:*(*(&v37 + 1) + 8 * n)] ^ 1;
                }

                v29 = [v27 countByEnumeratingWithState:&v37 objects:v57 count:16];
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
      v36 = [v6 countByEnumeratingWithState:&v53 objects:v61 count:16];
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

- (uint64_t)onDemandRules:(void *)a1 overlapWithOtherRules:(void *)a2
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v39 = a2;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (!v5)
  {
    goto LABEL_51;
  }

  v6 = v5;
  v7 = *v60;
  v38 = v4;
  v36 = *v60;
LABEL_3:
  v8 = 0;
  v37 = v6;
  while (1)
  {
    if (*v60 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v59 + 1) + 8 * v8);
    if ([v9 action] != 2 && objc_msgSend(v9, "action") != 4)
    {
      break;
    }

LABEL_49:
    if (++v8 == v6)
    {
      v6 = [v4 countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (!v6)
      {
LABEL_51:
        v33 = 0;
        goto LABEL_53;
      }

      goto LABEL_3;
    }
  }

  v40 = v8;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v39;
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

    v16 = [v14 DNSSearchDomainMatch];
    v17 = [v15 DNSSearchDomainMatch];
    if (v16 != v17)
    {
      v6 = [v14 DNSSearchDomainMatch];
      v8 = [v15 DNSSearchDomainMatch];
      if (![v6 isEqualToArray:v8])
      {
        goto LABEL_30;
      }
    }

    v51 = v8;
    v52 = v6;
    v6 = [v14 DNSServerAddressMatch];
    v18 = [v15 DNSServerAddressMatch];
    v8 = v18;
    if (v6 != v18)
    {
      v19 = v17;
      v20 = v18;
      v21 = [v14 DNSServerAddressMatch];
      v48 = [v15 DNSServerAddressMatch];
      v49 = v21;
      if (![v21 isEqualToArray:?])
      {
        v53 = 0;
        v8 = v20;
        v17 = v19;
        goto LABEL_28;
      }

      v8 = v20;
      v17 = v19;
    }

    v22 = [v14 interfaceTypeMatch];
    if (v22 == [v15 interfaceTypeMatch])
    {
      v23 = [v14 SSIDMatch];
      v24 = [v15 SSIDMatch];
      v45 = v23;
      v25 = v23 == v24;
      v12 = v46;
      if (v25 || ([v14 SSIDMatch], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "SSIDMatch"), v42 = objc_claimAutoreleasedReturnValue(), v43 = v26, objc_msgSend(v26, "isEqualToArray:")))
      {
        v44 = v24;
        v27 = [v14 probeURL];
        v28 = [v15 probeURL];
        v29 = v28;
        if (v27 == v28)
        {

          v53 = 1;
        }

        else
        {
          [v14 probeURL];
          v30 = v41 = v27;
          v31 = [v15 probeURL];
          v53 = [v30 isEqual:v31];
        }

        v24 = v44;
        v32 = v45;
        v12 = v46;
        if (v45 == v44)
        {
LABEL_37:

          v11 = v47;
          if (v6 == v8)
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
    if (v6 == v8)
    {

      v11 = v47;
      v8 = v51;
      v6 = v52;
      if (v16 != v17)
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
    if (v16 == v17)
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

    v6 = v37;
    v4 = v38;
    v7 = v36;
    v8 = v40;
    goto LABEL_49;
  }

LABEL_52:

  v33 = 1;
  v4 = v38;
LABEL_53:

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v141 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NERelayConfiguration *)self relays];
  v6 = [v5 count];
  v7 = v6 != 0;

  if (!v6)
  {
    [NEConfiguration addError:v4 toList:?];
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v87 = self;
  v8 = [(NERelayConfiguration *)self relays];
  v9 = [v8 countByEnumeratingWithState:&v128 objects:v140 count:16];
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
          objc_enumerationMutation(v8);
        }

        v7 &= [*(*(&v128 + 1) + 8 * i) checkValidityAndCollectErrors:v4];
      }

      v10 = [v8 countByEnumeratingWithState:&v128 objects:v140 count:16];
    }

    while (v10);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v13 = [(NERelayConfiguration *)v87 matchDomains];
  v14 = [v13 countByEnumeratingWithState:&v124 objects:v139 count:16];
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
          objc_enumerationMutation(v13);
        }

        if ((isa_nsstring(*(*(&v124 + 1) + 8 * j)) & 1) == 0)
        {
          [NEConfiguration addError:v4 toList:?];
          v7 = 0;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v124 objects:v139 count:16];
    }

    while (v15);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v18 = [(NERelayConfiguration *)v87 excludedDomains];
  v19 = [v18 countByEnumeratingWithState:&v120 objects:v138 count:16];
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
          objc_enumerationMutation(v18);
        }

        if ((isa_nsstring(*(*(&v120 + 1) + 8 * k)) & 1) == 0)
        {
          [NEConfiguration addError:v4 toList:?];
          v7 = 0;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v120 objects:v138 count:16];
    }

    while (v20);
  }

  v95 = v4;

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = [(NERelayConfiguration *)v87 matchFQDNs];
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
  obja = [(NERelayConfiguration *)v87 excludedFQDNs];
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

  v37 = v87;
  v38 = [(NERelayConfiguration *)v87 matchFQDNs];
  v39 = v95;
  if (![v38 count])
  {
    goto LABEL_53;
  }

  v40 = [(NERelayConfiguration *)v87 matchDomains];
  if ([v40 count])
  {

LABEL_53:
    goto LABEL_54;
  }

  v75 = [(NERelayConfiguration *)v87 excludedDomains];
  if ([v75 count])
  {

LABEL_99:
    [NEConfiguration addError:v95 toList:?];
    LOBYTE(v74) = 0;
    goto LABEL_116;
  }

  v76 = [(NERelayConfiguration *)v87 excludedFQDNs];
  v77 = [v76 count];

  if (v77)
  {
    goto LABEL_99;
  }

LABEL_54:
  v41 = [(NERelayConfiguration *)v87 perApp];
  if (v41)
  {
    v42 = v41;
    v43 = [(NERelayConfiguration *)v87 perApp];
    v44 = [v43 checkValidityAndCollectErrors:v95];

    v37 = v87;
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
  v45 = [(NERelayConfiguration *)v37 perApp];
  if ([v45 restrictDomains])
  {
    v46 = [(NERelayConfiguration *)v37 matchDomains];
    v47 = [v46 count];

    if (!v47)
    {
      v74 = 1;
      goto LABEL_104;
    }

    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v48 = [(NERelayConfiguration *)v37 relays];
    v49 = [v48 countByEnumeratingWithState:&v108 objects:v135 count:16];
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
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v108 + 1) + 8 * ii);
          v54 = [v53 HTTP3RelayURL];
          v55 = [v54 host];
          v56 = NECopyETLDPlusOne(v55);

          if (v56)
          {
            [v45 addObject:v56];
          }

          v57 = [v53 HTTP2RelayURL];
          v58 = [v57 host];
          v59 = NECopyETLDPlusOne(v58);

          if (v59)
          {
            [v45 addObject:v59];
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v108 objects:v135 count:16];
      }

      while (v50);
    }

    if ([v45 count])
    {
      v88 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v91 = [(NERelayConfiguration *)v87 matchDomains];
      v39 = v95;
      objb = [v91 countByEnumeratingWithState:&v104 objects:v134 count:16];
      if (objb)
      {
        v60 = *v105;
        v89 = *v105;
        v90 = v45;
        do
        {
          for (jj = 0; jj != objb; jj = jj + 1)
          {
            if (*v105 != v60)
            {
              objc_enumerationMutation(v91);
            }

            v62 = *(*(&v104 + 1) + 8 * jj);
            v63 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*."];
            v64 = [v62 stringByTrimmingCharactersInSet:v63];

            if (([v45 containsObject:v64] & 1) == 0)
            {
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v65 = v45;
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
              v45 = v90;
            }
          }

          objb = [v91 countByEnumeratingWithState:&v104 objects:v134 count:16];
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

    v37 = v87;
  }

  else
  {
    v74 = 1;
  }

LABEL_104:
  v78 = [(NERelayConfiguration *)v37 onDemandRules];

  if (v78)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v79 = [(NERelayConfiguration *)v37 onDemandRules];
    v80 = [v79 countByEnumeratingWithState:&v96 objects:v132 count:16];
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
            objc_enumerationMutation(v79);
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

        v81 = [v79 countByEnumeratingWithState:&v96 objects:v132 count:16];
      }

      while (v81);
    }
  }

LABEL_116:

  v85 = *MEMORY[0x1E69E9840];
  return v74;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NERelayConfiguration allocWithZone:?]];
  [(NERelayConfiguration *)v4 setEnabled:[(NERelayConfiguration *)self isEnabled]];
  [(NERelayConfiguration *)v4 setUiToggleEnabled:[(NERelayConfiguration *)self isUIToggleEnabled]];
  [(NERelayConfiguration *)v4 setAllowDNSFailover:[(NERelayConfiguration *)self isDNSFailoverAllowed]];
  v5 = [(NERelayConfiguration *)self relays];
  [(NERelayConfiguration *)v4 setRelays:v5];

  v6 = [(NERelayConfiguration *)self matchDomains];
  [(NERelayConfiguration *)v4 setMatchDomains:v6];

  v7 = [(NERelayConfiguration *)self excludedDomains];
  [(NERelayConfiguration *)v4 setExcludedDomains:v7];

  v8 = [(NERelayConfiguration *)self matchFQDNs];
  [(NERelayConfiguration *)v4 setMatchFQDNs:v8];

  v9 = [(NERelayConfiguration *)self excludedFQDNs];
  [(NERelayConfiguration *)v4 setExcludedFQDNs:v9];

  v10 = [(NERelayConfiguration *)self perApp];
  [(NERelayConfiguration *)v4 setPerApp:v10];

  v11 = [(NERelayConfiguration *)self onDemandRules];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E695DEC8]);
    v13 = [(NERelayConfiguration *)self onDemandRules];
    v14 = [v12 initWithArray:v13 copyItems:1];
    [(NERelayConfiguration *)v4 setOnDemandRules:v14];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[NERelayConfiguration isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  [v4 encodeBool:-[NERelayConfiguration isUIToggleEnabled](self forKey:{"isUIToggleEnabled"), @"ToggleEnabled"}];
  [v4 encodeBool:-[NERelayConfiguration isDNSFailoverAllowed](self forKey:{"isDNSFailoverAllowed"), @"AllowDNSFailover"}];
  v5 = [(NERelayConfiguration *)self relays];
  [v4 encodeObject:v5 forKey:@"Relays"];

  v6 = [(NERelayConfiguration *)self matchDomains];
  [v4 encodeObject:v6 forKey:@"MatchDomains"];

  v7 = [(NERelayConfiguration *)self excludedDomains];
  [v4 encodeObject:v7 forKey:@"ExcludedDomains"];

  v8 = [(NERelayConfiguration *)self matchFQDNs];
  [v4 encodeObject:v8 forKey:@"MatchFQDNs"];

  v9 = [(NERelayConfiguration *)self excludedFQDNs];
  [v4 encodeObject:v9 forKey:@"ExcludedFQDNs"];

  v10 = [(NERelayConfiguration *)self perApp];
  [v4 encodeObject:v10 forKey:@"PerApp"];

  v11 = [(NERelayConfiguration *)self onDemandRules];
  [v4 encodeObject:v11 forKey:@"OnDemandRules"];
}

- (NERelayConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = NERelayConfiguration;
  v5 = [(NERelayConfiguration *)&v38 init];
  if (v5)
  {
    v5->_enabled = [v4 decodeBoolForKey:@"Enabled"];
    if ([v4 containsValueForKey:@"ToggleEnabled"])
    {
      v6 = [v4 decodeBoolForKey:@"ToggleEnabled"];
    }

    else
    {
      v6 = 1;
    }

    v5->_uiToggleEnabled = v6;
    v5->_allowDNSFailover = [v4 decodeBoolForKey:@"AllowDNSFailover"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"Relays"];
    relays = v5->_relays;
    v5->_relays = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"MatchDomains"];
    [(NERelayConfiguration *)v5 setMatchDomains:v15];

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"ExcludedDomains"];
    [(NERelayConfiguration *)v5 setExcludedDomains:v19];

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"MatchFQDNs"];
    matchFQDNs = v5->_matchFQDNs;
    v5->_matchFQDNs = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"ExcludedFQDNs"];
    excludedFQDNs = v5->_excludedFQDNs;
    v5->_excludedFQDNs = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PerApp"];
    perApp = v5->_perApp;
    v5->_perApp = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"OnDemandRules"];
    onDemandRules = v5->_onDemandRules;
    v5->_onDemandRules = v35;
  }

  return v5;
}

- (NSArray)excludedDomains
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_internalExcludedDomains;
  objc_sync_exit(v2);

  return v3;
}

- (void)setExcludedDomains:(id)a3
{
  v4 = trimStars(a3);
  obj = self;
  objc_sync_enter(obj);
  internalExcludedDomains = obj->_internalExcludedDomains;
  obj->_internalExcludedDomains = v4;

  objc_sync_exit(obj);
}

- (NSArray)matchDomains
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_internalMatchDomains;
  objc_sync_exit(v2);

  return v3;
}

- (void)setMatchDomains:(id)a3
{
  v4 = trimStars(a3);
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