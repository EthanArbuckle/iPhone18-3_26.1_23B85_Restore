@interface _NSPersonNameComponentsFormatterData
- (BOOL)isEqualToFormatterData:(void *)data;
- (_NSPersonNameComponentsFormatterData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(_NSPersonNameComponentsFormatterData);
  v5->_style = self->_style;
  v5->_phonetic = self->_phonetic;
  v5->_forceFamilyNameFirst = self->_forceFamilyNameFirst;
  v5->_forceGivenNameFirst = self->_forceGivenNameFirst;
  v5->_ignoresFallbacks = self->_ignoresFallbacks;
  v5->_locale = [(NSLocale *)self->_locale copyWithZone:zone];
  return v5;
}

- (_NSPersonNameComponentsFormatterData)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v6 = [NSString stringWithFormat:@"%@ cannot be decoded by non-keyed archivers", objc_opt_class()];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0]);
  }

  if (self)
  {
    self->_style = [coder decodeIntegerForKey:@"NS.nameFormatterStyle"];
    self->_phonetic = [coder decodeBoolForKey:@"NS.nameFormatterIsPhonetic"];
    self->_forceFamilyNameFirst = [coder decodeBoolForKey:@"NS.nameFormatterForceFamilyNameFirst"];
    self->_forceGivenNameFirst = [coder decodeBoolForKey:@"NS.nameFormatterForceGivenNameFirst"];
    self->_ignoresFallbacks = [coder decodeBoolForKey:@"NS.nameFormatterIgnoresFallbacks"];
    if ([coder containsValueForKey:@"NS.nameFormatterLocale"])
    {
      self->_locale = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NS.nameFormatterLocale", "copy"}];
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersonNameComponents cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  [coder encodeInteger:self->_style forKey:@"NS.nameFormatterStyle"];
  [coder encodeBool:self->_phonetic forKey:@"NS.nameFormatterIsPhonetic"];
  [coder encodeBool:self->_forceFamilyNameFirst forKey:@"NS.nameFormatterForceFamilyNameFirst"];
  [coder encodeBool:self->_forceGivenNameFirst forKey:@"NS.nameFormatterForceGivenNameFirst"];
  [coder encodeBool:self->_ignoresFallbacks forKey:@"NS.nameFormatterIgnoresFallbacks"];
  locale = self->_locale;

  [coder encodeObject:locale forKey:@"NS.nameFormatterLocale"];
}

- (BOOL)isEqualToFormatterData:(void *)data
{
  result = 0;
  if (data && a2)
  {
    if ([data locale] && objc_msgSend(a2, "locale"))
    {
      if (([objc_msgSend(data "locale")] & 1) == 0)
      {
        return 0;
      }
    }

    else if ([data locale] || objc_msgSend(a2, "locale"))
    {
      return 0;
    }

    phonetic = [data phonetic];
    if (phonetic == [a2 phonetic])
    {
      forceFamilyNameFirst = [data forceFamilyNameFirst];
      if (forceFamilyNameFirst == [a2 forceFamilyNameFirst])
      {
        forceGivenNameFirst = [data forceGivenNameFirst];
        if (forceGivenNameFirst == [a2 forceGivenNameFirst])
        {
          ignoresFallbacks = [data ignoresFallbacks];
          if (ignoresFallbacks == [a2 ignoresFallbacks])
          {
            style = [data style];
            return style == [a2 style];
          }
        }
      }
    }

    return 0;
  }

  return result;
}

@end