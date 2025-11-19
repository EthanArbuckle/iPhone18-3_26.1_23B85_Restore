@interface NSMorphology
+ (NSMorphology)userMorphology;
+ (id)_heuristicMorphologyForLocale:(id)a3 prefix:(id)a4 suffix:(id)a5 featureName:(id *)a6 matchedPrefixLength:(unint64_t *)a7 matchedSuffixLength:(unint64_t *)a8;
+ (id)_userInflection;
+ (id)_userMorphologyWithOverrides;
+ (void)_clearCachedUserMorphology;
+ (void)_getUserMorphology:(id *)a3 userInflection:(id *)a4;
- (BOOL)addConstraintsTo:(MDInflectableStringConcept *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUnspecified;
- (BOOL)setCustomPronoun:(NSMorphologyCustomPronoun *)features forLanguage:(NSString *)language error:(NSError *)error;
- (NSData)_externalRepresentation;
- (NSDictionary)_customPronouns;
- (NSDictionary)_externalRepresentationDictionary;
- (NSMorphology)initWithCoder:(id)a3;
- (NSMorphology)initWithInflection:(id)a3;
- (NSMorphology)initWithMorphunAttributeValues:(id)a3;
- (NSMorphologyCustomPronoun)customPronounForLanguage:(NSString *)language;
- (id)_initWithExternalRepresentation:(id)a3 error:(id *)a4;
- (id)_initWithExternalRepresentationDictionary:(id)a3;
- (id)_morphunConstraints;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (uint64_t)mergeMorphology:(char)a3 override:;
- (unint64_t)hash;
- (void)_overrideUserInflectionInBlock:(void *)a1;
- (void)_setCustomPronouns:(id)a3;
- (void)applyPluralityRulesForNumbers:(id)a3 inLanguages:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)isIdentity;
@end

@implementation NSMorphology

+ (id)_heuristicMorphologyForLocale:(id)a3 prefix:(id)a4 suffix:(id)a5 featureName:(id *)a6 matchedPrefixLength:(unint64_t *)a7 matchedSuffixLength:(unint64_t *)a8
{
  type metadata accessor for _NSSwiftLocale();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = *(v14 + OBJC_IVAR____NSSwiftLocale_locale);
    v16 = *(v14 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    v16 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged();
    v17 = a3;
  }

  v25[0] = v15;
  v25[1] = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)(a5);
  v23 = specialized static NSMorphology._heuristicMorphology(locale:prefix:suffix:featureNamePointer:matchedPrefixPointer:matchedSuffixPointer:)(v25, v18, v20, v21, v22, a6, a7, a8);

  swift_unknownObjectRelease();

  return v23;
}

- (id)_morphunConstraints
{
  v2 = self;
  NSMorphology.morphunConstraints()();

  v3 = _NativeDictionary.bridged()();

  return v3;
}

- (uint64_t)mergeMorphology:(char)a3 override:
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (![a2 grammaticalGender])
  {
LABEL_8:
    if (![a2 partOfSpeech])
    {
      goto LABEL_12;
    }

    if (a3)
    {
LABEL_11:
      [v5 setPartOfSpeech:{objc_msgSend(a2, "partOfSpeech")}];
      goto LABEL_12;
    }

LABEL_10:
    if ([v5 partOfSpeech])
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((a3 & 1) != 0 || ![v5 grammaticalGender])
  {
    [v5 setGrammaticalGender:{objc_msgSend(a2, "grammaticalGender")}];
    goto LABEL_8;
  }

  if ([a2 partOfSpeech])
  {
    goto LABEL_10;
  }

LABEL_12:
  if (![a2 number])
  {
    goto LABEL_18;
  }

  if ((a3 & 1) != 0 || ![v5 number])
  {
    [v5 setNumber:{objc_msgSend(a2, "number")}];
LABEL_18:
    if (![a2 grammaticalCase])
    {
      goto LABEL_22;
    }

    if (a3)
    {
LABEL_21:
      [v5 setGrammaticalCase:{objc_msgSend(a2, "grammaticalCase")}];
      goto LABEL_22;
    }

LABEL_20:
    if ([v5 grammaticalCase])
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ([a2 grammaticalCase])
  {
    goto LABEL_20;
  }

LABEL_22:
  if (![a2 determination])
  {
    goto LABEL_28;
  }

  if ((a3 & 1) != 0 || ![v5 determination])
  {
    [v5 setDetermination:{objc_msgSend(a2, "determination")}];
LABEL_28:
    if (![a2 grammaticalPerson])
    {
      goto LABEL_32;
    }

    if (a3)
    {
LABEL_31:
      [v5 setGrammaticalPerson:{objc_msgSend(a2, "grammaticalPerson")}];
      goto LABEL_32;
    }

LABEL_30:
    if ([v5 grammaticalPerson])
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if ([a2 grammaticalPerson])
  {
    goto LABEL_30;
  }

LABEL_32:
  if (![a2 pronounType])
  {
    goto LABEL_38;
  }

  if ((a3 & 1) != 0 || ![v5 pronounType])
  {
    [v5 setPronounType:{objc_msgSend(a2, "pronounType")}];
LABEL_38:
    if (![a2 definiteness])
    {
      goto LABEL_42;
    }

    if (a3)
    {
LABEL_41:
      [v5 setDefiniteness:{objc_msgSend(a2, "definiteness")}];
      goto LABEL_42;
    }

LABEL_40:
    if ([v5 definiteness])
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if ([a2 definiteness])
  {
    goto LABEL_40;
  }

LABEL_42:
  if ([a2 _adjectival])
  {
    if ((a3 & 1) == 0 && [v5 _adjectival])
    {
      result = [a2 _clusivity];
      if (!result)
      {
        return result;
      }

      goto LABEL_50;
    }

    [v5 set_adjectival:{objc_msgSend(a2, "_adjectival")}];
  }

  result = [a2 _clusivity];
  if (!result)
  {
    return result;
  }

  if ((a3 & 1) == 0)
  {
LABEL_50:
    result = [v5 _clusivity];
    if (result)
    {
      return result;
    }
  }

  v6 = [a2 _clusivity];

  return [v5 set_clusivity:v6];
}

- (void)isIdentity
{
  if (result)
  {
    v1 = result;
    if ([result grammaticalGender] || objc_msgSend(v1, "grammaticalCase") || objc_msgSend(v1, "partOfSpeech") || objc_msgSend(v1, "definiteness") || objc_msgSend(v1, "number") || objc_msgSend(v1, "determination") || objc_msgSend(v1, "grammaticalPerson") || objc_msgSend(v1, "pronounType") || objc_msgSend(v1, "_clusivity"))
    {
      return 0;
    }

    else
    {
      return ([v1 _adjectival] == 0);
    }
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSMorphology;
  [(NSMorphology *)&v3 dealloc];
}

- (NSDictionary)_customPronouns
{
  v2 = [(NSMutableDictionary *)self->_customPronouns copy];

  return v2;
}

- (void)_setCustomPronouns:(id)a3
{
  customPronouns = self->_customPronouns;
  if (customPronouns != a3)
  {

    self->_customPronouns = [a3 copy];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[4] = [(NSMorphology *)self grammaticalGender];
  v4[7] = [(NSMorphology *)self grammaticalCase];
  v4[5] = [(NSMorphology *)self partOfSpeech];
  v4[11] = [(NSMorphology *)self definiteness];
  v4[6] = [(NSMorphology *)self number];
  v4[8] = [(NSMorphology *)self determination];
  v4[9] = [(NSMorphology *)self grammaticalPerson];
  v4[10] = [(NSMorphology *)self pronounType];
  v4[2] = [(NSMorphology *)self _adjectival];
  v4[3] = [(NSMorphology *)self _clusivity];
  v4[1] = [(NSMutableDictionary *)self->_customPronouns mutableCopy];
  return v4;
}

- (unint64_t)hash
{
  v3 = [(NSMorphology *)self grammaticalGender];
  v4 = [(NSMorphology *)self grammaticalCase]^ v3;
  v5 = [(NSMorphology *)self partOfSpeech];
  v6 = v4 ^ v5 ^ [(NSMorphology *)self definiteness];
  v7 = [(NSMorphology *)self number];
  v8 = v7 ^ [(NSMorphology *)self determination];
  v9 = v6 ^ v8 ^ [(NSMorphology *)self grammaticalPerson];
  v10 = [(NSMorphology *)self pronounType];
  v11 = v10 ^ [(NSMorphology *)self _adjectival];
  v12 = v9 ^ v11 ^ [(NSMorphology *)self _clusivity];
  return v12 ^ [(NSMutableDictionary *)self->_customPronouns hash];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSMorphology *)self grammaticalGender];
  if (v5 != [a3 grammaticalGender])
  {
    return 0;
  }

  v6 = [(NSMorphology *)self grammaticalCase];
  if (v6 != [a3 grammaticalCase])
  {
    return 0;
  }

  v7 = [(NSMorphology *)self partOfSpeech];
  if (v7 != [a3 partOfSpeech])
  {
    return 0;
  }

  v8 = [(NSMorphology *)self definiteness];
  if (v8 != [a3 definiteness])
  {
    return 0;
  }

  v9 = [(NSMorphology *)self number];
  if (v9 != [a3 number])
  {
    return 0;
  }

  v10 = [(NSMorphology *)self determination];
  if (v10 != [a3 determination])
  {
    return 0;
  }

  v11 = [(NSMorphology *)self grammaticalPerson];
  if (v11 != [a3 grammaticalPerson])
  {
    return 0;
  }

  v12 = [(NSMorphology *)self pronounType];
  if (v12 != [a3 pronounType])
  {
    return 0;
  }

  v13 = [(NSMorphology *)self _adjectival];
  if (v13 != [a3 _adjectival])
  {
    return 0;
  }

  v14 = [(NSMorphology *)self _clusivity];
  if (v14 != [a3 _clusivity])
  {
    return 0;
  }

  if (!-[NSMutableDictionary count](self->_customPronouns, "count") && ![*(a3 + 1) count])
  {
    return 1;
  }

  customPronouns = self->_customPronouns;
  v16 = *(a3 + 1);

  return [(NSMutableDictionary *)customPronouns isEqual:v16];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:-[NSMorphology grammaticalGender](self forKey:{"grammaticalGender"), @"grammaticalGender"}];
  [a3 encodeInteger:-[NSMorphology grammaticalCase](self forKey:{"grammaticalCase"), @"grammaticalCase"}];
  [a3 encodeInteger:-[NSMorphology partOfSpeech](self forKey:{"partOfSpeech"), @"partOfSpeech"}];
  [a3 encodeInteger:-[NSMorphology definiteness](self forKey:{"definiteness"), @"definiteness"}];
  [a3 encodeInteger:-[NSMorphology number](self forKey:{"number"), @"number"}];
  [a3 encodeInteger:-[NSMorphology determination](self forKey:{"determination"), @"determination"}];
  [a3 encodeInteger:-[NSMorphology grammaticalPerson](self forKey:{"grammaticalPerson"), @"grammaticalPerson"}];
  [a3 encodeInteger:-[NSMorphology pronounType](self forKey:{"pronounType"), @"pronounType"}];
  customPronouns = self->_customPronouns;
  if (customPronouns && [(NSMutableDictionary *)customPronouns count])
  {
    v6 = self->_customPronouns;

    [a3 encodeObject:v6 forKey:@"customPronouns"];
  }
}

- (NSMorphology)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NSMorphology;
  v4 = [(NSMorphology *)&v15 init];
  if (v4)
  {
    v4->_grammaticalGender = [a3 decodeIntegerForKey:@"grammaticalGender"];
    v4->_grammaticalCase = [a3 decodeIntegerForKey:@"grammaticalCase"];
    v4->_partOfSpeech = [a3 decodeIntegerForKey:@"partOfSpeech"];
    v4->_definiteness = [a3 decodeIntegerForKey:@"definiteness"];
    v4->_number = [a3 decodeIntegerForKey:@"number"];
    v4->_determination = [a3 decodeIntegerForKey:@"determination"];
    v4->_grammaticalPerson = [a3 decodeIntegerForKey:@"grammaticalPerson"];
    v4->_pronounType = [a3 decodeIntegerForKey:@"pronounType"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, objc_opt_class(), 0), @"customPronouns"}];
    if (v8)
    {
      if (!_NSIsNSDictionary())
      {
LABEL_14:
        [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, 0)}];

        return 0;
      }

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
LABEL_6:
        v12 = 0;
        while (1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          if (!_NSIsNSString())
          {
            goto LABEL_14;
          }

          [v8 objectForKeyedSubscript:v13];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_14;
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
            if (v10)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }
    }

    v4->_customPronouns = [v8 mutableCopy];
  }

  return v4;
}

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = NSMorphology;
  v3 = [(NSMorphology *)&v21 description];
  v4 = [(NSMorphology *)self grammaticalGender];
  if (v4 >= 4)
  {
    v5 = [NSString stringWithFormat:@"(NSGrammaticalGender)(%lld)", v4];
  }

  else
  {
    v5 = off_1E69F23B0[v4];
  }

  v6 = [(NSMorphology *)self number];
  if (v6 >= (NSGrammaticalNumberPluralMany|NSGrammaticalNumberSingular))
  {
    v7 = [NSString stringWithFormat:@"(NSGrammaticalNumber)(%lld)", v6];
  }

  else
  {
    v7 = off_1E69F23D0[v6];
  }

  v8 = [(NSMorphology *)self partOfSpeech];
  if (v8 >= (NSGrammaticalPartOfSpeechAbbreviation|NSGrammaticalPartOfSpeechDeterminer))
  {
    v9 = [NSString stringWithFormat:@"(NSGrammaticalPartOfSpeech)(%lld)", v8];
  }

  else
  {
    v9 = off_1E69F2408[v8];
  }

  v10 = [(NSMorphology *)self grammaticalCase];
  if (v10 >= (NSGrammaticalCaseTranslative|NSGrammaticalCaseNominative))
  {
    v11 = [NSString stringWithFormat:@"(NSGrammaticalCase)(%lld)", v10];
  }

  else
  {
    v11 = off_1E69F2480[v10];
  }

  v12 = [(NSMorphology *)self definiteness];
  if (v12 >= (NSGrammaticalDefinitenessDefinite|NSGrammaticalDefinitenessIndefinite))
  {
    v13 = [NSString stringWithFormat:@"(NSGrammaticalDefiniteness)(%lld)", v12];
  }

  else
  {
    v13 = off_1E69F24F8[v12];
  }

  v14 = [(NSMorphology *)self determination];
  if (v14 >= (NSGrammaticalDeterminationDependent|NSGrammaticalDeterminationIndependent))
  {
    v15 = [NSString stringWithFormat:@"(NSGrammaticalDetermination)(%lld)", v14];
  }

  else
  {
    v15 = off_1E69F2510[v14];
  }

  v16 = [(NSMorphology *)self grammaticalPerson];
  if (v16 >= 4)
  {
    v17 = [NSString stringWithFormat:@"(NSGrammaticalPerson)(%lld)", v16];
  }

  else
  {
    v17 = off_1E69F2528[v16];
  }

  v18 = [(NSMorphology *)self pronounType];
  if (v18 >= 4)
  {
    v19 = [NSString stringWithFormat:@"(NSGrammaticalPronounType)(%lld)", v18];
  }

  else
  {
    v19 = off_1E69F2548[v18];
  }

  return [NSString stringWithFormat:@"%@ { grammaticalGender = %@, number = %@, partOfSpeech = %@, case = %@, definiteness = %@, determination = %@, grammaticalPerson = %@, pronounType = %@, customPronouns = %@ }", v3, v5, v7, v9, v11, v13, v15, v17, v19, self->_customPronouns];
}

- (NSMorphologyCustomPronoun)customPronounForLanguage:(NSString *)language
{
  v3 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_customPronouns objectForKeyedSubscript:{-[NSString lowercaseString](language, "lowercaseString")), "copy"}];

  return v3;
}

- (BOOL)setCustomPronoun:(NSMorphologyCustomPronoun *)features forLanguage:(NSString *)language error:(NSError *)error
{
  v11[5] = *MEMORY[0x1E69E9840];
  if (!features || (v11[0] = MEMORY[0x1E69E9820], v11[1] = 3221225472, v11[2] = __69__NSMorphology_NSCustomPronouns__setCustomPronoun_forLanguage_error___block_invoke, v11[3] = &unk_1E69F2370, v11[4] = features, v8 = [NSMorphologyCustomPronoun _validateCustomPronounWithAccessor:v11 forLanguage:language error:error]))
  {
    if (!self->_customPronouns)
    {
      self->_customPronouns = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [(NSMorphologyCustomPronoun *)features copy];
    [(NSMutableDictionary *)self->_customPronouns setObject:v9 forKeyedSubscript:[(NSString *)language lowercaseString]];

    LOBYTE(v8) = 1;
  }

  return v8;
}

+ (void)_clearCachedUserMorphology
{
  v4 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_MergedGlobals_92);

  qword_1ED43F560 = 0;
  qword_1ED43F568 = 0;
  os_unfair_lock_unlock(&_MergedGlobals_92);
  if (_NSInflectionLog_onceToken != -1)
  {
    dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
  }

  v2 = _NSInflectionLog_log;
  if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_INFO, "User morphology was cleared.", v3, 2u);
  }
}

+ (void)_getUserMorphology:(id *)a3 userInflection:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F570 != -1)
  {
    dispatch_once(&qword_1ED43F570, &__block_literal_global_2);
  }

  os_unfair_lock_lock(&_MergedGlobals_92);
  if (!qword_1ED43F560)
  {
    if (+[_NSAttributedStringGrammarInflection _isSimulatingLockedDevice])
    {
LABEL_30:

      if (qword_1ED43F560)
      {
        v16 = [_NSAttributedStringGrammarInflection alloc];
        v17 = [(_NSAttributedStringGrammarInflection *)v16 initWithMorphology:qword_1ED43F560];
      }

      else
      {
        v17 = 0;
      }

      qword_1ED43F568 = v17;
      goto LABEL_34;
    }

    v6 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v6)
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v7 = _NSInflectionLog_log;
      if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = v6;
        v21 = 2082;
        v22 = "true";
        _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "User morphology preferences value read from the standard user defaults: %@ (is present? %{public}s)", buf, 0x16u);
      }
    }

    getpid();
    v18 = [(NSString *)+[_NSAttributedStringGrammarInflection _protectedPreferencesDomain](_NSAttributedStringGrammarInflection UTF8String];
    v8 = sandbox_check();
    v9 = +[_NSAttributedStringGrammarInflection _isSimulatingThirdPartyProcess];
    if (v6 || v9)
    {
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v8)
      {
        goto LABEL_20;
      }

      v10 = +[_NSAttributedStringGrammarInflection _protectedPreferencesDomain];
      v11 = CFPreferencesCopyValue(@"AppleUserMorphology", v10, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      if (!v11)
      {
        goto LABEL_20;
      }

      v6 = v11;
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v12 = _NSInflectionLog_log;
      if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = v6;
        v21 = 2082;
        v22 = "true";
        _os_log_impl(&dword_18075C000, v12, OS_LOG_TYPE_INFO, "User morphology preferences value read from the protected domain: %@ (is present? %{public}s)", buf, 0x16u);
      }
    }

    if (_NSIsNSDictionary())
    {
LABEL_25:
      if (_NSIsNSDictionary())
      {
        qword_1ED43F560 = [[NSMorphology alloc] _initWithExternalRepresentationDictionary:v6];
        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v15 = _NSInflectionLog_log;
        if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v20 = qword_1ED43F560;
          _os_log_impl(&dword_18075C000, v15, OS_LOG_TYPE_INFO, "User morphology produced: %@", buf, 0xCu);
        }
      }

      goto LABEL_30;
    }

LABEL_20:
    v13 = +[_NSAttributedStringGrammarInflection _thirdPartyPreferencesDomain];
    v6 = CFPreferencesCopyValue(@"AppleUserMorphology", v13, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (v6)
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v14 = _NSInflectionLog_log;
      if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = v6;
        v21 = 2082;
        v22 = "true";
        _os_log_impl(&dword_18075C000, v14, OS_LOG_TYPE_INFO, "User morphology preferences value read from the shared domain: %@ (is present? %{public}s)", buf, 0x16u);
      }
    }

    goto LABEL_25;
  }

LABEL_34:
  if (a3)
  {
    *a3 = [qword_1ED43F560 copy];
  }

  if (a4)
  {
    *a4 = [qword_1ED43F568 copy];
  }

  os_unfair_lock_unlock(&_MergedGlobals_92);
}

uint64_t __84__NSMorphology_NSMorphologyUserSettingsInternal___getUserMorphology_userInflection___block_invoke()
{
  global_queue = dispatch_get_global_queue(25, 0);

  return notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &_getUserMorphology_userInflection__keybagToken, global_queue, &__block_literal_global_205);
}

+ (id)_userInflection
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  [a1 _getUserMorphology:0 userInflection:v3];
  result = v3[0];
  if (!v3[0])
  {
    return objc_alloc_init(_NSAttributedStringGrammarInflection);
  }

  return result;
}

+ (id)_userMorphologyWithOverrides
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  if (_NSMorphologyUserInflectionTemporaryOverride)
  {
    v1 = _NSMorphologyUserInflectionTemporaryOverride;

    return v1;
  }

  else
  {
    v3[0] = 0;
    [v0 _getUserMorphology:v3 userInflection:0];
    return v3[0];
  }
}

- (void)_overrideUserInflectionInBlock:(void *)a1
{
  if (a1)
  {
    v5 = _NSMorphologyUserInflectionTemporaryOverride;
    v4 = a1;
    _NSMorphologyUserInflectionTemporaryOverride = v4;
    (*(a2 + 16))(a2);
    _NSMorphologyUserInflectionTemporaryOverride = v5;
  }
}

- (BOOL)isUnspecified
{
  if ([(NSMorphology *)self grammaticalGender]|| [(NSMorphology *)self number]|| [(NSMorphology *)self partOfSpeech])
  {
    return 0;
  }

  customPronouns = self->_customPronouns;
  return !customPronouns || [(NSMutableDictionary *)customPronouns count]== 0;
}

+ (NSMorphology)userMorphology
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  [a1 _getUserMorphology:v3 userInflection:0];
  result = v3[0];
  if (!v3[0])
  {
    return objc_alloc_init(NSMorphology);
  }

  return result;
}

- (id)_initWithExternalRepresentation:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = NSMorphology;
  v6 = [(NSMorphology *)&v27 init];
  if (!v6)
  {
    return v6;
  }

  v7 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:a4];
  if (!v7)
  {
LABEL_40:

    return 0;
  }

  v8 = v7;
  if ((_NSIsNSDictionary() & 1) == 0 || (_NSGrammaticalGenderGetFromExternalRepresentation([v8 objectForKeyedSubscript:@"grammaticalGender"], &v6->_grammaticalGender) & 1) == 0 || (_NSGrammaticalNumberGetFromExternalRepresentation(objc_msgSend(v8, "objectForKeyedSubscript:", @"number"), &v6->_number) & 1) == 0 || (_NSGrammaticalPartOfSpeechGetFromExternalRepresentation(objc_msgSend(v8, "objectForKeyedSubscript:", @"partOfSpeech"), &v6->_partOfSpeech) & 1) == 0 || (_NSGrammaticalCaseGetFromExternalRepresentation(objc_msgSend(v8, "objectForKeyedSubscript:", @"grammaticalCase"), &v6->_grammaticalCase) & 1) == 0 || (_NSGrammaticalPronounTypeGetFromExternalRepresentation(objc_msgSend(v8, "objectForKeyedSubscript:", @"pronounType"), &v6->_pronounType) & 1) == 0)
  {
    goto LABEL_38;
  }

  v9 = [v8 objectForKeyedSubscript:@"determination"];
  if (v9)
  {
    v10 = v9;
    if ([v9 isEqual:@"independent"])
    {
      v11 = 1;
    }

    else
    {
      if (([v10 isEqual:@"dependent"] & 1) == 0)
      {
        goto LABEL_38;
      }

      v11 = 2;
    }
  }

  else
  {
    v11 = 0;
  }

  v6->_determination = v11;
  v12 = [v8 objectForKeyedSubscript:@"definiteness"];
  if (v12)
  {
    v13 = v12;
    if ([v12 isEqual:@"indefinite"])
    {
      v14 = 1;
    }

    else
    {
      if (([v13 isEqual:@"definite"] & 1) == 0)
      {
        goto LABEL_38;
      }

      v14 = 2;
    }
  }

  else
  {
    v14 = 0;
  }

  v6->_definiteness = v14;
  v15 = [v8 objectForKeyedSubscript:@"customPronouns"];
  if (!v15)
  {
    return v6;
  }

  v16 = v15;
  if ((_NSIsNSDictionary() & 1) == 0)
  {
LABEL_38:
    if (a4)
    {
      *a4 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3840 userInfo:0];
    }

    goto LABEL_40;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
LABEL_25:
    v20 = 0;
    while (1)
    {
      if (*v30 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v29 + 1) + 8 * v20);
      v22 = [v16 objectForKey:v21];
      if (!_NSIsNSString() || (_NSIsNSDictionary() & 1) == 0)
      {
        goto LABEL_38;
      }

      if ([NSMorphologyCustomPronoun isSupportedForLanguage:v21])
      {
        v23 = [[NSMorphologyCustomPronoun alloc] _initWithExternalRepresentationDictionary:v22];
        if (!v23)
        {
          goto LABEL_38;
        }

        v24 = v23;
        customPronouns = v6->_customPronouns;
        if (!customPronouns)
        {
          customPronouns = objc_alloc_init(MEMORY[0x1E695DF90]);
          v6->_customPronouns = customPronouns;
        }

        [(NSMutableDictionary *)customPronouns setObject:v24 forKeyedSubscript:v21];
      }

      if (v18 == ++v20)
      {
        v18 = [v16 countByEnumeratingWithState:&v29 objects:v28 count:16];
        if (v18)
        {
          goto LABEL_25;
        }

        return v6;
      }
    }
  }

  return v6;
}

- (id)_initWithExternalRepresentationDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = NSMorphology;
  v4 = [(NSMorphology *)&v23 init];
  if (!v4)
  {
    return v4;
  }

  if (!_NSGrammaticalGenderGetFromExternalRepresentation([a3 objectForKeyedSubscript:@"grammaticalGender"], &v4->_grammaticalGender) || !_NSGrammaticalNumberGetFromExternalRepresentation(objc_msgSend(a3, "objectForKeyedSubscript:", @"number"), &v4->_number) || !_NSGrammaticalPartOfSpeechGetFromExternalRepresentation(objc_msgSend(a3, "objectForKeyedSubscript:", @"partOfSpeech"), &v4->_partOfSpeech) || !_NSGrammaticalCaseGetFromExternalRepresentation(objc_msgSend(a3, "objectForKeyedSubscript:", @"grammaticalCase"), &v4->_grammaticalCase) || !_NSGrammaticalPronounTypeGetFromExternalRepresentation(objc_msgSend(a3, "objectForKeyedSubscript:", @"pronounType"), &v4->_pronounType))
  {
    goto LABEL_36;
  }

  v5 = [a3 objectForKeyedSubscript:@"determination"];
  if (v5)
  {
    v6 = v5;
    if ([v5 isEqual:@"independent"])
    {
      v7 = 1;
    }

    else
    {
      if (![v6 isEqual:@"dependent"])
      {
        goto LABEL_36;
      }

      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  v4->_determination = v7;
  v8 = [a3 objectForKeyedSubscript:@"definiteness"];
  if (v8)
  {
    v9 = v8;
    if ([v8 isEqual:@"indefinite"])
    {
      v10 = 1;
    }

    else
    {
      if (![v9 isEqual:@"definite"])
      {
        goto LABEL_36;
      }

      v10 = 2;
    }
  }

  else
  {
    v10 = 0;
  }

  v4->_definiteness = v10;
  v11 = [a3 objectForKeyedSubscript:@"customPronouns"];
  if (!v11)
  {
    return v4;
  }

  v12 = v11;
  if (!_NSIsNSDictionary())
  {
LABEL_36:

    return 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
LABEL_23:
    v16 = 0;
    while (1)
    {
      if (*v26 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v25 + 1) + 8 * v16);
      v18 = [v12 objectForKey:v17];
      if (!_NSIsNSString() || !_NSIsNSDictionary())
      {
        goto LABEL_36;
      }

      if ([NSMorphologyCustomPronoun isSupportedForLanguage:v17])
      {
        v19 = [[NSMorphologyCustomPronoun alloc] _initWithExternalRepresentationDictionary:v18];
        if (!v19)
        {
          goto LABEL_36;
        }

        v20 = v19;
        customPronouns = v4->_customPronouns;
        if (!customPronouns)
        {
          customPronouns = objc_alloc_init(MEMORY[0x1E695DF90]);
          v4->_customPronouns = customPronouns;
        }

        [(NSMutableDictionary *)customPronouns setObject:v20 forKeyedSubscript:v17];
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v14)
        {
          goto LABEL_23;
        }

        return v4;
      }
    }
  }

  return v4;
}

- (NSDictionary)_externalRepresentationDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NSMorphology *)self grammaticalGender])
  {
    v4 = [(NSMorphology *)self grammaticalGender]- 1;
    if (v4 > 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_1E69F2568[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"grammaticalGender"];
  }

  if ([(NSMorphology *)self number])
  {
    v6 = [(NSMorphology *)self number]- 1;
    if (v6 > 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_1E69F2580[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"number"];
  }

  if ([(NSMorphology *)self partOfSpeech])
  {
    v8 = [(NSMorphology *)self partOfSpeech]- 1;
    if (v8 > 0xD)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E69F25B0[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"partOfSpeech"];
  }

  return v3;
}

- (NSData)_externalRepresentation
{
  v2 = [(NSMorphology *)self _externalRepresentationDictionary];

  return [NSJSONSerialization dataWithJSONObject:v2 options:0 error:0];
}

- (NSMorphology)initWithInflection:(id)a3
{
  v4 = [(NSMorphology *)self init];
  if (v4)
  {
    v5 = [a3 gender];
    if (v5 <= 3)
    {
      [(NSMorphology *)v4 setGrammaticalGender:qword_1813059D8[v5]];
    }

    v6 = [a3 number];
    if (v6 <= 6)
    {
      [(NSMorphology *)v4 setNumber:qword_1813059F8[v6]];
    }

    v7 = [a3 englishCustomPronoun];
    if (v7)
    {
      [(NSMorphology *)v4 setCustomPronoun:v7 forLanguage:@"en" error:0];
    }
  }

  return v4;
}

- (void)applyPluralityRulesForNumbers:(id)a3 inLanguages:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(NSMorphology *)self number]== NSGrammaticalNumberPlural)
  {
    return;
  }

  v7 = [a3 count];
  if (v7 < 1)
  {
    goto LABEL_23;
  }

  v8 = v7;
  v9 = 0;
  for (i = 0; i != v8; ++i)
  {
    v11 = [a3 objectAtIndexedSubscript:i];
    v12 = [a4 objectAtIndexedSubscript:i];
    valuePtr = -1;
    if (CFNumberGetValue(v11, kCFNumberCFIndexType, &valuePtr))
    {
      if (v9)
      {
        continue;
      }
    }

    else
    {
      valuePtr = -1;
      if (v9)
      {
        continue;
      }
    }

    memset(v18, 0, 157);
    if (([v12 getBytes:v18 maxLength:157 usedLength:0 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v12, "length"), 0}] & 1) == 0)
    {
      strcpy(v18, "en");
    }

    uplrules_open();
    memset(v17, 0, 314);
    [(__CFNumber *)v11 doubleValue];
    v13 = uplrules_select();
    uplrules_close();
    v9 = 0;
    if (v13 >= 1)
    {
      v14 = [[NSString alloc] initWithCharactersNoCopy:v17 length:v13 freeWhenDone:0];
      if ([(NSString *)v14 isEqual:@"one"])
      {
        v9 = 1;
LABEL_18:

        continue;
      }

      if ([(NSString *)v14 isEqual:@"two"])
      {
        v9 = 4;
        goto LABEL_18;
      }

      v15 = [(NSString *)v14 isEqual:@"other"];

      if (v15)
      {
        v9 = 3;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  if (!v9)
  {
LABEL_23:
    v9 = 3;
  }

  if ([(NSMorphology *)self number])
  {
    if ([(NSMorphology *)self number]!= v9)
    {
      v9 = 3;
      goto LABEL_27;
    }
  }

  else
  {
LABEL_27:
    [(NSMorphology *)self setNumber:v9];
  }
}

- (NSMorphology)initWithMorphunAttributeValues:(id)a3
{
  v25[24] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = NSMorphology;
  v4 = [(NSMorphology *)&v14 init];
  if (v4)
  {
    v24[0] = @"abbreviation";
    v24[1] = @"adjective";
    v25[0] = &unk_1EEF5A160;
    v25[1] = &unk_1EEF5A188;
    v24[2] = @"adverb";
    v24[3] = @"conjunction";
    v25[2] = &unk_1EEF5A1B0;
    v25[3] = &unk_1EEF5A1D8;
    v24[4] = @"interjection";
    v24[5] = @"letter";
    v25[4] = &unk_1EEF5A200;
    v25[5] = &unk_1EEF5A228;
    v25[6] = &unk_1EEF5A250;
    v24[6] = @"noun";
    v24[7] = @"proper-noun";
    v22[0] = @"f";
    v22[1] = @"v";
    v23[0] = &off_1EEF56CC0;
    v23[1] = [NSNumber numberWithInteger:15];
    v25[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v25[8] = &unk_1EEF5A278;
    v24[8] = @"number";
    v24[9] = @"particle";
    v25[9] = &unk_1EEF5A2A0;
    v25[10] = &unk_1EEF5A2C8;
    v24[10] = @"pronoun";
    v24[11] = @"verb";
    v25[11] = &unk_1EEF5A2F0;
    v25[12] = &unk_1EEF5A318;
    v24[12] = @"feminine";
    v24[13] = @"masculine";
    v25[13] = &unk_1EEF5A340;
    v25[14] = &unk_1EEF5A368;
    v24[14] = @"neuter";
    v24[15] = @"common";
    v20[1] = @"v";
    v21[0] = &off_1EEF56DE0;
    v20[0] = @"f";
    v21[1] = [NSNumber numberWithInteger:4];
    v25[15] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v25[16] = &unk_1EEF5A390;
    v24[16] = @"singular";
    v24[17] = @"plural";
    v25[17] = &unk_1EEF5A3B8;
    v25[18] = &unk_1EEF5A3E0;
    v24[18] = @"accusative";
    v24[19] = @"dative";
    v25[19] = &unk_1EEF5A408;
    v25[20] = &unk_1EEF5A430;
    v24[20] = @"genitive";
    v24[21] = @"locative";
    v25[21] = &unk_1EEF5A458;
    v25[22] = &unk_1EEF5A480;
    v24[22] = @"nominative";
    v24[23] = @"prepositional";
    v25[23] = &unk_1EEF5A4A8;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:24];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = [v5 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v9)];
          if (v10)
          {
            v11 = v10;
            v12 = [objc_msgSend(v10 objectForKeyedSubscript:{@"f", "unsignedIntegerValue"}];
            if (v12 > 1)
            {
              if (v12 == 2)
              {
                -[NSMorphology setNumber:](v4, "setNumber:", [objc_msgSend(v11 objectForKeyedSubscript:{@"v", "unsignedIntegerValue"}]);
              }

              else if (v12 == 4)
              {
                -[NSMorphology setGrammaticalCase:](v4, "setGrammaticalCase:", [objc_msgSend(v11 objectForKeyedSubscript:{@"v", "unsignedIntegerValue"}]);
              }
            }

            else if (v12)
            {
              if (v12 == 1)
              {
                -[NSMorphology setGrammaticalGender:](v4, "setGrammaticalGender:", [objc_msgSend(v11 objectForKeyedSubscript:{@"v", "unsignedIntegerValue"}]);
              }
            }

            else
            {
              -[NSMorphology setPartOfSpeech:](v4, "setPartOfSpeech:", [objc_msgSend(v11 objectForKeyedSubscript:{@"v", "unsignedIntegerValue"}]);
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (BOOL)addConstraintsTo:(MDInflectableStringConcept *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [(NSMorphology *)self _morphunConstraints];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v25;
    *&v6 = 138543874;
    v15 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = [v4 objectForKeyedSubscript:{v11, v15}];
        cf = 0;
        _MergedGlobals_109(a3, v11, v12, &cf);
        if (cf)
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v13 = _NSInflectionLog_log;
          if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_INFO))
          {
            *buf = v15;
            v18 = v11;
            v19 = 2114;
            v20 = v12;
            v21 = 2114;
            v22 = cf;
            _os_log_impl(&dword_18075C000, v13, OS_LOG_TYPE_INFO, "Unable to set constraint %{public}@=%{public}@: %{public}@", buf, 0x20u);
          }

          CFRelease(cf);
        }

        v8 |= [v12 isEqualToString:@"pos"] ^ 1;
        ++v10;
      }

      while (v7 != v10);
      v7 = [v4 countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

@end