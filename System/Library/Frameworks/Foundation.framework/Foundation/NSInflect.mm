@interface NSInflect
@end

@implementation NSInflect

_NSLexiconMorphunDictionary *___NSInflect_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:a2];
  if (!v4)
  {
    v4 = [[_NSLexiconMorphunDictionary alloc] initWithLanguage:a2];
    if (v4)
    {
      v5 = *(*(*(a1 + 32) + 8) + 40);
      if (!v5)
      {
        *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF90]);
        v5 = *(*(*(a1 + 32) + 8) + 40);
      }

      [v5 setObject:v4 forKeyedSubscript:a2];
    }
  }

  return v4;
}

NSString *___NSInflect_block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = _NSIsNSString();
  if (!v2 || (v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) localeIdentifier];
    if (!v4)
    {
      v4 = -[NSArray firstObject]([+[NSBundle mainBundle](NSBundle preferredLocalizations], "firstObject");
      if (!v4)
      {
        v4 = [+[NSBundle mainBundle](NSBundle developmentLocalization];
        if (!v4)
        {
          __assert_rtn("_NSInflect_block_invoke_2", "NSAttributedString_Inflection.m", 221, "language");
        }
      }
    }

    return v4;
  }

  return v2;
}

void ___NSInflect_block_invoke_3(uint64_t a1, NSInflectionRule *a2, NSUInteger a3, uint64_t a4)
{
  v253 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v5 = a2;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v249 = 0u;
  v250 = 0u;
  v251 = 0u;
  v252 = 0u;
  v169 = a1;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v249 objects:v248 count:16];
  if (v9)
  {
    v10 = *v250;
    v11 = a3 + a4;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v250 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v249 + 1) + 8 * i);
        v14 = [v13 replacementRangeInResult];
        if (v14 + v15 >= v11)
        {
          v16 = a3 + a4;
        }

        else
        {
          v16 = v14 + v15;
        }

        if (a3 > v14 || v14 >= v11)
        {
          v18 = v14 > a3 || a3 >= v14 + v15;
          v14 = a3;
          if (v18)
          {
            continue;
          }
        }

        if (v16 != v14)
        {
          [v7 addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v249 objects:v248 count:16];
    }

    while (v9);
  }

  if (_NSInflectionLog_onceToken != -1)
  {
    dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
  }

  v19 = _NSInflectionLog_log;
  if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
  {
    v47 = [*(a1 + 32) count];
    v48 = [v7 count];
    v254.location = a3;
    v254.length = a4;
    *buf = 134349570;
    *&buf[4] = v47;
    *&buf[12] = 2050;
    *&buf[14] = v48;
    *&buf[22] = 2114;
    v241 = NSStringFromRange(v254);
    _os_log_debug_impl(&dword_18075C000, v19, OS_LOG_TYPE_DEBUG, "%{public}lld format specifiers are relevant (out of %{public}lld) in range %{public}@", buf, 0x20u);
  }

  if (*(a1 + 144) != 1)
  {
LABEL_45:
    v220 = 0;
    v221 = &v220;
    v222 = 0x2020000000;
    v223 = 0;
    v167 = objc_alloc_init(NSMorphology);
    v219 = 0;
    if ([(NSInflectionRule *)v5 isEqual:MEMORY[0x1E695E110]])
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v25 = _NSInflectionLog_log;
      if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
      {
        v255.location = a3;
        v255.length = a4;
        v51 = NSStringFromRange(v255);
        *buf = 138543362;
        *&buf[4] = v51;
        _os_log_debug_impl(&dword_18075C000, v25, OS_LOG_TYPE_DEBUG, "NSInflect attribute is NO, not inflecting in range %{public}@", buf, 0xCu);
      }

LABEL_286:
      _Block_object_dispose(&v220, 8);
      return;
    }

    if (([(NSInflectionRule *)v5 isEqual:MEMORY[0x1E695E118]]& 1) == 0 && +[NSInflectionRule automaticRule]!= v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(NSMorphology *)v167 mergeMorphology:1 override:?];
          v221[3] |= 2uLL;
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v46 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
          {
            v260.location = a3;
            v49 = a4;
            v260.length = a4;
            v73 = NSStringFromRange(v260);
            *buf = 138412546;
            *&buf[4] = v167;
            *&buf[12] = 2114;
            *&buf[14] = v73;
            _os_log_debug_impl(&dword_18075C000, v46, OS_LOG_TYPE_DEBUG, "NSInflect attribute is an internal inflection object (%@), using it in range %{public}@", buf, 0x16u);
            v29 = 0;
            v165 = 0;
            obj = 0;
            v161 = 0;
            v164 = 0;
            v28 = 1;
LABEL_143:
            v162 = a3;
            goto LABEL_144;
          }
        }

        v29 = 0;
        v165 = 0;
        obj = 0;
        v161 = 0;
        v164 = 0;
        v28 = 1;
LABEL_142:
        v49 = a4;
        goto LABEL_143;
      }

      [(NSMorphology *)v167 mergeMorphology:1 override:?];
      v221[3] |= 2uLL;
      if ([(NSInflectionRule *)v5 referentConcept])
      {
        if (-[NSInflectionRule referentConcept](v5, "referentConcept") < 1 || (v26 = -[NSInflectionRule referentConcept](v5, "referentConcept"), v26 > [*(v169 + 64) count]))
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v27 = _NSInflectionLog_log;
          if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_60;
          }

          v274.location = a3;
          v274.length = a4;
          v154 = NSStringFromRange(v274);
          v155 = [(NSInflectionRule *)v5 referentConcept];
          *buf = 138543618;
          *&buf[4] = v154;
          *&buf[12] = 2050;
          *&buf[14] = v155;
          v70 = "NSInflectionReferentConcept attribute in range %{public}@ is set to %{public}ld which is out of bounds.";
          v71 = v27;
          v72 = 22;
LABEL_296:
          _os_log_error_impl(&dword_18075C000, v71, OS_LOG_TYPE_ERROR, v70, buf, v72);
LABEL_60:
          v28 = 0;
          v29 = 0;
          goto LABEL_100;
        }

        v29 = [*(v169 + 64) objectAtIndexedSubscript:{-[NSInflectionRule referentConcept](v5, "referentConcept") - 1}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v67 = _NSInflectionLog_log;
          if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_60;
          }

          v259.location = a3;
          v259.length = a4;
          v68 = NSStringFromRange(v259);
          v69 = [(NSInflectionRule *)v5 referentConcept];
          *buf = 138543875;
          *&buf[4] = v68;
          *&buf[12] = 2050;
          *&buf[14] = v69;
          *&buf[22] = 2113;
          v241 = v29;
          v70 = "NSInflectionReferentConcept attribute in range %{public}@ is set to %{public}ld. Expected a 'TermOfAddress' concept, but found %{private}@ instead.";
          v71 = v67;
          v72 = 32;
          goto LABEL_296;
        }
      }

      else
      {
        v29 = 0;
      }

      v28 = 1;
LABEL_100:
      if ([(NSInflectionRule *)v5 agreeWithArgument])
      {
        if ([(NSInflectionRule *)v5 agreeWithArgument]>= 1)
        {
          v53 = v28;
          v246 = 0u;
          v247 = 0u;
          v244 = 0u;
          v245 = 0u;
          v54 = *(v169 + 32);
          v55 = [v54 countByEnumeratingWithState:&v244 objects:v243 count:16];
          if (v55)
          {
            v56 = *v245;
LABEL_104:
            v57 = 0;
            while (1)
            {
              if (*v245 != v56)
              {
                objc_enumerationMutation(v54);
              }

              v165 = *(*(&v244 + 1) + 8 * v57);
              v58 = [v165 index];
              if (v58 == [(NSInflectionRule *)v5 agreeWithArgument])
              {
                break;
              }

              if (v55 == ++v57)
              {
                v55 = [v54 countByEnumeratingWithState:&v244 objects:v243 count:16];
                if (v55)
                {
                  goto LABEL_104;
                }

                goto LABEL_124;
              }
            }

            if (!v165)
            {
              goto LABEL_124;
            }

            v28 = v53;
            if ([(NSInflectionRule *)v5 agreeWithConcept])
            {
              if (_NSInflectionLog_onceToken != -1)
              {
                dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
              }

              v64 = _NSInflectionLog_log;
              if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
              {
                obj = 0;
                goto LABEL_140;
              }

              v275.location = a3;
              v275.length = a4;
              v156 = NSStringFromRange(v275);
              *buf = 138543362;
              *&buf[4] = v156;
              _os_log_error_impl(&dword_18075C000, v64, OS_LOG_TYPE_ERROR, "Both NSInflectionAgreementArgument and NSInflectionAgreementConcept attributes specified in range %{public}@. The latter will be discarded.", buf, 0xCu);
            }

            obj = 0;
            goto LABEL_138;
          }
        }

LABEL_124:
        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v60 = _NSInflectionLog_log;
        if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
        {
LABEL_127:
          v165 = 0;
          obj = 0;
          v28 = 0;
LABEL_140:
          v76 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
          {
            v273.location = a3;
            v49 = a4;
            v273.length = a4;
            v153 = NSStringFromRange(v273);
            *buf = 138412802;
            *&buf[4] = v5;
            *&buf[12] = 2112;
            *&buf[14] = v167;
            *&buf[22] = 2114;
            v241 = v153;
            _os_log_debug_impl(&dword_18075C000, v76, OS_LOG_TYPE_DEBUG, "NSInflect attribute is an inflection rule (%@ / %@), using it in range %{public}@", buf, 0x20u);
            v161 = 0;
            v164 = 0;
            goto LABEL_143;
          }

          v161 = 0;
          v164 = 0;
          goto LABEL_142;
        }

        v261.location = a3;
        v261.length = a4;
        v74 = NSStringFromRange(v261);
        v75 = [(NSInflectionRule *)v5 agreeWithArgument];
        *buf = 138543618;
        *&buf[4] = v74;
        *&buf[12] = 2050;
        *&buf[14] = v75;
        v63 = "NSInflectionAgreementArgument attribute in range %{public}@ is set to %{public}ld which is out of bounds.";
      }

      else
      {
        if (![(NSInflectionRule *)v5 agreeWithConcept])
        {
LABEL_136:
          obj = 0;
          goto LABEL_137;
        }

        if ([(NSInflectionRule *)v5 agreeWithConcept]>= 1)
        {
          v59 = [(NSInflectionRule *)v5 agreeWithConcept];
          if (v59 <= [*(v169 + 64) count])
          {
            obj = [*(v169 + 64) objectAtIndexedSubscript:{-[NSInflectionRule agreeWithConcept](v5, "agreeWithConcept") - 1}];
LABEL_137:
            v165 = 0;
LABEL_138:
            if (_NSInflectionLog_onceToken != -1)
            {
              dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
            }

            goto LABEL_140;
          }
        }

        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v60 = _NSInflectionLog_log;
        if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_127;
        }

        v257.location = a3;
        v257.length = a4;
        v61 = NSStringFromRange(v257);
        v62 = [(NSInflectionRule *)v5 agreeWithConcept];
        *buf = 138543618;
        *&buf[4] = v61;
        *&buf[12] = 2050;
        *&buf[14] = v62;
        v63 = "NSInflectionAgreementConcept attribute in range %{public}@ is set to %{public}ld which is out of bounds.";
      }

      _os_log_error_impl(&dword_18075C000, v60, OS_LOG_TYPE_ERROR, v63, buf, 0x16u);
      v28 = 0;
      goto LABEL_136;
    }

    if ([v7 count])
    {
      if ([v7 count])
      {
        v30 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:(*(*(v169 + 96) + 16))()];
        v31 = [objc_msgSend(v7 "firstObject")];
        v33 = v32;
        v34 = [objc_msgSend(v7 "lastObject")];
        if (v31 + v33 <= v34 + v35)
        {
          v36 = v34 + v35;
        }

        else
        {
          v36 = v31 + v33;
        }

        if (v31 >= v34)
        {
          v37 = v34;
        }

        else
        {
          v37 = v31;
        }

        v38 = (*(*(v169 + 80) + 16))();
        v39 = v36 - v37;
        v40 = (*(*(v169 + 80) + 16))();
        v213 = 0;
        v207 = 0;
        v41 = [NSMorphology _heuristicMorphologyForLocale:v30 prefix:v38 suffix:v40 featureName:&v219 matchedPrefixLength:&v213 matchedSuffixLength:&v207];
        if (v41 | v219)
        {
          if (!(v213 | v207))
          {
            __assert_rtn("_NSInflect_block_invoke", "NSAttributedString_Inflection.m", 349, "matchedPrefixLength || matchedSuffixLength");
          }

          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v42 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            *&buf[4] = v41;
            *&buf[12] = 2112;
            *&buf[14] = v219;
            _os_log_debug_impl(&dword_18075C000, v42, OS_LOG_TYPE_DEBUG, "Found language-specific rule for prefix / suffix pair: %@, %@", buf, 0x16u);
          }

          v43 = v213;
          v44 = v207;
          if (v213)
          {
            v161 = [v38 isEqualToString:{objc_msgSend(v38, "lowercaseStringWithLocale:", v30)}] ^ 1;
          }

          else
          {
            v161 = 0;
          }

          v162 = v43 + a3;
          v49 = a4 - (v43 + v44);
          if ([v7 count] == 1 && v49 == v39)
          {
            [v7 removeAllObjects];
            v49 = v39;
          }

          goto LABEL_87;
        }

        v161 = 0;
LABEL_86:
        v49 = a4;
        v162 = a3;
LABEL_87:
        v164 = v41;
        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v50 = _NSInflectionLog_log;
        if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
        {
          v256.location = a3;
          v256.length = a4;
          v52 = NSStringFromRange(v256);
          *buf = 138544130;
          *&buf[4] = v52;
          *&buf[12] = 2112;
          *&buf[14] = v167;
          *&buf[22] = 2112;
          v241 = v41;
          LOWORD(v242) = 2112;
          *(&v242 + 2) = v219;
          _os_log_debug_impl(&dword_18075C000, v50, OS_LOG_TYPE_DEBUG, "NSInflect attribute is YES, using automatic inflection in range %{public}@, initial target: %@, language-specific rules: %@ (%@)", buf, 0x2Au);
        }

        v29 = 0;
        v165 = 0;
        obj = 0;
        v28 = 1;
LABEL_144:
        v77 = [(NSMorphology *)v167 isIdentity];
        LOBYTE(v163) = 0;
        if (v164)
        {
          v78 = 0;
        }

        else
        {
          v78 = v77;
        }

        if (v78 == 1 && !v219)
        {
          v79 = (*(*(v169 + 88) + 16))();
          if (_NSIsNSDictionary())
          {
            v79 = [[_NSAttributedStringGrammarInflection alloc] initWithExternalRepresentationDictionary:v79 error:0];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v79 = [[_NSAttributedStringGrammarInflection alloc] initWithMorphology:v79];
          }

          objc_opt_class();
          v163 = objc_opt_isKindOfClass() & (v79 != 0);
          if (v163 == 1)
          {
            [(NSMorphology *)v167 mergeMorphology:1 override:?];
            if (_NSInflectionLog_onceToken != -1)
            {
              dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
            }

            v80 = _NSInflectionLog_log;
            if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
            {
              v271.location = a3;
              v271.length = a4;
              v150 = NSStringFromRange(v271);
              *buf = 138543618;
              *&buf[4] = v167;
              *&buf[12] = 2114;
              *&buf[14] = v150;
              _os_log_debug_impl(&dword_18075C000, v80, OS_LOG_TYPE_DEBUG, "Inflection was identity; assumed inflection attribute value %{public}@ will be used instead in range %{public}@", buf, 0x16u);
            }

            v28 = 1;
          }

          (*(*(v169 + 104) + 16))();
        }

        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v81 = _NSInflectionLog_log;
        if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
        {
          v262.location = a3;
          v262.length = a4;
          v101 = NSStringFromRange(v262);
          v102 = *(v169 + 136);
          *buf = 138544130;
          *&buf[4] = v101;
          *&buf[12] = 2048;
          *&buf[14] = v102;
          *&buf[22] = 2112;
          v241 = v5;
          LOWORD(v242) = 2112;
          *(&v242 + 2) = v167;
          _os_log_debug_impl(&dword_18075C000, v81, OS_LOG_TYPE_DEBUG, "Range %{public}@ of string with length %lld will be inflected with requested inflection: %@, resolved inflection %@", buf, 0x2Au);
        }

        (*(*(v169 + 104) + 16))();
        (*(*(v169 + 104) + 16))();
        (*(*(v169 + 104) + 16))();
        (*(*(v169 + 104) + 16))();
        v82 = [v7 count];
        if (v165 || v82 || obj)
        {
          v159 = v28;
          v160 = v49;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3052000000;
          v241 = __Block_byref_object_copy__8;
          *&v242 = __Block_byref_object_dispose__8;
          *(&v242 + 1) = 0;
          v213 = 0;
          v214 = &v213;
          v215 = 0x3052000000;
          v216 = __Block_byref_object_copy__8;
          v217 = __Block_byref_object_dispose__8;
          v218 = 0;
          v207 = 0;
          v208 = &v207;
          v209 = 0x3052000000;
          v210 = __Block_byref_object_copy__8;
          v211 = __Block_byref_object_dispose__8;
          v212 = objc_alloc_init(NSMorphology);
          v201 = 0;
          v202 = &v201;
          v203 = 0x3052000000;
          v204 = __Block_byref_object_copy__8;
          v205 = __Block_byref_object_dispose__8;
          v206 = objc_alloc_init(NSMorphology);
          v195 = 0;
          v196 = &v195;
          v197 = 0x3052000000;
          v198 = __Block_byref_object_copy__8;
          v199 = __Block_byref_object_dispose__8;
          v200 = objc_alloc_init(NSMorphology);
          v189 = 0;
          v190 = &v189;
          v191 = 0x3052000000;
          v192 = __Block_byref_object_copy__8;
          v193 = __Block_byref_object_dispose__8;
          v158 = v5;
          v194 = objc_alloc_init(NSMorphology);
          v181[0] = MEMORY[0x1E69E9820];
          v181[1] = 3221225472;
          v182 = ___NSInflect_block_invoke_24;
          v183 = &unk_1E69F4138;
          v184 = &v201;
          v185 = &v207;
          v186 = &v220;
          v187 = &v195;
          v188 = &v189;
          v171[0] = MEMORY[0x1E69E9820];
          v171[1] = 3221225472;
          v172 = ___NSInflect_block_invoke_27;
          v173 = &unk_1E69F4160;
          v180 = &v213;
          v83 = *(v169 + 96);
          v84 = *(v169 + 112);
          v176 = *(v169 + 88);
          v177 = v84;
          v178 = v181;
          v179 = buf;
          v174 = v167;
          v175 = v83;
          if (obj)
          {
            v85 = (*(v83 + 16))(v83, a3, a4);
            if (_NSIsNSString())
            {
              v86 = [(*(*(v169 + 112) + 16))() allPossibleWordAttributesForWord:obj];
              v182(v181, v86, 0);
            }

            else if (_NSIsNSArray())
            {
              v238 = 0u;
              v239 = 0u;
              v236 = 0u;
              v237 = 0u;
              v87 = [obj countByEnumeratingWithState:&v236 objects:v235 count:16];
              if (v87)
              {
                v88 = *v237;
                while (2)
                {
                  for (j = 0; j != v87; ++j)
                  {
                    if (*v237 != v88)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v90 = *(*(&v236 + 1) + 8 * j);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v90 _isSupportedInLanguage:v85])
                    {
                      v91 = [v90 _withExtrapolatedPronouns];
                      goto LABEL_201;
                    }
                  }

                  v87 = [obj countByEnumeratingWithState:&v236 objects:v235 count:16];
                  if (v87)
                  {
                    continue;
                  }

                  break;
                }
              }

              v91 = 0;
LABEL_201:
              v103 = [v91 _morphologyForLanguage:v85];
              if (v103)
              {
                [(NSMorphology *)v167 mergeMorphology:v103 override:0];
              }
            }
          }

          else if (v165)
          {
            ___NSInflect_block_invoke_27(v171, v165);
          }

          else
          {
            v233 = 0u;
            v234 = 0u;
            v231 = 0u;
            v232 = 0u;
            v92 = [v7 countByEnumeratingWithState:&v231 objects:v230 count:16];
            if (v92)
            {
              v93 = *v232;
              do
              {
                for (k = 0; k != v92; ++k)
                {
                  if (*v232 != v93)
                  {
                    objc_enumerationMutation(v7);
                  }

                  v95 = *(*(&v231 + 1) + 8 * k);
                  v96 = [v95 replacementRangeInResult];
                  v98 = v97;
                  if ([v95 replacementKind] != 2 && a3 <= v96 && a3 + a4 >= v96 + v98)
                  {
                    v172(v171, v95);
                  }
                }

                v92 = [v7 countByEnumeratingWithState:&v231 objects:v230 count:16];
              }

              while (v92);
            }
          }

          [(NSMorphology *)v167 mergeMorphology:0 override:?];
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v104 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
          {
            v267.location = a3;
            v267.length = a4;
            v142 = NSStringFromRange(v267);
            v143 = *(v169 + 136);
            *v224 = 138543874;
            v225 = v142;
            v226 = 2048;
            v227 = v143;
            v228 = 2112;
            v229 = v167;
            _os_log_debug_impl(&dword_18075C000, v104, OS_LOG_TYPE_DEBUG, "Range %{public}@ of string with length %lld -- edited target inflection with attributes from replacements that are unambiguous nouns: %@.", v224, 0x20u);
          }

          [(NSMorphology *)v167 mergeMorphology:0 override:?];
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v105 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
          {
            v268.location = a3;
            v268.length = a4;
            v144 = NSStringFromRange(v268);
            v145 = *(v169 + 136);
            *v224 = 138543874;
            v225 = v144;
            v226 = 2048;
            v227 = v145;
            v228 = 2112;
            v229 = v167;
            _os_log_debug_impl(&dword_18075C000, v105, OS_LOG_TYPE_DEBUG, "Range %{public}@ of string with length %lld -- edited target inflection with attributes from replacements that could be nouns or adjectives: %@.", v224, 0x20u);
          }

          [(NSMorphology *)v167 mergeMorphology:0 override:?];
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v106 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
          {
            v269.location = a3;
            v269.length = a4;
            v146 = NSStringFromRange(v269);
            v147 = *(v169 + 136);
            *v224 = 138543874;
            v225 = v146;
            v226 = 2048;
            v227 = v147;
            v228 = 2112;
            v229 = v167;
            _os_log_debug_impl(&dword_18075C000, v106, OS_LOG_TYPE_DEBUG, "Range %{public}@ of string with length %lld -- edited target inflection with attributes from replacements that are unambiguous adjectives: %@.", v224, 0x20u);
          }

          [(NSMorphology *)v167 mergeMorphology:0 override:?];
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v107 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
          {
            v270.location = a3;
            v270.length = a4;
            v148 = NSStringFromRange(v270);
            v149 = *(v169 + 136);
            *v224 = 138543874;
            v225 = v148;
            v226 = 2048;
            v227 = v149;
            v228 = 2112;
            v229 = v167;
            _os_log_debug_impl(&dword_18075C000, v107, OS_LOG_TYPE_DEBUG, "Range %{public}@ of string with length %lld -- edited target inflection with attributes from replacements that are other words: %@.", v224, 0x20u);
          }

          if (*(*&buf[8] + 40) && v214[5])
          {
            [NSMorphology applyPluralityRulesForNumbers:v167 inLanguages:"applyPluralityRulesForNumbers:inLanguages:"];
            if (_NSInflectionLog_onceToken != -1)
            {
              dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
            }

            v108 = _NSInflectionLog_log;
            if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
            {
              v272.location = a3;
              v272.length = a4;
              v151 = NSStringFromRange(v272);
              v152 = *(v169 + 136);
              *v224 = 138543874;
              v225 = v151;
              v226 = 2048;
              v227 = v152;
              v228 = 2112;
              v229 = v167;
              _os_log_debug_impl(&dword_18075C000, v108, OS_LOG_TYPE_DEBUG, "Range %{public}@ of string with length %lld -- edited target inflection with numbers supplied as replacements with result: %@.", v224, 0x20u);
            }
          }

          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v5 = v158;
          v49 = v160;
          v28 = v159;
          v109 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
          {
            *v224 = 138543362;
            v225 = v167;
            _os_log_debug_impl(&dword_18075C000, v109, OS_LOG_TYPE_DEBUG, "Target inflection after applying inflections inferred from replacements: %{public}@", v224, 0xCu);
          }

          _Block_object_dispose(&v189, 8);
          _Block_object_dispose(&v195, 8);
          _Block_object_dispose(&v201, 8);
          _Block_object_dispose(&v207, 8);
          _Block_object_dispose(&v213, 8);
          _Block_object_dispose(buf, 8);
        }

        v110 = *(v169 + 40);
        if (v110)
        {
          v111 = (*(*(v169 + 80) + 16))();
          v112 = (*(*(v169 + 88) + 16))();
          LOBYTE(v157) = v163;
          [v110 willProcessInflectableRange:a3 sourceSubstring:a4 inflectionRule:v111 target:v5 alternative:v167 assumedInflectionFallback:v112 fallbackWasUsed:{(*(*(v169 + 88) + 16))(), v157}];
        }

        if ((v221[3] & 1) == 0)
        {
          v170[7] = MEMORY[0x1E69E9820];
          v170[8] = 3221225472;
          v170[9] = ___NSInflect_block_invoke_36;
          v170[10] = &unk_1E69F4188;
          v114 = *(v169 + 112);
          v113 = *(v169 + 120);
          v170[11] = *(v169 + 96);
          v170[12] = v114;
          v170[13] = &v220;
          (*(v113 + 16))();
        }

        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v115 = _NSInflectionLog_log;
        if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
        {
          v264.location = a3;
          v264.length = a4;
          v133 = NSStringFromRange(v264);
          v134 = *(v169 + 136);
          v135 = v221[3];
          *buf = 138543874;
          *&buf[4] = v133;
          *&buf[12] = 2048;
          *&buf[14] = v134;
          *&buf[22] = 2048;
          v241 = v135;
          _os_log_debug_impl(&dword_18075C000, v115, OS_LOG_TYPE_DEBUG, "Range %{public}@ of string with length %lld -- determined final disambiguation hints: %lld.", buf, 0x20u);
        }

        v116 = (*(*(v169 + 96) + 16))();
        v117 = _NSRequiresMorphunInflectionForLanguageIdentifier(v116);
        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v118 = _NSInflectionLog_log;
        if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_INFO))
        {
          v119 = "false";
          if (v117)
          {
            v119 = "true";
          }

          *buf = 136446466;
          *&buf[4] = v119;
          *&buf[12] = 2114;
          *&buf[14] = v116;
          _os_log_impl(&dword_18075C000, v118, OS_LOG_TYPE_INFO, "Inflection engine is enabled? %{public}s for language %{public}@", buf, 0x16u);
        }

        if ((v28 & v117) != 1)
        {
          goto LABEL_283;
        }

        v120 = (*(*(v169 + 80) + 16))();
        if (!v29)
        {
          v127 = _NSInflectionGrammarWithLensAndRange(*(v169 + 88), a3, a4);
          if (v127)
          {
            [(NSMorphology *)v167 mergeMorphology:v127 override:0];
            -[NSMorphology setPartOfSpeech:](v167, "setPartOfSpeech:", [v127 partOfSpeech]);
          }

          v128 = _NSLexiconInflectedStringUsingMorphun(v120, v162, v49, v116, v167, 0, v7);
          v129 = v128;
          if (v219 | v164)
          {
            if (!v128)
            {
              v128 = v120;
            }

            v129 = _NSLexiconInflectedStringUsingMorphun(v128, 0x7FFFFFFFFFFFFFFFLL, 0, v116, v164, v219, MEMORY[0x1E695E0F0]);
          }

          if (v161)
          {
            v130 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v116];
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3010000000;
            v241 = &unk_181543D8B;
            v242 = 0uLL;
            v213 = 0;
            v214 = &v213;
            v215 = 0x3052000000;
            v216 = __Block_byref_object_copy__8;
            v217 = __Block_byref_object_dispose__8;
            v218 = 0;
            v131 = [v129 length];
            v170[0] = MEMORY[0x1E69E9820];
            v170[1] = 3221225472;
            v170[2] = ___NSInflect_block_invoke_41;
            v170[3] = &unk_1E69F41B0;
            v170[4] = v130;
            v170[5] = &v213;
            v170[6] = buf;
            [v129 enumerateSubstringsInRange:0 options:v131 usingBlock:{2, v170}];

            v132 = v214[5];
            if (v132)
            {
              v129 = [v132 stringByAppendingString:{objc_msgSend(v129, "substringFromIndex:", *(*&buf[8] + 32) + *(*&buf[8] + 40))}];
            }

            _Block_object_dispose(&v213, 8);
            _Block_object_dispose(buf, 8);
          }

LABEL_275:
          if (v129)
          {
            if (a4 != v49)
            {
              v120 = (*(*(v169 + 80) + 16))();
            }

            if ([v129 isEqual:v120])
            {
              if (_NSInflectionLog_onceToken != -1)
              {
                dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
              }

              v137 = _NSInflectionLog_log;
              if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_INFO))
              {
                goto LABEL_293;
              }

              v265.location = a3;
              v265.length = a4;
              v138 = NSStringFromRange(v265);
              *buf = 138543362;
              *&buf[4] = v138;
              v139 = "Useful inflection but no replacement in range %{public}@";
            }

            else
            {
              (*(*(v169 + 128) + 16))();
              if (_NSInflectionLog_onceToken != -1)
              {
                dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
              }

              v137 = _NSInflectionLog_log;
              if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_INFO))
              {
                goto LABEL_293;
              }

              v266.location = a3;
              v266.length = a4;
              v141 = NSStringFromRange(v266);
              *buf = 138543362;
              *&buf[4] = v141;
              v139 = "Useful inflection with new replacement in range %{public}@";
            }

            _os_log_impl(&dword_18075C000, v137, OS_LOG_TYPE_INFO, v139, buf, 0xCu);
LABEL_293:
            a4 = [v129 length];
            v140 = 1;
LABEL_284:

            if (v140)
            {
              [*(v169 + 48) addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:", a3, a4)}];
            }

            goto LABEL_286;
          }

LABEL_283:
          v140 = 0;
          goto LABEL_284;
        }

        v121 = preferredTermOfAddressForLanguageFromList(v116, v29);
        if (!v121 || (v122 = (*(*(v169 + 112) + 16))()) == 0)
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v125 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
          {
            v263.location = a3;
            v263.length = a4;
            v126 = NSStringFromRange(v263);
            *buf = 138543618;
            *&buf[4] = v126;
            *&buf[12] = 2114;
            *&buf[14] = v116;
            _os_log_debug_impl(&dword_18075C000, v125, OS_LOG_TYPE_DEBUG, "Could not find a term of address string in range %{public}@ that is compatible with language %{public}@.", buf, 0x16u);
          }

          goto LABEL_283;
        }

        v123 = (*(*(v169 + 88) + 16))();
        if (v165)
        {
          v124 = [v165 argument];
          if ((_NSIsNSString() & 1) == 0)
          {
            if (_NSIsNSAttributedString())
            {
              v124 = [v124 string];
              goto LABEL_271;
            }

LABEL_270:
            v124 = 0;
          }
        }

        else
        {
          if (!obj)
          {
            goto LABEL_270;
          }

          if (_NSIsNSString())
          {
            v124 = obj;
          }

          else
          {
            v124 = 0;
          }
        }

LABEL_271:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v136 = v123;
        }

        else
        {
          v136 = 0;
        }

        v129 = [v122 preferredPronoun:v120 forTermOfAddress:v121 morphology:v136 dependency:v124];
        goto LABEL_275;
      }
    }

    else
    {
      v45 = [*(v169 + 56) _morphologyForLanguage:(*(*(v169 + 96) + 16))()];
      [(NSMorphology *)v167 mergeMorphology:v45 override:1];
      if ([(NSMorphology *)v167 grammaticalGender]== NSGrammaticalGenderNeuter)
      {
        [(NSMorphology *)v167 setGrammaticalGender:4];
      }
    }

    v161 = 0;
    v41 = 0;
    goto LABEL_86;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [(NSInflectionRule *)v5 agreeWithConcept]|| [(NSInflectionRule *)v5 agreeWithArgument]|| [(NSInflectionRule *)v5 referentConcept]!= 0;
    if ([v7 count])
    {
      if (!v20)
      {
        goto LABEL_45;
      }

      goto LABEL_38;
    }
  }

  else
  {
    if ([v7 count])
    {
      goto LABEL_45;
    }

    v20 = 0;
  }

  if ((((*(*(v169 + 72) + 16))() | v20) & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_38:
  if (_NSInflectionLog_onceToken != -1)
  {
    dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
  }

  v21 = _NSInflectionLog_log;
  if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
  {
    v258.location = a3;
    v258.length = a4;
    v65 = NSStringFromRange(v258);
    v66 = *(v169 + 136);
    *buf = 138543618;
    *&buf[4] = v65;
    *&buf[12] = 2048;
    *&buf[14] = v66;
    _os_log_debug_impl(&dword_18075C000, v21, OS_LOG_TYPE_DEBUG, "Range %{public}@ of string with length %lld has a format specifier or external dependency; not inflecting during preflight.", buf, 0x16u);
  }

  v22 = v169;
  v23 = *(v169 + 40);
  if (v23)
  {
    v24 = (*(*(v169 + 80) + 16))();
    [v23 didSkipInflectableRangeWithUnfilledFormatSpecifiers:a3 sourceSubstring:a4 inflectionRule:v24 alternative:{v5, (*(*(v169 + 88) + 16))()}];
    v22 = v169;
  }

  [*(v22 + 48) addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:", a3, a4)}];
}

uint64_t ___NSInflect_block_invoke_24(void *a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (![a2 count])
  {
    return 5;
  }

  if (_NSInflectionLog_onceToken != -1)
  {
    dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
  }

  if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v24 = "Adding attributes of a single word";
      v25 = 2114;
      v26 = a2;
      _os_log_debug_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: %{public}@", buf, 0x16u);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (!v7)
  {
    return 4;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v20;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(a2);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      v15 = [v14 partOfSpeech];
      if (!a3 || v15 != a3)
      {
        if (v9 || v15 != 9)
        {
          if (v10 || v15 != 6)
          {
            if (!v11)
            {
              v11 = v14;
            }
          }

          else
          {
            v10 = v14;
          }
        }

        else
        {
          v9 = v14;
        }

        if (v9 && v10 != 0)
        {
          [(NSMorphology *)*(*(a1[4] + 8) + 40) mergeMorphology:v9 override:1];
LABEL_33:
          [(NSMorphology *)*(*(a1[4] + 8) + 40) mergeMorphology:v9 override:0];
          return 2;
        }
      }
    }

    v8 = [a2 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  if (v9 && !v10)
  {
    [(NSMorphology *)*(*(a1[5] + 8) + 40) mergeMorphology:v9 override:0];
    *(*(a1[6] + 8) + 24) |= 1uLL;
    return 1;
  }

  if (v9)
  {
    goto LABEL_33;
  }

  if (v10)
  {
    [(NSMorphology *)*(*(a1[7] + 8) + 40) mergeMorphology:v10 override:0];
    return 3;
  }

  if (v11)
  {
    [(NSMorphology *)*(*(a1[8] + 8) + 40) mergeMorphology:v11 override:0];
  }

  return 4;
}

uint64_t ___NSInflect_block_invoke_27(void *a1, void *a2)
{
  [a2 replacementRangeInResult];
  if ([a2 replacementKind] == 1 || (objc_msgSend(a2, "argument"), _NSIsNSNumber()))
  {
    if ([a2 replacementKind] == 1)
    {
      [a2 argument];
      if ((_NSIsNSNumber() & 1) == 0)
      {
        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void _NSInflect(NSLocale * _Nullable stringWithUTF8String:NSArray<NSObject *> * _Nullable, NSTermOfAddress * _Nullable, NSUInteger (^ _Nonnull)(void), BOOL, void (^ _Nonnull)(NSAttributedStringKey, NSRange, __attribute__((noescape)) void (^)(id _Nullable, NSRange, BOOL * _Nonnull)), void (^ _Nonnull)(NSRange, __attribute__((noescape)) void (^)(id _Nullable, NSRange, BOOL * _Nonnull)), void (^ _Nonnull)(NSRange, __attribute__((noescape)) void (^)(NSLocalizedNumberFormatRule *, NSRange, BOOL * _Nonnull)), void (^ _Nonnull)(NSAttributedStringKey, NSRange), BOOL (^ _Nonnull)(NSRange), id  _Nullable (^ _Nonnull)(NSAttributedStringKey, NSRange), NSString *(^ _Nonnull)(NSRange), void (^ _Nonnull)(NSRange, __attribute__((noescape)) void (^)(NSString * _Nullable, NSRange, BOOL * _Nonnull)), void (^ _Nonnull)(NSRange, id), void (^ _Nonnull)(NSRange, NSAttributedStringKey, id), id  _Nullable (^ _Nonnull)(id))_block_invoke"], @"NSAttributedString_Inflection.m", 529, @"Attribute string replacement argument should be a NSNumber when the formatting specifier is numeric"];
      }
    }

    v4 = *(*(a1[9] + 8) + 40);
    if (!v4)
    {
      *(*(a1[9] + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4 = *(*(a1[9] + 8) + 40);
    }

    [v4 addObject:{objc_msgSend(a2, "argument")}];
    v5 = *(*(a1[10] + 8) + 40);
    if (!v5)
    {
      *(*(a1[10] + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v5 = *(*(a1[10] + 8) + 40);
    }

    v6 = (*(a1[5] + 16))();

    return [v5 addObject:v6];
  }

  v8 = [a2 argument];
  v9 = a1[6];
  v10 = [a2 replacementRangeInResult];
  v12 = _NSInflectionGrammarWithLensAndRange(v9, v10, v11);
  result = _NSIsNSString();
  if (result)
  {
    goto LABEL_16;
  }

  result = _NSIsNSAttributedString();
  if (result)
  {
    result = [v8 string];
    v8 = result;
LABEL_16:
    if (v8)
    {
      if (v12)
      {
        v13 = [v12 partOfSpeech];
      }

      else
      {
        v13 = 0;
      }

      (*(a1[5] + 16))();
      v14 = (*(a1[7] + 16))();
      result = (*(a1[8] + 16))(a1[8], [v14 allPossibleWordAttributesForWord:v8], v13);
    }
  }

  if (v12)
  {
    v15 = a1[4];

    return [(NSMorphology *)v15 mergeMorphology:v12 override:0];
  }

  return result;
}

void *___NSInflect_block_invoke_36(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  (*(a1[4] + 16))();
  result = (*(a1[5] + 16))();
  if (result)
  {
    v9 = [result allPossibleWordAttributesForWord:a2];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    result = [v9 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (result)
    {
      v10 = result;
      v11 = *v15;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        result = [*(*(&v14 + 1) + 8 * v12) partOfSpeech];
        if (result != 9)
        {
          break;
        }

        if (v10 == ++v12)
        {
          result = [v9 countByEnumeratingWithState:&v14 objects:v13 count:16];
          v10 = result;
          if (result)
          {
            goto LABEL_4;
          }

          *(*(a1[6] + 8) + 24) |= 1uLL;
          *a5 = 1;
          return result;
        }
      }
    }
  }

  return result;
}

void *___NSInflect_block_invoke_41(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (a2)
  {
    v10 = result;
    result = [a2 capitalizedStringWithLocale:result[4]];
    *(*(v10[5] + 8) + 40) = result;
    v11 = *(v10[6] + 8);
    *(v11 + 32) = a3;
    *(v11 + 40) = a4;
  }

  *a7 = 1;
  return result;
}

void ___NSInflect_block_invoke_43(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v9 = (*(a1[6] + 16))();
    if (!v9 || (v10 = v9, (_NSIsNSString() & 1) == 0))
    {
      v10 = (*(a1[7] + 16))();
    }

    v11 = [a2 _formattedString:v10 withStringLocale:objc_msgSend(MEMORY[0x1E695DF58] andDisplayLocale:{"localeWithLocaleIdentifier:", (*(a1[8] + 16))()), a1[4]}];
    if (v11)
    {
      if (([v11 isEqualToString:v10] & 1) == 0)
      {
        (*(a1[9] + 16))();
        (*(a1[10] + 16))();
      }

      v12 = a1[5];
      v13 = [NSValue valueWithRange:a3, a4];

      [v12 addObject:v13];
    }
  }

  else
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v15 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
    }

    *a5 = 1;
  }
}

uint64_t ___NSInflect_block_invoke_48(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = result;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = *(result + 32);
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      v11 = a3 + a4;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v22 + 1) + 8 * i) rangeValue];
          if (v11 >= v13 + v14)
          {
            v15 = v13 + v14;
          }

          else
          {
            v15 = a3 + a4;
          }

          v16 = v13 > a3 || a3 >= v13 + v14;
          v17 = a3;
          if (v16)
          {
            v18 = a3 > v13 || v13 >= v11;
            v17 = v13;
            if (v18)
            {
              continue;
            }
          }

          if (v15 != v17)
          {
            v20 = *(*(v6 + 48) + 16);
            return v20();
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if ([*(v6 + 40) count] && (v19 = (*(*(v6 + 56) + 16))()) != 0 && v19 != objc_msgSend(MEMORY[0x1E695DFB0], "null"))
    {
      v20 = *(*(v6 + 64) + 16);
    }

    else
    {
      v20 = *(*(v6 + 64) + 16);
    }

    return v20();
  }

  return result;
}

@end