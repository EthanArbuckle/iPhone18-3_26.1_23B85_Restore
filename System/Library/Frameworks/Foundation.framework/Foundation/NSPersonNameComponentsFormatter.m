@interface NSPersonNameComponentsFormatter
+ (BOOL)__contents:(id)a3 exclusivelyInCharacterSet:(USet *)a4;
+ (BOOL)__shortStyle:(int64_t)a3 isRestrictedForLocalization:(id)a4;
+ (BOOL)__shortStyle:(int64_t)a3 isRestrictedForScript:(unint64_t)a4;
+ (BOOL)__shortStyleRestrictionExistsForComponents:(id)a3 shortStyle:(int64_t)a4;
+ (BOOL)__shouldFallbackToGivenNameInitialForAbbreviatedNameFormatFamilyNameOnly;
+ (BOOL)__style:(int64_t)a3 isRestrictedForLocalization:(id)a4;
+ (BOOL)__style:(int64_t)a3 isRestrictedForScript:(unint64_t)a4;
+ (BOOL)_currentLocaleIsCJK;
+ (BOOL)_isCJKScript:(id)a3;
+ (BOOL)_shortNameIsEnabled;
+ (BOOL)_shouldPreferNicknames;
+ (BOOL)isKatakana:(id)a3;
+ (NSString)_preferredLocalizationForCurrentLocale;
+ (NSString)localizedStringFromPersonNameComponents:(NSPersonNameComponents *)components style:(NSPersonNameComponentsFormatterStyle)nameFormatStyle options:(NSPersonNameComponentsFormatterOptions)nameOptions;
+ (SEL)__initialsCreatorForScript:(unint64_t)a3;
+ (USet)__getCharacterSetWithPattern:(id)a3;
+ (id)__characterSetWithPattern:(id)a3;
+ (id)__currentLocale;
+ (id)__familyNameFirstOrdering;
+ (id)__givenNameFirstOrdering;
+ (id)__initialsForString:(id)a3;
+ (id)__longestComponentFromComponents:(id)a3;
+ (id)__naiveDelimiterForCombinedNameString:(id)a3;
+ (id)__stringByStrippingNonInitialPunctuationFromString:(id)a3;
+ (id)__stringValueForShortStyle:(int64_t)a3;
+ (id)__stringValueForStyle:(int64_t)a3;
+ (id)__supportedNameDefaultsFromLocalization:(id)a3;
+ (id)__supportedScriptDefaultsFromScriptName:(id)a3;
+ (id)__thaiConsonantSet;
+ (id)_cjkLanguagesSet;
+ (id)_cjkLocaleIdentifiers;
+ (id)_fallbackDescriptorForStyle:(int64_t)a3 options:(unint64_t)a4;
+ (id)_formatterWithStyle:(int64_t)a3 options:(unint64_t)a4;
+ (id)_localizedDelimiterForComponents:(id)a3 options:(unint64_t)a4;
+ (id)_localizedShortNameForComponents:(id)a3 withStyle:(int64_t)a4 options:(unint64_t)a5;
+ (id)_preferredLocalizationFromLocale:(id)a3;
+ (id)_relevantKeyPathsForStyle:(int64_t)a3 options:(unint64_t)a4;
+ (id)_styleFormatterForStyle:(int64_t)a3 masterFormatter:(id)a4;
+ (int64_t)__abbreviatedNameFormatForPersonNameComponents:(id)a3;
+ (int64_t)__abbreviatedNameFormatForString:(id)a3;
+ (int64_t)__nameOrderForLocalization:(id)a3 usingNativeOrdering:(BOOL)a4;
+ (int64_t)__shortNameFormatForLocalization:(id)a3;
+ (int64_t)_defaultDisplayNameOrder;
+ (int64_t)_defaultShortNameFormat;
+ (int64_t)_nameOrderWithOverridesForComponents:(id)a3 options:(unint64_t)a4;
+ (unint64_t)__inferredScriptIndexForComponents:(id)a3 ignoreUndeterminedComponents:(BOOL)a4;
+ (unint64_t)__inferredScriptIndexFromString:(id)a3;
+ (void)__registerDefaults;
+ (void)forEachExistingComponentWithComponents:(id)a3 performBlock:(id)a4;
- (BOOL)__localizedRestrictionExistsForComponents:(id)a3 ignoreUndeterminedComponents:(BOOL)a4;
- (BOOL)__localizedRestrictionExistsForShortStyle:(int64_t)a3;
- (BOOL)__localizedRestrictionExistsForStyle:(int64_t)a3;
- (BOOL)_forceFamilyNameFirst;
- (BOOL)_forceGivenNameFirst;
- (BOOL)_ignoresFallbacks;
- (BOOL)getObjectValue:(id *)obj forString:(NSString *)string errorDescription:(NSString *)error;
- (BOOL)isEqualToFormatter:(id)a3;
- (BOOL)isPhonetic;
- (NSAttributedString)annotatedStringFromPersonNameComponents:(NSPersonNameComponents *)components;
- (NSLocale)_locale;
- (NSLocale)locale;
- (NSPersonNameComponents)personNameComponentsFromString:(NSString *)string;
- (NSPersonNameComponentsFormatter)init;
- (NSPersonNameComponentsFormatter)initWithCoder:(id)a3;
- (NSPersonNameComponentsFormatter)initWithData:(id)a3;
- (NSPersonNameComponentsFormatterStyle)style;
- (NSString)_preferredLocalizationForExplicitlySetLocale;
- (NSString)stringFromPersonNameComponents:(NSPersonNameComponents *)components;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringForObjectValue:(id)a3;
- (int64_t)__computedNameOrderForComponents:(id)a3;
- (int64_t)__computedShortNameFormat;
- (int64_t)__localizedNameOrderUsingNativeOrdering:(BOOL)a3;
- (int64_t)__localizedShortNameFormat;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)receiveObservedValue:(id)a3;
- (void)setLocale:(NSLocale *)locale;
- (void)setPhonetic:(BOOL)phonetic;
- (void)setStyle:(NSPersonNameComponentsFormatterStyle)style;
- (void)set_forceFamilyNameFirst:(BOOL)a3;
- (void)set_forceGivenNameFirst:(BOOL)a3;
- (void)set_ignoresFallbacks:(BOOL)a3;
- (void)set_locale:(id)a3;
@end

@implementation NSPersonNameComponentsFormatter

+ (int64_t)_defaultDisplayNameOrder
{
  [a1 __registerDefaults];
  if (_overriddenSettings && (v2 = [_overriddenSettings objectForKeyedSubscript:@"NSPersonNameDefaultDisplayNameOrder"]) != 0)
  {

    return [v2 integerValue];
  }

  else
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];

    return [v4 integerForKey:@"NSPersonNameDefaultDisplayNameOrder"];
  }
}

+ (id)__currentLocale
{
  if (qword_1ED43F470 != -1)
  {
    dispatch_once(&qword_1ED43F470, &__block_literal_global_86);
  }

  return qword_1ED43F468;
}

+ (void)__registerDefaults
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53__NSPersonNameComponentsFormatter___registerDefaults__block_invoke;
  v2[3] = &unk_1E69F2C00;
  v2[4] = a1;
  if (__registerDefaults_onceToken != -1)
  {
    dispatch_once(&__registerDefaults_onceToken, v2);
  }
}

uint64_t __53__NSPersonNameComponentsFormatter___registerDefaults__block_invoke(uint64_t a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _preferredLocalizationFromLocale:{objc_msgSend(*(a1 + 32), "__currentLocale")}];
  v3 = [*(a1 + 32) __style:1 isRestrictedForLocalization:v2];
  v4 = [*(a1 + 32) __shortNameFormatForLocalization:v2];
  v5 = [*(a1 + 32) __nameOrderForLocalization:v2 usingNativeOrdering:0];
  v8[0] = MEMORY[0x1E695E118];
  v7[0] = @"NSPersonNameDefaultShouldPreferNicknamesPreference";
  v7[1] = @"NSPersonNameDefaultShortNameEnabled";
  v8[1] = [NSNumber numberWithBool:v3 ^ 1u];
  v7[2] = @"NSPersonNameDefaultShortNameFormat";
  v8[2] = [NSNumber numberWithInteger:v4];
  v7[3] = @"NSPersonNameDefaultDisplayNameOrder";
  v8[3] = [NSNumber numberWithInteger:v5];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  return _CFXPreferencesRegisterDefaultValues();
}

id __50__NSPersonNameComponentsFormatter___currentLocale__block_invoke()
{
  result = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  qword_1ED43F468 = result;
  return result;
}

+ (BOOL)_shortNameIsEnabled
{
  [a1 __registerDefaults];
  if (_overriddenSettings && (v2 = [_overriddenSettings objectForKeyedSubscript:@"NSPersonNameDefaultShortNameEnabled"]) != 0)
  {

    return [v2 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];

    return [v4 BOOLForKey:@"NSPersonNameDefaultShortNameEnabled"];
  }
}

+ (int64_t)_defaultShortNameFormat
{
  [a1 __registerDefaults];
  if (_overriddenSettings && (v2 = [_overriddenSettings objectForKeyedSubscript:@"NSPersonNameDefaultShortNameFormat"]) != 0)
  {

    return [v2 integerValue];
  }

  else
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];

    return [v4 integerForKey:@"NSPersonNameDefaultShortNameFormat"];
  }
}

+ (BOOL)_shouldPreferNicknames
{
  [a1 __registerDefaults];
  if (_overriddenSettings && (v2 = [_overriddenSettings objectForKeyedSubscript:@"NSPersonNameDefaultShouldPreferNicknamesPreference"]) != 0)
  {

    return [v2 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];

    return [v4 BOOLForKey:@"NSPersonNameDefaultShouldPreferNicknamesPreference"];
  }
}

- (NSPersonNameComponentsFormatter)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSPersonNameComponentsFormatter;
  v2 = [(NSPersonNameComponentsFormatter *)&v4 init];
  if (v2)
  {
    v2->_private = objc_alloc_init(_NSPersonNameComponentsFormatterData);
    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (NSPersonNameComponentsFormatterStyle)style
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [self->_private style];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

+ (id)_cjkLanguagesSet
{
  if (qword_1ED43F4E8 != -1)
  {
    dispatch_once(&qword_1ED43F4E8, &__block_literal_global_367);
  }

  return qword_1ED43F4E0;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  preferredLocalizationForExplicitlySetLocale = self->__preferredLocalizationForExplicitlySetLocale;
  if (preferredLocalizationForExplicitlySetLocale)
  {

    self->__preferredLocalizationForExplicitlySetLocale = 0;
  }

  v4.receiver = self;
  v4.super_class = NSPersonNameComponentsFormatter;
  [(NSPersonNameComponentsFormatter *)&v4 dealloc];
}

- (NSString)_preferredLocalizationForExplicitlySetLocale
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSString *)self->__preferredLocalizationForExplicitlySetLocale copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)_forceFamilyNameFirst
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [self->_private forceFamilyNameFirst];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)_forceGivenNameFirst
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [self->_private forceGivenNameFirst];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

+ (id)__givenNameFirstOrdering
{
  if (qword_1ED43F4A8 != -1)
  {
    dispatch_once(&qword_1ED43F4A8, &__block_literal_global_346_0);
  }

  return qword_1ED43F4A0;
}

- (BOOL)isPhonetic
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [self->_private phonetic];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

+ (NSString)_preferredLocalizationForCurrentLocale
{
  if (qword_1ED43F480 != -1)
  {
    dispatch_once(&qword_1ED43F480, &__block_literal_global_327);
  }

  return qword_1ED43F478;
}

id __59__NSPersonNameComponentsFormatter___givenNameFirstOrdering__block_invoke()
{
  v1[5] = *MEMORY[0x1E69E9840];
  v1[0] = @"namePrefix";
  v1[1] = @"givenName";
  v1[2] = @"middleName";
  v1[3] = @"familyName";
  v1[4] = @"nameSuffix";
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:5];
  qword_1ED43F4A0 = result;
  return result;
}

id __73__NSPersonNameComponentsFormatter__preferredLocalizationForCurrentLocale__block_invoke()
{
  result = +[NSPersonNameComponentsFormatter _preferredLocalizationFromLocale:](NSPersonNameComponentsFormatter, "_preferredLocalizationFromLocale:", [MEMORY[0x1E695DF58] autoupdatingCurrentLocale]);
  qword_1ED43F478 = result;
  return result;
}

uint64_t __51__NSPersonNameComponentsFormatter__cjkLanguagesSet__block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&off_1EEF57E30, &off_1EEF57E48, &off_1EEF57E60, &off_1EEF57E78, 0}];
  qword_1ED43F4E0 = result;
  return result;
}

uint64_t __57__NSPersonNameComponentsFormatter_westernInitialsCreator__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 rangeOfComposedCharacterSequenceAtIndex:0];

  return [a2 substringWithRange:{v4, v3}];
}

- (int64_t)__computedShortNameFormat
{
  result = +[NSPersonNameComponentsFormatter _defaultShortNameFormat];
  if (!result)
  {

    return [(NSPersonNameComponentsFormatter *)self __localizedShortNameFormat];
  }

  return result;
}

- (BOOL)_ignoresFallbacks
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [self->_private ignoresFallbacks];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)receiveObservedValue:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSObservationFormatterSupport.m" description:81, @"Invalid parameter not satisfying: %@", @"!value || [value isKindOfClass:STATIC_CLASS_REF(NSPersonNameComponents)]"];
    }

    v6.receiver = self;
    v6.super_class = NSPersonNameComponentsFormatter;
    [(NSPersonNameComponentsFormatter *)&v6 receiveObservedValue:[(NSPersonNameComponentsFormatter *)self stringFromPersonNameComponents:a3]];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NSPersonNameComponentsFormatter;
    [(NSPersonNameComponentsFormatter *)&v7 receiveObservedValue:0];
  }
}

- (NSPersonNameComponentsFormatter)initWithData:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSPersonNameComponentsFormatter;
  v4 = [(NSPersonNameComponentsFormatter *)&v6 init];
  if (v4)
  {
    v4->_private = [a3 copy];
    v4->_lock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)set_forceFamilyNameFirst:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  [self->_private setForceFamilyNameFirst:v3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)set_forceGivenNameFirst:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  [self->_private setForceGivenNameFirst:v3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)set_ignoresFallbacks:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  [self->_private setIgnoresFallbacks:v3];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSLocale)_locale
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [self->_private locale];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)set_locale:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  [self->_private setLocale:a3];
  if (a3)
  {
    self->__preferredLocalizationForExplicitlySetLocale = [+[NSPersonNameComponentsFormatter _preferredLocalizationFromLocale:](NSPersonNameComponentsFormatter _preferredLocalizationFromLocale:{a3), "copy"}];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSLocale)locale
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [self->_private locale];
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  }

  v4 = v3;

  return v4;
}

- (void)setLocale:(NSLocale *)locale
{
  os_unfair_lock_lock(&self->_lock);
  [self->_private setLocale:locale];
  if (locale)
  {
    self->__preferredLocalizationForExplicitlySetLocale = [+[NSPersonNameComponentsFormatter _preferredLocalizationFromLocale:](NSPersonNameComponentsFormatter _preferredLocalizationFromLocale:{locale), "copy"}];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPhonetic:(BOOL)phonetic
{
  v3 = phonetic;
  os_unfair_lock_lock(&self->_lock);
  [self->_private setPhonetic:v3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setStyle:(NSPersonNameComponentsFormatterStyle)style
{
  os_unfair_lock_lock(&self->_lock);
  [self->_private setStyle:style];

  os_unfair_lock_unlock(&self->_lock);
}

+ (BOOL)__shouldFallbackToGivenNameInitialForAbbreviatedNameFormatFamilyNameOnly
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = __107__NSPersonNameComponentsFormatter___shouldFallbackToGivenNameInitialForAbbreviatedNameFormatFamilyNameOnly__block_invoke;
  v5 = &unk_1E69F2C00;
  v6 = a1;
  if ([a1 __shouldCacheFallbackToGivenNameInitialForAbbreviatedNameFormatFamilyNameOnly])
  {
    if (qword_1ED43F488 != -1)
    {
      dispatch_once(&qword_1ED43F488, &v3);
    }
  }

  else
  {
    v4(&v3);
  }

  return _MergedGlobals_7_2;
}

uint64_t __107__NSPersonNameComponentsFormatter___shouldFallbackToGivenNameInitialForAbbreviatedNameFormatFamilyNameOnly__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  _MergedGlobals_7_2 = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [*(a1 + 32) __preferredLanguages];
  result = [v1 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v10;
    v5 = *MEMORY[0x1E695D9B0];
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v4)
      {
        objc_enumerationMutation(v1);
      }

      v7 = [objc_msgSend(MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:{*(*(&v9 + 1) + 8 * v6)), "objectForKey:", v5}];
      result = [v7 isEqualToString:@"ja"];
      if (result)
      {
        break;
      }

      result = [v7 isEqualToString:@"zh"];
      if (result)
      {
        _MergedGlobals_7_2 = 1;
        return result;
      }

      if (v3 == ++v6)
      {
        result = [v1 countByEnumeratingWithState:&v9 objects:v8 count:16];
        v3 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

+ (id)_formatterWithStyle:(int64_t)a3 options:(unint64_t)a4
{
  v6 = objc_alloc_init(a1);
  [v6 setStyle:a3];
  [v6 setPhonetic:(a4 >> 1) & 1];
  [v6 set_forceFamilyNameFirst:(a4 >> 30) & 1];
  [v6 set_forceGivenNameFirst:(a4 >> 31) & 1];
  return v6;
}

+ (NSString)localizedStringFromPersonNameComponents:(NSPersonNameComponents *)components style:(NSPersonNameComponentsFormatterStyle)nameFormatStyle options:(NSPersonNameComponentsFormatterOptions)nameOptions
{
  if (!components)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:a1 lineNumber:@"NSPersonNameComponentsFormatter.m" description:1712, @"Invalid parameter not satisfying: %@", @"components != nil"];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:a1 lineNumber:@"NSPersonNameComponentsFormatter.m" description:1713, @"Invalid parameter not satisfying: %@", @"[components isKindOfClass:STATIC_CLASS_REF(NSPersonNameComponents)]"];
  }

  v10 = [a1 _formatterWithStyle:nameFormatStyle options:nameOptions];

  return [v10 stringFromPersonNameComponents:components];
}

+ (id)__familyNameFirstOrdering
{
  if (qword_1ED43F498 != -1)
  {
    dispatch_once(&qword_1ED43F498, &__block_literal_global_344_0);
  }

  return qword_1ED43F490;
}

id __60__NSPersonNameComponentsFormatter___familyNameFirstOrdering__block_invoke()
{
  v1[5] = *MEMORY[0x1E69E9840];
  v1[0] = @"namePrefix";
  v1[1] = @"familyName";
  v1[2] = @"givenName";
  v1[3] = @"middleName";
  v1[4] = @"nameSuffix";
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:5];
  qword_1ED43F490 = result;
  return result;
}

- (id)stringForObjectValue:(id)a3
{
  if (!a3 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(NSPersonNameComponentsFormatter *)self stringFromPersonNameComponents:a3];
}

- (NSString)stringFromPersonNameComponents:(NSPersonNameComponents *)components
{
  if (!components)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSPersonNameComponentsFormatter.m" description:1749, @"Invalid parameter not satisfying: %@", @"components != nil"];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSPersonNameComponentsFormatter.m" description:1750, @"Invalid parameter not satisfying: %@", @"[components isKindOfClass:STATIC_CLASS_REF(NSPersonNameComponents)]"];
  }

  result = [+[NSPersonNameComponentsFormatter _styleFormatterForStyle:masterFormatter:](NSPersonNameComponentsFormatter _styleFormatterForStyle:-[NSPersonNameComponentsFormatter style](self masterFormatter:{"style"), self), "stringFromComponents:attributesByRange:", components, 0}];
  if (!result)
  {
    if (qword_1ED43F500 != -1)
    {
      dispatch_once(&qword_1ED43F500, &__block_literal_global_1459);
    }

    if (byte_1ED43F461)
    {
      return &stru_1EEEFDF90;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (NSAttributedString)annotatedStringFromPersonNameComponents:(NSPersonNameComponents *)components
{
  if (!components)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSPersonNameComponentsFormatter.m" description:1763, @"Invalid parameter not satisfying: %@", @"components != nil"];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSPersonNameComponentsFormatter.m" description:1764, @"Invalid parameter not satisfying: %@", @"[components isKindOfClass:STATIC_CLASS_REF(NSPersonNameComponents)]"];
  }

  result = [+[NSPersonNameComponentsFormatter _styleFormatterForStyle:masterFormatter:](NSPersonNameComponentsFormatter _styleFormatterForStyle:-[NSPersonNameComponentsFormatter style](self masterFormatter:{"style"), self), "annotatedStringFromPersonNameComponents:", components}];
  if (!result)
  {
    if (qword_1ED43F500 != -1)
    {
      dispatch_once(&qword_1ED43F500, &__block_literal_global_1459);
    }

    if (byte_1ED43F461 == 1)
    {
      v7 = [[NSAttributedString alloc] initWithString:&stru_1EEEFDF90];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (id)_styleFormatterForStyle:(int64_t)a3 masterFormatter:(id)a4
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 31:
        v4 = off_1E69EED40;
        break;
      case 4:
        v4 = off_1E69EED38;
        break;
      case 3:
        v4 = off_1E69EED68;
        break;
      default:
        return 0;
    }
  }

  else
  {
    v4 = off_1E69EED70;
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = off_1E69EED78;
      }

      else if (a3 != 2)
      {
        return 0;
      }
    }
  }

  v6 = [objc_alloc(*v4) initWithMasterFormatter:a4];

  return v6;
}

+ (void)forEachExistingComponentWithComponents:(id)a3 performBlock:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = +[NSPersonNameComponents _allComponents];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [a3 valueForKeyPath:v11];
          if ([v12 length])
          {
            (*(a4 + 2))(a4, v11, v12);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v15 = +[NSAssertionHandler currentHandler];

    [(NSAssertionHandler *)v15 handleFailureInMethod:a2 object:a1 file:@"NSPersonNameComponentsFormatter.m" lineNumber:1808 description:@"block to perform should not be nil"];
  }
}

+ (BOOL)isKatakana:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __46__NSPersonNameComponentsFormatter_isKatakana___block_invoke;
  v9 = &unk_1E69F2C00;
  v10 = a1;
  if (qword_1ED43F4B8 != -1)
  {
    dispatch_once(&qword_1ED43F4B8, &v6);
  }

  return [a1 __contents:a3 exclusivelyInCharacterSet:{qword_1ED43F4B0, v6, v7, v8, v9, v10, v11}];
}

uint64_t __46__NSPersonNameComponentsFormatter_isKatakana___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) __getCharacterSetWithPattern:@"[:scx=Kana:]"];
  qword_1ED43F4B0 = result;
  return result;
}

+ (id)__thaiConsonantSet
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__NSPersonNameComponentsFormatter___thaiConsonantSet__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = a1;
  if (qword_1ED43F4C8 != -1)
  {
    dispatch_once(&qword_1ED43F4C8, v3);
  }

  return qword_1ED43F4C0;
}

id __53__NSPersonNameComponentsFormatter___thaiConsonantSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) __characterSetWithPattern:@"[กขฃคฅฆงจฉชซฌญฎฏฐฑฒณดตถทธนบปผฝพฟภมยรลวศษสหฬอฮ]"];
  qword_1ED43F4C0 = result;
  return result;
}

+ (id)__characterSetWithPattern:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__34;
  v18 = __Block_byref_object_dispose__34;
  v19 = 0;
  v11 = __61__NSPersonNameComponentsFormatter___characterSetWithPattern___block_invoke;
  v12 = &unk_1E69FA458;
  v13 = &v14;
  v4 = [a3 length];
  CharactersPtr = CFStringGetCharactersPtr(a3);
  if (CharactersPtr)
  {
    (v11)(&v10, CharactersPtr, v4);
  }

  else
  {
    v6 = 2 * v4;
    if ((2 * v4) < 0x101)
    {
      if (v4)
      {
        MEMORY[0x1EEE9AC00](0);
        v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v7, 2 * v4);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
    }

    v21.location = 0;
    v21.length = v4;
    CFStringGetCharacters(a3, v21, v7);
    (v11)(&v10, v7, v4);
    if (v6 >= 0x101)
    {
      free(v7);
    }
  }

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __61__NSPersonNameComponentsFormatter___characterSetWithPattern___block_invoke(uint64_t a1)
{
  uset_openPattern();
  *(*(*(a1 + 32) + 8) + 40) = _CFCreateCharacterSetFromUSet();
  return uset_close();
}

+ (USet)__getCharacterSetWithPattern:(id)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (a3)
  {
    v10 = __64__NSPersonNameComponentsFormatter___getCharacterSetWithPattern___block_invoke;
    v11 = &unk_1E69FA458;
    v12 = &v13;
    v4 = [a3 length];
    CharactersPtr = CFStringGetCharactersPtr(v3);
    if (CharactersPtr)
    {
      (v10)(&v9, CharactersPtr, v4);
    }

    else
    {
      v6 = 2 * v4;
      if ((2 * v4) < 0x101)
      {
        if (v4)
        {
          MEMORY[0x1EEE9AC00](0);
          v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v7, 2 * v4);
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
      }

      v18.location = 0;
      v18.length = v4;
      CFStringGetCharacters(v3, v18, v7);
      (v10)(&v9, v7, v4);
      if (v6 >= 0x101)
      {
        free(v7);
      }
    }

    v3 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  return v3;
}

uint64_t __64__NSPersonNameComponentsFormatter___getCharacterSetWithPattern___block_invoke(uint64_t a1)
{
  result = uset_openPattern();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (BOOL)__contents:(id)a3 exclusivelyInCharacterSet:(USet *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 && [a3 length])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = __72__NSPersonNameComponentsFormatter___contents_exclusivelyInCharacterSet___block_invoke;
    v15 = &unk_1E69FA480;
    v16 = &v18;
    v17 = a4;
    v6 = [a3 length];
    CharactersPtr = CFStringGetCharactersPtr(a3);
    if (CharactersPtr)
    {
      (v14)(v13, CharactersPtr, v6);
    }

    else
    {
      v9 = 2 * v6;
      if ((2 * v6) < 0x101)
      {
        if (v6)
        {
          MEMORY[0x1EEE9AC00](0);
          v10 = &v13[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v10, 2 * v6);
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = malloc_type_malloc(2 * v6, 0x1000040BDFB0063uLL);
      }

      v23.location = 0;
      v23.length = v6;
      CFStringGetCharacters(a3, v23, v10);
      (v14)(v13, v10, v6);
      if (v9 >= 0x101)
      {
        free(v10);
      }
    }

    v8 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t __72__NSPersonNameComponentsFormatter___contents_exclusivelyInCharacterSet___block_invoke(uint64_t a1)
{
  result = uset_containsAllCodePoints();
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

+ (id)__longestComponentFromComponents:(id)a3
{
  v12[4] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__NSPersonNameComponentsFormatter___longestComponentFromComponents___block_invoke;
  v5[3] = &unk_1E69FA4A8;
  v5[4] = v12;
  v5[5] = &v6;
  [a1 forEachExistingComponentWithComponents:a3 performBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v12, 8);
  return v3;
}

unint64_t __68__NSPersonNameComponentsFormatter___longestComponentFromComponents___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 length];
  v6 = *(*(a1 + 32) + 8);
  if (result > *(v6 + 24))
  {
    *(v6 + 24) = result;
    *(*(*(a1 + 40) + 8) + 40) = a3;
  }

  return result;
}

+ (id)__stringByStrippingNonInitialPunctuationFromString:(id)a3
{
  if (qword_1ED43F4D8 != -1)
  {
    dispatch_once(&qword_1ED43F4D8, &__block_literal_global_362_0);
  }

  if (![a3 length])
  {
    return a3;
  }

  if (![a3 rangeOfCharacterFromSet:qword_1ED43F4D0] && v4 != 0)
  {
    return a3;
  }

  v6 = [a3 componentsSeparatedByCharactersInSet:qword_1ED43F4D0];

  return [v6 componentsJoinedByString:&stru_1EEEFDF90];
}

NSCharacterSet *__86__NSPersonNameComponentsFormatter___stringByStrippingNonInitialPunctuationFromString___block_invoke()
{
  result = [+[NSCharacterSet letterCharacterSet](NSCharacterSet invertedSet];
  qword_1ED43F4D0 = result;
  return result;
}

+ (unint64_t)__inferredScriptIndexFromString:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_msgSend(a1 __stringByStrippingNonInitialPunctuationFromString:{a3), "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_1EEEFDF90}];
  v4 = [v3 length];
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - v5;
  v8 = 2 * v7;
  if (v9 > 0x100)
  {
    v6 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
  }

  else
  {
    bzero(v12 - v5, v8);
  }

  [v3 getCharacters:v6 range:{0, objc_msgSend(v3, "length")}];
  v10 = NSOrthographyScriptIndexForCharacters(v6, [v3 length], 0);
  if (v4 >= 0x101)
  {
    free(v6);
  }

  return v10;
}

+ (unint64_t)__inferredScriptIndexForComponents:(id)a3 ignoreUndeterminedComponents:(BOOL)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = +[NSPersonNameComponents _allComponents];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v21;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = [a1 __stringByStrippingNonInitialPunctuationFromString:{objc_msgSend(a3, "valueForKeyPath:", *(*(&v20 + 1) + 8 * i))}];
      if (v13)
      {
        v14 = v13;
        if ([v13 length])
        {
          v15 = [a1 __inferredScriptIndexFromString:v14];
          v16 = v15 == 1 && a4;
          if (v15 && !v16)
          {
            if (v10 == v15 || v10 == 0)
            {
              v10 = v15;
            }

            else
            {
              v10 = 1;
            }
          }
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v20 objects:v19 count:16];
  }

  while (v9);
  return v10;
}

+ (id)__naiveDelimiterForCombinedNameString:(id)a3
{
  if (([a1 __inferredScriptIndexFromString:?] - 2) > 3)
  {
    return @" ";
  }

  if ([a1 isKatakana:a3])
  {
    return @"・";
  }

  return &stru_1EEEFDF90;
}

+ (BOOL)_isCJKScript:(id)a3
{
  v4 = [a3 _scriptDeterminingStringRepresentationWithPhoneticDesired:0];
  v5 = [v4 length];
  if (v5)
  {
    v6 = [a1 __inferredScriptIndexFromString:v4];
    v7 = +[NSPersonNameComponentsFormatter _cjkLanguagesSet];
    v8 = [NSNumber numberWithUnsignedInteger:v6];

    LOBYTE(v5) = [v7 containsObject:v8];
  }

  return v5;
}

+ (id)_cjkLocaleIdentifiers
{
  if (qword_1ED43F4F8 != -1)
  {
    dispatch_once(&qword_1ED43F4F8, &__block_literal_global_376);
  }

  return qword_1ED43F4F0;
}

uint64_t __56__NSPersonNameComponentsFormatter__cjkLocaleIdentifiers__block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ja", @"zh", @"ko", 0}];
  qword_1ED43F4F0 = result;
  return result;
}

+ (BOOL)_currentLocaleIsCJK
{
  v3 = +[NSPersonNameComponentsFormatter __currentLocale];
  v4 = [v3 objectForKey:*MEMORY[0x1E695D9B0]];
  v5 = [a1 _cjkLocaleIdentifiers];

  return [v5 containsObject:v4];
}

- (int64_t)__computedNameOrderForComponents:(id)a3
{
  v5 = [a3 _isEmpty];
  if (a3 && !v5)
  {
    if (![NSPersonNameComponentsFormatter _isCJKScript:a3])
    {
      if ([(NSPersonNameComponentsFormatter *)self _preferredLocalizationForExplicitlySetLocale])
      {
        result = [NSPersonNameComponentsFormatter __nameOrderForLocalization:[(NSPersonNameComponentsFormatter *)self _preferredLocalizationForExplicitlySetLocale] usingNativeOrdering:1];
        if (result)
        {
          goto LABEL_8;
        }
      }

      if (![(NSPersonNameComponentsFormatter *)self _forceFamilyNameFirst])
      {
        if ([(NSPersonNameComponentsFormatter *)self _forceGivenNameFirst])
        {
          result = 1;
        }

        else
        {
          result = +[NSPersonNameComponentsFormatter _defaultDisplayNameOrder];
          if (!result)
          {
            result = [(NSPersonNameComponentsFormatter *)self __localizedNameOrderUsingNativeOrdering:0];
          }
        }

        goto LABEL_8;
      }
    }

    result = 2;
LABEL_8:
    if (result <= 1)
    {
      return 1;
    }

    return result;
  }

  return [(NSPersonNameComponentsFormatter *)self __localizedNameOrderUsingNativeOrdering:1];
}

- (BOOL)__localizedRestrictionExistsForStyle:(int64_t)a3
{
  v4 = [(NSPersonNameComponentsFormatter *)self _preferredLocalizationForExplicitlySetLocale];
  if (!v4)
  {
    v4 = +[NSPersonNameComponentsFormatter _preferredLocalizationForCurrentLocale];
  }

  return [NSPersonNameComponentsFormatter __style:a3 isRestrictedForLocalization:v4];
}

- (BOOL)__localizedRestrictionExistsForShortStyle:(int64_t)a3
{
  v4 = [(NSPersonNameComponentsFormatter *)self _preferredLocalizationForExplicitlySetLocale];
  if (!v4)
  {
    v4 = +[NSPersonNameComponentsFormatter _preferredLocalizationForCurrentLocale];
  }

  return [NSPersonNameComponentsFormatter __shortStyle:a3 isRestrictedForLocalization:v4];
}

- (BOOL)__localizedRestrictionExistsForComponents:(id)a3 ignoreUndeterminedComponents:(BOOL)a4
{
  v5 = [NSPersonNameComponentsFormatter __inferredScriptIndexForComponents:a3 ignoreUndeterminedComponents:a4];
  v6 = [(NSPersonNameComponentsFormatter *)self style];

  return [NSPersonNameComponentsFormatter __style:v6 isRestrictedForScript:v5];
}

+ (BOOL)__shortStyleRestrictionExistsForComponents:(id)a3 shortStyle:(int64_t)a4
{
  v5 = [NSPersonNameComponentsFormatter __inferredScriptIndexForComponents:a3];

  return [NSPersonNameComponentsFormatter __shortStyle:a4 isRestrictedForScript:v5];
}

- (int64_t)__localizedNameOrderUsingNativeOrdering:(BOOL)a3
{
  v3 = a3;
  v4 = [(NSPersonNameComponentsFormatter *)self _preferredLocalizationForExplicitlySetLocale];
  if (!v4)
  {
    v4 = +[NSPersonNameComponentsFormatter _preferredLocalizationForCurrentLocale];
  }

  return [NSPersonNameComponentsFormatter __nameOrderForLocalization:v4 usingNativeOrdering:v3];
}

- (int64_t)__localizedShortNameFormat
{
  v2 = [(NSPersonNameComponentsFormatter *)self _preferredLocalizationForExplicitlySetLocale];
  if (!v2)
  {
    v2 = +[NSPersonNameComponentsFormatter _preferredLocalizationForCurrentLocale];
  }

  return [NSPersonNameComponentsFormatter __shortNameFormatForLocalization:v2];
}

+ (int64_t)_nameOrderWithOverridesForComponents:(id)a3 options:(unint64_t)a4
{
  v5 = [a1 _formatterWithStyle:0 options:a4];

  return [v5 _nameOrderWithOverridesForComponents:a3];
}

+ (id)_localizedDelimiterForComponents:(id)a3 options:(unint64_t)a4
{
  v5 = [a3 _scriptDeterminingStringRepresentationWithPhoneticDesired:(a4 >> 1) & 1];

  return [a1 __naiveDelimiterForCombinedNameString:v5];
}

+ (id)_relevantKeyPathsForStyle:(int64_t)a3 options:(unint64_t)a4
{
  v4 = +[NSPersonNameComponentsFormatter _styleFormatterForStyle:masterFormatter:](NSPersonNameComponentsFormatter, "_styleFormatterForStyle:masterFormatter:", a3, [a1 _formatterWithStyle:a3 options:a4]);

  return [v4 orderedKeysOfInterest];
}

+ (id)_fallbackDescriptorForStyle:(int64_t)a3 options:(unint64_t)a4
{
  v4 = +[NSPersonNameComponentsFormatter _styleFormatterForStyle:masterFormatter:](NSPersonNameComponentsFormatter, "_styleFormatterForStyle:masterFormatter:", a3, [a1 _formatterWithStyle:a3 options:a4]);

  return [v4 fallbackDescriptor];
}

- (NSPersonNameComponents)personNameComponentsFromString:(NSString *)string
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (!string)
  {
    return 0;
  }

  v4[0] = 0;
  if ([(NSPersonNameComponentsFormatter *)self getObjectValue:v4 forString:string errorDescription:0])
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

- (BOOL)getObjectValue:(id *)obj forString:(NSString *)string errorDescription:(NSString *)error
{
  os_unfair_lock_lock(&self->_lock);
  v9 = *(self->_private + 4);
  if (!v9)
  {
    NPNameParserClass = getNPNameParserClass();
    if (!NPNameParserClass)
    {
      goto LABEL_8;
    }

    *(self->_private + 4) = objc_alloc_init(NPNameParserClass);
    v9 = *(self->_private + 4);
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = [v9 personNameComponentsFromString:string];
  if (!v11)
  {
LABEL_8:
    if (!error)
    {
      return 0;
    }

    v13 = [_NSFoundationBundle() localizedStringForKey:@"Person's name could not be detected" value:&stru_1EEEFDF90 table:@"Formatter"];
    result = 0;
    *error = v13;
    return result;
  }

  if (obj)
  {
    *obj = v11;
  }

  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithData:", self->_private}];
  v6 = [self->_private locale];
  if (v6)
  {
    v5[2] = [+[NSPersonNameComponentsFormatter _preferredLocalizationFromLocale:](NSPersonNameComponentsFormatter _preferredLocalizationFromLocale:{v6), "copy"}];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (NSPersonNameComponentsFormatter)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v8 = [NSString stringWithFormat:@"%@ cannot be decoded by non-keyed archivers", objc_opt_class()];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  v5 = -[NSPersonNameComponentsFormatter initWithData:](self, "initWithData:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.nameComponentsFormatterPrivate"]);
  v6 = [v5->_private locale];
  if (v6)
  {
    v5->__preferredLocalizationForExplicitlySetLocale = [+[NSPersonNameComponentsFormatter _preferredLocalizationFromLocale:](NSPersonNameComponentsFormatter _preferredLocalizationFromLocale:{v6), "copy"}];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersonNameComponents cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  os_unfair_lock_lock(&self->_lock);
  [a3 encodeObject:self->_private forKey:@"NS.nameComponentsFormatterPrivate"];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEqualToFormatter:(id)a3
{
  if (!a3 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(_NSPersonNameComponentsFormatterData *)self->_private isEqualToFormatterData:?];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

+ (id)_localizedShortNameForComponents:(id)a3 withStyle:(int64_t)a4 options:(unint64_t)a5
{
  if (!a3)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:a1 lineNumber:@"NSPersonNameComponentsFormatter.m" description:2298, @"Components should not be nil"];
  }

  v9 = -[_NSPersonNameComponentsStyleFormatterShort initWithMasterFormatter:]([_NSPersonNameComponentsStyleFormatterShort alloc], "initWithMasterFormatter:", [a1 _formatterWithStyle:1 options:a5]);
  [(_NSPersonNameComponentsStyleFormatterShort *)v9 setShortNameFormat:a4];
  [(_NSPersonNameComponentsStyleFormatterShort *)v9 setForceShortNameEnabled:1];

  return [(_NSPersonNameComponentsStyleFormatter *)v9 stringFromComponents:a3 attributesByRange:0];
}

+ (id)__initialsForString:(id)a3
{
  v3 = *([a1 performSelector:{+[NSPersonNameComponentsFormatter __initialsCreatorForScript:](NSPersonNameComponentsFormatter, "__initialsCreatorForScript:", +[NSPersonNameComponentsFormatter __inferredScriptIndexFromString:](NSPersonNameComponentsFormatter, "__inferredScriptIndexFromString:"))}] + 16);

  return v3();
}

uint64_t __54__NSPersonNameComponentsFormatter_thaiInitialsCreator__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 rangeOfCharacterFromSet:{+[NSPersonNameComponentsFormatter __thaiConsonantSet](NSPersonNameComponentsFormatter, "__thaiConsonantSet")}];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a2;
  }

  return [a2 substringWithRange:{v3, v4}];
}

uint64_t __57__NSPersonNameComponentsFormatter_tibetanInitialsCreator__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [a2 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__NSPersonNameComponentsFormatter_tibetanInitialsCreator__block_invoke_2;
  v6[3] = &unk_1E69FA4D0;
  v6[4] = a2;
  v6[5] = &v11;
  v6[6] = &v7;
  [a2 enumerateSubstringsInRange:0 options:v3 usingBlock:{514, v6}];
  if (v12[3] <= 2)
  {
    v4 = [a2 substringToIndex:v8[3]];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __57__NSPersonNameComponentsFormatter_tibetanInitialsCreator__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = result;
  if (a4 == 1 && ((result = [*(result + 32) characterAtIndex:?], result == 3853) || result == 3851))
  {
    *a7 = 1;
  }

  else if (++*(*(*(v9 + 40) + 8) + 24) < 3uLL)
  {
    *(*(*(v9 + 48) + 8) + 24) += a4;
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

uint64_t __56__NSPersonNameComponentsFormatter_arabicInitialsCreator__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__34;
  v17 = __Block_byref_object_dispose__34;
  v18 = 0;
  v3 = [a2 length];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__NSPersonNameComponentsFormatter_arabicInitialsCreator__block_invoke_2;
  v12[3] = &unk_1E69F6A68;
  v12[4] = &v13;
  [a2 enumerateSubstringsInRange:0 options:v3 usingBlock:{2, v12}];
  v4 = v14[5];
  v5 = [v14[5] length];
  v6 = v14;
  if (v5)
  {
    v7 = [v14[5] isEqualToString:@"ه"];
    v6 = v14;
    if (v7)
    {
      v8 = @"ه‍";
LABEL_6:
      v6[5] = v8;
      goto LABEL_7;
    }

    v9 = [v14[5] isEqualToString:@"ہ"];
    v6 = v14;
    if (v9)
    {
      v8 = @"ھ";
      goto LABEL_6;
    }
  }

LABEL_7:
  v10 = v6[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t __56__NSPersonNameComponentsFormatter_arabicInitialsCreator__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a7 = 1;
  return result;
}

+ (id)_preferredLocalizationFromLocale:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(&unk_1EEF5AED0 objectForKeyedSubscript:{@"localeInfo", "allKeys"}];
  v6[0] = [a3 localeIdentifier];
  return -[NSArray objectAtIndexedSubscript:](+[NSBundle preferredLocalizationsFromArray:forPreferences:](NSBundle, "preferredLocalizationsFromArray:forPreferences:", v4, [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1]), "objectAtIndexedSubscript:", 0);
}

+ (id)__supportedNameDefaultsFromLocalization:(id)a3
{
  v4 = [&unk_1EEF5B830 objectForKeyedSubscript:@"localeInfo"];

  return [v4 objectForKeyedSubscript:a3];
}

+ (id)__supportedScriptDefaultsFromScriptName:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [&unk_1EEF5C190 objectForKeyedSubscript:@"scriptInfo"];

  return [v4 objectForKeyedSubscript:a3];
}

+ (int64_t)__nameOrderForLocalization:(id)a3 usingNativeOrdering:(BOOL)a4
{
  v5 = [a1 __supportedNameDefaultsFromLocalization:a3];
  v6 = v5;
  if (a4 || (v7 = [v5 objectForKeyedSubscript:@"nameOrderForNonNativeScripts"]) == 0)
  {
    v7 = [v6 objectForKeyedSubscript:@"nameOrder"];
  }

  return [v7 integerValue];
}

+ (int64_t)__abbreviatedNameFormatForString:(id)a3
{
  if (![a3 length])
  {
    return 6;
  }

  result = [objc_msgSend(objc_msgSend(a1 __supportedScriptDefaultsFromScriptName:{objc_msgSend(a1, "__scriptIdentifierFromIndex:", objc_msgSend(a1, "__inferredScriptIndexFromString:", a3))), "objectForKeyedSubscript:", @"abbreviatedNameStyle", "integerValue"}];
  if (!result)
  {
    return 5;
  }

  return result;
}

+ (int64_t)__abbreviatedNameFormatForPersonNameComponents:(id)a3
{
  v5 = [a1 __abbreviatedNameFormatForString:{objc_msgSend(a3, "givenName")}];
  v6 = [a1 __abbreviatedNameFormatForString:{objc_msgSend(a3, "familyName")}];
  if (v6 != v5)
  {
    if (v5 == 6 || v6 == 2 || v6 == 4)
    {
      return v6;
    }

    else if (v6 != 6 && (v5 & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      if (v6 == 3)
      {
        return 4;
      }

      else if (v6 == 5)
      {
        if (((v5 - 2) & 0xFFFFFFFFFFFFFFFDLL) != 0)
        {
          return 2;
        }

        else
        {
          return 6;
        }
      }

      else
      {
        return 2;
      }
    }
  }

  return v5;
}

+ (int64_t)__shortNameFormatForLocalization:(id)a3
{
  v3 = [objc_msgSend(a1 __supportedNameDefaultsFromLocalization:{a3), "objectForKeyedSubscript:", @"shortNameStyle"}];

  return [v3 integerValue];
}

+ (BOOL)__style:(int64_t)a3 isRestrictedForLocalization:(id)a4
{
  v6 = [objc_msgSend(a1 __supportedNameDefaultsFromLocalization:{a4), "objectForKeyedSubscript:", @"styleRestrictions"}];
  v7 = [a1 __stringValueForStyle:a3];
  return v6 && [v6 objectForKeyedSubscript:v7] != 0;
}

+ (BOOL)__style:(int64_t)a3 isRestrictedForScript:(unint64_t)a4
{
  v6 = [objc_msgSend(a1 __supportedScriptDefaultsFromScriptName:{objc_msgSend(a1, "__scriptIdentifierFromIndex:", a4)), "objectForKeyedSubscript:", @"styleRestrictions"}];
  v7 = [a1 __stringValueForStyle:a3];
  return v6 && [v6 objectForKeyedSubscript:v7] != 0;
}

+ (BOOL)__shortStyle:(int64_t)a3 isRestrictedForScript:(unint64_t)a4
{
  v6 = [objc_msgSend(a1 __supportedScriptDefaultsFromScriptName:{objc_msgSend(a1, "__scriptIdentifierFromIndex:", a4)), "objectForKeyedSubscript:", @"shortStyleRestrictions"}];
  v7 = [a1 __stringValueForShortStyle:a3];
  if (v7)
  {
    LOBYTE(v7) = [v6 objectForKeyedSubscript:v7] != 0;
  }

  return v7;
}

+ (BOOL)__shortStyle:(int64_t)a3 isRestrictedForLocalization:(id)a4
{
  v6 = [objc_msgSend(a1 __supportedNameDefaultsFromLocalization:{a4), "objectForKeyedSubscript:", @"shortStyleRestrictions"}];
  v7 = [a1 __stringValueForShortStyle:a3];
  return v6 && [v6 objectForKeyedSubscript:v7] != 0;
}

+ (SEL)__initialsCreatorForScript:(unint64_t)a3
{
  v3 = [objc_msgSend(a1 __supportedScriptDefaultsFromScriptName:{objc_msgSend(a1, "__scriptIdentifierFromIndex:", a3)), "objectForKeyedSubscript:", @"initialsCreator"}];
  if (!v3)
  {
    return sel_westernInitialsCreator;
  }

  return NSSelectorFromString(v3);
}

+ (id)__stringValueForStyle:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E69FA510[a3];
  }
}

+ (id)__stringValueForShortStyle:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E69FA538[a3];
  }
}

@end