@interface _NSLexiconMorphunDictionary
- (_NSLexiconMorphunDictionary)initWithLanguage:(id)language;
- (id)allPossibleWordAttributesForWord:(id)word;
- (id)preferredPronoun:(id)pronoun forTermOfAddress:(id)address morphology:(id)morphology dependency:(id)dependency;
- (void)dealloc;
@end

@implementation _NSLexiconMorphunDictionary

- (_NSLexiconMorphunDictionary)initWithLanguage:(id)language
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _NSLexiconMorphunDictionary;
  v4 = [(_NSLexiconMorphunDictionary *)&v18 init];
  if (v4)
  {
    if (qword_1ED43F908 != -1)
    {
      dispatch_once(&qword_1ED43F908, &__block_literal_global_30);
    }

    if (!off_1ED43F7D8 || !_NSRequiresMorphunInflectionForLanguageIdentifier(language))
    {
      goto LABEL_49;
    }

    if (qword_1ED43F908 != -1)
    {
      dispatch_once(&qword_1ED43F908, &__block_literal_global_30);
    }

    if (!off_1ED43F7D8)
    {
      __assert_rtn("_NSLexiconGetMorphunAnalyzerFactory", "NSLexiconMorphun.m", 565, "_NSLexiconLoadMorphunIfNeeded()");
    }

    if (qword_1ED43F950 != -1)
    {
      dispatch_once(&qword_1ED43F950, &__block_literal_global_353);
    }

    v5 = qword_1ED43F948;
    if (!qword_1ED43F948)
    {
      goto LABEL_49;
    }

    v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
    if (v6)
    {
      cf = 0;
      v7 = off_1ED43F830(v5, v6, &cf);
      if (cf)
      {
        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v8 = _NSInflectionLog_log;
        if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          languageCopy4 = language;
          v21 = 2114;
          v22 = cf;
          _os_log_error_impl(&dword_18075C000, v8, OS_LOG_TYPE_ERROR, "Cannot use inflection engine for language %{public}@ (Getting analyzer from factory): %{public}@", buf, 0x16u);
        }

        CFRelease(cf);
      }

      if (v7)
      {
        cf = 0;
        v9 = off_1ED43F838(v6, &cf);
        if (cf)
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v10 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            languageCopy4 = language;
            v21 = 2114;
            v22 = cf;
            _os_log_error_impl(&dword_18075C000, v10, OS_LOG_TYPE_ERROR, "Cannot use inflection engine for language %{public}@ (Creating a tokenizer): %{public}@", buf, 0x16u);
          }

          CFRelease(cf);
        }

        cf = 0;
        off_1ED43F840(v9, 2, &cf);
        if (cf)
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v11 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            languageCopy4 = language;
            v21 = 2114;
            v22 = cf;
            _os_log_error_impl(&dword_18075C000, v11, OS_LOG_TYPE_ERROR, "Cannot use inflection engine for language %{public}@ (Setting the tokenizer to use the unmodified style): %{public}@", buf, 0x16u);
          }

          CFRelease(cf);
          off_1ED43F848(v9);
          v12 = 0;
          v9 = 0;
        }

        else
        {
          if (v9)
          {
            cf = 0;
            v13 = off_1ED43F850(v6, &cf);
            if (cf)
            {
              if (_NSInflectionLog_onceToken != -1)
              {
                dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
              }

              v15 = _NSInflectionLog_log;
              if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                languageCopy4 = language;
                v21 = 2114;
                v22 = cf;
                _os_log_error_impl(&dword_18075C000, v15, OS_LOG_TYPE_ERROR, "Cannot use inflection engine for language %{public}@ (Getting the dictionary for this locale): %{public}@", buf, 0x16u);
              }

              CFRelease(cf);
            }

            v12 = 1;
            goto LABEL_44;
          }

          v12 = 0;
        }

        v13 = 0;
LABEL_44:
        v14 = 1;
        goto LABEL_45;
      }

      v12 = 0;
      v9 = 0;
    }

    else
    {
      v12 = 0;
      v9 = 0;
      v7 = 0;
    }

    v14 = 0;
    v13 = 0;
LABEL_45:
    v4->_languageCode = [objc_msgSend(language "lowercaseString")];
    if (v12 && v14 && v13)
    {
      v4->_analyzer = v7;
      v4->_tokenizer = v9;
      v4->_dictionary = v13;
      v4->_appropriateLocale = [v6 copy];
      return v4;
    }

LABEL_49:

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  tokenizer = self->_tokenizer;
  if (tokenizer)
  {
    off_1ED43F848(tokenizer);
  }

  v4.receiver = self;
  v4.super_class = _NSLexiconMorphunDictionary;
  [(_NSLexiconMorphunDictionary *)&v4 dealloc];
}

- (id)allPossibleWordAttributesForWord:(id)word
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__11;
  v12 = __Block_byref_object_dispose__11;
  v13 = 0;
  appropriateLocale = self->_appropriateLocale;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64___NSLexiconMorphunDictionary_allPossibleWordAttributesForWord___block_invoke;
  v7[3] = &unk_1E69F5090;
  v7[4] = self;
  v7[5] = &v8;
  _NSLexiconIterateFormsOfWord(word, appropriateLocale, v7);
  v4 = v9[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)preferredPronoun:(id)pronoun forTermOfAddress:(id)address morphology:(id)morphology dependency:(id)dependency
{
  v110 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F908 != -1)
  {
    dispatch_once(&qword_1ED43F908, &__block_literal_global_30);
  }

  if (!off_1ED43F7D8)
  {
    return 0;
  }

  result = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{-[_NSLexiconMorphunDictionary languageCode](self, "languageCode")}];
  if (result)
  {
    v12 = result;
    cf = 0;
    v13 = off_1ED43F7D8(&cf);
    if (cf)
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v14 = _NSInflectionLog_log;
      if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136315394;
      v107 = "mlccfp_getDefaultCommonConceptFactoryProvider(&error)";
      v108 = 2112;
      v109 = cf;
LABEL_27:
      _os_log_error_impl(&dword_18075C000, v14, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
LABEL_9:
      CFRelease(cf);
LABEL_10:
      v15 = 0;
      return v15;
    }

    if (!v13)
    {
      goto LABEL_10;
    }

    cf = 0;
    v16 = off_1ED43F7E0(v13, v12, &cf);
    if (cf)
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v14 = _NSInflectionLog_log;
      if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136315394;
      v107 = "mlccfp_getCommonConceptFactory(provider, (CFLocaleRef)locale, &error)";
      v108 = 2112;
      v109 = cf;
      goto LABEL_27;
    }

    if (!v16)
    {
      goto LABEL_10;
    }

    cf = 0;
    v17 = off_1ED43F7E8(v16, &cf);
    if (cf)
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v14 = _NSInflectionLog_log;
      if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136315394;
      v107 = "mccf_getSemanticFeatureModel(factory, &error)";
      v108 = 2112;
      v109 = cf;
      goto LABEL_27;
    }

    v18 = v17;
    if (!v17)
    {
      goto LABEL_10;
    }

    cf = 0;
    v19 = off_1ED43F8A8(v17, pronoun, &cf);
    if (cf)
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v14 = _NSInflectionLog_log;
      if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136315394;
      v107 = "mpron_createFromInitialPronoun(model, (CFStringRef)original, &error)";
      v108 = 2112;
      v109 = cf;
      goto LABEL_27;
    }

    v20 = v19;
    if (!v19)
    {
      goto LABEL_10;
    }

    cf = 0;
    v21 = off_1ED43F8B0(v19, &cf);
    v22 = &unk_1ED43F000;
    if (cf)
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v23 = _NSInflectionLog_log;
      if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v107 = "mpron_toSemanticFeatureConcept(pronoun, &error)";
        v108 = 2112;
        v109 = cf;
        _os_log_error_impl(&dword_18075C000, v23, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
      }

      CFRelease(cf);
      goto LABEL_41;
    }

    v26 = v21;
    if (!v21)
    {
LABEL_41:
      v15 = 0;
      v24 = 0;
      v25 = v20;
      goto LABEL_42;
    }

    pronounCopy = pronoun;
    v82 = v12;
    v89 = v21;
    if ([address isEqual:{+[NSTermOfAddress feminine](NSTermOfAddress, "feminine")}])
    {
      cf = 0;
      off_1ED43F8B8(v26, @"gender", @"feminine", &cf);
      if (cf)
      {
        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v27 = _NSInflectionLog_log;
        if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v107 = "msfc_putConstraintByName(pronounSemanticFeatureConcept, @gender, @feminine, &error)";
          v108 = 2112;
          v109 = cf;
          _os_log_error_impl(&dword_18075C000, v27, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
        }

        goto LABEL_52;
      }

      v88 = v18;
      v84 = v20;
LABEL_66:
      v80 = 0;
      theArray = 0;
      v83 = 0;
      if (!morphology)
      {
        goto LABEL_80;
      }

LABEL_67:
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      _morphunConstraints = [morphology _morphunConstraints];
      v30 = [_morphunConstraints countByEnumeratingWithState:&v92 objects:v91 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v93;
        do
        {
          v33 = 0;
          do
          {
            if (*v93 != v32)
            {
              objc_enumerationMutation(_morphunConstraints);
            }

            v34 = *(*(&v92 + 1) + 8 * v33);
            v35 = [objc_msgSend(morphology "_morphunConstraints")];
            cf = 0;
            off_1ED43F8B8(v89, v34, v35, &cf);
            if (cf)
            {
              if (_NSInflectionLog_onceToken != -1)
              {
                dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
              }

              v36 = _NSInflectionLog_log;
              if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v107 = "msfc_putConstraintByName(pronounSemanticFeatureConcept, (__bridge CFStringRef)grammeme, (__bridge CFStringRef)value, &error)";
                v108 = 2112;
                v109 = cf;
                _os_log_error_impl(&dword_18075C000, v36, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
              }

              CFRelease(cf);
            }

            ++v33;
          }

          while (v31 != v33);
          v31 = [_morphunConstraints countByEnumeratingWithState:&v92 objects:v91 count:16];
        }

        while (v31);
      }

LABEL_80:
      cf = 0;
      v37 = off_1ED43F8E0(v89, &cf);
      if (cf)
      {
        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v38 = _NSInflectionLog_log;
        if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }

        *buf = 136315394;
        v107 = "msfc_isExists(pronounSemanticFeatureConcept, &error)";
        v108 = 2112;
        v109 = cf;
LABEL_138:
        _os_log_error_impl(&dword_18075C000, v38, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
LABEL_84:
        CFRelease(cf);
LABEL_189:
        v15 = 0;
        goto LABEL_190;
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_189;
      }

      if (dependency)
      {
        cf = 0;
        v39 = off_1ED43F7F0(dependency, &cf);
        if (cf)
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v38 = _NSInflectionLog_log;
          if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }

          *buf = 136315394;
          v107 = "mss_create((CFStringRef)dependency, &error)";
          v108 = 2112;
          v109 = cf;
          goto LABEL_138;
        }

        v52 = v39;
        if (!v39)
        {
          goto LABEL_189;
        }

        cf = 0;
        v53 = off_1ED43F7F8(v88, v39, &cf);
        if (cf)
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v54 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v107 = "minf_create(model, dependencySpeakableString, &error)";
            v108 = 2112;
            v109 = cf;
            _os_log_error_impl(&dword_18075C000, v54, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
          }

          CFRelease(cf);
          goto LABEL_136;
        }

        v72 = v53;
        if (!v53)
        {
LABEL_136:
          off_1ED43F820(v52);
          goto LABEL_189;
        }

        cf = 0;
        v73 = off_1ED43F8E8(v53, &cf);
        if (cf)
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v74 = _NSInflectionLog_log;
          if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_187;
          }

          *buf = 136315394;
          v107 = "minf_toSemanticFeatureConcept(dependencyInflectableStringConcept, &error)";
          v108 = 2112;
          v109 = cf;
LABEL_215:
          _os_log_error_impl(&dword_18075C000, v74, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
LABEL_187:
          CFRelease(cf);
LABEL_188:
          off_1ED43F820(v52);
          off_1ED43F828(v72);
          goto LABEL_189;
        }

        if (!v73)
        {
          goto LABEL_188;
        }

        cf = 0;
        v77 = off_1ED43F8F0(v89, v73, &cf);
        if (cf)
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v74 = _NSInflectionLog_log;
          if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_187;
          }

          *buf = 136315394;
          v107 = "msfc_toSpeakableStringWithDependencyCopy(pronounSemanticFeatureConcept, dependencySemanticFeatureConcept, &error)";
          v108 = 2112;
          v109 = cf;
          goto LABEL_215;
        }

        v55 = v77;
        if (!v77)
        {
          goto LABEL_188;
        }

        off_1ED43F820(v52);
        off_1ED43F828(v72);
      }

      else
      {
        cf = 0;
        v51 = off_1ED43F8F8(v89, &cf);
        if (cf)
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v38 = _NSInflectionLog_log;
          if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }

          *buf = 136315394;
          v107 = "msfc_toSpeakableStringCopy(pronounSemanticFeatureConcept, &error)";
          v108 = 2112;
          v109 = cf;
          goto LABEL_138;
        }

        v55 = v51;
        if (!v51)
        {
          goto LABEL_189;
        }
      }

      cf = 0;
      v56 = off_1ED43F818(v55, &cf);
      if (cf)
      {
        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v57 = _NSInflectionLog_log;
        if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v107 = "(NSString *)mss_createPrintCopy(speakableResult, &error)";
          v108 = 2112;
          v109 = cf;
          _os_log_error_impl(&dword_18075C000, v57, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
        }

        CFRelease(cf);
      }

      else
      {
        v75 = v56;
        if (v56)
        {
          if (v83 && ![address _containsPronoun:v56 withGrammemes:v80])
          {
            v75 = 0;
            v15 = 0;
          }

          else
          {
            if ([pronounCopy isEqualToString:{objc_msgSend(pronounCopy, "lowercaseStringWithLocale:", v82, v78)}])
            {
              v76 = [v75 lowercaseStringWithLocale:v82];
            }

            else if ([pronounCopy isEqualToString:{objc_msgSend(pronounCopy, "uppercaseStringWithLocale:", v82)}])
            {
              v76 = [v75 uppercaseStringWithLocale:v82];
            }

            else if ([pronounCopy isEqualToString:{objc_msgSend(pronounCopy, "capitalizedStringWithLocale:", v82)}])
            {
              v76 = [v75 capitalizedStringWithLocale:v82];
            }

            else
            {
              v76 = v75;
            }

            v15 = [v76 copy];
          }

          goto LABEL_213;
        }
      }

      v15 = 0;
LABEL_213:
      off_1ED43F820(v55);
LABEL_190:
      v22 = &unk_1ED43F000;
      off_1ED43F900(v84);
      v25 = v83;
      v24 = theArray;
      if (!v83)
      {
LABEL_43:
        if (v24)
        {
          CFRelease(v24);
        }

        return v15;
      }

LABEL_42:
      v22[288](v25);
      goto LABEL_43;
    }

    v84 = v20;
    v88 = v18;
    if ([address isEqual:{+[NSTermOfAddress masculine](NSTermOfAddress, "masculine")}])
    {
      cf = 0;
      off_1ED43F8B8(v26, @"gender", @"masculine", &cf);
      if (!cf)
      {
        goto LABEL_66;
      }

      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v28 = _NSInflectionLog_log;
      if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_52;
      }

      *buf = 136315394;
      v107 = "msfc_putConstraintByName(pronounSemanticFeatureConcept, @gender, @masculine, &error)";
      v108 = 2112;
      v109 = cf;
      goto LABEL_181;
    }

    if ([address isEqual:{+[NSTermOfAddress neutral](NSTermOfAddress, "neutral")}])
    {
      cf = 0;
      off_1ED43F8C0(v26, @"gender", &cf);
      if (!cf)
      {
        goto LABEL_66;
      }

      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v28 = _NSInflectionLog_log;
      if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_52;
      }

      *buf = 136315394;
      v107 = "msfc_clearConstraintByName(pronounSemanticFeatureConcept, @gender, &error)";
      v108 = 2112;
      v109 = cf;
LABEL_181:
      _os_log_error_impl(&dword_18075C000, v28, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
LABEL_52:
      CFRelease(cf);
      v15 = 0;
      v24 = 0;
      v25 = v20;
LABEL_115:
      v22 = &unk_1ED43F000;
      goto LABEL_42;
    }

    if (![objc_msgSend(address "pronouns")])
    {
      goto LABEL_66;
    }

    theArray = CFArrayCreateMutable(0, [objc_msgSend(address "pronouns")], &_DisplayValueArrayCallbacks);
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    obj = [address pronouns];
    v40 = [obj countByEnumeratingWithState:&v102 objects:v101 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v103;
      do
      {
        v43 = 0;
        do
        {
          if (*v103 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v102 + 1) + 8 * v43);
          _morphunConstraints2 = [v44 _morphunConstraints];
          cf = 0;
          v46 = (off_1ED43F8C8)(v88, [v44 pronoun], _morphunConstraints2, &cf);
          if (v46)
          {
            v47 = v46;
            if (cf)
            {
              if (_NSInflectionLog_onceToken != -1)
              {
                dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
              }

              v48 = _NSInflectionLog_log;
              if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v107 = cf;
                _os_log_error_impl(&dword_18075C000, v48, OS_LOG_TYPE_ERROR, "Inflection engine reported an error in mdv_create: %@", buf, 0xCu);
              }

              off_1ED43F8A0(v47);
            }

            else
            {
              CFArrayAppendValue(theArray, v46);
            }
          }

          ++v43;
        }

        while (v41 != v43);
        v41 = [obj countByEnumeratingWithState:&v102 objects:v101 count:16];
      }

      while (v41);
    }

    cf = 0;
    v83 = off_1ED43F8D0(v88, theArray, 0, &cf);
    if (cf)
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v49 = _NSInflectionLog_log;
      if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v107 = "mpron_createWithCustom(model, localizedPronouns, nil, &error)";
        v108 = 2112;
        v109 = cf;
        _os_log_error_impl(&dword_18075C000, v49, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
      }

      CFRelease(cf);
      goto LABEL_114;
    }

    if (!v83)
    {
LABEL_114:
      v15 = 0;
      v25 = v20;
      v24 = theArray;
      goto LABEL_115;
    }

    cf = 0;
    v79 = off_1ED43F8B0(v83, &cf);
    if (cf)
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v50 = _NSInflectionLog_log;
      if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v107 = "mpron_toSemanticFeatureConcept(localizedPronoun, &error)";
        v108 = 2112;
        v109 = cf;
        _os_log_error_impl(&dword_18075C000, v50, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
      }

      CFRelease(cf);
      goto LABEL_123;
    }

    if (!v79)
    {
LABEL_123:
      v22 = &unk_1ED43F000;
      off_1ED43F900(v20);
      v15 = 0;
      v25 = v83;
      v24 = theArray;
      goto LABEL_42;
    }

    v80 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v58 = [&unk_1EEF57F08 countByEnumeratingWithState:&v97 objects:v96 count:16];
    if (!v58)
    {
      goto LABEL_178;
    }

    v60 = v58;
    obja = *v98;
    *&v59 = 136315394;
    v78 = v59;
LABEL_150:
    v61 = 0;
    v62 = v89;
    while (1)
    {
      if (*v98 != obja)
      {
        objc_enumerationMutation(&unk_1EEF57F08);
      }

      v63 = *(*(&v97 + 1) + 8 * v61);
      cf = 0;
      v64 = off_1ED43F8D8(v62, v63, &cf);
      if (cf)
      {
        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v65 = _NSInflectionLog_log;
        if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = v78;
          v107 = "msfc_createFeatureValueByNameCopy(pronounSemanticFeatureConcept, (CFStringRef)grammeme, &error)";
          v108 = 2112;
          v109 = cf;
          _os_log_error_impl(&dword_18075C000, v65, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
        }

        CFRelease(cf);
        goto LABEL_176;
      }

      v66 = v64;
      if (v64)
      {
        break;
      }

LABEL_176:
      if (v60 == ++v61)
      {
        v60 = [&unk_1EEF57F08 countByEnumeratingWithState:&v97 objects:v96 count:16];
        if (!v60)
        {
LABEL_178:
          v89 = v79;
          if (!morphology)
          {
            goto LABEL_80;
          }

          goto LABEL_67;
        }

        goto LABEL_150;
      }
    }

    cf = 0;
    v67 = off_1ED43F818(v64, &cf);
    if (cf)
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v68 = _NSInflectionLog_log;
      if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = v78;
        v107 = "mss_createPrintCopy(grammemeValue, &error)";
        v108 = 2112;
        v109 = cf;
        _os_log_error_impl(&dword_18075C000, v68, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
      }

      v69 = cf;
    }

    else
    {
      v70 = v67;
      if (!v67)
      {
LABEL_175:
        off_1ED43F820(v66);
        goto LABEL_176;
      }

      [v80 setObject:v67 forKeyedSubscript:v63];
      cf = 0;
      off_1ED43F8B8(v79, v63, v70, &cf);
      if (cf)
      {
        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v71 = _NSInflectionLog_log;
        if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = v78;
          v107 = "msfc_putConstraintByName(localizedSemanticFeatureConcept, (__bridge CFStringRef)grammeme, grammemeValueString, &error)";
          v108 = 2112;
          v109 = cf;
          _os_log_error_impl(&dword_18075C000, v71, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
        }

        CFRelease(cf);
      }

      v69 = v70;
    }

    CFRelease(v69);
    v62 = v89;
    goto LABEL_175;
  }

  return result;
}

@end