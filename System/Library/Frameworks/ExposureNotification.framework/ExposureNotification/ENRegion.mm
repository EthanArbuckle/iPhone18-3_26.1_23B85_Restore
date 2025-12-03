@interface ENRegion
+ (BOOL)validSubdivisionCode:(id)code forCountryCode:(id)countryCode;
+ (ENRegion)regionWithCode:(id)code;
+ (id)regionFromServerResponseDictionary:(id)dictionary;
- (BOOL)isCountryCodeEqualToRegion:(id)region;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSubdivisionCodeEqualToRegion:(id)region;
- (ENRegion)initWithCoder:(id)coder;
- (ENRegion)initWithCountryCode:(id)code subdivisionCode:(id)subdivisionCode;
- (NSString)regionCode;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENRegion

+ (ENRegion)regionWithCode:(id)code
{
  codeCopy = code;
  if ([codeCopy containsString:@"-"])
  {
    v4 = [codeCopy componentsSeparatedByString:@"-"];
    firstObject = [v4 firstObject];
    v6 = [[ENRegion alloc] initWithCountryCode:firstObject subdivisionCode:codeCopy];

    codeCopy = v4;
  }

  else
  {
    v6 = [[ENRegion alloc] initWithCountryCode:codeCopy];
  }

  return v6;
}

- (ENRegion)initWithCountryCode:(id)code subdivisionCode:(id)subdivisionCode
{
  codeCopy = code;
  subdivisionCodeCopy = subdivisionCode;
  v14.receiver = self;
  v14.super_class = ENRegion;
  v8 = [(ENRegion *)&v14 init];
  if (v8)
  {
    uppercaseString = [codeCopy uppercaseString];
    countryCode = v8->_countryCode;
    v8->_countryCode = uppercaseString;

    if (subdivisionCodeCopy)
    {
      if ([ENRegion validSubdivisionCode:subdivisionCodeCopy forCountryCode:codeCopy])
      {
        uppercaseString2 = [subdivisionCodeCopy uppercaseString];
        subdivisionCode = v8->_subdivisionCode;
        v8->_subdivisionCode = uppercaseString2;
      }

      else if (gLogCategory_ENRegion <= 90 && (gLogCategory_ENRegion != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }
  }

  return v8;
}

- (ENRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subdivisionCode"];

  v7 = [(ENRegion *)self initWithCountryCode:v5 subdivisionCode:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  countryCode = self->_countryCode;
  coderCopy = coder;
  [coderCopy encodeObject:countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_subdivisionCode forKey:@"subdivisionCode"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  countryCode = self->_countryCode;
  subdivisionCode = self->_subdivisionCode;

  return [v4 initWithCountryCode:countryCode subdivisionCode:subdivisionCode];
}

- (BOOL)isCountryCodeEqualToRegion:(id)region
{
  countryCode = self->_countryCode;
  countryCode = [region countryCode];
  v5 = countryCode;
  v6 = countryCode;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else if ((v5 != 0) == (v6 == 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSString *)v5 isEqual:v6];
  }

  return v8;
}

- (BOOL)isSubdivisionCodeEqualToRegion:(id)region
{
  subdivisionCode = self->_subdivisionCode;
  subdivisionCode = [region subdivisionCode];
  v5 = subdivisionCode;
  v6 = subdivisionCode;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else if ((v5 != 0) == (v6 == 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSString *)v5 isEqual:v6];
  }

  return v8;
}

+ (BOOL)validSubdivisionCode:(id)code forCountryCode:(id)countryCode
{
  codeCopy = code;
  countryCodeCopy = countryCode;
  if ([codeCopy length] && objc_msgSend(codeCopy, "containsString:", @"-"))
  {
    v7 = [codeCopy substringToIndex:{objc_msgSend(codeCopy, "rangeOfString:", @"-"}];
    v8 = [v7 isEqualToString:countryCodeCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([(ENRegion *)self isCountryCodeEqualToRegion:v5])
    {
      v6 = [(ENRegion *)self isSubdivisionCodeEqualToRegion:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)regionCode
{
  if ([(ENRegion *)self validSubdivisionCode])
  {
    [(ENRegion *)self subdivisionCode];
  }

  else
  {
    [(ENRegion *)self countryCode];
  }
  v3 = ;

  return v3;
}

+ (id)regionFromServerResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  CFStringGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (![v5 length])
  {
    v6 = [[ENRegion alloc] initWithCountryCode:v4];
    goto LABEL_5;
  }

  if ([ENRegion validSubdivisionCode:v5 forCountryCode:v4])
  {
    v6 = [[ENRegion alloc] initWithCountryCode:v4 subdivisionCode:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  if (gLogCategory__ENRegionServerConfiguration <= 90 && (gLogCategory__ENRegionServerConfiguration != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end