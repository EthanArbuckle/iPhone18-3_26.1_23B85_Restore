@interface ENRegion
+ (BOOL)validSubdivisionCode:(id)a3 forCountryCode:(id)a4;
+ (ENRegion)regionWithCode:(id)a3;
+ (id)regionFromServerResponseDictionary:(id)a3;
- (BOOL)isCountryCodeEqualToRegion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSubdivisionCodeEqualToRegion:(id)a3;
- (ENRegion)initWithCoder:(id)a3;
- (ENRegion)initWithCountryCode:(id)a3 subdivisionCode:(id)a4;
- (NSString)regionCode;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENRegion

+ (ENRegion)regionWithCode:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@"-"])
  {
    v4 = [v3 componentsSeparatedByString:@"-"];
    v5 = [v4 firstObject];
    v6 = [[ENRegion alloc] initWithCountryCode:v5 subdivisionCode:v3];

    v3 = v4;
  }

  else
  {
    v6 = [[ENRegion alloc] initWithCountryCode:v3];
  }

  return v6;
}

- (ENRegion)initWithCountryCode:(id)a3 subdivisionCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ENRegion;
  v8 = [(ENRegion *)&v14 init];
  if (v8)
  {
    v9 = [v6 uppercaseString];
    countryCode = v8->_countryCode;
    v8->_countryCode = v9;

    if (v7)
    {
      if ([ENRegion validSubdivisionCode:v7 forCountryCode:v6])
      {
        v11 = [v7 uppercaseString];
        subdivisionCode = v8->_subdivisionCode;
        v8->_subdivisionCode = v11;
      }

      else if (gLogCategory_ENRegion <= 90 && (gLogCategory_ENRegion != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }
  }

  return v8;
}

- (ENRegion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subdivisionCode"];

  v7 = [(ENRegion *)self initWithCountryCode:v5 subdivisionCode:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  countryCode = self->_countryCode;
  v5 = a3;
  [v5 encodeObject:countryCode forKey:@"countryCode"];
  [v5 encodeObject:self->_subdivisionCode forKey:@"subdivisionCode"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  countryCode = self->_countryCode;
  subdivisionCode = self->_subdivisionCode;

  return [v4 initWithCountryCode:countryCode subdivisionCode:subdivisionCode];
}

- (BOOL)isCountryCodeEqualToRegion:(id)a3
{
  countryCode = self->_countryCode;
  v4 = [a3 countryCode];
  v5 = countryCode;
  v6 = v4;
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

- (BOOL)isSubdivisionCodeEqualToRegion:(id)a3
{
  subdivisionCode = self->_subdivisionCode;
  v4 = [a3 subdivisionCode];
  v5 = subdivisionCode;
  v6 = v4;
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

+ (BOOL)validSubdivisionCode:(id)a3 forCountryCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v5, "containsString:", @"-"))
  {
    v7 = [v5 substringToIndex:{objc_msgSend(v5, "rangeOfString:", @"-"}];
    v8 = [v7 isEqualToString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

+ (id)regionFromServerResponseDictionary:(id)a3
{
  v3 = a3;
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