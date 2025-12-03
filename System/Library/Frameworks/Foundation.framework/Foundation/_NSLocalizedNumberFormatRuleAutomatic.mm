@interface _NSLocalizedNumberFormatRuleAutomatic
- (_NSLocalizedNumberFormatRuleAutomatic)initWithCoder:(id)coder;
- (id)_formattedString:(id)string withStringLocale:(id)locale andDisplayLocale:(id)displayLocale;
- (id)_locked_formatterForLocale:(id)locale;
- (id)description;
@end

@implementation _NSLocalizedNumberFormatRuleAutomatic

- (_NSLocalizedNumberFormatRuleAutomatic)initWithCoder:(id)coder
{
  v3 = +[NSLocalizedNumberFormatRule automatic];

  return v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSLocalizedNumberFormatRuleAutomatic;
  return [NSString stringWithFormat:@"%@ (format number rule)", [(_NSLocalizedNumberFormatRuleAutomatic *)&v3 description]];
}

- (id)_locked_formatterForLocale:(id)locale
{
  Mutable = _locked_formatterForLocale__formatters;
  if (!_locked_formatterForLocale__formatters)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, &formatterCacheKeyCallBacks, MEMORY[0x1E695E9E8]);
    _locked_formatterForLocale__formatters = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, locale);
  if (!Value)
  {
    Value = objc_alloc_init(NSNumberFormatter);
    [(NSNumberFormatter *)Value setLocale:locale];
    -[NSNumberFormatter setDecimalSeparator:](Value, "setDecimalSeparator:", [locale decimalSeparator]);
    -[NSNumberFormatter setGroupingSeparator:](Value, "setGroupingSeparator:", [locale groupingSeparator]);
    if (CFDictionaryGetCount(_locked_formatterForLocale__formatters) >= 101)
    {
      CFDictionaryRemoveAllValues(_locked_formatterForLocale__formatters);
    }

    CFDictionarySetValue(_locked_formatterForLocale__formatters, locale, Value);
  }

  return Value;
}

- (id)_formattedString:(id)string withStringLocale:(id)locale andDisplayLocale:(id)displayLocale
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_formattedString_withStringLocale_andDisplayLocale__lock);
  v9 = [(_NSLocalizedNumberFormatRuleAutomatic *)self _locked_formatterForLocale:locale];
  groupingSeparator = [locale groupingSeparator];
  if (groupingSeparator)
  {
    v11 = [string containsString:groupingSeparator];
  }

  else
  {
    v11 = 0;
  }

  [v9 setUsesGroupingSeparator:v11];
  v12 = [v9 numberFromString:string];
  if (v12)
  {
    v13 = v12;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v15 = [string rangeOfString:{objc_msgSend(locale, "decimalSeparator")}];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v14;
      v17 = [string length];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __92___NSLocalizedNumberFormatRuleAutomatic__formattedString_withStringLocale_andDisplayLocale___block_invoke;
      v21[3] = &unk_1E69F6A68;
      v21[4] = &v22;
      [string enumerateSubstringsInRange:v15 + v16 options:v17 - (v15 + v16) usingBlock:{2, v21}];
    }

    v18 = [(_NSLocalizedNumberFormatRuleAutomatic *)self _locked_formatterForLocale:displayLocale];
    [v18 setMinimumFractionDigits:v23[3]];
    [v18 setUsesGroupingSeparator:v11];
    v19 = [v18 stringFromNumber:v13];
    os_unfair_lock_unlock(&_formattedString_withStringLocale_andDisplayLocale__lock);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    os_unfair_lock_unlock(&_formattedString_withStringLocale_andDisplayLocale__lock);
    return 0;
  }

  return v19;
}

@end