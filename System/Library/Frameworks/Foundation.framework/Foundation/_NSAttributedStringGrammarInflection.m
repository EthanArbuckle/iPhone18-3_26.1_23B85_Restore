@interface _NSAttributedStringGrammarInflection
+ (BOOL)_canSelectUserInflectionWithPreferredLanguages:(id)a3;
+ (BOOL)_thirdPartyApplicationsCanAccessUserInflection;
+ (BOOL)canSelectUserInflection;
+ (NSArray)presetInflections;
+ (NSString)_protectedPreferencesDomain;
+ (NSString)_thirdPartyPreferencesDomain;
+ (_NSAttributedStringGrammarInflection)_currentGlobalUserInflection;
+ (_NSAttributedStringGrammarInflection)_currentGlobalUserInflectionIfAvailable;
+ (_NSAttributedStringGrammarInflection)userInflection;
+ (void)_addGlobalUserInflectionObserver:(id)a3 options:(unint64_t)a4 context:(void *)a5;
+ (void)_removeGlobalUserInflectionObserver:(id)a3 context:(void *)a4;
+ (void)_setThirdPartyApplicationsCanAccessUserInflection:(BOOL)a3;
+ (void)_usePreferencesDomainForFirstParty:(id)a3 thirdParty:(id)a4 simulateLockedDevice:(BOOL)a5 simulateThirdPartyProcess:(BOOL)a6 withinBlock:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSData)externalRepresentation;
- (NSDictionary)externalRepresentationDictionary;
- (NSMorphologyCustomPronoun)englishCustomPronoun;
- (NSString)localizedShortDescription;
- (_NSAttributedStringGrammarInflection)init;
- (_NSAttributedStringGrammarInflection)initWithCoder:(id)a3;
- (_NSAttributedStringGrammarInflection)initWithExternalRepresentation:(id)a3 error:(id *)a4;
- (_NSAttributedStringGrammarInflection)initWithExternalRepresentationDictionary:(id)a3 error:(id *)a4;
- (_NSAttributedStringGrammarInflection)initWithInflectionRule:(id)a3;
- (_NSAttributedStringGrammarInflection)initWithMorphology:(id)a3;
- (id)_initWithGender:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_setAsGlobalUserInflection;
- (void)_useInsteadOfUserInflectionInBlock:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NSAttributedStringGrammarInflection

+ (_NSAttributedStringGrammarInflection)_currentGlobalUserInflectionIfAvailable
{
  v7 = *MEMORY[0x1E69E9840];
  getpid();
  v4 = [@"com.apple.morphology.internal" UTF8String];
  if (sandbox_check())
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v2 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v6 = [@"com.apple.morphology.internal" UTF8String];
      _os_log_debug_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEBUG, "Could not read values in %s: accessing these preferences requires user-preference-read or file-read-data sandbox access", buf, 0xCu);
    }

    return 0;
  }

  else
  {

    return +[_NSAttributedStringGrammarInflection _currentGlobalUserInflection];
  }
}

+ (_NSAttributedStringGrammarInflection)_currentGlobalUserInflection
{
  v2 = CFPreferencesCopyValue(@"AppleUserMorphology", @"com.apple.morphology.internal", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (_NSIsNSDictionary())
  {
    v3 = [[_NSAttributedStringGrammarInflection alloc] _initWithMarkdownDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_NSAttributedStringGrammarInflection)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSAttributedStringGrammarInflection;
  return [(_NSAttributedStringGrammarInflection *)&v3 init];
}

- (_NSAttributedStringGrammarInflection)initWithCoder:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v4 = -[_NSAttributedStringGrammarInflection initWithExternalRepresentation:error:](self, "initWithExternalRepresentation:error:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"externalRepresentation"], v6);
  if (!v4)
  {
    [a3 failWithError:v6[0]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = [(_NSAttributedStringGrammarInflection *)self externalRepresentation];

  [a3 encodeObject:v4 forKey:@"externalRepresentation"];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSAttributedStringGrammarInflection;
  [(_NSAttributedStringGrammarInflection *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_NSAttributedStringGrammarInflection);
  v4->_grammaticalCase = [(_NSAttributedStringGrammarInflection *)self grammaticalCase];
  v4->_gender = [(_NSAttributedStringGrammarInflection *)self gender];
  v4->_number = [(_NSAttributedStringGrammarInflection *)self number];
  v4->_person = [(_NSAttributedStringGrammarInflection *)self person];
  v4->_context = [(_NSAttributedStringGrammarInflection *)self context];
  v4->_determinationType = [(_NSAttributedStringGrammarInflection *)self determinationType];
  v4->_englishCustomPronoun = [(NSMorphologyCustomPronoun *)[(_NSAttributedStringGrammarInflection *)self englishCustomPronoun] copy];
  return v4;
}

- (unint64_t)hash
{
  v3 = [(_NSAttributedStringGrammarInflection *)self context];
  v4 = [(_NSAttributedStringGrammarInflection *)self gender]^ v3;
  v5 = [(_NSAttributedStringGrammarInflection *)self grammaticalCase];
  v6 = v4 ^ v5 ^ [(_NSAttributedStringGrammarInflection *)self number];
  v7 = [(_NSAttributedStringGrammarInflection *)self person];
  v8 = v6 ^ v7 ^ [(_NSAttributedStringGrammarInflection *)self determinationType];
  if ([(_NSAttributedStringGrammarInflection *)self englishCustomPronoun])
  {
    v8 ^= [(NSMorphologyCustomPronoun *)[(_NSAttributedStringGrammarInflection *)self englishCustomPronoun] hash];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(_NSAttributedStringGrammarInflection *)self context];
  if (v5 != [a3 context])
  {
    return 0;
  }

  v6 = [(_NSAttributedStringGrammarInflection *)self gender];
  if (v6 != [a3 gender])
  {
    return 0;
  }

  v7 = [(_NSAttributedStringGrammarInflection *)self grammaticalCase];
  if (v7 != [a3 grammaticalCase])
  {
    return 0;
  }

  v8 = [(_NSAttributedStringGrammarInflection *)self number];
  if (v8 != [a3 number])
  {
    return 0;
  }

  v9 = [(_NSAttributedStringGrammarInflection *)self person];
  if (v9 != [a3 person])
  {
    return 0;
  }

  v10 = [(_NSAttributedStringGrammarInflection *)self determinationType];
  if (v10 != [a3 determinationType])
  {
    return 0;
  }

  v11 = [(_NSAttributedStringGrammarInflection *)self englishCustomPronoun];
  if (v11 == [a3 englishCustomPronoun])
  {
    return 1;
  }

  v12 = [(_NSAttributedStringGrammarInflection *)self englishCustomPronoun];
  v13 = [a3 englishCustomPronoun];

  return [(NSMorphologyCustomPronoun *)v12 isEqual:v13];
}

- (NSMorphologyCustomPronoun)englishCustomPronoun
{
  v2 = [(NSMorphologyCustomPronoun *)self->_englishCustomPronoun copy];

  return v2;
}

- (_NSAttributedStringGrammarInflection)initWithMorphology:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _NSAttributedStringGrammarInflection;
  v4 = [(_NSAttributedStringGrammarInflection *)&v14 init];
  if (v4)
  {
    v5 = [a3 grammaticalGender];
    if (v5 <= 3)
    {
      [(_NSAttributedStringGrammarInflection *)v4 setGender:qword_1814462E0[v5]];
    }

    v6 = [a3 number];
    if (v6 <= 6)
    {
      [(_NSAttributedStringGrammarInflection *)v4 setNumber:qword_181446300[v6]];
    }

    v7 = [a3 grammaticalCase] - 1;
    if (v7 > 0xC)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_181446338[v7];
    }

    [(_NSAttributedStringGrammarInflection *)v4 setGrammaticalCase:v8];
    v9 = [a3 definiteness];
    v10 = 3;
    if (v9 != 1)
    {
      v10 = 0;
    }

    if (v9 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10;
    }

    [(_NSAttributedStringGrammarInflection *)v4 setDeterminationType:v11];
    v12 = [objc_msgSend(a3 "_customPronouns")];
    if ([v12 count] == 1)
    {
      v4->_englishCustomPronoun = [objc_msgSend(v12 objectAtIndexedSubscript:{0), "copy"}];
    }
  }

  return v4;
}

- (_NSAttributedStringGrammarInflection)initWithInflectionRule:(id)a3
{
  if (+[NSInflectionRule automaticRule]== a3)
  {

    return [(_NSAttributedStringGrammarInflection *)self init];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[_NSAttributedStringGrammarInflection initWithInflectionRule:]", "NSAttributedString_Grammar.m", 450, "[inflectionRule isKindOfClass:NSInflectionRuleExplicit.class]");
    }

    v5 = [a3 morphology];

    return [(_NSAttributedStringGrammarInflection *)self initWithMorphology:v5];
  }
}

- (id)description
{
  v3 = [(NSString *)NSMutableString stringWithFormat:@"<%@ %p { ", objc_opt_class(), self];
  if ([(_NSAttributedStringGrammarInflection *)self context])
  {
    [(NSMutableString *)v3 appendFormat:@" context = %d;", [(_NSAttributedStringGrammarInflection *)self context]];
  }

  if ([(_NSAttributedStringGrammarInflection *)self gender])
  {
    [(NSMutableString *)v3 appendFormat:@" gender = %d;", [(_NSAttributedStringGrammarInflection *)self gender]];
  }

  if ([(_NSAttributedStringGrammarInflection *)self grammaticalCase])
  {
    [(NSMutableString *)v3 appendFormat:@" grammaticalCase = %d;", [(_NSAttributedStringGrammarInflection *)self grammaticalCase]];
  }

  if ([(_NSAttributedStringGrammarInflection *)self number])
  {
    [(NSMutableString *)v3 appendFormat:@" number = %d;", [(_NSAttributedStringGrammarInflection *)self number]];
  }

  if ([(_NSAttributedStringGrammarInflection *)self person])
  {
    [(NSMutableString *)v3 appendFormat:@" person = %d;", [(_NSAttributedStringGrammarInflection *)self person]];
  }

  if ([(_NSAttributedStringGrammarInflection *)self englishCustomPronoun])
  {
    [(NSMutableString *)v3 appendFormat:@" English pronoun = %@;", [(_NSAttributedStringGrammarInflection *)self englishCustomPronoun]];
  }

  [(NSMutableString *)v3 appendString:@"}>"];
  v4 = [(NSMutableString *)v3 copy];

  return v4;
}

- (_NSAttributedStringGrammarInflection)initWithExternalRepresentation:(id)a3 error:(id *)a4
{
  v6 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:a4];
  if (!v6)
  {
LABEL_8:

    return 0;
  }

  v7 = v6;
  if ((_NSIsNSDictionary() & 1) == 0)
  {
    if (a4)
    {
      *a4 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3840 userInfo:0];
    }

    goto LABEL_8;
  }

  return [(_NSAttributedStringGrammarInflection *)self initWithExternalRepresentationDictionary:v7 error:a4];
}

- (_NSAttributedStringGrammarInflection)initWithExternalRepresentationDictionary:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = _NSAttributedStringGrammarInflection;
  v6 = [(_NSAttributedStringGrammarInflection *)&v32 init];
  if (!v6)
  {
    return v6;
  }

  v7 = [a3 objectForKeyedSubscript:@"context"];
  if (v7 && (v8 = v7, ([v7 isEqual:@"none"] & 1) == 0))
  {
    if (([v8 isEqual:@"technicalTerm"] & 1) == 0)
    {
      goto LABEL_80;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  [(_NSAttributedStringGrammarInflection *)v6 setContext:v9];
  v10 = [a3 objectForKeyedSubscript:@"grammaticalGender"];
  if (v10 && (v11 = v10, ([v10 isEqual:@"none"] & 1) == 0))
  {
    if ([v11 isEqual:@"masculine"])
    {
      v12 = 1;
    }

    else if ([v11 isEqual:@"feminine"])
    {
      v12 = 2;
    }

    else if ([v11 isEqual:@"neuter"])
    {
      v12 = 3;
    }

    else
    {
      if (([v11 isEqual:@"common"] & 1) == 0)
      {
        goto LABEL_80;
      }

      v12 = 4;
    }
  }

  else
  {
    v12 = 0;
  }

  [(_NSAttributedStringGrammarInflection *)v6 setGender:v12];
  v13 = [a3 objectForKeyedSubscript:@"grammaticalCase"];
  if (v13 && (v14 = v13, ([v13 isEqual:@"none"] & 1) == 0))
  {
    if ([v14 isEqual:@"accusative"])
    {
      v15 = 1;
    }

    else if ([v14 isEqual:@"dative"])
    {
      v15 = 2;
    }

    else if ([v14 isEqual:@"genitive"])
    {
      v15 = 3;
    }

    else if ([v14 isEqual:@"locative"])
    {
      v15 = 4;
    }

    else if ([v14 isEqual:@"nominative"])
    {
      v15 = 5;
    }

    else if ([v14 isEqual:@"partitive"])
    {
      v15 = 6;
    }

    else if ([v14 isEqual:@"instrumental"])
    {
      v15 = 7;
    }

    else if ([v14 isEqual:@"prepositional"])
    {
      v15 = 8;
    }

    else if ([v14 isEqual:@"object"])
    {
      v15 = 9;
    }

    else if ([v14 isEqual:@"directObject"])
    {
      v15 = 10;
    }

    else
    {
      if (([v14 isEqual:@"indirectObject"] & 1) == 0)
      {
        goto LABEL_80;
      }

      v15 = 11;
    }
  }

  else
  {
    v15 = 0;
  }

  [(_NSAttributedStringGrammarInflection *)v6 setGrammaticalCase:v15];
  v16 = [a3 objectForKeyedSubscript:@"number"];
  if (v16 && (v17 = v16, ([v16 isEqual:@"none"] & 1) == 0))
  {
    if ([v17 isEqual:@"one"])
    {
      v18 = 1;
    }

    else if ([v17 isEqual:@"two"])
    {
      v18 = 2;
    }

    else if ([v17 isEqual:@"few"])
    {
      v18 = 3;
    }

    else if ([v17 isEqual:@"many"])
    {
      v18 = 4;
    }

    else if ([v17 isEqual:@"zero"])
    {
      v18 = 5;
    }

    else
    {
      if (([v17 isEqual:@"other"] & 1) == 0)
      {
        goto LABEL_80;
      }

      v18 = 6;
    }
  }

  else
  {
    v18 = 0;
  }

  [(_NSAttributedStringGrammarInflection *)v6 setNumber:v18];
  v19 = [a3 objectForKeyedSubscript:@"person"];
  if (!v19 || (v20 = v19, ([v19 isEqual:@"none"] & 1) != 0))
  {
    v21 = 0;
LABEL_17:
    [(_NSAttributedStringGrammarInflection *)v6 setPerson:v21];
    v22 = [a3 objectForKeyedSubscript:@"customPronouns"];
    if (_NSIsNSDictionary() && [v22 count])
    {
      v23 = [v22 objectForKeyedSubscript:@"en"];
      if (!v23)
      {
        goto LABEL_80;
      }

      v24 = v23;
      if (!_NSIsNSDictionary())
      {
        goto LABEL_80;
      }

      v25 = [v24 objectForKeyedSubscript:@"subjectForm"];
      v26 = [v24 objectForKeyedSubscript:@"objectForm"];
      v27 = [v24 objectForKeyedSubscript:@"possessiveForm"];
      v28 = [v24 objectForKeyedSubscript:@"possessiveAdjectiveForm"];
      v29 = [v24 objectForKeyedSubscript:@"reflexiveForm"];
      if (!_NSIsNSString())
      {
        goto LABEL_80;
      }

      if (!_NSIsNSString())
      {
        goto LABEL_80;
      }

      if (!_NSIsNSString())
      {
        goto LABEL_80;
      }

      if (!_NSIsNSString())
      {
        goto LABEL_80;
      }

      if (!_NSIsNSString())
      {
        goto LABEL_80;
      }

      v30 = objc_alloc_init(NSMorphologyCustomPronoun);
      [(NSMorphologyCustomPronoun *)v30 setSubjectForm:v25];
      [(NSMorphologyCustomPronoun *)v30 setObjectForm:v26];
      [(NSMorphologyCustomPronoun *)v30 setPossessiveForm:v27];
      [(NSMorphologyCustomPronoun *)v30 setPossessiveAdjectiveForm:v28];
      [(NSMorphologyCustomPronoun *)v30 setReflexiveForm:v29];
      if (!v30)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v30 = 0;
    }

    v6->_englishCustomPronoun = v30;
    return v6;
  }

  if ([v20 isEqual:@"first"])
  {
    v21 = 1;
    goto LABEL_17;
  }

  if ([v20 isEqual:@"second"])
  {
    v21 = 2;
    goto LABEL_17;
  }

  if ([v20 isEqual:@"third"])
  {
    v21 = 3;
    goto LABEL_17;
  }

LABEL_80:
  if (a4)
  {
    *a4 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3840 userInfo:0];
  }

  return 0;
}

- (NSDictionary)externalRepresentationDictionary
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(_NSAttributedStringGrammarInflection *)self context]== 1)
  {
    v4 = @"technicalTerm";
  }

  else
  {
    v4 = 0;
  }

  [(NSDictionary *)v3 setObject:v4 forKeyedSubscript:@"context"];
  v5 = [(_NSAttributedStringGrammarInflection *)self gender];
  v6 = 0;
  if ((v5 - 1) <= 3)
  {
    v6 = off_1E69F6DE8[v5 - 1];
  }

  [(NSDictionary *)v3 setObject:v6 forKeyedSubscript:@"grammaticalGender"];
  v7 = [(_NSAttributedStringGrammarInflection *)self grammaticalCase]- 1;
  if (v7 > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E69F6E08[v7];
  }

  [(NSDictionary *)v3 setObject:v8 forKeyedSubscript:@"grammaticalCase"];
  v9 = [(_NSAttributedStringGrammarInflection *)self number]- 1;
  if (v9 > 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E69F6E60[v9];
  }

  [(NSDictionary *)v3 setObject:v10 forKeyedSubscript:@"number"];
  v11 = [(_NSAttributedStringGrammarInflection *)self person]- 1;
  if (v11 > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = off_1E69F6E90[v11];
  }

  [(NSDictionary *)v3 setObject:v12 forKeyedSubscript:@"person"];
  v13 = [(_NSAttributedStringGrammarInflection *)self englishCustomPronoun];
  if ([(NSMorphologyCustomPronoun *)v13 subjectForm])
  {
    if ([(NSMorphologyCustomPronoun *)v13 objectForm])
    {
      if ([(NSMorphologyCustomPronoun *)v13 possessiveForm])
      {
        if ([(NSMorphologyCustomPronoun *)v13 possessiveAdjectiveForm])
        {
          if ([(NSMorphologyCustomPronoun *)v13 reflexiveForm])
          {
            v18 = @"en";
            v16[0] = @"subjectForm";
            v17[0] = [(NSMorphologyCustomPronoun *)v13 subjectForm];
            v16[1] = @"objectForm";
            v17[1] = [(NSMorphologyCustomPronoun *)v13 objectForm];
            v16[2] = @"possessiveForm";
            v17[2] = [(NSMorphologyCustomPronoun *)v13 possessiveForm];
            v16[3] = @"possessiveAdjectiveForm";
            v17[3] = [(NSMorphologyCustomPronoun *)v13 possessiveAdjectiveForm];
            v16[4] = @"reflexiveForm";
            v17[4] = [(NSMorphologyCustomPronoun *)v13 reflexiveForm];
            v19[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
            if (v14)
            {
              [(NSDictionary *)v3 setObject:v14 forKeyedSubscript:@"customPronouns"];
            }
          }
        }
      }
    }
  }

  return v3;
}

- (NSData)externalRepresentation
{
  v2 = [(_NSAttributedStringGrammarInflection *)self externalRepresentationDictionary];

  return [NSJSONSerialization dataWithJSONObject:v2 options:2 error:0];
}

+ (_NSAttributedStringGrammarInflection)userInflection
{
  v2 = [[_NSAttributedStringGrammarInflection alloc] initWithMorphology:+[NSMorphology _userMorphologyWithOverrides]];

  return v2;
}

+ (void)_addGlobalUserInflectionObserver:(id)a3 options:(unint64_t)a4 context:(void *)a5
{
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];

  [v8 addObserver:a3 forKeyPath:@"AppleUserMorphology" options:a4 context:a5];
}

+ (void)_removeGlobalUserInflectionObserver:(id)a3 context:(void *)a4
{
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];

  [v6 removeObserver:a3 forKeyPath:@"AppleUserMorphology" context:a4];
}

- (void)_setAsGlobalUserInflection
{
  v2 = [(_NSAttributedStringGrammarInflection *)self _markupDictionary];
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];
  _CFPreferencesSetFileProtectionClass();
  _CFPreferencesSetFileProtectionClass();
  if (qword_1ED43FE00)
  {
    v5 = qword_1ED43FE00;
  }

  else
  {
    v5 = @"com.apple.morphology.internal";
  }

  CFPreferencesSetValue(@"AppleUserMorphology", v2, v5, v3, v4);
  if (qword_1ED43FE00)
  {
    v6 = qword_1ED43FE00;
  }

  else
  {
    v6 = @"com.apple.morphology.internal";
  }

  v7 = CFPreferencesCopyValue(@"AppleUserMorphologyAllowThirdPartyAccess", v6, v3, v4);
  if (v7)
  {
    v8 = v7;
    if (CFEqual(v7, *MEMORY[0x1E695E4D0]))
    {
      if (qword_1ED43FE08)
      {
        v9 = qword_1ED43FE08;
      }

      else
      {
        v9 = @"com.apple.morphology";
      }

      CFPreferencesSetValue(@"AppleUserMorphology", v2, v9, v3, v4);
    }

    CFRelease(v8);
  }

  +[NSMorphology _clearCachedUserMorphology];
}

+ (BOOL)_thirdPartyApplicationsCanAccessUserInflection
{
  if (qword_1ED43FE00)
  {
    v2 = qword_1ED43FE00;
  }

  else
  {
    v2 = @"com.apple.morphology.internal";
  }

  v3 = CFPreferencesCopyValue(@"AppleUserMorphologyAllowThirdPartyAccess", v2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = [v3 isEqual:MEMORY[0x1E695E118]];

  return v4;
}

+ (void)_setThirdPartyApplicationsCanAccessUserInflection:(BOOL)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E695E8B8];
  v5 = *MEMORY[0x1E695E898];
  _CFPreferencesSetFileProtectionClass();
  _CFPreferencesSetFileProtectionClass();
  v6 = [NSNumber numberWithBool:v3];
  if (qword_1ED43FE00)
  {
    v7 = qword_1ED43FE00;
  }

  else
  {
    v7 = @"com.apple.morphology.internal";
  }

  CFPreferencesSetValue(@"AppleUserMorphologyAllowThirdPartyAccess", v6, v7, v4, v5);
  if (v3)
  {
    if (qword_1ED43FE00)
    {
      v8 = qword_1ED43FE00;
    }

    else
    {
      v8 = @"com.apple.morphology.internal";
    }

    v9 = CFPreferencesCopyValue(@"AppleUserMorphology", v8, v4, v5);
    if (v9)
    {
      v10 = v9;
      if (qword_1ED43FE08)
      {
        v11 = qword_1ED43FE08;
      }

      else
      {
        v11 = @"com.apple.morphology";
      }

      CFPreferencesSetValue(@"AppleUserMorphology", v9, v11, v4, v5);

      CFRelease(v10);
    }
  }

  else
  {
    if (qword_1ED43FE08)
    {
      v12 = qword_1ED43FE08;
    }

    else
    {
      v12 = @"com.apple.morphology";
    }

    CFPreferencesSetValue(@"AppleUserMorphology", 0, v12, v4, v5);
  }
}

- (void)_useInsteadOfUserInflectionInBlock:(id)a3
{
  v4 = [[NSMorphology alloc] initWithInflection:self];
  [(NSMorphology *)v4 _overrideUserInflectionInBlock:a3];
}

+ (void)_usePreferencesDomainForFirstParty:(id)a3 thirdParty:(id)a4 simulateLockedDevice:(BOOL)a5 simulateThirdPartyProcess:(BOOL)a6 withinBlock:(id)a7
{
  v8 = qword_1ED43FE00;
  v9 = qword_1ED43FE08;
  v10 = _MergedGlobals_139;
  qword_1ED43FE00 = a3;
  qword_1ED43FE08 = a4;
  LOBYTE(_MergedGlobals_139) = a5;
  HIBYTE(_MergedGlobals_139) = a6;
  +[NSMorphology _clearCachedUserMorphology];
  (*(a7 + 2))(a7);
  qword_1ED43FE00 = v8;
  qword_1ED43FE08 = v9;
  _MergedGlobals_139 = v10;

  +[NSMorphology _clearCachedUserMorphology];
}

+ (NSString)_protectedPreferencesDomain
{
  if (qword_1ED43FE00)
  {
    return qword_1ED43FE00;
  }

  else
  {
    return @"com.apple.morphology.internal";
  }
}

+ (NSString)_thirdPartyPreferencesDomain
{
  if (qword_1ED43FE08)
  {
    return qword_1ED43FE08;
  }

  else
  {
    return @"com.apple.morphology";
  }
}

- (id)_initWithGender:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _NSAttributedStringGrammarInflection;
  v4 = [(_NSAttributedStringGrammarInflection *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(_NSAttributedStringGrammarInflection *)v4 setGender:a3];
  }

  return v5;
}

+ (NSArray)presetInflections
{
  if (qword_1ED43FE18 != -1)
  {
    dispatch_once(&qword_1ED43FE18, &__block_literal_global_65);
  }

  return qword_1ED43FE10;
}

- (NSString)localizedShortDescription
{
  v3 = [(_NSAttributedStringGrammarInflection *)self englishCustomPronoun];
  v4 = [(NSMorphologyCustomPronoun *)v3 subjectForm];
  v5 = [(NSMorphologyCustomPronoun *)v3 objectForm];
  if (v4 && v5)
  {
    return +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"[CUSTOM PRONOUN] %@/%@" value:&stru_1EEEFDF90 table:@"Morphology"], v4, v5);
  }

  v7 = [(_NSAttributedStringGrammarInflection *)self gender];
  v8 = _NSFoundationBundle();
  switch(v7)
  {
    case 1:
      v9 = @"Masculine";
      break;
    case 3:
      v9 = @"Neutral";
      break;
    case 2:
      v9 = @"Feminine";
      break;
    default:
      v9 = @"Not Specified";
      break;
  }

  return [v8 localizedStringForKey:v9 value:&stru_1EEEFDF90 table:@"Morphology"];
}

+ (BOOL)_canSelectUserInflectionWithPreferredLanguages:(id)a3
{
  if ([objc_msgSend(a3 "firstObject")] < 2 || !objc_msgSend(&unk_1EEF59FA8, "containsObject:", objc_msgSend(objc_msgSend(objc_msgSend(a3, "firstObject"), "substringToIndex:", 2), "lowercaseString")))
  {
    return 0;
  }

  v4 = [a3 firstObject];

  return _NSRequiresMorphunInflectionForLanguageIdentifier(v4);
}

+ (BOOL)canSelectUserInflection
{
  v3 = [MEMORY[0x1E695DF58] preferredLanguages];

  return [a1 _canSelectUserInflectionWithPreferredLanguages:v3];
}

@end