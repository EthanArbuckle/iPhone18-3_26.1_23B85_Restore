@interface _NSPersonNameComponentsFormatterData
- (BOOL)isEqualToFormatterData:(void *)a1;
- (_NSPersonNameComponentsFormatterData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NSPersonNameComponentsFormatterData

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  locale = self->_locale;
  if (locale)
  {

    self->_locale = 0;
  }

  v4.receiver = self;
  v4.super_class = _NSPersonNameComponentsFormatterData;
  [(_NSPersonNameComponentsFormatterData *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(_NSPersonNameComponentsFormatterData);
  v5->_style = self->_style;
  v5->_phonetic = self->_phonetic;
  v5->_forceFamilyNameFirst = self->_forceFamilyNameFirst;
  v5->_forceGivenNameFirst = self->_forceGivenNameFirst;
  v5->_ignoresFallbacks = self->_ignoresFallbacks;
  v5->_locale = [(NSLocale *)self->_locale copyWithZone:a3];
  return v5;
}

- (_NSPersonNameComponentsFormatterData)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v6 = [NSString stringWithFormat:@"%@ cannot be decoded by non-keyed archivers", objc_opt_class()];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0]);
  }

  if (self)
  {
    self->_style = [a3 decodeIntegerForKey:@"NS.nameFormatterStyle"];
    self->_phonetic = [a3 decodeBoolForKey:@"NS.nameFormatterIsPhonetic"];
    self->_forceFamilyNameFirst = [a3 decodeBoolForKey:@"NS.nameFormatterForceFamilyNameFirst"];
    self->_forceGivenNameFirst = [a3 decodeBoolForKey:@"NS.nameFormatterForceGivenNameFirst"];
    self->_ignoresFallbacks = [a3 decodeBoolForKey:@"NS.nameFormatterIgnoresFallbacks"];
    if ([a3 containsValueForKey:@"NS.nameFormatterLocale"])
    {
      self->_locale = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NS.nameFormatterLocale", "copy"}];
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersonNameComponents cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  [a3 encodeInteger:self->_style forKey:@"NS.nameFormatterStyle"];
  [a3 encodeBool:self->_phonetic forKey:@"NS.nameFormatterIsPhonetic"];
  [a3 encodeBool:self->_forceFamilyNameFirst forKey:@"NS.nameFormatterForceFamilyNameFirst"];
  [a3 encodeBool:self->_forceGivenNameFirst forKey:@"NS.nameFormatterForceGivenNameFirst"];
  [a3 encodeBool:self->_ignoresFallbacks forKey:@"NS.nameFormatterIgnoresFallbacks"];
  locale = self->_locale;

  [a3 encodeObject:locale forKey:@"NS.nameFormatterLocale"];
}

- (BOOL)isEqualToFormatterData:(void *)a1
{
  result = 0;
  if (a1 && a2)
  {
    if ([a1 locale] && objc_msgSend(a2, "locale"))
    {
      if (([objc_msgSend(a1 "locale")] & 1) == 0)
      {
        return 0;
      }
    }

    else if ([a1 locale] || objc_msgSend(a2, "locale"))
    {
      return 0;
    }

    v5 = [a1 phonetic];
    if (v5 == [a2 phonetic])
    {
      v6 = [a1 forceFamilyNameFirst];
      if (v6 == [a2 forceFamilyNameFirst])
      {
        v7 = [a1 forceGivenNameFirst];
        if (v7 == [a2 forceGivenNameFirst])
        {
          v8 = [a1 ignoresFallbacks];
          if (v8 == [a2 ignoresFallbacks])
          {
            v9 = [a1 style];
            return v9 == [a2 style];
          }
        }
      }
    }

    return 0;
  }

  return result;
}

@end