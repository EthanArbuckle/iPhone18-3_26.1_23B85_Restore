uint64_t _KBLogger()
{
  if (qword_10420 != -1)
  {
    sub_6138();
  }

  return qword_10428;
}

BOOL TIKeyboardMigratorIsCurrentDevice12InchPad()
{
  v0 = MGGetSInt32Answer();
  v1 = MGGetSInt32Answer();
  MGGetFloat32Answer();
  v3 = v2;
  if (v0 >= v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = v0;
  }

  return v3 * 834.0 < v4;
}

void TIKeyboardMigratorTest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  qword_10430 = a1;
  qword_10438 = [NSNumber numberWithBool:a2];
  qword_10440 = a3;
  sub_35B4();
  qword_10430 = 0;
  qword_10438 = 0;
  qword_10440 = 0;
}

NSMutableDictionary *sub_3288()
{
  if (!os_variant_has_internal_ui())
  {
    return 0;
  }

  v0 = [NSMutableDictionary dictionaryWithCapacity:3];
  v1 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v1)
  {
    v2 = v1;
    v3 = CFPreferencesCopyKeyList(v1, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(__CFArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = CFPreferencesCopyAppValue(v8, v2);
          if (v9)
          {
            v10 = v9;
            [(NSMutableDictionary *)v0 setObject:v9 forKeyedSubscript:v8];
            CFRelease(v10);
          }
        }

        v5 = [(__CFArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    CFRelease(v2);
  }

  v11 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v11)
  {
    v12 = v11;
    v13 = CFPreferencesCopyAppValue(@"AppleKeyboards", v11);
    if (v13)
    {
      v14 = v13;
      [(NSMutableDictionary *)v0 setObject:v13 forKeyedSubscript:@"AppleKeyboards"];
      CFRelease(v14);
    }

    CFRelease(v12);
  }

  return v0;
}

void sub_345C(uint64_t a1)
{
  [NSString stringWithFormat:@"com.apple.Preferences.%@", a1];
  v2 = CPCopySharedResourcesPreferencesDomainForDomain();
  v3 = CFPreferencesCopyAppValue(@"FuzzyPinyin", v2);
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v6)
    {
      v7 = v6;
      if (CFPreferencesCopyAppValue(@"FuzzyPinyin", v6))
      {
        v8 = [NSMutableDictionary dictionaryWithDictionary:?];
        [(NSMutableDictionary *)v8 setValue:v4 forKey:a1];
      }

      else
      {
        v8 = [NSMutableDictionary dictionaryWithObject:v4 forKey:a1];
      }

      CFPreferencesSetAppValue(@"FuzzyPinyin", v8, v7);
      CFPreferencesAppSynchronize(v7);
      CFPreferencesSetAppValue(@"FuzzyPinyin", 0, v2);
      CFPreferencesAppSynchronize(v2);
      CFRelease(v7);
    }

LABEL_16:
    CFRelease(v2);
    if (!v4)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v2)
  {
    goto LABEL_16;
  }

  if (!v3)
  {
    return;
  }

LABEL_8:

  CFRelease(v4);
}

void sub_35B4()
{
  v0 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v0)
  {
    v1 = v0;
    v2 = CFPreferencesCopyAppValue(@"AppleLanguages", v0);
    if (v2)
    {
      v3 = v2;
      v4 = [v2 firstObject];
      CFRelease(v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = MGGetSInt32Answer();
    v6 = MGGetSInt32Answer();
    IsCurrentDevice12InchPad = TIKeyboardMigratorIsCurrentDevice12InchPad();
    v8 = sub_5D84();
    v222 = 0;
    v9 = v8 <= 0xB || v8 == 0x7FFFFFFFFFFFFFFFLL;
    if (v9 && v6 == 3)
    {
      v222 = [v4 isEqualToString:@"ja"];
    }

    v10 = sub_5D84();
    v12 = v10 == 0x7FFFFFFFFFFFFFFFLL || v10 < 0xD;
    v13 = sub_5D84();
    v14 = sub_5D84();
    v16 = v14 == 0x7FFFFFFFFFFFFFFFLL || v14 < 0x10;
    v17 = sub_5D84();
    v19 = v17 == 0x7FFFFFFFFFFFFFFFLL || v17 < 0x11;
    v234 = v19;
    v20 = sub_5D84();
    v22 = v20 == 0x7FFFFFFFFFFFFFFFLL || v20 < 0x13;
    v232 = v22;
    v230 = (v13 == 0x7FFFFFFFFFFFFFFFLL || v13 <= 0xE) && v6 == 3 && !IsCurrentDevice12InchPad;
    applicationID = v1;
    obj = CFPreferencesCopyAppValue(@"AppleKeyboards", v1);
    if (!obj)
    {
      if (v222)
      {
        v27 = +[NSMutableArray array];
        v255 = 0u;
        v256 = 0u;
        v257 = 0u;
        v258 = 0u;
        v28 = [+[TIInputModeController sharedInputModeController](TIInputModeController "sharedInputModeController")];
        v29 = [v28 countByEnumeratingWithState:&v255 objects:v311 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = 0;
          v32 = *v256;
          do
          {
            for (i = 0; i != v30; i = i + 1)
            {
              if (*v256 != v32)
              {
                objc_enumerationMutation(v28);
              }

              v34 = *(*(&v255 + 1) + 8 * i);
              v35 = [(__CFString *)v34 isEqualToString:@"ja_JP-Kana"];
              v31 |= v35;
              if (v35)
              {
                v36 = @"ja_JP-Kana@sw=Kana";
              }

              else
              {
                v36 = v34;
              }

              [v27 addObject:v36];
            }

            v30 = [v28 countByEnumeratingWithState:&v255 objects:v311 count:16];
          }

          while (v30);
          if (v31)
          {
            CFPreferencesSetAppValue(@"AppleKeyboards", v27, applicationID);
            CFPreferencesSetAppValue(@"AppleKeyboardsExpanded", &__kCFBooleanTrue, applicationID);
            CFPreferencesAppSynchronize(applicationID);
          }
        }
      }

LABEL_410:
      CFRelease(applicationID);
      return;
    }

    v23 = +[NSMutableArray array];
    v24 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v24)
    {
      v25 = v24;
      v26 = CFPreferencesCopyAppValue(@"SuchengCangjie", v24);
      if (v26)
      {
        v219 = [objc_msgSend(v26 objectForKey:{@"zh_Hant-Cangjie", "BOOLValue"}];
        CFPreferencesSetAppValue(@"SuchengCangjie", 0, v25);
      }

      else
      {
        v219 = 0;
      }

      CFRelease(v25);
    }

    else
    {
      v219 = 0;
    }

    v37 = &KeyboardMigrator__metaData;
    v38 = qword_10430;
    if (!qword_10430)
    {
      v38 = +[NSLocale currentLocale];
    }

    v39 = [(NSString *)[(NSLocale *)v38 countryCode] isEqualToString:@"JP"];
    if (v5 == 1)
    {
      v40 = v16 & v39;
    }

    else
    {
      v40 = 0;
    }

    v41 = qword_10430;
    if (!qword_10430)
    {
      v41 = +[NSLocale currentLocale];
    }

    if (![(NSString *)[(NSLocale *)v41 countryCode] isEqualToString:@"HK"])
    {
      v42 = qword_10430;
      if (!qword_10430)
      {
        v42 = +[NSLocale currentLocale];
      }

      v234 &= [(NSString *)[(NSLocale *)v42 countryCode] isEqualToString:@"MO"];
    }

    v276 = 0u;
    v277 = 0u;
    v274 = 0u;
    v275 = 0u;
    v225 = v23;
    v236 = [obj countByEnumeratingWithState:&v274 objects:v315 count:16];
    if (v236)
    {
      v217 = v39;
      v228 = 0;
      v226 = *v275;
      v220 = v12;
      v221 = v6;
      while (1)
      {
        v43 = 0;
        do
        {
          if (*v275 != v226)
          {
            objc_enumerationMutation(obj);
          }

          v240 = v43;
          v44 = [*(*(&v274 + 1) + 8 * v43) stringByReplacingOccurrencesOfString:@"ja_JP-50On" withString:@"ja_JP-Kana"];
          if ([v44 hasPrefix:@"ko_KO"])
          {
            v44 = [v44 stringByReplacingOccurrencesOfString:@"ko_KO" withString:@"ko_KR"];
          }

          if (v232)
          {
            v44 = [v44 stringByReplacingOccurrencesOfString:@"vi_VN" withString:@"vi_VN-Telex"];
          }

          if (v6 != 3)
          {
            v47 = [v44 stringByReplacingOccurrencesOfString:@"Japanese3x3Flick" withString:@"Kana-Flick"];
            v48 = @"Kana";
LABEL_87:
            v46 = [objc_msgSend(v47 stringByReplacingOccurrencesOfString:@"Japanese3x3" withString:{v48), "stringByReplacingOccurrencesOfString:withString:", @"Japanese-50On", v48}];
            goto LABEL_88;
          }

          if (!v222)
          {
            v47 = [v44 stringByReplacingOccurrencesOfString:@"Japanese3x3Flick" withString:@"Kana-RTL-Flick"];
            v48 = @"Kana-RTL";
            goto LABEL_87;
          }

          v45 = [objc_msgSend(objc_msgSend(v44 stringByReplacingOccurrencesOfString:@"Japanese3x3Flick" withString:{@"Kana-Flick", "stringByReplacingOccurrencesOfString:withString:", @"Japanese3x3", @"Kana", "stringByReplacingOccurrencesOfString:withString:", @"Japanese-50On", @"Kana"}];
          if ([(__CFString *)v45 isEqualToString:@"ja_JP-Kana"])
          {
            v46 = @"ja_JP-Kana@sw=Kana";
          }

          else
          {
            v46 = v45;
          }

LABEL_88:
          if ([(__CFString *)v46 hasPrefix:@"zh_Han"])
          {
            if (((-[__CFString hasPrefix:](v46, "hasPrefix:", @"zh_Hans-Pinyin") & 1) != 0 || -[__CFString hasPrefix:](v46, "hasPrefix:", @"zh_Hant-Pinyin")) && [sub_590C(v46) hasPrefix:@"AZERTY"])
            {
              if ([(__CFString *)v46 hasPrefix:@"zh_Hans-Pinyin"])
              {
                v49 = @"AZERTY-Pinyin-Simplified";
              }

              else
              {
                v49 = @"AZERTY-Pinyin-Traditional";
              }

              v46 = sub_5A48(v46, v49);
            }

            v272 = 0u;
            v273 = 0u;
            v270 = 0u;
            v271 = 0u;
            v247 = [&off_DC60 countByEnumeratingWithState:&v270 objects:v314 count:16];
            if (v247)
            {
              v244 = *v271;
              do
              {
                v50 = 0;
                do
                {
                  if (*v271 != v244)
                  {
                    objc_enumerationMutation(&off_DC60);
                  }

                  v251 = v50;
                  v51 = *(*(&v270 + 1) + 8 * v50);
                  v266 = 0u;
                  v267 = 0u;
                  v268 = 0u;
                  v269 = 0u;
                  v52 = [&off_DD38 countByEnumeratingWithState:&v266 objects:v313 count:16];
                  if (v52)
                  {
                    v53 = v52;
                    v54 = *v267;
                    do
                    {
                      for (j = 0; j != v53; j = j + 1)
                      {
                        if (*v267 != v54)
                        {
                          objc_enumerationMutation(&off_DD38);
                        }

                        v56 = *(*(&v266 + 1) + 8 * j);
                        v57 = [NSString stringWithFormat:@"zh_%@-%@", v56, v51];
                        v58 = sub_590C(v46);
                        if (-[__CFString hasPrefix:](v46, "hasPrefix:", v57) && [v58 isEqualToString:v51])
                        {
                          v46 = sub_5A48(v46, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%@", v51, [&off_DD38 objectForKey:v56]));
                        }
                      }

                      v53 = [&off_DD38 countByEnumeratingWithState:&v266 objects:v313 count:16];
                    }

                    while (v53);
                  }

                  v50 = v251 + 1;
                }

                while ((v251 + 1) != v247);
                v247 = [&off_DC60 countByEnumeratingWithState:&v270 objects:v314 count:16];
              }

              while (v247);
            }

            if ([(__CFString *)v46 hasPrefix:@"zh_Hant-Cangjie"])
            {
              v59 = [(__CFString *)v46 stringByReplacingOccurrencesOfString:@"sw=Pinyin" withString:@"sw=Cangjie-QWERTY"];
              v46 = v59;
              v23 = v225;
              v12 = v220;
              v6 = v221;
              if (v219)
              {
                v46 = [-[__CFString stringByReplacingOccurrencesOfString:withString:](v59 stringByReplacingOccurrencesOfString:@"sw=Cangjie" withString:{@"sw=Sucheng", "stringByReplacingOccurrencesOfString:withString:", @"zh_Hant-Cangjie", @"zh_Hant-Sucheng"}];
              }

              if ([(__CFString *)v46 rangeOfString:@"sw=Sucheng"]!= 0x7FFFFFFFFFFFFFFFLL)
              {
                v46 = [(__CFString *)v46 stringByReplacingOccurrencesOfString:@"zh_Hant-Cangjie" withString:@"zh_Hant-Sucheng"];
              }
            }

            else
            {
              v23 = v225;
              v12 = v220;
              v6 = v221;
            }
          }

          if ([(__CFString *)v46 hasPrefix:@"Cherokee"])
          {
            v46 = [(__CFString *)v46 stringByReplacingOccurrencesOfString:@"US" withString:@"Cherokee-Nation"];
          }

          if (v12 && (([(__CFString *)v46 isEqualToString:@"hi"]& 1) != 0 || [(__CFString *)v46 hasPrefix:@"hi@"]))
          {
            [v23 addObject:@"hi-Translit"];
          }

          if (v234)
          {
            if ([(__CFString *)v46 hasPrefix:@"zh_Hant"])
            {
              v264 = 0u;
              v265 = 0u;
              v262 = 0u;
              v263 = 0u;
              v60 = [&off_DC78 countByEnumeratingWithState:&v262 objects:v312 count:16];
              if (v60)
              {
                v61 = v60;
                v62 = *v263;
                do
                {
                  for (k = 0; k != v61; k = k + 1)
                  {
                    if (*v263 != v62)
                    {
                      objc_enumerationMutation(&off_DC78);
                    }

                    if ([(__CFString *)v46 hasPrefix:*(*(&v262 + 1) + 8 * k)])
                    {
                      v46 = [(__CFString *)v46 stringByReplacingOccurrencesOfString:@"zh_Hant-" withString:@"yue_Hant-"];
                    }
                  }

                  v61 = [&off_DC78 countByEnumeratingWithState:&v262 objects:v312 count:16];
                }

                while (v61);
              }
            }
          }

          [v23 addObject:v46];
          if (v230)
          {
            v228 |= [(__CFString *)v46 hasPrefix:@"ja_JP-Romaji"];
            v64 = v228 ^ 1;
          }

          else
          {
            v64 = 1;
          }

          v43 = v240 + 1;
        }

        while (v240 + 1 != v236);
        v236 = [obj countByEnumeratingWithState:&v274 objects:v315 count:16];
        if (!v236)
        {
          v37 = &KeyboardMigrator__metaData;
          if (v64)
          {
            break;
          }

          v338 = 0;
          v339 = &v338;
          v340 = 0x3052000000;
          v341 = sub_5B0C;
          v342 = sub_5B1C;
          v343 = 0;
          v260[0] = _NSConcreteStackBlock;
          v260[1] = 3221225472;
          v260[2] = sub_5B28;
          v260[3] = &unk_C2B8;
          v261 = v217;
          v260[4] = &v338;
          v70 = [v23 indexesOfObjectsPassingTest:v260];
          if ([v70 count])
          {
            [v23 removeObjectsAtIndexes:v70];
            v71 = [v70 firstIndex];
          }

          else
          {
            v71 = [v23 count];
          }

          v72 = v71;
          v65 = applicationID;
          if (v339[5])
          {
            v73 = [NSString stringWithFormat:@"en_JP@hw=%@;sw=QWERTY-JIS", v339[5]];
          }

          else
          {
            v73 = @"en_JP@sw=QWERTY-JIS";
          }

          [v23 insertObject:v73 atIndex:v72];
LABEL_160:
          _Block_object_dispose(&v338, 8);
          goto LABEL_161;
        }
      }
    }

    v65 = applicationID;
    if (v40)
    {
      v338 = 0;
      v339 = &v338;
      v340 = 0x3052000000;
      v341 = sub_5B0C;
      v342 = sub_5B1C;
      v343 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&v335 = 0x3052000000;
      *(&v335 + 1) = sub_5B0C;
      *&v336 = sub_5B1C;
      *(&v336 + 1) = 0;
      v259[0] = _NSConcreteStackBlock;
      v259[1] = 3221225472;
      v259[2] = sub_5D10;
      v259[3] = &unk_C2E0;
      v259[4] = &v338;
      v259[5] = buf;
      v66 = [v23 indexesOfObjectsPassingTest:v259];
      if ([v66 count])
      {
        [v23 removeObjectsAtIndexes:v66];
        v67 = [v66 firstIndex];
        v68 = +[NSMutableArray array];
        if ([v339[5] length])
        {
          [v68 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"hw=%@", v339[5])}];
        }

        if ([*(*&buf[8] + 40) length])
        {
          [v68 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"sw=%@", *(*&buf[8] + 40))}];
        }

        if ([v68 count])
        {
          v69 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"en_JP@%@", [v68 componentsJoinedByString:@";"]);
        }

        else
        {
          v69 = @"en_JP";
        }

        [v23 insertObject:v69 atIndex:v67];
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_160;
    }

LABEL_161:
    if (!_os_feature_enabled_impl())
    {
LABEL_347:
      if (_os_feature_enabled_impl())
      {
        base_props = v37[14].base_props;
        if (!base_props)
        {
          base_props = +[NSLocale currentLocale];
        }

        v250 = base_props;
        v254 = [(NSLocale *)base_props regionCode];
        if ([(NSString *)v254 length])
        {
          if (([&off_DC90 containsObject:v254] & 1) == 0)
          {
            v190 = CPCopySharedResourcesPreferencesDomainForDomain();
            if (!v190 || (v191 = CFPreferencesCopyAppValue(@"ArabicTransliterationMigrationVersion", v190)) == 0 || (v192 = v191, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v192 unsignedIntegerValue])
            {
              v193 = CPCopySharedResourcesPreferencesDomainForDomain();
              if (v193)
              {
                v194 = v193;
                CFPreferencesSetAppValue(@"ArabicTransliterationMigrationVersion", [NSNumber numberWithUnsignedInteger:1], v193);
                CFPreferencesAppSynchronize(v194);
              }

              v337 = 0u;
              v336 = 0u;
              v335 = 0u;
              *buf = 0u;
              v195 = [v23 countByEnumeratingWithState:buf objects:&v338 count:16];
              if (v195)
              {
                v196 = v195;
                v197 = 0;
                v198 = 0;
                v199 = 0;
                v200 = *v335;
                while (1)
                {
                  for (m = 0; m != v196; m = m + 1)
                  {
                    if (*v335 != v200)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v202 = *(*&buf[8] + 8 * m);
                    if ([TIInputModeGetLanguage() isEqualToString:@"ar"])
                    {
                      if ([TIInputModeGetNormalizedIdentifier() isEqualToString:@"ar-Translit"])
                      {
                        goto LABEL_408;
                      }

                      v199 = 1;
                    }

                    else
                    {
                      LanguageWithRegion = TIInputModeGetLanguageWithRegion();
                      SWLayout = TIInputModeGetSWLayout();
                      if (SWLayout)
                      {
                        v205 = SWLayout;
                        if (v198)
                        {
                          v198 = 1;
                          if (v197)
                          {
                            goto LABEL_376;
                          }
                        }

                        else
                        {
                          v198 = [SWLayout containsString:@"AZERTY"];
                          if (v197)
                          {
                            goto LABEL_376;
                          }
                        }

                        v197 = [v205 containsString:@"QWERTY"];
                      }

                      else
                      {
                        if ([LanguageWithRegion hasPrefix:@"en_"] & 1) != 0 || (objc_msgSend(LanguageWithRegion, "isEqualToString:", @"fr_CA"))
                        {
LABEL_376:
                          v197 = 1;
                          continue;
                        }

                        if (([LanguageWithRegion isEqualToString:@"fr_BE"] & 1) != 0 || objc_msgSend(LanguageWithRegion, "isEqualToString:", @"fr_FR"))
                        {
                          v198 = 1;
                        }
                      }
                    }
                  }

                  v196 = [v23 countByEnumeratingWithState:buf objects:&v338 count:16];
                  if (!v196)
                  {
                    if (v199)
                    {
                      if (v198)
                      {
                        v206 = @"ar-Translit@sw=AZERTY-Arabic";
                      }

                      else
                      {
                        v206 = @"ar-Translit";
                      }

                      if ((v198 & 1 & v197) == 1)
                      {
                        v206 = @"ar-Translit@sw=AZERTY-Arabic";
                        v207 = v23;
                        if (!-[NSString isEqualToString:](-[NSLocale languageCode](v250, "languageCode"), "isEqualToString:", @"fr") && ![&off_DCA8 containsObject:v254])
                        {
                          v206 = @"ar-Translit";
                        }
                      }

                      else
                      {
                        v207 = v23;
                      }

                      if ([objc_msgSend(v207 "lastObject")])
                      {
                        [v207 insertObject:v206 atIndex:{objc_msgSend(v207, "count") - 1}];
                      }

                      else
                      {
                        [v207 addObject:v206];
                      }
                    }

                    break;
                  }
                }
              }
            }
          }
        }

LABEL_408:
        v65 = applicationID;
      }

      CFPreferencesSetAppValue(@"AppleKeyboards", v23, v65);
      CFPreferencesAppSynchronize(v65);
      CFRelease(obj);
      [+[TIPreferencesController sharedPreferencesController](TIPreferencesController "sharedPreferencesController")];
      goto LABEL_410;
    }

    v74 = CFPreferencesCopyAppValue(@"MultilingualSetsMigrationVersion", @"com.apple.migration");
    if (v74)
    {
      v75 = v74;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v75 unsignedIntegerValue])
        {
LABEL_340:
          if ([v23 count])
          {
            v187 = 0;
            while (1)
            {
              [v23 objectAtIndexedSubscript:v187];
              if ([TIInputModeGetNormalizedIdentifier() isEqualToString:@"ko_KR"])
              {
                ComponentsFromIdentifier = TIInputModeGetComponentsFromIdentifier();
                if ([objc_msgSend(ComponentsFromIdentifier objectForKeyedSubscript:{@"sw", "isEqualToString:", @"Korean-With-QWERTY"}])
                {
                  if (![objc_msgSend(ComponentsFromIdentifier objectForKeyedSubscript:{@"ml", "length"}])
                  {
                    break;
                  }
                }
              }

              if (++v187 >= [v23 count])
              {
                goto LABEL_346;
              }
            }

            if (v187 != 0x7FFFFFFFFFFFFFFFLL)
            {
              *buf = 0u;
              v335 = 0u;
              v336 = 0u;
              v337 = 0u;
              v208 = [v23 countByEnumeratingWithState:buf objects:&v338 count:16];
              if (v208)
              {
                v209 = v208;
                v210 = *v335;
                v211 = 1;
                do
                {
                  for (n = 0; n != v209; n = n + 1)
                  {
                    if (*v335 != v210)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v213 = *(*&buf[8] + 8 * n);
                    v214 = [TIInputModeGetComponentsFromIdentifier() objectForKeyedSubscript:@"ml"];
                    if ([v214 length])
                    {
                      v215 = [v214 integerValue];
                      if (v211 <= v215 + 1)
                      {
                        v211 = v215 + 1;
                      }
                    }
                  }

                  v209 = [v23 countByEnumeratingWithState:buf objects:&v338 count:16];
                }

                while (v209);
              }

              else
              {
                v211 = 1;
              }

              v216 = [NSString stringWithFormat:@"%u", v211];
              v338 = sub_5E34([v23 objectAtIndexedSubscript:v187], v216);
              v339 = sub_5E34(@"en_US", v216);
              [v23 replaceObjectsInRange:v187 withObjectsFromArray:{1, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v338, 2)}];
            }
          }

LABEL_346:
          v65 = applicationID;
          v37 = &KeyboardMigrator__metaData;
          goto LABEL_347;
        }
      }
    }

    v310 = 0u;
    v309 = 0u;
    v308 = 0u;
    v307 = 0u;
    v76 = [v23 countByEnumeratingWithState:&v307 objects:&v338 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v308;
      do
      {
        for (ii = 0; ii != v77; ii = ii + 1)
        {
          if (*v308 != v78)
          {
            objc_enumerationMutation(v23);
          }

          v80 = *(*(&v307 + 1) + 8 * ii);
          if ([objc_msgSend(TIInputModeGetComponentsFromIdentifier() objectForKeyedSubscript:{@"ml", "length"}])
          {
            goto LABEL_340;
          }
        }

        v77 = [v23 countByEnumeratingWithState:&v307 objects:&v338 count:16];
      }

      while (v77);
    }

    CFPreferencesSetAppValue(@"MultilingualSetsMigrationVersion", &off_DDB0, @"com.apple.migration");
    CFPreferencesAppSynchronize(@"com.apple.migration");
    if (qword_10420 != -1)
    {
      sub_614C();
    }

    v81 = qword_10428;
    if (os_log_type_enabled(qword_10428, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v23;
      _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEFAULT, "Beginning migration to multilingual sets with previous input modes %@", buf, 0xCu);
    }

    v245 = +[NSMutableArray array];
    v82 = +[NSMutableDictionary dictionary];
    v248 = +[NSMutableDictionary dictionary];
    v303 = 0u;
    v304 = 0u;
    v305 = 0u;
    v306 = 0u;
    v83 = [+[TIInputModeController sharedInputModeController](TIInputModeController "sharedInputModeController")];
    v84 = [v83 countByEnumeratingWithState:&v303 objects:buf count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v304;
      v87 = TIInputModePropertiesSupportsMultilingual;
      v88 = TIInputModePropertiesMultilingualOnly;
      v252 = TIInputModePropertiesSupportedMultiscriptInputModes;
      v241 = TIInputModePropertiesRequiredMultilingualInputModes;
      v237 = TIInputModePropertiesPairedMultilingualInputMode;
      do
      {
        for (jj = 0; jj != v85; jj = jj + 1)
        {
          if (*v304 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v90 = *(*(&v303 + 1) + 8 * jj);
          if ([objc_msgSend(TIGetInputModeProperties() objectForKeyedSubscript:{v87), "BOOLValue"}])
          {
            v91 = [objc_msgSend(TIGetInputModeProperties() objectForKeyedSubscript:{v88), "BOOLValue"}];
            v92 = TIGetInputModeProperties();
            if (v91)
            {
              v93 = [v92 objectForKeyedSubscript:v241];
              v94 = [TIGetInputModeProperties() objectForKeyedSubscript:v237];
              if ([v93 count])
              {
                v332[0] = @"required";
                v332[1] = @"paired";
                v95 = &stru_CEE0;
                if (v94)
                {
                  v95 = v94;
                }

                v333[0] = v93;
                v333[1] = v95;
                [v82 setObject:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v333, v332, 2), v90}];
              }

              if ([(__CFString *)v94 length])
              {
                [v248 setObject:v90 forKeyedSubscript:v94];
              }
            }

            else if (![v92 objectForKeyedSubscript:v252])
            {
              [v245 addObject:v90];
            }
          }
        }

        v85 = [v83 countByEnumeratingWithState:&v303 objects:buf count:16];
      }

      while (v85);
    }

    v96 = +[NSMutableArray array];
    v242 = +[NSMutableDictionary dictionary];
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    v302 = 0u;
    v97 = [v225 countByEnumeratingWithState:&v299 objects:v331 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v300;
      do
      {
        for (kk = 0; kk != v98; kk = kk + 1)
        {
          if (*v300 != v99)
          {
            objc_enumerationMutation(v225);
          }

          v101 = *(*(&v299 + 1) + 8 * kk);
          NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
          v103 = v96;
          if (([v245 containsObject:NormalizedIdentifier] & 1) == 0)
          {
            if (![v82 objectForKey:NormalizedIdentifier])
            {
              if (![v248 objectForKey:NormalizedIdentifier])
              {
                continue;
              }

              NormalizedIdentifier = [v248 objectForKeyedSubscript:NormalizedIdentifier];
            }

            v104 = [v242 objectForKeyedSubscript:NormalizedIdentifier];
            if (v104)
            {
              v103 = v104;
            }

            else
            {
              v103 = +[NSMutableArray array];
              [v242 setObject:v103 forKeyedSubscript:NormalizedIdentifier];
            }
          }

          [v103 addObject:v101];
        }

        v98 = [v225 countByEnumeratingWithState:&v299 objects:v331 count:16];
      }

      while (v98);
    }

    v253 = v82;
    v105 = +[NSMutableDictionary dictionary];
    v295 = 0u;
    v296 = 0u;
    v297 = 0u;
    v298 = 0u;
    v106 = [v96 countByEnumeratingWithState:&v295 objects:v330 count:16];
    if (v106)
    {
      v107 = v106;
      v108 = *v296;
      do
      {
        for (mm = 0; mm != v107; mm = mm + 1)
        {
          if (*v296 != v108)
          {
            objc_enumerationMutation(v96);
          }

          v110 = *(*(&v295 + 1) + 8 * mm);
          v111 = TIInputModeGetNormalizedIdentifier();
          if (qword_10440)
          {
            v112 = [qword_10440 objectForKeyedSubscript:TIInputModeGetNormalizedIdentifier()];
          }

          else
          {
            v112 = UIKeyboardSimulatedImplicitInputModeDetectionForPrimaryInputMode();
          }

          v113 = v112;
          if ([v112 count])
          {
            v294[0] = _NSConcreteStackBlock;
            v294[1] = 3221225472;
            v294[2] = sub_5DD8;
            v294[3] = &unk_C308;
            v294[4] = v111;
            v294[5] = v245;
            v114 = [v113 indexesOfObjectsPassingTest:v294];
            if ([v114 count])
            {
              [v105 setObject:objc_msgSend(v113 forKeyedSubscript:{"objectsAtIndexes:", v114), v110}];
            }
          }
        }

        v107 = [v96 countByEnumeratingWithState:&v295 objects:v330 count:16];
      }

      while (v107);
    }

    v246 = [v225 mutableCopy];
    if ([v105 count])
    {
      v328 = 0u;
      v327 = 0u;
      v326 = 0u;
      v325 = 0u;
      v115 = [v105 countByEnumeratingWithState:&v325 objects:v329 count:16];
      if (v115)
      {
        v116 = v115;
        v117 = *v326;
        v118 = 1;
        do
        {
          for (nn = 0; nn != v116; nn = nn + 1)
          {
            if (*v326 != v117)
            {
              objc_enumerationMutation(v105);
            }

            v120 = *(*(&v325 + 1) + 8 * nn);
            v121 = [objc_msgSend(v105 objectForKeyedSubscript:{v120), "firstObject"}];
            if ([v121 length])
            {
              v122 = [NSString stringWithFormat:@"%u", v118];
              v123 = sub_5E34(v120, v122);
              v124 = sub_5E34(v121, v122);
              v125 = [v246 indexOfObject:v120];
              if (v125 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v126 = v125;
                [v246 replaceObjectAtIndex:v125 withObject:v123];
                [v246 insertObject:v124 atIndex:v126 + 1];
              }

              v118 = (v118 + 1);
            }
          }

          v116 = [v105 countByEnumeratingWithState:&v325 objects:v329 count:16];
        }

        while (v116);
      }

      goto LABEL_316;
    }

    v127 = v242;
    if (![v242 count] && objc_msgSend(v96, "count") == &dword_0 + 2)
    {
      v128 = [v96 objectAtIndexedSubscript:0];
      v129 = [v96 objectAtIndexedSubscript:1];
      Language = TIInputModeGetLanguage();
      if (([Language isEqualToString:TIInputModeGetLanguage()] & 1) == 0)
      {
        v131 = sub_590C(v128);
        v132 = sub_590C(v129);
        if (v131)
        {
          v133 = v132;
          if (v132)
          {
            v249 = v128;
            v328 = 0u;
            v327 = 0u;
            v326 = 0u;
            v325 = 0u;
            v134 = [v96 countByEnumeratingWithState:&v325 objects:v329 count:16];
            v238 = v133;
            v243 = v131;
            if (v134)
            {
              v135 = v134;
              v136 = *v326;
              v137 = 0x7FFFFFFFFFFFFFFFLL;
              do
              {
                for (i1 = 0; i1 != v135; i1 = i1 + 1)
                {
                  if (*v326 != v136)
                  {
                    objc_enumerationMutation(v96);
                  }

                  v139 = *(*(&v325 + 1) + 8 * i1);
                  v140 = sub_5E34(v139, @"1");
                  v141 = [v246 indexOfObject:v139];
                  if (v141 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v142 = v141;
                    [v246 replaceObjectAtIndex:v141 withObject:v140];
                    v137 = v142 + 1;
                  }
                }

                v135 = [v96 countByEnumeratingWithState:&v325 objects:v329 count:16];
              }

              while (v135);
            }

            else
            {
              v137 = 0x7FFFFFFFFFFFFFFFLL;
            }

            Variant = TIInputModeGetVariant();
            v172 = TIInputModeGetVariant();
            if (![v243 isEqualToString:v238] || (v172 ? (v173 = v172) : (v173 = &stru_CEE0), Variant ? (v174 = Variant) : (v174 = &stru_CEE0), (-[__CFString isEqualToString:](v174, "isEqualToString:", v173) & 1) == 0))
            {
              if (v137 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v175 = sub_5E34(v129, @"2");
                v176 = sub_5E34(v249, @"2");
                [v246 insertObject:v175 atIndex:v137];
                [v246 insertObject:v176 atIndex:v137 + 1];
              }
            }
          }
        }
      }

      goto LABEL_316;
    }

    if (![v242 count] || objc_msgSend(v96, "count") != &dword_0 + 1)
    {
LABEL_316:
      v23 = v246;
      v177 = v225;
      if ([v246 count])
      {
        v178 = 0;
        while (1)
        {
          v179 = [v246 objectAtIndexedSubscript:v178];
          if ([TIInputModeGetNormalizedIdentifier() isEqualToString:@"hi_Latn"])
          {
            if (([v179 containsString:@"ml="] & 1) == 0)
            {
              break;
            }
          }

          if (++v178 >= [v246 count])
          {
            goto LABEL_336;
          }
        }

        if (![v246 count])
        {
          goto LABEL_329;
        }

        v180 = 0;
        while (1)
        {
          v181 = [objc_msgSend(v253 objectForKeyedSubscript:{@"hi_Latn", "objectForKeyedSubscript:", @"required"}];
          [v246 objectAtIndexedSubscript:v180];
          if ([v181 containsObject:TIInputModeGetNormalizedIdentifier()])
          {
            if (![objc_msgSend(v246 objectAtIndexedSubscript:{v180), "containsString:", @"ml="}])
            {
              break;
            }
          }

          if (++v180 >= [v246 count])
          {
            goto LABEL_329;
          }
        }

        if (v180 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v320 = sub_5E34([v246 objectAtIndexedSubscript:v180], @"1");
          v321 = sub_5E34(@"hi_Latn", @"1");
          v322 = sub_5E34(@"hi-Translit", @"1");
          [v246 replaceObjectsInRange:v180 withObjectsFromArray:{1, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v320, 3)}];
          [v246 removeObject:v179];
        }

        else
        {
LABEL_329:
          v182 = sub_590C(v179);
          if (v182)
          {
            v183 = v182;
          }

          else
          {
            v183 = @"QWERTY";
          }

          v184 = sub_5BD4(v179);
          v185 = @"Automatic";
          if (v184)
          {
            v185 = v184;
          }

          v320 = sub_5E34([NSString stringWithFormat:@"en_IN@sw=%@;hw=%@", v183, v185], @"1");
          v321 = sub_5E34(@"hi_Latn", @"1");
          v322 = sub_5E34(@"hi-Translit", @"1");
          [v246 replaceObjectsInRange:v178 withObjectsFromArray:{1, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v320, 3)}];
        }

        v177 = v225;
      }

LABEL_336:
      if (qword_10420 != -1)
      {
        sub_614C();
      }

      v186 = qword_10428;
      if (os_log_type_enabled(qword_10428, OS_LOG_TYPE_DEFAULT))
      {
        *v316 = 138412546;
        v317 = v177;
        v318 = 2112;
        v319 = v246;
        _os_log_impl(&dword_0, v186, OS_LOG_TYPE_DEFAULT, "Completed migration to multilingual sets with previous input modes %@ and new input modes %@", v316, 0x16u);
      }

      goto LABEL_340;
    }

    v229 = +[NSMutableSet set];
    v227 = +[NSMutableArray array];
    v223 = +[NSMutableArray array];
    v290 = 0u;
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    v143 = v253;
    v233 = [v242 countByEnumeratingWithState:&v290 objects:v329 count:16];
    if (v233)
    {
      v231 = *v291;
      do
      {
        v144 = 0;
        do
        {
          if (*v291 != v231)
          {
            objc_enumerationMutation(v127);
          }

          v235 = *(*(&v290 + 1) + 8 * v144);
          v239 = v144;
          v145 = [v127 objectForKeyedSubscript:?];
          v286 = 0u;
          v287 = 0u;
          v288 = 0u;
          v289 = 0u;
          v146 = [v145 countByEnumeratingWithState:&v286 objects:&v325 count:16];
          if (v146)
          {
            v147 = v146;
            v148 = *v287;
            while (2)
            {
              for (i2 = 0; i2 != v147; i2 = i2 + 1)
              {
                if (*v287 != v148)
                {
                  objc_enumerationMutation(v145);
                }

                v150 = *(*(&v286 + 1) + 8 * i2);
                v151 = TIInputModeGetNormalizedIdentifier();
                v152 = [v143 objectForKeyedSubscript:v151];
                if (v152 || (v152 = [v143 objectForKeyedSubscript:{objc_msgSend(v248, "objectForKeyedSubscript:", v151)}]) != 0)
                {
                  v153 = [v152 objectForKeyedSubscript:@"required"];
                  v282 = 0u;
                  v283 = 0u;
                  v284 = 0u;
                  v285 = 0u;
                  v154 = [v96 countByEnumeratingWithState:&v282 objects:v324 count:16];
                  if (v154)
                  {
                    v155 = v154;
                    v156 = *v283;
LABEL_266:
                    v157 = 0;
                    while (1)
                    {
                      if (*v283 != v156)
                      {
                        objc_enumerationMutation(v96);
                      }

                      v158 = *(*(&v282 + 1) + 8 * v157);
                      if ([v153 containsObject:TIInputModeGetNormalizedIdentifier()])
                      {
                        break;
                      }

                      if (v155 == ++v157)
                      {
                        v155 = [v96 countByEnumeratingWithState:&v282 objects:v324 count:16];
                        if (v155)
                        {
                          goto LABEL_266;
                        }

                        goto LABEL_274;
                      }
                    }

                    if (!v158)
                    {
                      goto LABEL_274;
                    }

                    [v229 addObject:v158];
                    v159 = v235;
                    goto LABEL_278;
                  }
                }

LABEL_274:
                v143 = v253;
              }

              v147 = [v145 countByEnumeratingWithState:&v286 objects:&v325 count:16];
              if (v147)
              {
                continue;
              }

              break;
            }
          }

          v159 = v235;
          [v227 addObject:v235];
LABEL_278:
          v127 = v242;
          if (([v159 isEqualToString:@"hi_Latn"] & 1) == 0 && (objc_msgSend(v159, "isEqualToString:", @"hi-Translit") & 1) == 0)
          {
            [v223 addObject:v159];
          }

          v144 = v239 + 1;
          v143 = v253;
        }

        while ((v239 + 1) != v233);
        v233 = [v242 countByEnumeratingWithState:&v290 objects:v329 count:16];
      }

      while (v233);
    }

    [v127 removeObjectsForKeys:v227];
    if (qword_10438)
    {
      if ([qword_10438 BOOLValue])
      {
LABEL_286:
        if ([v229 count] == &dword_0 + 1 && objc_msgSend(v127, "count") && objc_msgSend(v127, "count") <= 2)
        {
          v160 = [v229 anyObject];
          v161 = [NSMutableArray arrayWithObject:v160];
          v162 = [NSMutableArray arrayWithObject:sub_5E34(v160, @"1")];
          v278 = 0u;
          v279 = 0u;
          v280 = 0u;
          v281 = 0u;
          v163 = [v127 countByEnumeratingWithState:&v278 objects:v323 count:16];
          if (v163)
          {
            v164 = v163;
            v165 = *v279;
            do
            {
              for (i3 = 0; i3 != v164; i3 = i3 + 1)
              {
                if (*v279 != v165)
                {
                  objc_enumerationMutation(v242);
                }

                v167 = *(*(&v278 + 1) + 8 * i3);
                -[NSMutableArray addObjectsFromArray:](v161, "addObjectsFromArray:", [v242 objectForKeyedSubscript:v167]);
                [(NSMutableArray *)v162 addObject:sub_5E34(v167, @"1")];
                v168 = [objc_msgSend(v253 objectForKeyedSubscript:{v167), "objectForKeyedSubscript:", @"paired"}];
                if ([v168 length])
                {
                  [(NSMutableArray *)v162 addObject:sub_5E34(v168, @"1")];
                }
              }

              v164 = [v242 countByEnumeratingWithState:&v278 objects:v323 count:16];
            }

            while (v164);
          }

          if ([(NSMutableArray *)v161 count]>= 2)
          {
            v169 = 1;
            do
            {
              [v246 removeObject:{-[NSMutableArray objectAtIndexedSubscript:](v161, "objectAtIndexedSubscript:", v169++)}];
            }

            while (v169 < [(NSMutableArray *)v161 count]);
          }

          v170 = [v246 indexOfObject:{-[NSMutableArray objectAtIndexedSubscript:](v161, "objectAtIndexedSubscript:", 0)}];
          if (v170 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v246 replaceObjectsInRange:v170 withObjectsFromArray:{1, v162}];
          }
        }

        goto LABEL_316;
      }
    }

    else if (isH13ANEPresentOnIOS())
    {
      goto LABEL_286;
    }

    [v127 removeObjectsForKeys:v223];
    goto LABEL_286;
  }
}

id sub_590C(void *a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [a1 componentsSeparatedByCharactersInSet:{+[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"@;", 0)}];
  result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if ([v6 hasPrefix:@"sw="])
        {
          return [v6 substringFromIndex:{objc_msgSend(@"sw=", "length")}];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

id sub_5A48(void *a1, uint64_t a2)
{
  v4 = [a1 rangeOfString:@"sw="];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1;
  }

  v6 = v4;
  v7 = [a1 rangeOfString:@";" options:0 range:{v6, objc_msgSend(a1, "length") - v6}];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [a1 length];
  }

  v8 = (v7 - v6);
  v9 = [@"sw=" stringByAppendingString:a2];

  return [a1 stringByReplacingCharactersInRange:v6 withString:{v8, v9}];
}

id sub_5B28(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 1)
  {
    result = [TIInputModeGetBaseLanguage() isEqualToString:@"en"];
    if (!result)
    {
      return result;
    }

    if (([sub_590C(a2) isEqualToString:@"QWERTY"] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  result = [TIInputModeGetLanguageWithRegion() isEqualToString:@"en_JP"];
  if (result)
  {
    result = [sub_590C(a2) isEqualToString:@"QWERTY"];
    if (result)
    {
LABEL_7:
      *(*(*(a1 + 32) + 8) + 40) = sub_5BD4(a2);
      return &dword_0 + 1;
    }
  }

  return result;
}

id sub_5BD4(void *a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [a1 componentsSeparatedByCharactersInSet:{+[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"@;", 0)}];
  result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if ([v6 hasPrefix:@"hw="])
        {
          return [v6 substringFromIndex:{objc_msgSend(@"hw=", "length")}];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

id sub_5D10(uint64_t a1, void *a2)
{
  v4 = [TIInputModeGetLanguageWithRegion() isEqualToString:@"en_US"];
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 40) = sub_5BD4(a2);
    *(*(*(a1 + 40) + 8) + 40) = sub_590C(a2);
  }

  return v4;
}

uint64_t sub_5D84()
{
  v0 = CFPreferencesCopyAppValue(@"LastSystemVersion", @"com.apple.migration");
  if (!v0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v1 = v0;
  v2 = [v0 integerValue];
  CFRelease(v1);
  return v2;
}

id sub_5DD8(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    return 0;
  }

  v5 = *(a1 + 40);

  return [v5 containsObject:a2];
}

id sub_5E34(void *a1, uint64_t a2)
{
  if ([objc_msgSend(TIInputModeGetComponentsFromIdentifier() objectForKeyedSubscript:{@"ml", "length"}])
  {
    return a1;
  }

  if ([a1 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"@ml=%@";
  }

  else
  {
    v5 = @";ml=%@";
  }

  return [a1 stringByAppendingFormat:v5, a2];
}

uint64_t sub_5EB8(void *a1)
{
  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryRecent"])
  {
    v2 = &EMFEmojiCategoryRecents;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryPeople"])
  {
    v2 = &EMFEmojiCategoryPeople;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryNature"])
  {
    v2 = &EMFEmojiCategoryNature;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryFoodAndDrink"])
  {
    v2 = &EMFEmojiCategoryFoodAndDrink;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryActivity"])
  {
    v2 = &EMFEmojiCategoryActivity;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryTravelAndPlaces"])
  {
    v2 = &EMFEmojiCategoryTravelAndPlaces;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryFlags"])
  {
    v2 = &EMFEmojiCategoryFlags;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategoryObjects"])
  {
    v2 = &EMFEmojiCategoryObjects;
    return *v2;
  }

  if ([a1 isEqualToString:@"UIKeyboardEmojiCategorySymbols"])
  {
    return EMFEmojiCategorySymbols;
  }

  else
  {
    return 0;
  }
}

id sub_5FFC(uint64_t a1, void *a2, void *a3)
{
  result = sub_5EB8(a2);
  if (result)
  {
    v6 = result;
    result = [a3 objectForKey:@"LastViewedIndexKey"];
    if (result)
    {
      v7 = result;
      v8 = *(a1 + 32);

      return [v8 setObject:v7 forKey:v6];
    }
  }

  return result;
}

id sub_608C(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  if (result)
  {
    result = [*(a1 + 40) isEqualToArray:a3];
    if (result)
    {
      v6 = +[TIPreferencesController sharedPreferencesController];

      return [v6 setAutocorrectionEnabled:1];
    }
  }

  return result;
}

uint64_t sub_60FC()
{
  v0 = DMCopyCurrentBuildVersion();
  if (!v0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v0 integerValue];
}