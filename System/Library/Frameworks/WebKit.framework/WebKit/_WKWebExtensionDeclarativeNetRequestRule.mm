@interface _WKWebExtensionDeclarativeNetRequestRule
- (NSArray)ruleInWebKitFormat;
- (_WKWebExtensionDeclarativeNetRequestRule)initWithDictionary:(id)a3 errorString:(id *)a4;
- (id)_allChromeResourceTypesForCondition:(id)a3;
- (id)_combineRequestDomain:(id)a3 withURLFilter:(id)a4;
- (id)_convertRulesWithModifiedCondition:(id)a3 webKitActionType:(id)a4 chromeActionType:(id)a5;
- (id)_convertedResourceTypesForChromeResourceTypes:(id)a3;
- (id)_findLongestCommonSubstringWithString:(id)a3 andString:(id)a4;
- (id)_regexURLFilterForChromeURLFilter:(id)a3;
- (id)_resourcesToTargetWhenNoneAreSpecifiedInRule;
- (id)_validateHeaderInfoDictionary:(id)a3;
- (id)_webKitRuleWithWebKitActionType:(id)a3 chromeActionType:(id)a4 condition:(id)a5;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)removeInvalidResourceTypesForKey:(id)a3;
@end

@implementation _WKWebExtensionDeclarativeNetRequestRule

- (_WKWebExtensionDeclarativeNetRequestRule)initWithDictionary:(id)a3 errorString:(id *)a4
{
  v196[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v163.receiver = self;
  v163.super_class = _WKWebExtensionDeclarativeNetRequestRule;
  v7 = [(_WKWebExtensionDeclarativeNetRequestRule *)&v163 init];

  if (!v7)
  {
    goto LABEL_15;
  }

  if ((_MergedGlobals_38 & 1) == 0)
  {
    v196[0] = @"id";
    v196[1] = @"action";
    v196[2] = @"condition";
    qword_1ED641730 = [MEMORY[0x1E695DEC8] arrayWithObjects:v196 count:3];
    _MergedGlobals_38 = 1;
  }

  if ((byte_1ED641721 & 1) == 0)
  {
    v194[0] = @"id";
    v195[0] = objc_opt_class();
    v194[1] = @"priority";
    v195[1] = objc_opt_class();
    v194[2] = @"action";
    v195[2] = objc_opt_class();
    v194[3] = @"condition";
    v195[3] = objc_opt_class();
    *algn_1ED641738 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v195 forKeys:v194 count:4];
    byte_1ED641721 = 1;
  }

  v8 = WebKit::objectForKey<NSNumber>(v6, @"id");
  v7->_ruleID = [v8 integerValue];

  if (v7->_ruleID)
  {
    v162 = 0;
    v9 = WebKit::validateDictionary(v6, 0, qword_1ED641730, *algn_1ED641738, &v162);
    v10 = v162;
    if (!v9)
    {
      v15 = 0;
      if (a4)
      {
        *a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Rule with id %ld is invalid. %@", v7->_ruleID, v10];
      }

      goto LABEL_69;
    }

    v11 = WebKit::objectForKey<NSNumber>(v6, @"priority");
    v12 = v11;
    if (v11)
    {
      v13 = [v11 integerValue];
      v7->_priority = v13;
      if (v7->_ruleID >= 1)
      {
        if (v13 <= 0)
        {
          if (a4)
          {
            v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Rule with id %ld is invalid. Rule priority must be non-negative.", v7->_ruleID];
LABEL_33:
            v15 = 0;
            *a4 = v14;
LABEL_68:

LABEL_69:
            goto LABEL_70;
          }

          goto LABEL_36;
        }

LABEL_20:
        v16 = WebKit::objectForKey<NSDictionary>(v6, @"action", 1, 0);
        action = v7->_action;
        v7->_action = v16;

        v193 = @"type";
        v138 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v193 count:1];
        v191[0] = @"type";
        v192[0] = objc_opt_class();
        v191[1] = @"redirect";
        v192[1] = objc_opt_class();
        v191[2] = @"requestHeaders";
        v190 = objc_opt_class();
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v190 count:1];
        v192[2] = v18;
        v191[3] = @"responseHeaders";
        v189 = objc_opt_class();
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v189 count:1];
        v192[3] = v19;
        v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v192 forKeys:v191 count:4];

        v20 = v7->_action;
        v161 = v10;
        LOBYTE(v18) = WebKit::validateDictionary(v20, 0, v138, v137, &v161);
        v21 = v161;

        v10 = v21;
        if (v18)
        {
          if ((byte_1ED641722 & 1) == 0)
          {
            v135 = MEMORY[0x1E695DFD8];
            v188[0] = @"allow";
            v188[1] = @"allowAllRequests";
            v188[2] = @"block";
            v188[3] = @"redirect";
            v188[4] = @"modifyHeaders";
            v188[5] = @"upgradeScheme";
            v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:6];
            qword_1ED641740 = [v135 setWithArray:v111];

            byte_1ED641722 = 1;
          }

          v22 = qword_1ED641740;
          v23 = [(NSDictionary *)v7->_action objectForKeyedSubscript:@"type"];
          LOBYTE(v22) = [v22 containsObject:v23];

          if (v22)
          {
            v24 = WebKit::objectForKey<NSDictionary>(v6, @"condition", 1, 0);
            condition = v7->_condition;
            v7->_condition = v24;

            if ((byte_1ED641723 & 1) == 0)
            {
              v186[0] = @"domainType";
              v187[0] = objc_opt_class();
              v186[1] = @"domains";
              v185 = objc_opt_class();
              v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v185 count:1];
              v187[1] = v112;
              v186[2] = @"requestDomains";
              v184 = objc_opt_class();
              v136 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v184 count:1];
              v187[2] = v136;
              v186[3] = @"excludedDomains";
              v183 = objc_opt_class();
              objc = [MEMORY[0x1E695DEC8] arrayWithObjects:&v183 count:1];
              v187[3] = objc;
              v186[4] = @"excludedRequestDomains";
              v182 = objc_opt_class();
              v129 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v182 count:1];
              v187[4] = v129;
              v186[5] = @"isUrlFilterCaseSensitive";
              v187[5] = objc_opt_class();
              v186[6] = @"regexFilter";
              v187[6] = objc_opt_class();
              v186[7] = @"resourceTypes";
              v181 = objc_opt_class();
              v127 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v181 count:1];
              v187[7] = v127;
              v186[8] = @"urlFilter";
              v187[8] = objc_opt_class();
              v186[9] = @"initiatorDomains";
              v180 = objc_opt_class();
              v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v180 count:1];
              v187[9] = v125;
              v186[10] = @"excludedInitiatorDomains";
              v179 = objc_opt_class();
              v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v179 count:1];
              v187[10] = v123;
              v186[11] = @"requestMethods";
              v178 = objc_opt_class();
              v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v178 count:1];
              v187[11] = v121;
              v186[12] = @"excludedRequestMethods";
              v177 = objc_opt_class();
              v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v177 count:1];
              v187[12] = v119;
              qword_1ED641748 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v187 forKeys:v186 count:13];

              byte_1ED641723 = 1;
            }

            v26 = v7->_condition;
            v160 = v10;
            v27 = WebKit::validateDictionary(v26, 0, MEMORY[0x1E695E0F0], qword_1ED641748, &v160);
            v134 = v160;

            if (!v27)
            {
              if (a4)
              {
                v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Rule with id %ld is invalid. %@", v7->_ruleID, v134];
                goto LABEL_42;
              }

LABEL_65:
              v15 = 0;
              goto LABEL_66;
            }

            v28 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"regexFilter"];
            if (v28)
            {
              v29 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"urlFilter"];
              v30 = v29 == 0;

              if (!v30)
              {
                if (a4)
                {
LABEL_42:
                  v15 = 0;
                  *a4 = v31;
LABEL_66:
                  v10 = v134;
                  goto LABEL_67;
                }

                goto LABEL_65;
              }
            }

            v36 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"regexFilter"];
            v37 = v36;
            if (!v36)
            {
              goto LABEL_46;
            }

            if ([v36 canBeConvertedToEncoding:1])
            {
              if ([WKContentRuleList _supportsRegularExpression:v37])
              {
LABEL_46:

                v38 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"urlFilter"];
                v37 = v38;
                if (!v38 || ([v38 canBeConvertedToEncoding:1] & 1) != 0)
                {

                  v39 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"resourceTypes"];
                  if (v39)
                  {
                    v40 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"excludedResourceTypes"];
                    v41 = v40 == 0;

                    if (!v41)
                    {
                      if (a4)
                      {
                        goto LABEL_42;
                      }

                      goto LABEL_65;
                    }
                  }

                  v44 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"resourceTypes"];
                  if (v44)
                  {
                    v128 = v44;
                    if (![v44 count])
                    {
                      if (a4)
                      {
                        v15 = 0;
LABEL_199:
                        v45 = v128;
                        goto LABEL_200;
                      }

                      goto LABEL_198;
                    }

                    [(_WKWebExtensionDeclarativeNetRequestRule *)v7 removeInvalidResourceTypesForKey:@"resourceTypes"];
                    v45 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"resourceTypes"];

                    if (![v45 count])
                    {
                      if (a4)
                      {
LABEL_118:
                        v15 = 0;
                        *a4 = v72;
LABEL_200:

                        goto LABEL_66;
                      }

LABEL_135:
                      v15 = 0;
                      goto LABEL_200;
                    }

                    v128 = v45;
                  }

                  else
                  {
                    v128 = 0;
                  }

                  v47 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"excludedResourceTypes"];
                  v48 = v47 == 0;

                  if (!v48)
                  {
                    [(_WKWebExtensionDeclarativeNetRequestRule *)v7 removeInvalidResourceTypesForKey:@"resourceTypes"];
                  }

                  v49 = [(NSDictionary *)v7->_action objectForKeyedSubscript:@"type"];
                  v50 = [v49 isEqualToString:@"allowAllRequests"];

                  if (!v50)
                  {
                    goto LABEL_86;
                  }

                  if (v128)
                  {
                    v158 = 0u;
                    v159 = 0u;
                    v156 = 0u;
                    v157 = 0u;
                    obj = v128;
                    v51 = [obj countByEnumeratingWithState:&v156 objects:v176 count:16];
                    if (v51)
                    {
                      v52 = *v157;
                      while (2)
                      {
                        for (i = 0; i != v51; ++i)
                        {
                          if (*v157 != v52)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v54 = *(*(&v156 + 1) + 8 * i);
                          if (([v54 isEqualToString:@"main_frame"] & 1) == 0 && (objc_msgSend(v54, "isEqualToString:", @"sub_frame") & 1) == 0)
                          {
                            if (a4)
                            {
                            }

                            v15 = 0;
                            v45 = obj;
                            goto LABEL_200;
                          }
                        }

                        v51 = [obj countByEnumeratingWithState:&v156 objects:v176 count:16];
                        if (v51)
                        {
                          continue;
                        }

                        break;
                      }
                    }

LABEL_86:
                    v55 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"domainType"];
                    if (!v55 || (-[_WKWebExtensionDeclarativeNetRequestRule _chromeDomainTypeToWebKitDomainType](v7, "_chromeDomainTypeToWebKitDomainType"), v56 = objc_claimAutoreleasedReturnValue(), [v56 objectForKey:v55], v57 = objc_claimAutoreleasedReturnValue(), v58 = v57 == 0, v57, v56, !v58))
                    {

                      v59 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"domains"];
                      v60 = v59;
                      if (v59 && (isArrayOfDomainsValid(v59) & 1) == 0)
                      {
                        if (a4)
                        {
                        }
                      }

                      else
                      {

                        v61 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"requestDomains"];
                        v60 = v61;
                        if (v61 && (isArrayOfDomainsValid(v61) & 1) == 0)
                        {
                          if (a4)
                          {
                          }
                        }

                        else
                        {

                          v62 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"excludedDomains"];
                          v60 = v62;
                          if (v62 && (isArrayOfExcludedDomainsValid(v62) & 1) == 0)
                          {
                            if (a4)
                            {
                            }
                          }

                          else
                          {

                            v63 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"excludedRequestDomains"];
                            v60 = v63;
                            if (v63 && (isArrayOfExcludedDomainsValid(v63) & 1) == 0)
                            {
                              if (a4)
                              {
                              }
                            }

                            else
                            {

                              v64 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"initiatorDomains"];
                              v60 = v64;
                              if (v64 && (isArrayOfDomainsValid(v64) & 1) == 0)
                              {
                                if (a4)
                                {
                                }
                              }

                              else
                              {

                                v65 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"excludedInitiatorDomains"];
                                v60 = v65;
                                if (!v65 || (isArrayOfExcludedDomainsValid(v65) & 1) != 0)
                                {

                                  v66 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"requestMethods"];
                                  v55 = v66;
                                  if (v66 && (isArrayOfRequestMethodsValid(v66) & 1) == 0)
                                  {
                                    if (a4)
                                    {
                                      v73 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      ruleID = v7->_ruleID;
                                      v75 = validRequestMethodsString();
                                    }
                                  }

                                  else
                                  {

                                    v67 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"excludedRequestMethods"];
                                    v55 = v67;
                                    if (!v67 || (isArrayOfRequestMethodsValid(v67) & 1) != 0)
                                    {

                                      v68 = [(NSDictionary *)v7->_action objectForKeyedSubscript:@"type"];
                                      v69 = [v68 isEqualToString:@"redirect"];

                                      if (!v69)
                                      {
                                        goto LABEL_165;
                                      }

                                      obja = [(NSDictionary *)v7->_action objectForKeyedSubscript:@"redirect"];
                                      v126 = WebKit::objectForKey<NSString>(obja, @"url", 1);
                                      v122 = WebKit::objectForKey<NSString>(obja, @"extensionPath", 1);
                                      v120 = WebKit::objectForKey<NSString>(obja, @"regexSubstitution", 1);
                                      v124 = WebKit::objectForKey<NSDictionary>(obja, @"transform", 0, 0);
                                      if (!v126 && !v122 && !v124 && !v120)
                                      {
                                        if (a4)
                                        {
LABEL_111:
                                          v71 = 0;
                                          *a4 = v70;
                                          goto LABEL_164;
                                        }

                                        goto LABEL_163;
                                      }

                                      if (v126)
                                      {
                                        v79 = [MEMORY[0x1E695DFF8] URLWithString:v126];
                                        if (!v79)
                                        {
                                          if (a4)
                                          {
                                            v83 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            goto LABEL_161;
                                          }

LABEL_162:

LABEL_163:
                                          v71 = 0;
                                          goto LABEL_164;
                                        }

                                        MEMORY[0x19EB01DE0](&v154, v79);
                                        v81 = v155;
                                        v82 = v154;
                                        v154 = 0;
                                        if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                        {
                                          WTF::StringImpl::destroy(v82, v80);
                                        }

                                        if ((v81 & 2) == 0)
                                        {
                                          if (a4)
                                          {
                                            v83 = objc_alloc(MEMORY[0x1E696AEC0]);
LABEL_161:
                                            *a4 = [v83 initWithFormat:v84, v7->_ruleID];
                                            goto LABEL_162;
                                          }

                                          goto LABEL_162;
                                        }
                                      }

                                      if (v120)
                                      {
                                        v99 = [(NSDictionary *)v7->_condition objectForKeyedSubscript:@"regexFilter"];
                                        v100 = v99 == 0;

                                        if (v100)
                                        {
                                          if (a4)
                                          {
                                            goto LABEL_111;
                                          }

                                          goto LABEL_163;
                                        }
                                      }

                                      if (v122 && ([v122 hasPrefix:@"/"] & 1) == 0)
                                      {
                                        if (a4)
                                        {
                                          goto LABEL_111;
                                        }

                                        goto LABEL_163;
                                      }

                                      if (v124 && ![v124 count])
                                      {
                                        if (a4)
                                        {
                                          goto LABEL_111;
                                        }

                                        goto LABEL_163;
                                      }

                                      if ((byte_1ED641724 & 1) == 0)
                                      {
                                        v174[0] = @"fragment";
                                        v175[0] = objc_opt_class();
                                        v174[1] = @"host";
                                        v175[1] = objc_opt_class();
                                        v174[2] = @"password";
                                        v175[2] = objc_opt_class();
                                        v174[3] = @"path";
                                        v175[3] = objc_opt_class();
                                        v174[4] = @"port";
                                        v175[4] = objc_opt_class();
                                        v174[5] = @"query";
                                        v175[5] = objc_opt_class();
                                        v174[6] = @"queryTransform";
                                        v175[6] = objc_opt_class();
                                        v174[7] = @"scheme";
                                        v175[7] = objc_opt_class();
                                        v174[8] = @"username";
                                        v175[8] = objc_opt_class();
                                        qword_1ED641750 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v175 forKeys:v174 count:9];
                                        byte_1ED641724 = 1;
                                      }

                                      if (v124)
                                      {
                                        v153 = v134;
                                        v101 = WebKit::validateDictionary(v124, 0, MEMORY[0x1E695E0F0], qword_1ED641750, &v153);
                                        v102 = v153;

                                        if (!v101)
                                        {
                                          v71 = 0;
                                          if (a4)
                                          {
                                          }

                                          v134 = v102;
LABEL_164:

                                          if (v71)
                                          {
LABEL_165:
                                            v85 = [(NSDictionary *)v7->_action objectForKeyedSubscript:@"type"];
                                            v86 = [v85 isEqual:@"modifyHeaders"];

                                            if (!v86)
                                            {
LABEL_188:
                                              v15 = v7;
                                              goto LABEL_199;
                                            }

                                            v87 = [(NSDictionary *)v7->_action objectForKeyedSubscript:@"requestHeaders"];
                                            objb = [(NSDictionary *)v7->_action objectForKeyedSubscript:@"responseHeaders"];
                                            if (v87 | objb)
                                            {
                                              if ((!v87 || [v87 count]) && (!objb || objc_msgSend(objb, "count")))
                                              {
                                                v145 = 0u;
                                                v146 = 0u;
                                                v143 = 0u;
                                                v144 = 0u;
                                                v88 = v87;
                                                v89 = [v88 countByEnumeratingWithState:&v143 objects:v165 count:16];
                                                if (v89)
                                                {
                                                  v90 = *v144;
                                                  while (2)
                                                  {
                                                    for (j = 0; j != v89; ++j)
                                                    {
                                                      if (*v144 != v90)
                                                      {
                                                        objc_enumerationMutation(v88);
                                                      }

                                                      v92 = [(_WKWebExtensionDeclarativeNetRequestRule *)v7 _validateHeaderInfoDictionary:*(*(&v143 + 1) + 8 * j)];
                                                      if (v92)
                                                      {
                                                        if (a4)
                                                        {
                                                          v92 = v92;
                                                          *a4 = v92;
                                                        }

                                                        goto LABEL_197;
                                                      }
                                                    }

                                                    v89 = [v88 countByEnumeratingWithState:&v143 objects:v165 count:16];
                                                    if (v89)
                                                    {
                                                      continue;
                                                    }

                                                    break;
                                                  }
                                                }

                                                v141 = 0u;
                                                v142 = 0u;
                                                v139 = 0u;
                                                v140 = 0u;
                                                v93 = objb;
                                                v94 = [v93 countByEnumeratingWithState:&v139 objects:v164 count:16];
                                                if (v94)
                                                {
                                                  v95 = *v140;
                                                  while (2)
                                                  {
                                                    for (k = 0; k != v94; ++k)
                                                    {
                                                      if (*v140 != v95)
                                                      {
                                                        objc_enumerationMutation(v93);
                                                      }

                                                      v97 = [(_WKWebExtensionDeclarativeNetRequestRule *)v7 _validateHeaderInfoDictionary:*(*(&v139 + 1) + 8 * k)];
                                                      if (v97)
                                                      {
                                                        if (a4)
                                                        {
                                                          v97 = v97;
                                                          *a4 = v97;
                                                        }

                                                        goto LABEL_198;
                                                      }
                                                    }

                                                    v94 = [v93 countByEnumeratingWithState:&v139 objects:v164 count:16];
                                                    if (v94)
                                                    {
                                                      continue;
                                                    }

                                                    break;
                                                  }
                                                }

                                                goto LABEL_188;
                                              }

                                              if (!a4)
                                              {
                                                goto LABEL_197;
                                              }
                                            }

                                            else
                                            {
                                              if (!a4)
                                              {
LABEL_197:

                                                goto LABEL_198;
                                              }
                                            }

                                            *a4 = v98;
                                            goto LABEL_197;
                                          }

LABEL_198:
                                          v15 = 0;
                                          goto LABEL_199;
                                        }

                                        v134 = v102;
                                      }

                                      v118 = WebKit::objectForKey<NSDictionary>(v124, @"queryTransform", 0, 0);
                                      if (v118 && ![v118 count])
                                      {
                                        v71 = 0;
                                        if (a4)
                                        {
                                        }
                                      }

                                      else
                                      {
                                        if ((byte_1ED641725 & 1) == 0)
                                        {
                                          v172[0] = @"addOrReplaceParams";
                                          v171 = objc_opt_class();
                                          v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v171 count:1];
                                          v173[0] = v113;
                                          v172[1] = @"removeParams";
                                          v170 = objc_opt_class();
                                          v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v170 count:1];
                                          v173[1] = v114;
                                          qword_1ED641758 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v173 forKeys:v172 count:2];

                                          byte_1ED641725 = 1;
                                        }

                                        if (!v118)
                                        {
                                          goto LABEL_220;
                                        }

                                        v152 = v134;
                                        v103 = WebKit::validateDictionary(v118, 0, MEMORY[0x1E695E0F0], qword_1ED641758, &v152);
                                        v104 = v152;

                                        if (v103)
                                        {
                                          v134 = v104;
LABEL_220:
                                          v116 = [v118 objectForKeyedSubscript:@"removeParams"];
                                          if (v116 && ![v116 count])
                                          {
                                            v71 = 0;
                                            if (a4)
                                            {
                                            }
                                          }

                                          else
                                          {
                                            if ((byte_1ED641726 & 1) == 0)
                                            {
                                              v169[0] = @"key";
                                              v169[1] = @"value";
                                              qword_1ED641760 = [MEMORY[0x1E695DEC8] arrayWithObjects:v169 count:2];
                                              byte_1ED641726 = 1;
                                            }

                                            if ((byte_1ED641727 & 1) == 0)
                                            {
                                              v167[0] = @"key";
                                              v168[0] = objc_opt_class();
                                              v167[1] = @"value";
                                              v168[1] = objc_opt_class();
                                              v167[2] = @"replaceOnly";
                                              v168[2] = objc_opt_class();
                                              *algn_1ED641768 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v168 forKeys:v167 count:3];
                                              byte_1ED641727 = 1;
                                            }

                                            v115 = [v118 objectForKeyedSubscript:@"addOrReplaceParams"];
                                            if (v115 && ![v115 count])
                                            {
                                              v71 = 0;
                                              if (a4)
                                              {
                                              }
                                            }

                                            else
                                            {
                                              v150 = 0u;
                                              v151 = 0u;
                                              v148 = 0u;
                                              v149 = 0u;
                                              v117 = v115;
                                              v105 = [v117 countByEnumeratingWithState:&v148 objects:v166 count:16];
                                              if (v105)
                                              {
                                                v106 = *v149;
                                                while (2)
                                                {
                                                  v107 = 0;
                                                  v108 = v134;
                                                  do
                                                  {
                                                    if (*v149 != v106)
                                                    {
                                                      objc_enumerationMutation(v117);
                                                    }

                                                    v109 = *(*(&v148 + 1) + 8 * v107);
                                                    v147 = v108;
                                                    v110 = WebKit::validateDictionary(v109, 0, qword_1ED641760, *algn_1ED641768, &v147);
                                                    v134 = v147;

                                                    if (!v110)
                                                    {
                                                      v71 = 0;
                                                      if (a4)
                                                      {
                                                      }

                                                      goto LABEL_261;
                                                    }

                                                    ++v107;
                                                    v108 = v134;
                                                  }

                                                  while (v105 != v107);
                                                  v105 = [v117 countByEnumeratingWithState:&v148 objects:v166 count:16];
                                                  if (v105)
                                                  {
                                                    continue;
                                                  }

                                                  break;
                                                }
                                              }

                                              v71 = 1;
LABEL_261:
                                            }
                                          }

                                          goto LABEL_264;
                                        }

                                        v71 = 0;
                                        if (a4)
                                        {
                                        }

                                        v134 = v104;
                                      }

LABEL_264:

                                      goto LABEL_164;
                                    }

                                    if (a4)
                                    {
                                      v76 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v77 = v7->_ruleID;
                                      v78 = validRequestMethodsString();
                                    }
                                  }

LABEL_150:

                                  goto LABEL_198;
                                }

                                if (a4)
                                {
                                }
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_198;
                    }

                    if (a4)
                    {
                    }

                    goto LABEL_150;
                  }

                  if (a4)
                  {
                    v45 = 0;
                    goto LABEL_118;
                  }

                  v45 = 0;
                  goto LABEL_135;
                }

                if (a4)
                {
                }

LABEL_64:

                goto LABEL_65;
              }

              if (!a4)
              {
                goto LABEL_64;
              }

              v42 = objc_alloc(MEMORY[0x1E696AEC0]);
            }

            else
            {
              if (!a4)
              {
                goto LABEL_64;
              }

              v42 = objc_alloc(MEMORY[0x1E696AEC0]);
            }

            *a4 = [v42 initWithFormat:v43, v7->_ruleID];
            goto LABEL_64;
          }

          if (a4)
          {
            v33 = objc_alloc(MEMORY[0x1E696AEC0]);
            v34 = v7->_ruleID;
            v35 = [(NSDictionary *)v7->_action objectForKeyedSubscript:@"type"];
          }
        }

        else if (a4)
        {
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Rule with id %ld is invalid. %@", v7->_ruleID, v21];
          v15 = 0;
          *a4 = v32;
LABEL_67:

          goto LABEL_68;
        }

        v15 = 0;
        goto LABEL_67;
      }
    }

    else
    {
      v7->_priority = 1;
      if (v7->_ruleID > 0)
      {
        goto LABEL_20;
      }
    }

    if (a4)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Rule with id %ld is invalid. Rule id must be non-negative.", v7->_ruleID];
      goto LABEL_33;
    }

LABEL_36:
    v15 = 0;
    goto LABEL_68;
  }

  if (a4)
  {
    v15 = 0;
    *a4 = @"Missing rule id.";
  }

  else
  {
LABEL_15:
    v15 = 0;
  }

LABEL_70:

  return v15;
}

- (id)_validateHeaderInfoDictionary:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((byte_1ED641728 & 1) == 0)
  {
    v25[0] = @"header";
    v25[1] = @"operation";
    qword_1ED641770 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    byte_1ED641728 = 1;
  }

  if (byte_1ED641729 == 1)
  {
    v5 = qword_1ED641778;
  }

  else
  {
    v23[0] = @"header";
    v24[0] = objc_opt_class();
    v23[1] = @"operation";
    v24[1] = objc_opt_class();
    v23[2] = @"value";
    v24[2] = objc_opt_class();
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
    qword_1ED641778 = v5;
    byte_1ED641729 = 1;
  }

  v22 = 0;
  v6 = WebKit::validateDictionary(v4, 0, qword_1ED641770, v5, &v22);
  v7 = v22;
  if (!v6)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Rule with id %ld is invalid. One of the headers dictionaries is not formatted correctly. %@", self->_ruleID, v7];
    goto LABEL_26;
  }

  v8 = [v4 objectForKeyedSubscript:@"operation"];
  v9 = [v8 isEqual:@"set"];
  v10 = [v8 isEqual:@"append"];
  v11 = [v8 isEqual:@"remove"];
  if ((v9 | v10 | v11))
  {
    v12 = [v4 objectForKeyedSubscript:@"header"];
    v13 = [v12 lowercaseString];
    v14 = [&unk_1F1184C80 containsObject:v13];

    if ((v14 & 1) == 0)
    {
LABEL_24:

      goto LABEL_25;
    }

    v15 = [v4 objectForKeyedSubscript:@"value"];
    v16 = v15;
    if (v15)
    {
      v17 = v11;
    }

    else
    {
      v17 = 0;
    }

    if (v17 == 1)
    {
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = @"Rule with id %ld is invalid. Do not provide a value when removing a header.";
    }

    else
    {
      if (v9)
      {
        if (v15)
        {
          v20 = 0;
LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
        v20 = 0;
        if (!v10 || v15)
        {
          goto LABEL_23;
        }
      }

      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = @"Rule with id %ld is invalid. You must provide a value when modifying a header.";
    }

    v20 = [v18 initWithFormat:v19, self->_ruleID];
    goto LABEL_23;
  }

LABEL_25:

LABEL_26:

  return v20;
}

- (void)removeInvalidResourceTypesForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_condition objectForKeyedSubscript:v4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77___WKWebExtensionDeclarativeNetRequestRule_removeInvalidResourceTypesForKey___block_invoke;
  v10[3] = &unk_1E762FCB0;
  v10[4] = self;
  v6 = WebKit::mapObjects<NSArray>(v5, v10);
  v7 = [v6 count];
  if (v7 != [v5 count])
  {
    v8 = [(NSDictionary *)self->_condition mutableCopy];
    [(NSDictionary *)v8 setObject:v6 forKeyedSubscript:v4];
    condition = self->_condition;
    self->_condition = v8;
  }
}

- (NSArray)ruleInWebKitFormat
{
  v83[6] = *MEMORY[0x1E69E9840];
  if ((byte_1ED64172A & 1) == 0)
  {
    v82[0] = @"allow";
    v82[1] = @"allowAllRequests";
    v83[0] = @"ignore-following-rules";
    v83[1] = @"ignore-following-rules";
    v82[2] = @"block";
    v82[3] = @"modifyHeaders";
    v83[2] = @"block";
    v83[3] = @"modify-headers";
    v82[4] = @"redirect";
    v82[5] = @"upgradeScheme";
    v83[4] = @"redirect";
    v83[5] = @"make-https";
    qword_1ED641780 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:6];
    byte_1ED64172A = 1;
  }

  v51 = [MEMORY[0x1E695DF70] array];
  v3 = [(NSDictionary *)self->_action objectForKeyedSubscript:@"type"];
  v50 = [qword_1ED641780 objectForKeyedSubscript:v3];
  v37 = [v3 isEqualToString:@"allowAllRequests"];
  v38 = [(NSDictionary *)self->_condition objectForKeyedSubscript:@"requestDomains"];
  v39 = [(NSDictionary *)self->_condition objectForKeyedSubscript:@"excludedRequestDomains"];
  v40 = [(NSDictionary *)self->_condition objectForKeyedSubscript:@"requestMethods"];
  v41 = [(NSDictionary *)self->_condition objectForKeyedSubscript:@"excludedRequestMethods"];
  if (v39)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v39;
    v4 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
    if (v4)
    {
      v44 = *v73;
      v46 = v4;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v73 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v5 = __62___WKWebExtensionDeclarativeNetRequestRule_ruleInWebKitFormat__block_invoke(self->_condition, *(*(&v72 + 1) + 8 * i));
          if ((v41 == 0) | v37 & 1)
          {
            v6 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _convertRulesWithModifiedCondition:v5 webKitActionType:@"ignore-following-rules" chromeActionType:v3];
            [v51 addObjectsFromArray:v6];
          }

          else
          {
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v6 = v41;
            v7 = [v6 countByEnumeratingWithState:&v68 objects:v80 count:16];
            if (v7)
            {
              v8 = *v69;
              do
              {
                for (j = 0; j != v7; ++j)
                {
                  if (*v69 != v8)
                  {
                    objc_enumerationMutation(v6);
                  }

                  v10 = __62___WKWebExtensionDeclarativeNetRequestRule_ruleInWebKitFormat__block_invoke_2(v5, *(*(&v68 + 1) + 8 * j));
                  v11 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _convertRulesWithModifiedCondition:v10 webKitActionType:@"ignore-following-rules" chromeActionType:v3];
                  [v51 addObjectsFromArray:v11];
                }

                v7 = [v6 countByEnumeratingWithState:&v68 objects:v80 count:16];
              }

              while (v7);
            }
          }
        }

        v46 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
      }

      while (v46);
    }

LABEL_29:

    goto LABEL_30;
  }

  if (!((v41 == 0) | v37 & 1))
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v41;
    v12 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
    if (v12)
    {
      v13 = *v65;
      do
      {
        for (k = 0; k != v12; ++k)
        {
          if (*v65 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = __62___WKWebExtensionDeclarativeNetRequestRule_ruleInWebKitFormat__block_invoke_2(self->_condition, *(*(&v64 + 1) + 8 * k));
          v16 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _convertRulesWithModifiedCondition:v15 webKitActionType:@"ignore-following-rules" chromeActionType:v3];
          [v51 addObjectsFromArray:v16];
        }

        v12 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
      }

      while (v12);
    }

    goto LABEL_29;
  }

LABEL_30:
  if (v38 && ([(NSDictionary *)self->_condition objectForKeyedSubscript:@"regexFilter"], v17 = objc_claimAutoreleasedReturnValue(), v18 = v17 == 0, v17, v18))
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obja = v38;
    v25 = [obja countByEnumeratingWithState:&v60 objects:v78 count:16];
    if (v25)
    {
      v45 = *v61;
      do
      {
        v47 = v25;
        for (m = 0; m != v47; ++m)
        {
          if (*v61 != v45)
          {
            objc_enumerationMutation(obja);
          }

          v27 = *(*(&v60 + 1) + 8 * m);
          v28 = [(NSDictionary *)self->_condition objectForKeyedSubscript:@"urlFilter"];
          v49 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _combineRequestDomain:v27 withURLFilter:v28];

          v29 = __62___WKWebExtensionDeclarativeNetRequestRule_ruleInWebKitFormat__block_invoke(self->_condition, v49);
          if ((v40 == 0) | v37 & 1)
          {
            v30 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _convertRulesWithModifiedCondition:v29 webKitActionType:v50 chromeActionType:v3];
            [v51 addObjectsFromArray:v30];
          }

          else
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v30 = v40;
            v31 = [v30 countByEnumeratingWithState:&v56 objects:v77 count:16];
            if (v31)
            {
              v32 = *v57;
              do
              {
                for (n = 0; n != v31; ++n)
                {
                  if (*v57 != v32)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v34 = __62___WKWebExtensionDeclarativeNetRequestRule_ruleInWebKitFormat__block_invoke_2(v29, *(*(&v56 + 1) + 8 * n));
                  v35 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _convertRulesWithModifiedCondition:v34 webKitActionType:v50 chromeActionType:v3];
                  [v51 addObjectsFromArray:v35];
                }

                v31 = [v30 countByEnumeratingWithState:&v56 objects:v77 count:16];
              }

              while (v31);
            }
          }
        }

        v25 = [obja countByEnumeratingWithState:&v60 objects:v78 count:16];
      }

      while (v25);
    }

    v19 = obja;
  }

  else if ((v40 == 0) | v37 & 1)
  {
    v19 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _convertRulesWithModifiedCondition:self->_condition webKitActionType:v50 chromeActionType:v3];
    [v51 addObjectsFromArray:v19];
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v19 = v40;
    v20 = [v19 countByEnumeratingWithState:&v52 objects:v76 count:16];
    if (v20)
    {
      v21 = *v53;
      do
      {
        for (ii = 0; ii != v20; ++ii)
        {
          if (*v53 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = __62___WKWebExtensionDeclarativeNetRequestRule_ruleInWebKitFormat__block_invoke_2(self->_condition, *(*(&v52 + 1) + 8 * ii));
          v24 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _convertRulesWithModifiedCondition:v23 webKitActionType:v50 chromeActionType:v3];
          [v51 addObjectsFromArray:v24];
        }

        v20 = [v19 countByEnumeratingWithState:&v52 objects:v76 count:16];
      }

      while (v20);
    }
  }

  return v51;
}

- (id)_convertRulesWithModifiedCondition:(id)a3 webKitActionType:(id)a4 chromeActionType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [v8 objectForKeyedSubscript:@"initiatorDomains"];
  if (v12)
  {
    v13 = [v8 objectForKeyedSubscript:@"excludedInitiatorDomains"];
    if (v13)
    {
      v14 = [v10 isEqualToString:@"allowAllRequests"];

      if (v14)
      {
        goto LABEL_6;
      }

      v12 = [v8 mutableCopy];
      v15 = [v12 objectForKeyedSubscript:@"excludedInitiatorDomains"];
      [v12 setObject:v15 forKeyedSubscript:@"initiatorDomains"];

      [v12 setObject:0 forKeyedSubscript:@"excludedInitiatorDomains"];
      v16 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _webKitRuleWithWebKitActionType:@"ignore-following-rules" chromeActionType:v10 condition:v12];
      [v11 addObject:v16];
    }
  }

LABEL_6:
  v17 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _webKitRuleWithWebKitActionType:v9 chromeActionType:v10 condition:v8];
  [v11 addObject:v17];

  if ([v9 isEqualToString:@"make-https"])
  {
    v18 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _webKitRuleWithWebKitActionType:@"ignore-following-rules" chromeActionType:v10 condition:v8];
    [v11 addObject:v18];
  }

  v19 = [v11 copy];

  return v19;
}

- (id)_webKitRuleWithWebKitActionType:(id)a3 chromeActionType:(id)a4 condition:(id)a5
{
  v79[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v72 = a4;
  v9 = a5;
  v78 = @"type";
  v79[0] = v8;
  v68 = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1];
  v71 = [v10 mutableCopy];

  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = [v9 objectForKeyedSubscript:@"isUrlFilterCaseSensitive"];
  v13 = v12;
  v14 = MEMORY[0x1E695E110];
  if (v12)
  {
    v14 = v12;
  }

  v69 = v14;

  v76[0] = @"action";
  v76[1] = @"trigger";
  v77[0] = v71;
  v77[1] = v11;
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];
  if ([v72 isEqualToString:@"allowAllRequests"])
  {
    [v11 setObject:@".*" forKeyedSubscript:@"url-filter"];
    v15 = [v9 objectForKeyedSubscript:@"resourceTypes"];
    v16 = [v15 containsObject:@"main_frame"];

    if (v16)
    {
      v17 = [v9 objectForKeyedSubscript:@"urlFilter"];
      v18 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _regexURLFilterForChromeURLFilter:v17];
      v19 = v18;
      if (!v18)
      {
        v20 = [v9 objectForKeyedSubscript:@"regexFilter"];
        v8 = v20;
        if (v20)
        {
          v19 = v20;
        }

        else
        {
          v19 = @".*";
        }
      }

      v75 = v19;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
      [v11 setObject:v21 forKeyedSubscript:@"if-top-url"];

      if (!v18)
      {
      }
    }

    else
    {
      v25 = [v9 objectForKeyedSubscript:@"urlFilter"];
      v26 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _regexURLFilterForChromeURLFilter:v25];
      v27 = v26;
      if (!v26)
      {
        v28 = [v9 objectForKeyedSubscript:@"regexFilter"];
        v8 = v28;
        if (v28)
        {
          v27 = v28;
        }

        else
        {
          v27 = @".*";
        }
      }

      v74 = v27;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
      [v11 setObject:v29 forKeyedSubscript:@"if-frame-url"];

      if (!v26)
      {
      }

      [v11 setObject:&unk_1F1184C68 forKeyedSubscript:@"load-context"];
    }

    v30 = [v70 copy];
  }

  else
  {
    v22 = [v9 objectForKeyedSubscript:@"urlFilter"];
    v23 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _regexURLFilterForChromeURLFilter:v22];
    v24 = v23;
    if (v23)
    {
      v66 = v23;
    }

    else
    {
      v31 = [v9 objectForKeyedSubscript:@"regexFilter"];
      v32 = v31;
      v33 = @".*";
      if (v31)
      {
        v33 = v31;
      }

      v66 = v33;
    }

    v34 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _allChromeResourceTypesForCondition:v9];
    v67 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _convertedResourceTypesForChromeResourceTypes:v34];

    [v11 setObject:v66 forKeyedSubscript:@"url-filter"];
    if ([v69 BOOLValue])
    {
      [v11 setObject:v69 forKeyedSubscript:@"url-filter-is-case-sensitive"];
    }

    if ([v72 isEqualToString:@"modifyHeaders"])
    {
      v35 = [(NSDictionary *)self->_action objectForKeyedSubscript:@"requestHeaders"];
      v36 = [(NSDictionary *)self->_action objectForKeyedSubscript:@"responseHeaders"];
      [v71 setObject:v35 forKeyedSubscript:@"request-headers"];
      [v71 setObject:v36 forKeyedSubscript:@"response-headers"];
      v37 = [MEMORY[0x1E696AD98] numberWithInteger:self->_priority];
      [v71 setObject:v37 forKeyedSubscript:@"priority"];
    }

    if ([v72 isEqualToString:@"redirect"])
    {
      v38 = [(NSDictionary *)self->_action objectForKeyedSubscript:@"redirect"];
      v39 = [MEMORY[0x1E695DF90] dictionary];
      v40 = [v38 objectForKeyedSubscript:@"url"];
      [v39 setObject:v40 forKeyedSubscript:@"url"];

      v41 = [v38 objectForKeyedSubscript:@"regexSubstitution"];
      [v39 setObject:v41 forKeyedSubscript:@"regex-substitution"];

      v42 = [v38 objectForKeyedSubscript:@"extensionPath"];
      [v39 setObject:v42 forKeyedSubscript:@"extension-path"];

      v43 = [v38 objectForKeyedSubscript:@"transform"];
      v44 = [v43 mutableCopy];

      v45 = [v44 objectForKeyedSubscript:@"queryTransform"];
      v46 = [v45 mutableCopy];

      v47 = [v46 objectForKeyedSubscript:@"addOrReplaceParams"];
      v48 = [v46 objectForKeyedSubscript:@"removeParams"];
      [v44 setObject:v46 forKeyedSubscript:@"query-transform"];
      [v44 setObject:0 forKeyedSubscript:@"queryTransform"];
      v49 = WebKit::mapObjects<NSArray>(v47, &__block_literal_global_345);

      [v46 setObject:v49 forKeyedSubscript:@"add-or-replace-parameters"];
      [v46 setObject:0 forKeyedSubscript:@"addOrReplaceParams"];
      [v46 setObject:v48 forKeyedSubscript:@"remove-parameters"];
      [v46 setObject:0 forKeyedSubscript:@"removeParams"];
      [v39 setObject:v44 forKeyedSubscript:@"transform"];
      [v71 setObject:v39 forKeyedSubscript:@"redirect"];
    }

    if (v67)
    {
      [v11 setObject:v67 forKeyedSubscript:@"resource-type"];
    }

    v50 = [v9 objectForKeyedSubscript:@"domainType"];
    if (v50)
    {
      v51 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _chromeDomainTypeToWebKitDomainType];
      v52 = [v51 objectForKeyedSubscript:v50];
      v73 = v52;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
      [v11 setObject:v53 forKeyedSubscript:@"load-type"];
    }

    v54 = [v9 objectForKeyedSubscript:@"domains"];
    v55 = v54;
    if (v54)
    {
      v56 = WebKit::mapObjects<NSArray>(v54, &__block_literal_global_362);
      [v11 setObject:v56 forKeyedSubscript:@"if-domain"];
    }

    else
    {
      v57 = [v9 objectForKeyedSubscript:@"excludedDomains"];
      v56 = v57;
      if (v57)
      {
        v58 = WebKit::mapObjects<NSArray>(v57, &__block_literal_global_362);
        [v11 setObject:v58 forKeyedSubscript:@"unless-domain"];
      }
    }

    v59 = [v9 objectForKeyedSubscript:@"initiatorDomains"];
    v60 = v59;
    if (v59)
    {
      v61 = WebKit::mapObjects<NSArray>(v59, &__block_literal_global_373);
      [v11 setObject:v61 forKeyedSubscript:@"if-frame-url"];
    }

    else
    {
      v62 = [v9 objectForKeyedSubscript:@"excludedInitiatorDomains"];
      v61 = v62;
      if (v62)
      {
        v63 = WebKit::mapObjects<NSArray>(v62, &__block_literal_global_373);
        [v11 setObject:v63 forKeyedSubscript:@"unless-frame-url"];
      }
    }

    v64 = [v9 objectForKeyedSubscript:@"requestMethods"];
    if (v64)
    {
      [v11 setObject:v64 forKeyedSubscript:@"request-method"];
    }

    v30 = [v70 copy];
  }

  return v30;
}

- (id)_resourcesToTargetWhenNoneAreSpecifiedInRule
{
  v3 = [_WKWebExtensionDeclarativeNetRequestRule _resourcesToTargetWhenNoneAreSpecifiedInRule]::resourceTypesExceptMainFrame;
  if (![_WKWebExtensionDeclarativeNetRequestRule _resourcesToTargetWhenNoneAreSpecifiedInRule]::resourceTypesExceptMainFrame)
  {
    v4 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _chromeResourceTypeToWebKitResourceType];
    v5 = [v4 mutableCopy];

    [v5 removeObjectForKey:@"main_frame"];
    v6 = [v5 allKeys];
    v7 = [_WKWebExtensionDeclarativeNetRequestRule _resourcesToTargetWhenNoneAreSpecifiedInRule]::resourceTypesExceptMainFrame;
    [_WKWebExtensionDeclarativeNetRequestRule _resourcesToTargetWhenNoneAreSpecifiedInRule]::resourceTypesExceptMainFrame = v6;

    v3 = [_WKWebExtensionDeclarativeNetRequestRule _resourcesToTargetWhenNoneAreSpecifiedInRule]::resourceTypesExceptMainFrame;
  }

  return v3;
}

- (id)_allChromeResourceTypesForCondition:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"resourceTypes"];
  v6 = [v4 objectForKeyedSubscript:@"excludedResourceTypes"];
  if (v5 | v6)
  {
    if (v5)
    {
      v7 = [MEMORY[0x1E695DFD8] setWithArray:v5];
      v8 = [v7 allObjects];
    }

    else
    {
      v9 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _chromeResourceTypeToWebKitResourceType];
      v10 = [v9 mutableCopy];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = *v17;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [v10 removeObjectForKey:*(*(&v16 + 1) + 8 * i)];
          }

          v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }

      v8 = [v10 allKeys];
    }
  }

  else
  {
    v8 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _resourcesToTargetWhenNoneAreSpecifiedInRule];
  }

  return v8;
}

- (id)_convertedResourceTypesForChromeResourceTypes:(id)a3
{
  v4 = a3;
  v5 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _chromeResourceTypeToWebKitResourceType];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90___WKWebExtensionDeclarativeNetRequestRule__convertedResourceTypesForChromeResourceTypes___block_invoke;
  v9[3] = &unk_1E762FD18;
  v10 = v5;
  v6 = v5;
  v7 = WebKit::mapObjects<NSArray>(v4, v9);

  return v7;
}

- (id)_findLongestCommonSubstringWithString:(id)a3 andString:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = 0;
    v8 = &stru_1F1147748;
    while (v7 < [v5 length])
    {
      for (i = 0; i < [v6 length]; ++i)
      {
        v10 = [v5 characterAtIndex:v7];
        if (v10 == [v6 characterAtIndex:i])
        {
          for (j = 1; v7 + j < [v5 length]; ++j)
          {
            if (i + j >= [v6 length])
            {
              break;
            }

            v12 = [v5 characterAtIndex:v7 + j];
            if (v12 != [v6 characterAtIndex:i + j])
            {
              break;
            }
          }

          if (j)
          {
            v13 = [v5 substringWithRange:{v7, j}];
            v14 = [v13 length];
            if (v14 > [(__CFString *)v8 length])
            {
              v15 = v13;

              v8 = v15;
            }
          }
        }
      }

      ++v7;
    }

    if ([(__CFString *)v8 length])
    {
      v17 = v8;
    }

    else
    {
      v17 = 0;
    }

    v16 = v17;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_combineRequestDomain:(id)a3 withURLFilter:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v15 = [@"||" stringByAppendingString:v6];
    goto LABEL_34;
  }

  v8 = v6;
  v9 = v7;
  for (i = v8; ([i hasPrefix:@"."] & 1) != 0; i = v11)
  {
    v11 = [i substringFromIndex:1];
  }

  for (j = v9; [j hasPrefix:@"."]; j = v13)
  {
    v13 = [j substringFromIndex:1];
  }

  if ([j hasPrefix:v8])
  {
    if ([v9 hasPrefix:@"||"])
    {
      v14 = v9;
    }

    else
    {
      v14 = [@"||" stringByAppendingString:v9];
    }

    goto LABEL_24;
  }

  v16 = [(_WKWebExtensionDeclarativeNetRequestRule *)self _findLongestCommonSubstringWithString:v8 andString:v9];
  v17 = v16;
  if (v16 && [v16 length] >= 2)
  {
    if ([v9 hasPrefix:@"||"])
    {
      v18 = v9;
    }

    else
    {
      v18 = [@"||" stringByAppendingString:v9];
    }

    v27 = v18;
    v29 = [v18 rangeOfString:v17];
    v28 = [v27 stringByReplacingCharactersInRange:v29 withString:{v30, v8}];
    goto LABEL_28;
  }

  if (([v9 hasPrefix:@"||"] & 1) == 0 && !objc_msgSend(v9, "hasPrefix:", @"://"))
  {
    v17 = [v8 stringByAppendingString:@"*"];
    v27 = [v17 stringByAppendingString:v9];
    v28 = [@"||" stringByAppendingString:v27];
LABEL_28:
    v15 = v28;

    goto LABEL_33;
  }

  v19 = [v9 stringByReplacingOccurrencesOfString:@"://" withString:&stru_1F1147748];
  v20 = [v19 containsString:@"/"];

  if (v20)
  {
    v21 = [v9 substringFromIndex:3];
    v22 = [v21 componentsSeparatedByString:@"/"];
    v23 = [v22 mutableCopy];

    v24 = [v23 firstObject];
    LOBYTE(v22) = [v24 hasSuffix:@"*"];

    v25 = [v23 firstObject];
    if (v22)
    {
      v26 = [v25 stringByAppendingString:v8];
      [v23 replaceObjectAtIndex:0 withObject:v26];
    }

    else
    {
      v26 = [v25 stringByAppendingString:@"*"];
      v31 = [v26 stringByAppendingString:v8];
      [v23 replaceObjectAtIndex:0 withObject:v31];
    }

    v32 = [v23 componentsJoinedByString:@"/"];
    v15 = [@"://" stringByAppendingString:v32];

    goto LABEL_32;
  }

  if (![v9 hasSuffix:@"*"])
  {
    v23 = [v9 stringByAppendingString:@"*"];
    v15 = [v23 stringByAppendingString:v8];
LABEL_32:

    goto LABEL_33;
  }

  v14 = [v9 stringByAppendingString:v8];
LABEL_24:
  v15 = v14;
LABEL_33:

LABEL_34:

  return v15;
}

- (id)_regexURLFilterForChromeURLFilter:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    v6 = 0;
    goto LABEL_18;
  }

  v4 = [v3 hasPrefix:@"||"];
  if (v4)
  {
    v5 = [v3 substringFromIndex:2];
LABEL_7:
    v7 = v5;
    v8 = v4 ^ 1;

    v3 = v7;
    goto LABEL_9;
  }

  if ([v3 hasPrefix:@"|"])
  {
    v5 = [v3 substringFromIndex:1];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:
  v10 = [v3 hasSuffix:@"|"];
  if (v10)
  {
    v11 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];

    v3 = v11;
  }

  v12 = WebKit::escapeCharactersInString(v3, &stru_1F1148A28.isa, v9);
  v13 = [v12 stringByReplacingOccurrencesOfString:@"*" withString:@".*"];

  v14 = [v13 stringByReplacingOccurrencesOfString:@"^" withString:@"[^a-zA-Z0-9_.%-]"];

  if (v4)
  {
    v15 = [@"^[^:]+://+([^:/]+\\.)?" stringByAppendingString:v14];

    v6 = v15;
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_16:
    v16 = [@"^" stringByAppendingString:v6];

    v6 = v16;
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v6 = v14;
  if (v8)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (v10)
  {
LABEL_17:
    v17 = [v6 stringByAppendingString:@"$"];

    v6 = v17;
  }

LABEL_18:

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  priority = self->_priority;
  if (priority < [v4 priority])
  {
    goto LABEL_2;
  }

  v7 = self->_priority;
  if (v7 > [v4 priority])
  {
    v6 = -1;
    goto LABEL_9;
  }

  v8 = [(NSDictionary *)self->_action objectForKeyedSubscript:@"type"];
  v9 = priorityForRuleType(v8);
  v10 = [v4 action];
  v11 = [v10 objectForKeyedSubscript:@"type"];
  v12 = priorityForRuleType(v11);

  if (v9 < v12)
  {
LABEL_2:
    v6 = 1;
  }

  else
  {
    v13 = [(NSDictionary *)self->_action objectForKeyedSubscript:@"type"];
    v14 = priorityForRuleType(v13);
    v15 = [v4 action];
    v16 = [v15 objectForKeyedSubscript:@"type"];
    v17 = priorityForRuleType(v16);

    if (v14 <= v17)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }
  }

LABEL_9:

  return v6;
}

- (id)description
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v12[0] = @"id";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_ruleID];
  v13[0] = v5;
  v12[1] = @"priority";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_priority];
  action = self->_action;
  condition = self->_condition;
  v13[1] = v6;
  v13[2] = action;
  v12[2] = @"action";
  v12[3] = @"condition";
  v13[3] = condition;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v10 = [v3 initWithFormat:@"<%@:%p %@>", v4, self, v9];

  return v10;
}

@end