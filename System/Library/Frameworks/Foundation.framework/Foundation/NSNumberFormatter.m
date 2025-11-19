@interface NSNumberFormatter
+ (NSString)localizedStringFromNumber:(NSNumber *)num numberStyle:(NSNumberFormatterStyle)nstyle;
+ (void)initialize;
+ (void)setDefaultFormatterBehavior:(NSNumberFormatterBehavior)behavior;
- (BOOL)_hasSetCurrencyCode;
- (BOOL)_hasSetCurrencySymbol;
- (BOOL)_hasSetInternationalCurrencySymbol;
- (BOOL)_mayDecorateAttributedStringForObjectValue:(id)a3;
- (BOOL)_usesCharacterDirection;
- (BOOL)allowsFloats;
- (BOOL)alwaysShowsDecimalSeparator;
- (BOOL)generatesDecimalNumbers;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (BOOL)isLenient;
- (BOOL)isPartialStringValidationEnabled;
- (BOOL)usesGroupingSeparator;
- (BOOL)usesSignificantDigits;
- (NSDictionary)textAttributesForNegativeInfinity;
- (NSDictionary)textAttributesForNegativeValues;
- (NSDictionary)textAttributesForNil;
- (NSDictionary)textAttributesForNotANumber;
- (NSDictionary)textAttributesForPositiveInfinity;
- (NSDictionary)textAttributesForPositiveValues;
- (NSDictionary)textAttributesForZero;
- (NSFormattingContext)formattingContext;
- (NSLocale)locale;
- (NSNumber)maximum;
- (NSNumber)minimum;
- (NSNumber)multiplier;
- (NSNumber)numberFromString:(NSString *)string;
- (NSNumber)roundingIncrement;
- (NSNumberFormatter)init;
- (NSNumberFormatter)initWithCoder:(id)a3;
- (NSNumberFormatterPadPosition)paddingPosition;
- (NSNumberFormatterRoundingMode)roundingMode;
- (NSNumberFormatterStyle)numberStyle;
- (NSString)currencyCode;
- (NSString)currencyDecimalSeparator;
- (NSString)currencyGroupingSeparator;
- (NSString)currencySymbol;
- (NSString)decimalSeparator;
- (NSString)exponentSymbol;
- (NSString)groupingSeparator;
- (NSString)internationalCurrencySymbol;
- (NSString)minusSign;
- (NSString)negativeFormat;
- (NSString)negativeInfinitySymbol;
- (NSString)negativePrefix;
- (NSString)negativeSuffix;
- (NSString)nilSymbol;
- (NSString)notANumberSymbol;
- (NSString)paddingCharacter;
- (NSString)perMillSymbol;
- (NSString)percentSymbol;
- (NSString)plusSign;
- (NSString)positiveFormat;
- (NSString)positiveInfinitySymbol;
- (NSString)positivePrefix;
- (NSString)positiveSuffix;
- (NSString)stringFromNumber:(NSNumber *)number;
- (NSString)zeroSymbol;
- (NSUInteger)formatWidth;
- (NSUInteger)groupingSize;
- (NSUInteger)maximumFractionDigits;
- (NSUInteger)maximumIntegerDigits;
- (NSUInteger)maximumSignificantDigits;
- (NSUInteger)minimumFractionDigits;
- (NSUInteger)minimumIntegerDigits;
- (NSUInteger)minimumSignificantDigits;
- (NSUInteger)secondaryGroupingSize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringForObjectValue:(id)a3;
- (int64_t)_cacheGenerationCount;
- (int64_t)minimumGroupingDigits;
- (void)_clearFormatter;
- (void)_regenerateFormatter;
- (void)_reset;
- (void)_setUsesCharacterDirection:(BOOL)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)getFormatter;
- (void)receiveObservedValue:(id)a3;
- (void)setAllowsFloats:(BOOL)allowsFloats;
- (void)setAlwaysShowsDecimalSeparator:(BOOL)alwaysShowsDecimalSeparator;
- (void)setCurrencyCode:(NSString *)currencyCode;
- (void)setCurrencyDecimalSeparator:(NSString *)currencyDecimalSeparator;
- (void)setCurrencyGroupingSeparator:(NSString *)currencyGroupingSeparator;
- (void)setCurrencySymbol:(NSString *)currencySymbol;
- (void)setDecimalSeparator:(NSString *)decimalSeparator;
- (void)setExponentSymbol:(NSString *)exponentSymbol;
- (void)setFormatWidth:(NSUInteger)formatWidth;
- (void)setFormattingContext:(NSFormattingContext)formattingContext;
- (void)setGeneratesDecimalNumbers:(BOOL)generatesDecimalNumbers;
- (void)setGroupingSeparator:(NSString *)groupingSeparator;
- (void)setGroupingSize:(NSUInteger)groupingSize;
- (void)setInternationalCurrencySymbol:(NSString *)internationalCurrencySymbol;
- (void)setLenient:(BOOL)lenient;
- (void)setLocale:(NSLocale *)locale;
- (void)setMaximum:(NSNumber *)maximum;
- (void)setMaximumFractionDigits:(NSUInteger)maximumFractionDigits;
- (void)setMaximumIntegerDigits:(NSUInteger)maximumIntegerDigits;
- (void)setMaximumSignificantDigits:(NSUInteger)maximumSignificantDigits;
- (void)setMinimum:(NSNumber *)minimum;
- (void)setMinimumFractionDigits:(NSUInteger)minimumFractionDigits;
- (void)setMinimumGroupingDigits:(int64_t)a3;
- (void)setMinimumIntegerDigits:(NSUInteger)minimumIntegerDigits;
- (void)setMinimumSignificantDigits:(NSUInteger)minimumSignificantDigits;
- (void)setMinusSign:(NSString *)minusSign;
- (void)setMultiplier:(NSNumber *)multiplier;
- (void)setNegativeFormat:(NSString *)negativeFormat;
- (void)setNegativeInfinitySymbol:(NSString *)negativeInfinitySymbol;
- (void)setNegativePrefix:(NSString *)negativePrefix;
- (void)setNegativeSuffix:(NSString *)negativeSuffix;
- (void)setNilSymbol:(NSString *)nilSymbol;
- (void)setNotANumberSymbol:(NSString *)notANumberSymbol;
- (void)setNumberStyle:(NSNumberFormatterStyle)numberStyle;
- (void)setPaddingCharacter:(NSString *)paddingCharacter;
- (void)setPaddingPosition:(NSNumberFormatterPadPosition)paddingPosition;
- (void)setPartialStringValidationEnabled:(BOOL)partialStringValidationEnabled;
- (void)setPerMillSymbol:(NSString *)perMillSymbol;
- (void)setPercentSymbol:(NSString *)percentSymbol;
- (void)setPlusSign:(NSString *)plusSign;
- (void)setPositiveFormat:(NSString *)positiveFormat;
- (void)setPositiveInfinitySymbol:(NSString *)positiveInfinitySymbol;
- (void)setPositivePrefix:(NSString *)positivePrefix;
- (void)setPositiveSuffix:(NSString *)positiveSuffix;
- (void)setRoundingIncrement:(NSNumber *)roundingIncrement;
- (void)setRoundingMode:(NSNumberFormatterRoundingMode)roundingMode;
- (void)setSecondaryGroupingSize:(NSUInteger)secondaryGroupingSize;
- (void)setTextAttributesForNegativeInfinity:(NSDictionary *)textAttributesForNegativeInfinity;
- (void)setTextAttributesForNegativeValues:(NSDictionary *)textAttributesForNegativeValues;
- (void)setTextAttributesForNil:(NSDictionary *)textAttributesForNil;
- (void)setTextAttributesForNotANumber:(NSDictionary *)textAttributesForNotANumber;
- (void)setTextAttributesForPositiveInfinity:(NSDictionary *)textAttributesForPositiveInfinity;
- (void)setTextAttributesForPositiveValues:(NSDictionary *)textAttributesForPositiveValues;
- (void)setTextAttributesForZero:(NSDictionary *)textAttributesForZero;
- (void)setUsesGroupingSeparator:(BOOL)usesGroupingSeparator;
- (void)setUsesSignificantDigits:(BOOL)usesSignificantDigits;
- (void)setZeroSymbol:(NSString *)zeroSymbol;
@end

@implementation NSNumberFormatter

- (void)_regenerateFormatter
{
  if (self->_formatter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  self->_counter = _localeNotificationCount();
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"locale"];
  v4 = [(NSMutableDictionary *)self->_attributes objectForKey:@"numberStyle"];
  v5 = v4;
  v6 = *MEMORY[0x1E695E4A8];
  if (v3)
  {
    if (v4)
    {
LABEL_5:
      v7 = [v5 integerValue];
      goto LABEL_8;
    }
  }

  else
  {
    v3 = [MEMORY[0x1E695DF58] currentLocale];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  v7 = kCFNumberFormatterNoStyle;
LABEL_8:
  v8 = CFNumberFormatterCreate(v6, v3, v7);
  self->_formatter = v8;
  if (!v8)
  {
    return;
  }

  v9 = [(NSMutableDictionary *)self->_attributes objectForKey:@"positiveFormat"];
  v10 = [(NSMutableDictionary *)self->_attributes objectForKey:@"negativeFormat"];
  v11 = v10;
  if (v9)
  {
    if (!v10 || ([v10 isEqualToString:v9] & 1) != 0)
    {
      formatter = self->_formatter;
      v13 = v9;
LABEL_19:
      CFNumberFormatterSetFormat(formatter, v13);
      goto LABEL_20;
    }

    v15 = [[NSString alloc] initWithFormat:@"%@;%@", v9, v11];
    CFNumberFormatterSetFormat(self->_formatter, v15);
  }

  else if (v10)
  {
    v14 = [-[__CFString componentsSeparatedByString:](CFNumberFormatterGetFormat(self->_formatter) componentsSeparatedByString:{@";", "mutableCopy"}];
    if ([v14 count] > 1)
    {
      [v14 replaceObjectAtIndex:1 withObject:v11];
    }

    else
    {
      [v14 addObject:v11];
    }

    v13 = [v14 componentsJoinedByString:@";"];
    formatter = self->_formatter;
    goto LABEL_19;
  }

LABEL_20:
  v16 = [(NSMutableDictionary *)self->_attributes objectForKey:@"alwaysShowsDecimalSeparator"];
  if (v16)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E740], v16);
  }

  v17 = [(NSMutableDictionary *)self->_attributes objectForKey:@"decimalSeparator"];
  if (v17)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E768], v17);
  }

  v18 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencyDecimalSeparator"];
  if (v18)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E750], v18);
  }

  v19 = [(NSMutableDictionary *)self->_attributes objectForKey:@"usesGroupingSeparator"];
  if (v19)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E850], v19);
  }

  v20 = [(NSMutableDictionary *)self->_attributes objectForKey:@"zeroSymbol"];
  if (v20)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E868], v20);
  }

  v21 = [(NSMutableDictionary *)self->_attributes objectForKey:@"notANumberSymbol"];
  if (v21)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E7E8], v21);
  }

  v22 = [(NSMutableDictionary *)self->_attributes objectForKey:@"groupingSeparator"];
  if (v22)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E780], v22);
  }

  v23 = [(NSMutableDictionary *)self->_attributes objectForKey:@"positivePrefix"];
  if (v23)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E828], v23);
  }

  v24 = [(NSMutableDictionary *)self->_attributes objectForKey:@"positiveSuffix"];
  if (v24)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E830], v24);
  }

  v25 = [(NSMutableDictionary *)self->_attributes objectForKey:@"negativePrefix"];
  if (v25)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E7F0], v25);
  }

  v26 = [(NSMutableDictionary *)self->_attributes objectForKey:@"negativeSuffix"];
  if (v26)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E7F8], v26);
  }

  v27 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencyCode"];
  if (v27)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E748], v27);
  }

  v28 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencySymbol"];
  if (v28)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E760], v28);
  }

  v29 = [(NSMutableDictionary *)self->_attributes objectForKey:@"internationalCurrencySymbol"];
  if (v29)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E790], v29);
  }

  v30 = [(NSMutableDictionary *)self->_attributes objectForKey:@"percentSymbol"];
  if (v30)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E818], v30);
  }

  v31 = [(NSMutableDictionary *)self->_attributes objectForKey:@"perMillSymbol"];
  if (v31)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E810], v31);
  }

  v32 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minusSign"];
  if (v32)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E7D8], v32);
  }

  v33 = [(NSMutableDictionary *)self->_attributes objectForKey:@"plusSign"];
  if (v33)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E820], v33);
  }

  v34 = [(NSMutableDictionary *)self->_attributes objectForKey:@"exponentSymbol"];
  if (v34)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E770], v34);
  }

  v35 = [(NSMutableDictionary *)self->_attributes objectForKey:@"groupingSize"];
  if (v35)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E788], v35);
  }

  v36 = [(NSMutableDictionary *)self->_attributes objectForKey:@"secondaryGroupingSize"];
  if (v36)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E848], v36);
  }

  v37 = [(NSMutableDictionary *)self->_attributes objectForKey:@"formatWidth"];
  if (v37)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E778], v37);
  }

  v38 = [(NSMutableDictionary *)self->_attributes objectForKey:@"multiplier"];
  if (v38)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E7E0], v38);
  }

  v39 = [(NSMutableDictionary *)self->_attributes objectForKey:@"paddingCharacter"];
  if (v39)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E800], v39);
  }

  v40 = [(NSMutableDictionary *)self->_attributes objectForKey:@"paddingPosition"];
  if (v40)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E808], v40);
  }

  v41 = [(NSMutableDictionary *)self->_attributes objectForKey:@"roundingMode"];
  if (v41)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E840], v41);
  }

  v42 = [(NSMutableDictionary *)self->_attributes objectForKey:@"roundingIncrement"];
  if (v42)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E838], v42);
  }

  v43 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumIntegerDigits"];
  if (v43)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E7C8], v43);
  }

  v44 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumIntegerDigits"];
  if (v44)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E7A8], v44);
  }

  v45 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumFractionDigits"];
  if (v45)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E7B8], v45);
  }

  v46 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumFractionDigits"];
  if (v46)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E7A0], v46);
  }

  v47 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencyGroupingSeparator"];
  if (v47)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E758], v47);
  }

  v48 = [(NSMutableDictionary *)self->_attributes objectForKey:@"lenient"];
  if (v48)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E798], v48);
  }

  v49 = [(NSMutableDictionary *)self->_attributes objectForKey:@"usesSignificantDigits"];
  if (v49)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E858], v49);
  }

  v50 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumSignificantDigits"];
  if (v50)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E7D0], v50);
  }

  v51 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumSignificantDigits"];
  if (v51)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E7B0], v51);
  }

  v52 = [(NSMutableDictionary *)self->_attributes objectForKey:@"usesCharacterDirection"];
  if (v52)
  {
    CFNumberFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E860], v52);
  }

  v53 = [(NSMutableDictionary *)self->_attributes objectForKey:@"formattingContext"];
  if (v53)
  {
    v54 = v53;
    if ([v53 intValue] != -1)
    {
      CFNumberFormatterSetProperty(self->_formatter, @"kCFNumberFormatterFormattingContextKey", v54);
    }
  }

  v55 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumGroupingDigits"];
  if (v55)
  {
    v56 = v55;
    v57 = self->_formatter;
    v58 = *MEMORY[0x1E695E7C0];

    CFNumberFormatterSetProperty(v57, v58, v56);
  }
}

+ (void)initialize
{
  if (!__NSNumberFormatterDefaultBehavior)
  {
    [a1 setDefaultFormatterBehavior:0];
  }
}

- (NSNumberFormatter)init
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (objc_lookUpClass("ChartNumberFormatter") && [@"com.apple.Keynote" isEqual:{-[NSBundle bundleIdentifier](+[NSBundle mainBundle](NSBundle, "mainBundle"), "bundleIdentifier")}])
  {
    v3 = objc_opt_self();
    v4 = sel_registerName("__Keynote_NOOP");
    MethodImplementation = class_getMethodImplementation(v3, v4);
    v6 = objc_opt_self();
    v7 = sel_registerName("_getNegative");
    InstanceMethod = class_getInstanceMethod(v6, v7);
    if (InstanceMethod)
    {
      method_setImplementation(InstanceMethod, MethodImplementation);
    }

    v9 = objc_opt_self();
    v10 = sel_registerName("_setNegativeFormat:");
    v11 = class_getInstanceMethod(v9, v10);
    if (v11)
    {
      method_setImplementation(v11, MethodImplementation);
    }

    v12 = objc_opt_self();
    v13 = sel_registerName("_getPositive");
    v14 = class_getInstanceMethod(v12, v13);
    if (v14)
    {
      method_setImplementation(v14, MethodImplementation);
    }

    v15 = objc_opt_self();
    v16 = sel_registerName("_setPositiveFormat:");
    v17 = class_getInstanceMethod(v15, v16);
    if (v17)
    {
      method_setImplementation(v17, MethodImplementation);
    }

    v18 = objc_opt_self();
    v19 = sel_registerName("setNegativeFormat:");
    v20 = class_getMethodImplementation(v18, v19);
    v21 = objc_lookUpClass("ChartNumberFormatter");
    v22 = sel_registerName("setNegativeFormat:");
    v23 = class_getInstanceMethod(v21, v22);
    if (v23)
    {
      method_setImplementation(v23, v20);
    }

    v24 = objc_opt_self();
    v25 = sel_registerName("setPositiveFormat:");
    v26 = class_getMethodImplementation(v24, v25);
    v27 = objc_lookUpClass("ChartNumberFormatter");
    v28 = sel_registerName("setPositiveFormat:");
    v29 = class_getInstanceMethod(v27, v28);
    if (v29)
    {
      method_setImplementation(v29, v26);
    }
  }

  v33.receiver = self;
  v33.super_class = NSNumberFormatter;
  v30 = [(NSNumberFormatter *)&v33 init];
  if (v30)
  {
    v30->_lock = objc_alloc_init(NSRecursiveLock);
    v31 = [objc_allocWithZone(MEMORY[0x1E695DF90]) initWithCapacity:20];
    v30->_attributes = v31;
    -[NSMutableDictionary setValue:forKey:](v31, "setValue:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_opt_class() defaultFormatterBehavior]), @"formatterBehavior");
    [(NSNumberFormatter *)v30 setNilSymbol:&stru_1EEEFDF90];
    v34[0] = 0x221E002D221E002BLL;
    [(NSNumberFormatter *)v30 setPositiveInfinitySymbol:[NSString stringWithCharacters:v34 length:2]];
    [(NSNumberFormatter *)v30 setNegativeInfinitySymbol:[NSString stringWithCharacters:v34 + 4 length:2]];
    [(NSNumberFormatter *)v30 setAllowsFloats:1];
    [(NSNumberFormatter *)v30 _clearFormatter];
  }

  return v30;
}

- (void)_clearFormatter
{
  formatter = self->_formatter;
  if (formatter)
  {
    CFRelease(formatter);
  }

  self->_formatter = 0;
  ++self->_cacheGeneration;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  formatter = self->_formatter;
  if (formatter)
  {
    CFRelease(formatter);
  }

  v4.receiver = self;
  v4.super_class = NSNumberFormatter;
  [(NSNumberFormatter *)&v4 dealloc];
}

- (NSString)zeroSymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"zeroSymbol"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E868];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)negativeInfinitySymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"negativeInfinitySymbol"];
  if (!v3)
  {
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)nilSymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"nilSymbol"];
  if (!v3)
  {
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)positiveInfinitySymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"positiveInfinitySymbol"];
  if (!v3)
  {
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (BOOL)allowsFloats
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [-[NSMutableDictionary objectForKey:](self->_attributes objectForKey:{@"allowsFloats", "BOOLValue"}];
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (NSString)groupingSeparator
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"groupingSeparator"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E780];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)decimalSeparator
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"decimalSeparator"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E768];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSLocale)locale
{
  [(NSRecursiveLock *)self->_lock lock];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"locale"];
  if (!v3)
  {
    formatter = self->_formatter;
    if (formatter || ([(NSNumberFormatter *)self _regenerateFormatter], (formatter = self->_formatter) != 0))
    {
      Locale = CFNumberFormatterGetLocale(formatter);
    }

    else
    {
      Locale = [MEMORY[0x1E695DF58] currentLocale];
    }

    v3 = Locale;
  }

  v6 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSUInteger)maximumFractionDigits
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumFractionDigits"];
  if (v3)
  {
LABEL_2:
    v4 = [v3 integerValue];
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E7A0];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v4 = *v6;
  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v4)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v4 = 0;
      goto LABEL_3;
    }

    v3 = CFNumberFormatterCopyProperty(formatter, v4);
    goto LABEL_2;
  }

LABEL_3:
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (NSString)currencyGroupingSeparator
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencyGroupingSeparator"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E758];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)currencyDecimalSeparator
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencyDecimalSeparator"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E750];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (BOOL)usesGroupingSeparator
{
  [(NSRecursiveLock *)self->_lock lock];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"usesGroupingSeparator"];
  v4 = [v3 BOOLValue];
  if (!v3)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
      formatter = self->_formatter;
      if (!formatter)
      {
        v6 = 0;
        goto LABEL_8;
      }
    }

    v4 = [CFNumberFormatterCopyProperty(formatter *MEMORY[0x1E695E850])];
  }

  v6 = v4;
LABEL_8:
  [(NSRecursiveLock *)self->_lock unlock];
  return v6;
}

- (NSNumberFormatterStyle)numberStyle
{
  [(NSRecursiveLock *)self->_lock lock];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"numberStyle"];
  Style = [v3 integerValue];
  if (!v3)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
      formatter = self->_formatter;
      if (!formatter)
      {
        v6 = NSNumberFormatterNoStyle;
        goto LABEL_8;
      }
    }

    Style = CFNumberFormatterGetStyle(formatter);
  }

  v6 = Style;
LABEL_8:
  [(NSRecursiveLock *)self->_lock unlock];
  return v6;
}

- (NSUInteger)groupingSize
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"groupingSize"];
  if (v3)
  {
LABEL_2:
    v4 = [v3 integerValue];
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E788];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v4 = *v6;
  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v4)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v4 = 0;
      goto LABEL_3;
    }

    v3 = CFNumberFormatterCopyProperty(formatter, v4);
    goto LABEL_2;
  }

LABEL_3:
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (NSUInteger)secondaryGroupingSize
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"secondaryGroupingSize"];
  if (v3)
  {
LABEL_2:
    v4 = [v3 integerValue];
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E848];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v4 = *v6;
  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v4)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v4 = 0;
      goto LABEL_3;
    }

    v3 = CFNumberFormatterCopyProperty(formatter, v4);
    goto LABEL_2;
  }

LABEL_3:
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (BOOL)usesSignificantDigits
{
  [(NSRecursiveLock *)self->_lock lock];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"usesSignificantDigits"];
  v4 = v3;
  if (self->_formatter)
  {
    if (v3)
    {
LABEL_5:
      v5 = v4;
      goto LABEL_9;
    }
  }

  else
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  formatter = self->_formatter;
  if (!formatter)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = CFNumberFormatterCopyProperty(formatter, *MEMORY[0x1E695E858]);
LABEL_9:
  v7 = [v5 BOOLValue];
LABEL_10:
  [(NSRecursiveLock *)self->_lock unlock];
  return v7;
}

- (NSUInteger)maximumSignificantDigits
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumSignificantDigits"];
  if (v3)
  {
LABEL_2:
    v4 = [v3 integerValue];
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E7B0];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v4 = *v6;
  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v4)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v4 = 0;
      goto LABEL_3;
    }

    v3 = CFNumberFormatterCopyProperty(formatter, v4);
    goto LABEL_2;
  }

LABEL_3:
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (NSUInteger)maximumIntegerDigits
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumIntegerDigits"];
  if (v3)
  {
LABEL_2:
    v4 = [v3 integerValue];
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E7A8];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v4 = *v6;
  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v4)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v4 = 0;
      goto LABEL_3;
    }

    v3 = CFNumberFormatterCopyProperty(formatter, v4);
    goto LABEL_2;
  }

LABEL_3:
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (NSUInteger)minimumFractionDigits
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumFractionDigits"];
  if (v3)
  {
LABEL_2:
    v4 = [v3 integerValue];
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E7B8];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v4 = *v6;
  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v4)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v4 = 0;
      goto LABEL_3;
    }

    v3 = CFNumberFormatterCopyProperty(formatter, v4);
    goto LABEL_2;
  }

LABEL_3:
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (NSNumberFormatterRoundingMode)roundingMode
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"roundingMode"];
  if (v3)
  {
LABEL_2:
    v4 = [v3 integerValue];
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E840];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v4 = *v6;
  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v4)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v4 = 0;
      goto LABEL_3;
    }

    v3 = CFNumberFormatterCopyProperty(formatter, v4);
    goto LABEL_2;
  }

LABEL_3:
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (NSFormattingContext)formattingContext
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"formattingContext"];
  v4 = [v3 intValue];
  if (!v3)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
      formatter = self->_formatter;
    }

    v4 = [CFNumberFormatterCopyProperty(formatter @"kCFNumberFormatterFormattingContextKey")];
  }

  v6 = v4;
  [(NSRecursiveLock *)self->_lock unlock];
  if (v6 > 257)
  {
    switch(v6)
    {
      case 258:
        return 4;
      case 259:
        return 3;
      case 260:
        return 2;
      default:
        return 0;
    }
  }

  else
  {
    if (v6 != -1)
    {
      if (v6 == 257)
      {
        return 5;
      }

      return 0;
    }

    return 1;
  }
}

- (void)getFormatter
{
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  formatter = self->_formatter;
  if (!formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
    formatter = self->_formatter;
  }

  return MEMORY[0x1EEDB8380](formatter);
}

- (NSNumber)maximum
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximum"];
  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSNumber)minimum
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimum"];
  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (BOOL)generatesDecimalNumbers
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"generatesDecimalNumbers"];
  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

+ (void)setDefaultFormatterBehavior:(NSNumberFormatterBehavior)behavior
{
  v3 = NSNumberFormatterBehavior10_4;
  if (behavior)
  {
    v3 = behavior;
  }

  __NSNumberFormatterDefaultBehavior = v3;
}

- (void)_reset
{
  v4[1] = *MEMORY[0x1E69E9840];

  v3 = [objc_allocWithZone(MEMORY[0x1E695DF90]) initWithCapacity:20];
  self->_attributes = v3;
  -[NSMutableDictionary setValue:forKey:](v3, "setValue:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_opt_class() defaultFormatterBehavior]), @"formatterBehavior");
  [(NSNumberFormatter *)self setNilSymbol:&stru_1EEEFDF90];
  v4[0] = 0x221E002D221E002BLL;
  [(NSNumberFormatter *)self setPositiveInfinitySymbol:[NSString stringWithCharacters:v4 length:2]];
  [(NSNumberFormatter *)self setNegativeInfinitySymbol:[NSString stringWithCharacters:v4 + 4 length:2]];
  [(NSNumberFormatter *)self setAllowsFloats:1];
  [(NSNumberFormatter *)self _clearFormatter];
}

- (id)copyWithZone:(_NSZone *)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5[1] setDictionary:self->_attributes];
  [(NSRecursiveLock *)self->_lock unlock];
  [v5 _clearFormatter];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSNumberFormatter;
  [(NSFormatter *)&v5 encodeWithCoder:?];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSNumberFormatters cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  [(NSRecursiveLock *)self->_lock lock];
  [a3 encodeObject:self->_attributes forKey:@"NS.attributes"];
  [(NSRecursiveLock *)self->_lock unlock];
}

- (NSNumberFormatter)initWithCoder:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSNumberFormatter;
  v4 = [(NSFormatter *)&v10 initWithCoder:?];
  if (v4)
  {
    v4->_lock = objc_alloc_init(NSRecursiveLock);
    if (([a3 allowsKeyedCoding] & 1) == 0)
    {

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSNumberFormatters cannot be decoded by non-keyed archivers" userInfo:0]);
    }

    v5 = [a3 decodeObjectForKey:@"NS.attributes"];
    v4->_attributes = v5;
    v6 = [-[NSMutableDictionary objectForKey:](v5 objectForKey:{@"formatterBehavior", "integerValue"}];
    if (v6 != 1040)
    {
      attributes = v4->_attributes;
      if (v6)
      {
        v8 = 1040;
      }

      else
      {
        v8 = [objc_opt_class() defaultFormatterBehavior];
      }

      [(NSMutableDictionary *)attributes setValue:[NSNumber forKey:"numberWithInteger:" numberWithInteger:v8], @"formatterBehavior"];
    }

    v4->_behavior = [-[NSMutableDictionary objectForKey:](v4->_attributes objectForKey:{@"formatterBehavior", "integerValue"}];
    [(NSNumberFormatter *)v4 _clearFormatter];
  }

  return v4;
}

- (id)stringForObjectValue:(id)a3
{
  if (a3)
  {
    if ((_NSIsNSNumber() & 1) == 0)
    {
      return 0;
    }

    [(NSRecursiveLock *)self->_lock lock];
    [a3 doubleValue];
    v6 = v5;
    v7 = __fpclassifyd(v5);
    if (v7 > 2)
    {
      if (v7 != 3 && v7 != 5)
      {
        goto LABEL_18;
      }

      v8 = [(NSNumberFormatter *)self zeroSymbol];
    }

    else if (v7 == 1)
    {
      v8 = [(NSNumberFormatter *)self notANumberSymbol];
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_18;
      }

      if ((*&v6 & 0x8000000000000000) != 0)
      {
        v8 = [(NSNumberFormatter *)self negativeInfinitySymbol];
      }

      else
      {
        v8 = [(NSNumberFormatter *)self positiveInfinitySymbol];
      }
    }

    v10 = v8;
    if (v8)
    {
LABEL_23:
      if ([-[NSMutableDictionary objectForKey:](self->_attributes objectForKey:{@"formattingContext", "intValue"}] == -1)
      {
        v12 = objc_alloc_init(_NSStringProxyForContext);
        [(_NSStringProxyForContext *)v12 setString:v10];
        [(_NSStringProxyForContext *)v12 setItem:a3];
        v13 = [objc_allocWithZone(objc_opt_class()) init];
        [v13[1] setDictionary:self->_attributes];
        [(_NSStringProxyForContext *)v12 _retainFormatter:v13];
        [v13 _clearFormatter];

        v10 = v12;
      }

      [(NSRecursiveLock *)self->_lock unlock];
      return v10;
    }

LABEL_18:
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    formatter = self->_formatter;
    if (formatter || ([(NSNumberFormatter *)self _regenerateFormatter], (formatter = self->_formatter) != 0))
    {
      v10 = CFNumberFormatterCreateStringWithNumber(*MEMORY[0x1E695E4A8], formatter, a3);
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_23;
  }

  return [(NSNumberFormatter *)self nilSymbol];
}

- (int64_t)_cacheGenerationCount
{
  if (![(NSNumberFormatter *)self _tracksCacheGenerationCount])
  {
    return -1;
  }

  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  return self->_cacheGeneration;
}

- (BOOL)_mayDecorateAttributedStringForObjectValue:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3 && (_NSIsNSNumber() & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = NSNumberFormatter;
    return [(NSFormatter *)&v13 _mayDecorateAttributedStringForObjectValue:a3];
  }

  v5 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v5, sel_attributedStringForObjectValue_withDefaultAttributes_);
  v7 = objc_opt_class();
  if (MethodImplementation != class_getMethodImplementation(v7, sel_attributedStringForObjectValue_withDefaultAttributes_))
  {
    return 1;
  }

  if (a3)
  {
    [a3 doubleValue];
    v10 = v9;
    v11 = __fpclassifyd(v9);
    if (v11 > 2)
    {
      if (v11 != 3 && v11 != 5)
      {
        goto LABEL_16;
      }

      v12 = [(NSNumberFormatter *)self textAttributesForZero];
    }

    else
    {
      if (v11 != 1)
      {
        if (v11 == 2)
        {
          if ((*&v10 & 0x8000000000000000) != 0)
          {
            v12 = [(NSNumberFormatter *)self textAttributesForNegativeInfinity];
          }

          else
          {
            v12 = [(NSNumberFormatter *)self textAttributesForPositiveInfinity];
          }

          return v12 != 0;
        }

LABEL_16:
        if ((*&v10 & 0x8000000000000000) != 0)
        {
          v12 = [(NSNumberFormatter *)self textAttributesForNegativeValues];
        }

        else
        {
          v12 = [(NSNumberFormatter *)self textAttributesForPositiveValues];
        }

        return v12 != 0;
      }

      v12 = [(NSNumberFormatter *)self textAttributesForNotANumber];
    }
  }

  else
  {
    v12 = [(NSNumberFormatter *)self textAttributesForNil];
  }

  return v12 != 0;
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  if (!getObjectValue_forString_errorDescription__baseIMP_0)
  {
    v9 = objc_lookUpClass("NSNumberFormatter");
    getObjectValue_forString_errorDescription__baseIMP_0 = class_getMethodImplementation(v9, sel_getObjectValue_forString_range_error_);
  }

  v10 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v10, sel_getObjectValue_forString_range_error_);
  if (a5)
  {
    v12 = v16;
  }

  else
  {
    v12 = 0;
  }

  if (MethodImplementation == getObjectValue_forString_errorDescription__baseIMP_0)
  {
    ObjectValue_0 = getObjectValue_0(self, a3, a4, 0, 1, v12);
  }

  else
  {
    ObjectValue_0 = [(NSNumberFormatter *)self getObjectValue:a3 forString:a4 range:0 error:v12];
  }

  v14 = ObjectValue_0;
  if (a5)
  {
    *a5 = [v16[0] localizedDescription];
  }

  return v14;
}

- (NSString)stringFromNumber:(NSNumber *)number
{
  if (number)
  {
    return [(NSNumberFormatter *)self stringForObjectValue:?];
  }

  else
  {
    return 0;
  }
}

- (NSNumber)numberFromString:(NSString *)string
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (!string)
  {
    return 0;
  }

  v4[0] = 0;
  if ([(NSNumberFormatter *)self getObjectValue:v4 forString:string errorDescription:0])
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

+ (NSString)localizedStringFromNumber:(NSNumber *)num numberStyle:(NSNumberFormatterStyle)nstyle
{
  if (!num)
  {
    return 0;
  }

  v6 = objc_opt_new();
  [v6 setFormatterBehavior:1040];
  [v6 setNumberStyle:nstyle];
  v7 = [v6 stringForObjectValue:num];

  return v7;
}

- (void)setFormattingContext:(NSFormattingContext)formattingContext
{
  if (formattingContext == NSFormattingContextMiddleOfSentence)
  {
    v4 = 257;
  }

  else
  {
    v4 = 0;
  }

  if (formattingContext == NSFormattingContextBeginningOfSentence)
  {
    v5 = 258;
  }

  else
  {
    v5 = v4;
  }

  if (formattingContext == NSFormattingContextListItem)
  {
    v6 = 259;
  }

  else
  {
    v6 = v5;
  }

  v7 = 1;
  if (formattingContext == NSFormattingContextStandalone)
  {
    v8 = 260;
  }

  else
  {
    v8 = 0;
  }

  if (formattingContext == NSFormattingContextDynamic)
  {
    v7 = 0;
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  if (formattingContext)
  {
    v10 = v9;
  }

  else
  {
    v7 = 1;
    v10 = 256;
  }

  if (formattingContext <= NSFormattingContextStandalone)
  {
    v11 = v7;
  }

  else
  {
    v11 = 1;
  }

  if (formattingContext <= NSFormattingContextStandalone)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  v13 = [NSNumber numberWithInt:v12];
  [(NSRecursiveLock *)self->_lock lock];
  ++self->_cacheGeneration;
  [(NSMutableDictionary *)self->_attributes setValue:v13 forKey:@"formattingContext"];
  if (v11)
  {
    formatter = self->_formatter;
    if (formatter)
    {
      CFNumberFormatterSetProperty(formatter, @"kCFNumberFormatterFormattingContextKey", v13);
    }
  }

  self->_stateBitMask |= 1uLL;
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setNumberStyle:(NSNumberFormatterStyle)numberStyle
{
  [(NSRecursiveLock *)self->_lock lock];
  if ((self->_stateBitMask & 2) == 0 && [-[NSMutableDictionary objectForKey:](self->_attributes objectForKey:{@"numberStyle", "integerValue"}] != numberStyle)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[NSNumber forKey:"numberWithInteger:" numberWithInteger:?], @"numberStyle"];
    [(NSNumberFormatter *)self _clearFormatter];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setLocale:(NSLocale *)locale
{
  [(NSRecursiveLock *)self->_lock lock];
  if (([-[NSMutableDictionary objectForKey:](self->_attributes objectForKey:{@"locale", "isEqual:", locale}] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSLocale *)locale copyWithZone:0] forKey:@"locale"];
    [(NSNumberFormatter *)self _clearFormatter];
    self->_stateBitMask |= 5uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setGeneratesDecimalNumbers:(BOOL)generatesDecimalNumbers
{
  v3 = generatesDecimalNumbers;
  [(NSRecursiveLock *)self->_lock lock];
  ++self->_cacheGeneration;
  v5 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  [(NSMutableDictionary *)self->_attributes setValue:*v5 forKey:@"generatesDecimalNumbers"];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)negativeFormat
{
  [(NSRecursiveLock *)self->_lock lock];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"negativeFormat"];
  v4 = v3;
  if (self->_formatter)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
    if (v4)
    {
      goto LABEL_10;
    }
  }

  formatter = self->_formatter;
  if (formatter)
  {
    v6 = [(__CFString *)CFNumberFormatterGetFormat(formatter) componentsSeparatedByString:@";"];
    v4 = [v6 objectAtIndex:{objc_msgSend(v6, "count") > 1}];
  }

  else
  {
    v4 = 0;
  }

LABEL_10:
  v7 = v4;
  [(NSRecursiveLock *)self->_lock unlock];

  return v4;
}

- (void)setNegativeFormat:(NSString *)negativeFormat
{
  [(NSRecursiveLock *)self->_lock lock];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  ++self->_cacheGeneration;
  [(NSMutableDictionary *)self->_attributes setValue:[(NSString *)negativeFormat copyWithZone:0] forKey:@"negativeFormat"];
  if (!negativeFormat)
  {
    goto LABEL_10;
  }

  formatter = self->_formatter;
  if (formatter || ([(NSNumberFormatter *)self _regenerateFormatter], (formatter = self->_formatter) != 0))
  {
    v6 = [-[__CFString componentsSeparatedByString:](CFNumberFormatterGetFormat(formatter) componentsSeparatedByString:{@";", "mutableCopy"}];
    if ([v6 count] > 1)
    {
      [v6 replaceObjectAtIndex:1 withObject:negativeFormat];
    }

    else
    {
      [v6 addObject:negativeFormat];
    }

    v7 = [v6 componentsJoinedByString:@";"];
    CFNumberFormatterSetFormat(self->_formatter, v7);
    self->_stateBitMask |= 1uLL;
    if (!v7)
    {
LABEL_10:
      [(NSNumberFormatter *)self _clearFormatter];
    }
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSDictionary)textAttributesForNegativeValues
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForNegativeValues"];
  if (!v3)
  {
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setTextAttributesForNegativeValues:(NSDictionary *)textAttributesForNegativeValues
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForNegativeValues"];
  if ((textAttributesForNegativeValues != 0) == (v5 == 0) || ([v5 isEqual:textAttributesForNegativeValues] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSDictionary *)textAttributesForNegativeValues copyWithZone:0] forKey:@"textAttributesForNegativeValues"];
    ++self->_cacheGeneration;
    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)positiveFormat
{
  [(NSRecursiveLock *)self->_lock lock];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"positiveFormat"];
  v4 = v3;
  if (self->_formatter)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
    if (v4)
    {
      goto LABEL_10;
    }
  }

  formatter = self->_formatter;
  if (formatter)
  {
    v4 = [-[__CFString componentsSeparatedByString:](CFNumberFormatterGetFormat(formatter) componentsSeparatedByString:{@";", "objectAtIndex:", 0}];
  }

  else
  {
    v4 = 0;
  }

LABEL_10:
  v6 = v4;
  [(NSRecursiveLock *)self->_lock unlock];

  return v4;
}

- (void)setPositiveFormat:(NSString *)positiveFormat
{
  [(NSRecursiveLock *)self->_lock lock];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  ++self->_cacheGeneration;
  [(NSMutableDictionary *)self->_attributes setValue:[(NSString *)positiveFormat copyWithZone:0] forKey:@"positiveFormat"];
  if (!positiveFormat || ((formatter = self->_formatter) != 0 || (-[NSNumberFormatter _regenerateFormatter](self, "_regenerateFormatter"), (formatter = self->_formatter) != 0)) && (v6 = [-[__CFString componentsSeparatedByString:](CFNumberFormatterGetFormat(formatter) componentsSeparatedByString:{@";", "mutableCopy"}], objc_msgSend(v6, "replaceObjectAtIndex:withObject:", 0, positiveFormat), v7 = objc_msgSend(v6, "componentsJoinedByString:", @";"), CFNumberFormatterSetFormat(self->_formatter, v7), self->_stateBitMask |= 1uLL, !v7))
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSDictionary)textAttributesForPositiveValues
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForPositiveValues"];
  if (!v3)
  {
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setTextAttributesForPositiveValues:(NSDictionary *)textAttributesForPositiveValues
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForPositiveValues"];
  if ((textAttributesForPositiveValues != 0) == (v5 == 0) || ([v5 isEqual:textAttributesForPositiveValues] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSDictionary *)textAttributesForPositiveValues copyWithZone:0] forKey:@"textAttributesForPositiveValues"];
    ++self->_cacheGeneration;
    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setAllowsFloats:(BOOL)allowsFloats
{
  v3 = allowsFloats;
  [(NSRecursiveLock *)self->_lock lock];
  ++self->_cacheGeneration;
  v5 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  [(NSMutableDictionary *)self->_attributes setValue:*v5 forKey:@"allowsFloats"];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setDecimalSeparator:(NSString *)decimalSeparator
{
  v4 = [(NSString *)decimalSeparator copyWithZone:0];
  [(NSRecursiveLock *)self->_lock lock];
  ++self->_cacheGeneration;
  [(NSMutableDictionary *)self->_attributes setValue:v4 forKey:@"decimalSeparator"];
  if (v4)
  {
    formatter = self->_formatter;
    if (formatter || ([(NSNumberFormatter *)self _regenerateFormatter], (formatter = self->_formatter) != 0))
    {
      CFNumberFormatterSetProperty(formatter, *MEMORY[0x1E695E768], v4);
    }
  }

  else
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  self->_stateBitMask |= 1uLL;
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)alwaysShowsDecimalSeparator
{
  [(NSRecursiveLock *)self->_lock lock];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"alwaysShowsDecimalSeparator"];
  v4 = [v3 BOOLValue];
  if (!v3)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
      formatter = self->_formatter;
      if (!formatter)
      {
        v6 = 0;
        goto LABEL_8;
      }
    }

    v4 = [CFNumberFormatterCopyProperty(formatter *MEMORY[0x1E695E740])];
  }

  v6 = v4;
LABEL_8:
  [(NSRecursiveLock *)self->_lock unlock];
  return v6;
}

- (void)setAlwaysShowsDecimalSeparator:(BOOL)alwaysShowsDecimalSeparator
{
  v4 = MEMORY[0x1E695E4D0];
  if (!alwaysShowsDecimalSeparator)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  [(NSRecursiveLock *)self->_lock lock];
  ++self->_cacheGeneration;
  [(NSMutableDictionary *)self->_attributes setValue:v5 forKey:@"alwaysShowsDecimalSeparator"];
  formatter = self->_formatter;
  if (formatter)
  {
    CFNumberFormatterSetProperty(formatter, *MEMORY[0x1E695E740], v5);
  }

  self->_stateBitMask |= 1uLL;
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setCurrencyDecimalSeparator:(NSString *)currencyDecimalSeparator
{
  if ((self->_stateBitMask & 2) == 0)
  {
    [(NSRecursiveLock *)self->_lock lock];
    v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencyDecimalSeparator"];
    if ((currencyDecimalSeparator != 0) == (v5 == 0) || ([v5 isEqual:currencyDecimalSeparator] & 1) == 0)
    {
      v6 = *MEMORY[0x1E695E750];
      v7 = [(NSString *)currencyDecimalSeparator copyWithZone:0];
      [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"currencyDecimalSeparator"];
      ++self->_cacheGeneration;
      if (v6)
      {
        if (v7 && (formatter = self->_formatter) != 0)
        {
          CFNumberFormatterSetProperty(formatter, v6, v7);
        }

        else if (!v7)
        {
          [(NSNumberFormatter *)self _clearFormatter];
        }
      }

      self->_stateBitMask |= 1uLL;
    }

    lock = self->_lock;

    [(NSRecursiveLock *)lock unlock];
  }
}

- (void)setUsesGroupingSeparator:(BOOL)usesGroupingSeparator
{
  v4 = MEMORY[0x1E695E4D0];
  if (!usesGroupingSeparator)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  [(NSRecursiveLock *)self->_lock lock];
  ++self->_cacheGeneration;
  [(NSMutableDictionary *)self->_attributes setValue:v5 forKey:@"usesGroupingSeparator"];
  formatter = self->_formatter;
  if (formatter)
  {
    CFNumberFormatterSetProperty(formatter, *MEMORY[0x1E695E850], v5);
  }

  self->_stateBitMask |= 1uLL;
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setGroupingSeparator:(NSString *)groupingSeparator
{
  [(NSRecursiveLock *)self->_lock lock];
  ++self->_cacheGeneration;
  v5 = [(NSString *)groupingSeparator copyWithZone:0];
  [(NSMutableDictionary *)self->_attributes setValue:v5 forKey:@"groupingSeparator"];
  if (v5)
  {
    formatter = self->_formatter;
    if (formatter || ([(NSNumberFormatter *)self _regenerateFormatter], (formatter = self->_formatter) != 0))
    {
      CFNumberFormatterSetProperty(formatter, *MEMORY[0x1E695E780], v5);
    }
  }

  else
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  self->_stateBitMask |= 1uLL;
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setZeroSymbol:(NSString *)zeroSymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"zeroSymbol"];
  if ((zeroSymbol != 0) == (v5 == 0) || ([v5 isEqual:zeroSymbol] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E868];
    v7 = [(NSString *)zeroSymbol copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"zeroSymbol"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSDictionary)textAttributesForZero
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForZero"];
  if (!v3)
  {
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setTextAttributesForZero:(NSDictionary *)textAttributesForZero
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForZero"];
  if ((textAttributesForZero != 0) == (v5 == 0) || ([v5 isEqual:textAttributesForZero] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSDictionary *)textAttributesForZero copyWithZone:0] forKey:@"textAttributesForZero"];
    ++self->_cacheGeneration;
    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setNilSymbol:(NSString *)nilSymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"nilSymbol"];
  if ((nilSymbol != 0) == (v5 == 0) || ([v5 isEqual:nilSymbol] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSString *)nilSymbol copyWithZone:0] forKey:@"nilSymbol"];
    ++self->_cacheGeneration;
    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSDictionary)textAttributesForNil
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForNil"];
  if (!v3)
  {
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setTextAttributesForNil:(NSDictionary *)textAttributesForNil
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForNil"];
  if ((textAttributesForNil != 0) == (v5 == 0) || ([v5 isEqual:textAttributesForNil] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSDictionary *)textAttributesForNil copyWithZone:0] forKey:@"textAttributesForNil"];
    ++self->_cacheGeneration;
    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)notANumberSymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"notANumberSymbol"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E7E8];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setNotANumberSymbol:(NSString *)notANumberSymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"notANumberSymbol"];
  if ((notANumberSymbol != 0) == (v5 == 0) || ([v5 isEqual:notANumberSymbol] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E7E8];
    v7 = [(NSString *)notANumberSymbol copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"notANumberSymbol"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSDictionary)textAttributesForNotANumber
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForNotANumber"];
  if (!v3)
  {
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setTextAttributesForNotANumber:(NSDictionary *)textAttributesForNotANumber
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForNotANumber"];
  if ((textAttributesForNotANumber != 0) == (v5 == 0) || ([v5 isEqual:textAttributesForNotANumber] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSDictionary *)textAttributesForNotANumber copyWithZone:0] forKey:@"textAttributesForNotANumber"];
    ++self->_cacheGeneration;
    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setPositiveInfinitySymbol:(NSString *)positiveInfinitySymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"positiveInfinitySymbol"];
  if ((positiveInfinitySymbol != 0) == (v5 == 0) || ([v5 isEqual:positiveInfinitySymbol] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSString *)positiveInfinitySymbol copyWithZone:0] forKey:@"positiveInfinitySymbol"];
    ++self->_cacheGeneration;
    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSDictionary)textAttributesForPositiveInfinity
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForPositiveInfinity"];
  if (!v3)
  {
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setTextAttributesForPositiveInfinity:(NSDictionary *)textAttributesForPositiveInfinity
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForPositiveInfinity"];
  if ((textAttributesForPositiveInfinity != 0) == (v5 == 0) || ([v5 isEqual:textAttributesForPositiveInfinity] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSDictionary *)textAttributesForPositiveInfinity copyWithZone:0] forKey:@"textAttributesForPositiveInfinity"];
    ++self->_cacheGeneration;
    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setNegativeInfinitySymbol:(NSString *)negativeInfinitySymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"negativeInfinitySymbol"];
  if ((negativeInfinitySymbol != 0) == (v5 == 0) || ([v5 isEqual:negativeInfinitySymbol] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSString *)negativeInfinitySymbol copyWithZone:0] forKey:@"negativeInfinitySymbol"];
    ++self->_cacheGeneration;
    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSDictionary)textAttributesForNegativeInfinity
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForNegativeInfinity"];
  if (!v3)
  {
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setTextAttributesForNegativeInfinity:(NSDictionary *)textAttributesForNegativeInfinity
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"textAttributesForNegativeInfinity"];
  if ((textAttributesForNegativeInfinity != 0) == (v5 == 0) || ([v5 isEqual:textAttributesForNegativeInfinity] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSDictionary *)textAttributesForNegativeInfinity copyWithZone:0] forKey:@"textAttributesForNegativeInfinity"];
    ++self->_cacheGeneration;
    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)positivePrefix
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"positivePrefix"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E828];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setPositivePrefix:(NSString *)positivePrefix
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"positivePrefix"];
  if ((positivePrefix != 0) == (v5 == 0) || ([v5 isEqual:positivePrefix] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E828];
    v7 = [(NSString *)positivePrefix copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"positivePrefix"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)positiveSuffix
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"positiveSuffix"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E830];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setPositiveSuffix:(NSString *)positiveSuffix
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"positiveSuffix"];
  if ((positiveSuffix != 0) == (v5 == 0) || ([v5 isEqual:positiveSuffix] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E830];
    v7 = [(NSString *)positiveSuffix copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"positiveSuffix"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)negativePrefix
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"negativePrefix"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E7F0];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setNegativePrefix:(NSString *)negativePrefix
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"negativePrefix"];
  if ((negativePrefix != 0) == (v5 == 0) || ([v5 isEqual:negativePrefix] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E7F0];
    v7 = [(NSString *)negativePrefix copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"negativePrefix"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)negativeSuffix
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"negativeSuffix"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E7F8];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setNegativeSuffix:(NSString *)negativeSuffix
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"negativeSuffix"];
  if ((negativeSuffix != 0) == (v5 == 0) || ([v5 isEqual:negativeSuffix] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E7F8];
    v7 = [(NSString *)negativeSuffix copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"negativeSuffix"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)currencyCode
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencyCode"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E748];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setCurrencyCode:(NSString *)currencyCode
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencyCode"];
  if ((currencyCode != 0) == (v5 == 0) || ([v5 isEqual:currencyCode] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E748];
    v7 = [(NSString *)currencyCode copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"currencyCode"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)_hasSetCurrencyCode
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencyCode"]!= 0;
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (NSString)currencySymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencySymbol"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E760];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (BOOL)_hasSetCurrencySymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencySymbol"]!= 0;
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (void)setCurrencySymbol:(NSString *)currencySymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencySymbol"];
  if ((currencySymbol != 0) == (v5 == 0) || ([v5 isEqual:currencySymbol] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E760];
    v7 = [(NSString *)currencySymbol copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"currencySymbol"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)internationalCurrencySymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"internationalCurrencySymbol"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E790];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setInternationalCurrencySymbol:(NSString *)internationalCurrencySymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"internationalCurrencySymbol"];
  if ((internationalCurrencySymbol != 0) == (v5 == 0) || ([v5 isEqual:internationalCurrencySymbol] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E790];
    v7 = [(NSString *)internationalCurrencySymbol copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"internationalCurrencySymbol"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)_hasSetInternationalCurrencySymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"internationalCurrencySymbol"]!= 0;
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (NSString)percentSymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"percentSymbol"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E818];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setPercentSymbol:(NSString *)percentSymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"percentSymbol"];
  if ((percentSymbol != 0) == (v5 == 0) || ([v5 isEqual:percentSymbol] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E818];
    v7 = [(NSString *)percentSymbol copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"percentSymbol"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)perMillSymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"perMillSymbol"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E810];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setPerMillSymbol:(NSString *)perMillSymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"perMillSymbol"];
  if ((perMillSymbol != 0) == (v5 == 0) || ([v5 isEqual:perMillSymbol] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E810];
    v7 = [(NSString *)perMillSymbol copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"perMillSymbol"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)minusSign
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minusSign"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E7D8];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setMinusSign:(NSString *)minusSign
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minusSign"];
  if ((minusSign != 0) == (v5 == 0) || ([v5 isEqual:minusSign] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E7D8];
    v7 = [(NSString *)minusSign copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"minusSign"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)plusSign
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"plusSign"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E820];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setPlusSign:(NSString *)plusSign
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"plusSign"];
  if ((plusSign != 0) == (v5 == 0) || ([v5 isEqual:plusSign] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E820];
    v7 = [(NSString *)plusSign copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"plusSign"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)exponentSymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"exponentSymbol"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E770];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setExponentSymbol:(NSString *)exponentSymbol
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"exponentSymbol"];
  if ((exponentSymbol != 0) == (v5 == 0) || ([v5 isEqual:exponentSymbol] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E770];
    v7 = [(NSString *)exponentSymbol copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"exponentSymbol"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setGroupingSize:(NSUInteger)groupingSize
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"groupingSize"];
  if (!v5 || [v5 integerValue] != groupingSize)
  {
    v6 = *MEMORY[0x1E695E788];
    v7 = [NSNumber numberWithInteger:groupingSize];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"groupingSize"];
    ++self->_cacheGeneration;
    if (v6)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }
    }
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setSecondaryGroupingSize:(NSUInteger)secondaryGroupingSize
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"secondaryGroupingSize"];
  if (!v5 || [v5 integerValue] != secondaryGroupingSize)
  {
    v6 = *MEMORY[0x1E695E848];
    v7 = [NSNumber numberWithInteger:secondaryGroupingSize];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"secondaryGroupingSize"];
    ++self->_cacheGeneration;
    if (v6)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }
    }
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSUInteger)formatWidth
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"formatWidth"];
  if (v3)
  {
LABEL_2:
    v4 = [v3 integerValue];
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E778];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v4 = *v6;
  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v4)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v4 = 0;
      goto LABEL_3;
    }

    v3 = CFNumberFormatterCopyProperty(formatter, v4);
    goto LABEL_2;
  }

LABEL_3:
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (void)setFormatWidth:(NSUInteger)formatWidth
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"formatWidth"];
  if (!v5 || [v5 integerValue] != formatWidth)
  {
    v6 = *MEMORY[0x1E695E778];
    v7 = [NSNumber numberWithInteger:formatWidth];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"formatWidth"];
    ++self->_cacheGeneration;
    if (v6)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }
    }
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSNumber)multiplier
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"multiplier"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E7E0];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setMultiplier:(NSNumber *)multiplier
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"multiplier"];
  if ((multiplier != 0) == (v5 == 0) || ([v5 isEqual:multiplier] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E7E0];
    v7 = [(NSNumber *)multiplier copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"multiplier"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSString)paddingCharacter
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"paddingCharacter"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E800];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setPaddingCharacter:(NSString *)paddingCharacter
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"paddingCharacter"];
  if ((paddingCharacter != 0) == (v5 == 0) || ([v5 isEqual:paddingCharacter] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E800];
    v7 = [(NSString *)paddingCharacter copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"paddingCharacter"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSNumberFormatterPadPosition)paddingPosition
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"paddingPosition"];
  if (v3)
  {
LABEL_2:
    v4 = [v3 integerValue];
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E808];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v4 = *v6;
  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v4)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v4 = 0;
      goto LABEL_3;
    }

    v3 = CFNumberFormatterCopyProperty(formatter, v4);
    goto LABEL_2;
  }

LABEL_3:
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (void)setPaddingPosition:(NSNumberFormatterPadPosition)paddingPosition
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"paddingPosition"];
  if (!v5 || [v5 integerValue] != paddingPosition)
  {
    v6 = *MEMORY[0x1E695E808];
    v7 = [NSNumber numberWithInteger:paddingPosition];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"paddingPosition"];
    ++self->_cacheGeneration;
    if (v6)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }
    }
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setRoundingMode:(NSNumberFormatterRoundingMode)roundingMode
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"roundingMode"];
  if (!v5 || [v5 integerValue] != roundingMode)
  {
    v6 = *MEMORY[0x1E695E840];
    v7 = [NSNumber numberWithInteger:roundingMode];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"roundingMode"];
    ++self->_cacheGeneration;
    if (v6)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }
    }
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSNumber)roundingIncrement
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"roundingIncrement"];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E838];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSNumberFormatter *)self _clearFormatter];
    }

    v3 = *v6;
    if (!self->_formatter)
    {
      [(NSNumberFormatter *)self _regenerateFormatter];
    }

    if (v3)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        v3 = CFNumberFormatterCopyProperty(formatter, v3);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  v4 = v3;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setRoundingIncrement:(NSNumber *)roundingIncrement
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"roundingIncrement"];
  if ((roundingIncrement != 0) == (v5 == 0) || ([v5 isEqual:roundingIncrement] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E838];
    v7 = [(NSNumber *)roundingIncrement copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"roundingIncrement"];
    ++self->_cacheGeneration;
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSNumberFormatter *)self _clearFormatter];
      }
    }

    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSUInteger)minimumIntegerDigits
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumIntegerDigits"];
  if (v3)
  {
LABEL_2:
    v4 = [v3 integerValue];
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E7C8];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v4 = *v6;
  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v4)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v4 = 0;
      goto LABEL_3;
    }

    v3 = CFNumberFormatterCopyProperty(formatter, v4);
    goto LABEL_2;
  }

LABEL_3:
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (void)setMinimumIntegerDigits:(NSUInteger)minimumIntegerDigits
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumIntegerDigits"];
  if (!v5 || [v5 integerValue] != minimumIntegerDigits)
  {
    v6 = *MEMORY[0x1E695E7C8];
    v7 = [NSNumber numberWithInteger:minimumIntegerDigits];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"minimumIntegerDigits"];
    ++self->_cacheGeneration;
    if (v6)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }
    }
  }

  v9 = *MEMORY[0x1E695E7A8];
  v10 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumIntegerDigits"];
  if (v10)
  {
    goto LABEL_7;
  }

  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  if (self->_formatter)
  {
    if (v9)
    {
      goto LABEL_21;
    }

LABEL_24:
    v11 = 0;
    goto LABEL_8;
  }

  [(NSNumberFormatter *)self _regenerateFormatter];
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_21:
  v11 = self->_formatter;
  if (v11)
  {
    v10 = CFNumberFormatterCopyProperty(v11, v9);
LABEL_7:
    v11 = [v10 integerValue];
  }

LABEL_8:
  if (v11 < minimumIntegerDigits)
  {
    v12 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumIntegerDigits"];
    if (!v12 || [v12 integerValue] != minimumIntegerDigits)
    {
      v13 = [NSNumber numberWithInteger:minimumIntegerDigits];
      [(NSMutableDictionary *)self->_attributes setValue:v13 forKey:@"maximumIntegerDigits"];
      ++self->_cacheGeneration;
      if (v9)
      {
        v14 = self->_formatter;
        if (v14)
        {
          CFNumberFormatterSetProperty(v14, v9, v13);
        }
      }
    }
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setMaximumIntegerDigits:(NSUInteger)maximumIntegerDigits
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumIntegerDigits"];
  if (!v5 || [v5 integerValue] != maximumIntegerDigits)
  {
    v6 = *MEMORY[0x1E695E7A8];
    v7 = [NSNumber numberWithInteger:maximumIntegerDigits];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"maximumIntegerDigits"];
    ++self->_cacheGeneration;
    if (v6)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }
    }
  }

  v9 = *MEMORY[0x1E695E7C8];
  v10 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumIntegerDigits"];
  if (v10)
  {
    goto LABEL_7;
  }

  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v9)
  {
    v14 = self->_formatter;
    if (v14)
    {
      v10 = CFNumberFormatterCopyProperty(v14, v9);
LABEL_7:
      if ([v10 integerValue] > maximumIntegerDigits)
      {
        v11 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumIntegerDigits"];
        if (!v11 || [v11 integerValue] != maximumIntegerDigits)
        {
          v12 = [NSNumber numberWithInteger:maximumIntegerDigits];
          [(NSMutableDictionary *)self->_attributes setValue:v12 forKey:@"minimumIntegerDigits"];
          ++self->_cacheGeneration;
          if (v9)
          {
            v13 = self->_formatter;
            if (v13)
            {
              CFNumberFormatterSetProperty(v13, v9, v12);
            }
          }
        }
      }
    }
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setMinimumFractionDigits:(NSUInteger)minimumFractionDigits
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumFractionDigits"];
  if (!v5 || [v5 integerValue] != minimumFractionDigits)
  {
    v6 = *MEMORY[0x1E695E7B8];
    v7 = [NSNumber numberWithInteger:minimumFractionDigits];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"minimumFractionDigits"];
    ++self->_cacheGeneration;
    if (v6)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }
    }
  }

  v9 = *MEMORY[0x1E695E7A0];
  v10 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumFractionDigits"];
  if (v10)
  {
    goto LABEL_7;
  }

  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  if (self->_formatter)
  {
    if (v9)
    {
      goto LABEL_21;
    }

LABEL_24:
    v11 = 0;
    goto LABEL_8;
  }

  [(NSNumberFormatter *)self _regenerateFormatter];
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_21:
  v11 = self->_formatter;
  if (v11)
  {
    v10 = CFNumberFormatterCopyProperty(v11, v9);
LABEL_7:
    v11 = [v10 integerValue];
  }

LABEL_8:
  if (v11 < minimumFractionDigits)
  {
    v12 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumFractionDigits"];
    if (!v12 || [v12 integerValue] != minimumFractionDigits)
    {
      v13 = [NSNumber numberWithInteger:minimumFractionDigits];
      [(NSMutableDictionary *)self->_attributes setValue:v13 forKey:@"maximumFractionDigits"];
      ++self->_cacheGeneration;
      if (v9)
      {
        v14 = self->_formatter;
        if (v14)
        {
          CFNumberFormatterSetProperty(v14, v9, v13);
        }
      }
    }
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setMaximumFractionDigits:(NSUInteger)maximumFractionDigits
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumFractionDigits"];
  if (!v5 || [v5 integerValue] != maximumFractionDigits)
  {
    v6 = *MEMORY[0x1E695E7A0];
    v7 = [NSNumber numberWithInteger:maximumFractionDigits];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"maximumFractionDigits"];
    ++self->_cacheGeneration;
    if (v6)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }
    }
  }

  v9 = *MEMORY[0x1E695E7B8];
  v10 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumFractionDigits"];
  if (v10)
  {
    goto LABEL_7;
  }

  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v9)
  {
    v14 = self->_formatter;
    if (v14)
    {
      v10 = CFNumberFormatterCopyProperty(v14, v9);
LABEL_7:
      if ([v10 integerValue] > maximumFractionDigits)
      {
        v11 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumFractionDigits"];
        if (!v11 || [v11 integerValue] != maximumFractionDigits)
        {
          v12 = [NSNumber numberWithInteger:maximumFractionDigits];
          [(NSMutableDictionary *)self->_attributes setValue:v12 forKey:@"minimumFractionDigits"];
          ++self->_cacheGeneration;
          if (v9)
          {
            v13 = self->_formatter;
            if (v13)
            {
              CFNumberFormatterSetProperty(v13, v9, v12);
            }
          }
        }
      }
    }
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setMinimum:(NSNumber *)minimum
{
  v3 = minimum;
  if (minimum && [+[NSDecimalNumber isEqual:"isEqual:"]
  {
    v3 = 0;
  }

  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimum"];
  if ((v3 != 0) == (v5 == 0) || ([v5 isEqual:v3] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSNumber *)v3 copyWithZone:0] forKey:@"minimum"];
    ++self->_cacheGeneration;
    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setMaximum:(NSNumber *)maximum
{
  v3 = maximum;
  if (maximum && [+[NSDecimalNumber isEqual:"isEqual:"]
  {
    v3 = 0;
  }

  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximum"];
  if ((v3 != 0) == (v5 == 0) || ([v5 isEqual:v3] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSNumber *)v3 copyWithZone:0] forKey:@"maximum"];
    ++self->_cacheGeneration;
    self->_stateBitMask |= 1uLL;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setCurrencyGroupingSeparator:(NSString *)currencyGroupingSeparator
{
  if ((self->_stateBitMask & 2) == 0)
  {
    [(NSRecursiveLock *)self->_lock lock];
    v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"currencyGroupingSeparator"];
    if ((currencyGroupingSeparator != 0) == (v5 == 0) || ([v5 isEqual:currencyGroupingSeparator] & 1) == 0)
    {
      v6 = *MEMORY[0x1E695E758];
      v7 = [(NSString *)currencyGroupingSeparator copyWithZone:0];
      [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"currencyGroupingSeparator"];
      ++self->_cacheGeneration;
      if (v6)
      {
        if (v7 && (formatter = self->_formatter) != 0)
        {
          CFNumberFormatterSetProperty(formatter, v6, v7);
        }

        else if (!v7)
        {
          [(NSNumberFormatter *)self _clearFormatter];
        }
      }

      self->_stateBitMask |= 1uLL;
    }

    lock = self->_lock;

    [(NSRecursiveLock *)lock unlock];
  }
}

- (BOOL)isLenient
{
  [(NSRecursiveLock *)self->_lock lock];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"lenient"];
  v4 = v3;
  if (self->_formatter)
  {
    if (v3)
    {
LABEL_5:
      v5 = v4;
      goto LABEL_9;
    }
  }

  else
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  formatter = self->_formatter;
  if (!formatter)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = CFNumberFormatterCopyProperty(formatter, *MEMORY[0x1E695E798]);
LABEL_9:
  v7 = [v5 BOOLValue];
LABEL_10:
  [(NSRecursiveLock *)self->_lock unlock];
  return v7;
}

- (void)setLenient:(BOOL)lenient
{
  if (lenient)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  [(NSRecursiveLock *)self->_lock lock];
  if ((self->_stateBitMask & 2) == 0)
  {
    v5 = *v4;
    ++self->_cacheGeneration;
    [(NSMutableDictionary *)self->_attributes setValue:v5 forKey:@"lenient"];
    formatter = self->_formatter;
    if (formatter)
    {
      CFNumberFormatterSetProperty(formatter, *MEMORY[0x1E695E798], v5);
    }

    lock = self->_lock;

    [(NSRecursiveLock *)lock unlock];
  }
}

- (void)setUsesSignificantDigits:(BOOL)usesSignificantDigits
{
  v4 = MEMORY[0x1E695E4D0];
  if (!usesSignificantDigits)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  [(NSRecursiveLock *)self->_lock lock];
  ++self->_cacheGeneration;
  [(NSMutableDictionary *)self->_attributes setValue:v5 forKey:@"usesSignificantDigits"];
  formatter = self->_formatter;
  if (formatter)
  {
    CFNumberFormatterSetProperty(formatter, *MEMORY[0x1E695E858], v5);
  }

  self->_stateBitMask |= 1uLL;
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSUInteger)minimumSignificantDigits
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumSignificantDigits"];
  if (v3)
  {
LABEL_2:
    v4 = [v3 integerValue];
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E7D0];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v4 = *v6;
  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v4)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v4 = 0;
      goto LABEL_3;
    }

    v3 = CFNumberFormatterCopyProperty(formatter, v4);
    goto LABEL_2;
  }

LABEL_3:
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (void)setMinimumSignificantDigits:(NSUInteger)minimumSignificantDigits
{
  if (minimumSignificantDigits <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = minimumSignificantDigits;
  }

  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumSignificantDigits"];
  if (!v5 || [v5 integerValue] != v4)
  {
    v6 = *MEMORY[0x1E695E7D0];
    v7 = [NSNumber numberWithInteger:v4];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"minimumSignificantDigits"];
    ++self->_cacheGeneration;
    if (v6)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }
    }
  }

  v9 = *MEMORY[0x1E695E7B0];
  v10 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumSignificantDigits"];
  if (v10)
  {
LABEL_10:
    if (v4 <= [v10 integerValue])
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  if (self->_formatter)
  {
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  v11 = self->_formatter;
  if (v11)
  {
    v10 = CFNumberFormatterCopyProperty(v11, v9);
    goto LABEL_10;
  }

LABEL_20:
  v12 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumSignificantDigits"];
  if (!v12 || [v12 integerValue] != v4)
  {
    v13 = [NSNumber numberWithInteger:v4];
    [(NSMutableDictionary *)self->_attributes setValue:v13 forKey:@"maximumSignificantDigits"];
    ++self->_cacheGeneration;
    if (v9)
    {
      v14 = self->_formatter;
      if (v14)
      {
        CFNumberFormatterSetProperty(v14, v9, v13);
      }
    }
  }

LABEL_25:
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setMaximumSignificantDigits:(NSUInteger)maximumSignificantDigits
{
  if (maximumSignificantDigits <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = maximumSignificantDigits;
  }

  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"maximumSignificantDigits"];
  if (!v5 || [v5 integerValue] != v4)
  {
    v6 = *MEMORY[0x1E695E7B0];
    v7 = [NSNumber numberWithInteger:v4];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"maximumSignificantDigits"];
    ++self->_cacheGeneration;
    if (v6)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }
    }
  }

  v9 = *MEMORY[0x1E695E7D0];
  v10 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumSignificantDigits"];
  if (v10)
  {
    goto LABEL_10;
  }

  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v9)
  {
    v14 = self->_formatter;
    if (v14)
    {
      v10 = CFNumberFormatterCopyProperty(v14, v9);
LABEL_10:
      if (v4 < [v10 integerValue])
      {
        v11 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumSignificantDigits"];
        if (!v11 || [v11 integerValue] != v4)
        {
          v12 = [NSNumber numberWithInteger:v4];
          [(NSMutableDictionary *)self->_attributes setValue:v12 forKey:@"minimumSignificantDigits"];
          ++self->_cacheGeneration;
          if (v9)
          {
            v13 = self->_formatter;
            if (v13)
            {
              CFNumberFormatterSetProperty(v13, v9, v12);
            }
          }
        }
      }
    }
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)isPartialStringValidationEnabled
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"partialStringValidationEnabled"];
  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (void)setPartialStringValidationEnabled:(BOOL)partialStringValidationEnabled
{
  v3 = partialStringValidationEnabled;
  [(NSRecursiveLock *)self->_lock lock];
  if ((self->_stateBitMask & 2) == 0)
  {
    if (v3)
    {
      v5 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = *MEMORY[0x1E695E4C0];
    }

    ++self->_cacheGeneration;
    [(NSMutableDictionary *)self->_attributes setValue:v5 forKey:@"partialStringValidationEnabled"];
    lock = self->_lock;

    [(NSRecursiveLock *)lock unlock];
  }
}

- (BOOL)_usesCharacterDirection
{
  [(NSRecursiveLock *)self->_lock lock];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"usesCharacterDirection"];
  v4 = v3;
  if (self->_formatter)
  {
    if (v3)
    {
LABEL_5:
      v5 = v4;
      goto LABEL_9;
    }
  }

  else
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  formatter = self->_formatter;
  if (!formatter)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = CFNumberFormatterCopyProperty(formatter, *MEMORY[0x1E695E860]);
LABEL_9:
  v7 = [v5 BOOLValue];
LABEL_10:
  [(NSRecursiveLock *)self->_lock unlock];
  return v7;
}

- (void)_setUsesCharacterDirection:(BOOL)a3
{
  v4 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  [(NSRecursiveLock *)self->_lock lock];
  ++self->_cacheGeneration;
  [(NSMutableDictionary *)self->_attributes setValue:v5 forKey:@"usesCharacterDirection"];
  formatter = self->_formatter;
  if (formatter)
  {
    CFNumberFormatterSetProperty(formatter, *MEMORY[0x1E695E860], v5);
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (int64_t)minimumGroupingDigits
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumGroupingDigits"];
  if (v3)
  {
LABEL_2:
    v4 = [v3 integerValue];
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E7C0];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSNumberFormatter *)self _clearFormatter];
  }

  v4 = *v6;
  if (!self->_formatter)
  {
    [(NSNumberFormatter *)self _regenerateFormatter];
  }

  if (v4)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v4 = 0;
      goto LABEL_3;
    }

    v3 = CFNumberFormatterCopyProperty(formatter, v4);
    goto LABEL_2;
  }

LABEL_3:
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (void)setMinimumGroupingDigits:(int64_t)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"minimumGroupingDigits"];
  if (!v5 || [v5 integerValue] != a3)
  {
    v6 = *MEMORY[0x1E695E7C0];
    v7 = [NSNumber numberWithInteger:a3];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"minimumGroupingDigits"];
    ++self->_cacheGeneration;
    if (v6)
    {
      formatter = self->_formatter;
      if (formatter)
      {
        CFNumberFormatterSetProperty(formatter, v6, v7);
      }
    }
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)receiveObservedValue:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if ((_NSIsNSNumber() & 1) == 0)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSObservationFormatterSupport.m" description:40, @"Invalid parameter not satisfying: %@", @"!value || _NSIsNSNumber(value)"];
    }

    v6.receiver = self;
    v6.super_class = NSNumberFormatter;
    [(NSNumberFormatter *)&v6 receiveObservedValue:[(NSNumberFormatter *)self stringFromNumber:a3]];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NSNumberFormatter;
    [(NSNumberFormatter *)&v7 receiveObservedValue:0];
  }
}

@end