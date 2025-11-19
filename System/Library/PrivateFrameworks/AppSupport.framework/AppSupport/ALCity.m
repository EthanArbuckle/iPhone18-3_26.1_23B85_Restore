@interface ALCity
- (ALCity)initWithProperties:(id)a3;
- (ALCity)initWithSQLRow:(char *)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)properties;
- (NSString)classicIdentifier;
- (NSString)countryName;
- (NSString)countryOverride;
- (NSString)name;
- (id)description;
- (id)displayNameIncludingCountry:(BOOL)a3 withFormat:(id)a4;
- (void)dealloc;
- (void)ensureLocalized;
- (void)setCountryName:(id)a3;
- (void)setCountryOverride:(id)a3;
- (void)setName:(id)a3;
- (void)setUnlocalizedCountryName:(id)a3;
- (void)setUnlocalizedName:(id)a3;
@end

@implementation ALCity

- (ALCity)initWithProperties:(id)a3
{
  v15.receiver = self;
  v15.super_class = ALCity;
  v4 = [(ALCity *)&v15 init];
  v5 = v4;
  if (!a3 || !v4)
  {
    return v5;
  }

  v4->_identifier = [objc_msgSend(a3 objectForKey:{@"identifier", "intValue"}];
  v5->_localeCode = [a3 objectForKey:@"localeCode"];
  v5->_timeZone = [a3 objectForKey:@"timeZone"];
  [objc_msgSend(a3 objectForKey:{@"longitude", "floatValue"}];
  v5->_longitude = v6;
  [objc_msgSend(a3 objectForKey:{@"latitude", "floatValue"}];
  v5->_latitude = v7;
  v5->_unlocalizedName = [a3 objectForKey:@"unlocalizedName"];
  v5->_unlocalizedCountryName = [a3 objectForKey:@"unlocalizedCountryName"];
  v5->_yahooCode = [a3 objectForKey:@"yahooCode"];
  v5->_name = [a3 objectForKey:@"name"];
  v5->_countryName = [a3 objectForKey:@"countryName"];
  v5->_countryOverride = [a3 objectForKey:@"countryOverride"];
  v5->_unlocalizedCountryOverride = [a3 objectForKey:@"unlocalizedCountryOverride"];
  v5->_displayNameIncludingCountryShowsOnlyCountry = [objc_msgSend(a3 objectForKey:{@"displayNameIncludingCountryUsesOnlyCountry", "BOOLValue"}];
  if (!v5->_unlocalizedName)
  {
    name = v5->_name;
    v5->_name = 0;
    v5->_unlocalizedName = name;
  }

  if (v5->_unlocalizedCountryName)
  {
    v9 = 0;
  }

  else
  {
    countryName = v5->_countryName;
    v5->_countryName = 0;
    v5->_unlocalizedCountryName = countryName;
    v9 = countryName == 0;
  }

  if (!v5->_unlocalizedCountryOverride)
  {
    countryOverride = v5->_countryOverride;
    v5->_countryOverride = 0;
    v5->_unlocalizedCountryOverride = countryOverride;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v9)
  {
LABEL_10:
    v5->_unlocalizedCountryName = &stru_1F0A49170;
  }

LABEL_11:
  v11 = v5->_name;
  v5->_localizationAttempted = v11 != 0;
  if (!v11)
  {
    v12 = v5->_countryName;
    if (v12 || v5->_countryOverride)
    {

      v5->_countryName = 0;
      v5->_countryOverride = 0;
    }
  }

  return v5;
}

- (ALCity)initWithSQLRow:(char *)a3
{
  v9.receiver = self;
  v9.super_class = ALCity;
  v4 = [(ALCity *)&v9 init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_identifier = atoi(a3[7]);
    if (a3[8])
    {
      v5->_localeCode = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3[8]];
    }

    v5->_timeZone = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3[5]];
    v5->_longitude = strtof(a3[3], 0);
    v5->_latitude = strtof(a3[4], 0);
    if (a3[6])
    {
      v5->_yahooCode = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3[6]];
    }

    v5->_unlocalizedName = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*a3];
    if (a3[1])
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3[1]];
    }

    else
    {
      v6 = &stru_1F0A49170;
    }

    v5->_unlocalizedCountryName = v6;
    if (a3[2])
    {
      v5->_unlocalizedCountryOverride = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3[2]];
    }

    if (v5->_identifier == 118)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSString *)v5->_localeCode isEqualToString:@"MO"];
    }

    v5->_displayNameIncludingCountryShowsOnlyCountry = v7;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ALCity;
  [(ALCity *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    LOBYTE(v5) = [a3 identifier] == self->_identifier;
  }

  return v5;
}

- (void)ensureLocalized
{
  if (!self->_localizationAttempted)
  {
    v3 = +[ALCityManager sharedManager];
    [v3 localizeCities:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", self)}];
    self->_localizationAttempted = 1;
  }
}

- (id)displayNameIncludingCountry:(BOOL)a3 withFormat:(id)a4
{
  v5 = a3;
  v7 = [(ALCity *)self name];
  if (!v5)
  {
    return v7;
  }

  v8 = [(ALCity *)self countryOverride];
  if (!v8)
  {
    v8 = [(ALCity *)self countryName];
  }

  if (![(NSString *)v8 length])
  {
    return v7;
  }

  v9 = MEMORY[0x1E696AEC0];
  if (!self->_displayNameIncludingCountryShowsOnlyCountry)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:a4, v7, v8];
  }

  return [v9 stringWithString:v8];
}

- (NSString)classicIdentifier
{
  result = self->_identifierForCPCity;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, %@", -[ALCity unlocalizedName](self, "unlocalizedName"), -[ALCity unlocalizedCountryName](self, "unlocalizedCountryName")];
    self->_identifierForCPCity = result;
  }

  return result;
}

- (NSDictionary)properties
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:12];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", self->_identifier), @"identifier"}];
  localeCode = self->_localeCode;
  if (localeCode)
  {
    [v3 setObject:localeCode forKey:@"localeCode"];
  }

  [v3 setObject:self->_timeZone forKey:@"timeZone"];
  *&v5 = self->_longitude;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v5), @"longitude"}];
  *&v6 = self->_latitude;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v6), @"latitude"}];
  yahooCode = self->_yahooCode;
  if (yahooCode)
  {
    [v3 setObject:yahooCode forKey:@"yahooCode"];
  }

  [v3 setObject:self->_unlocalizedName forKey:@"unlocalizedName"];
  [v3 setObject:self->_unlocalizedCountryName forKey:@"unlocalizedCountryName"];
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  countryName = self->_countryName;
  if (countryName)
  {
    [v3 setObject:countryName forKey:@"countryName"];
  }

  countryOverride = self->_countryOverride;
  if (countryOverride)
  {
    [v3 setObject:countryOverride forKey:@"countryOverride"];
  }

  unlocalizedCountryOverride = self->_unlocalizedCountryOverride;
  if (unlocalizedCountryOverride)
  {
    [v3 setObject:unlocalizedCountryOverride forKey:@"unlocalizedCountryOverride"];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_displayNameIncludingCountryShowsOnlyCountry), @"displayNameIncludingCountryUsesOnlyCountry"}];

  return v3;
}

- (NSString)name
{
  [(ALCity *)self ensureLocalized];
  result = self->_name;
  if (!result)
  {

    return [(ALCity *)self unlocalizedName];
  }

  return result;
}

- (void)setName:(id)a3
{
  name = self->_name;
  if (name != a3)
  {
    self->_localizationAttempted = 1;

    self->_name = a3;
  }
}

- (NSString)countryName
{
  [(ALCity *)self ensureLocalized];
  result = self->_countryName;
  if (!result)
  {

    return [(ALCity *)self unlocalizedCountryName];
  }

  return result;
}

- (void)setCountryName:(id)a3
{
  countryName = self->_countryName;
  if (countryName != a3)
  {
    self->_localizationAttempted = 1;

    self->_countryName = a3;
  }
}

- (NSString)countryOverride
{
  [(ALCity *)self ensureLocalized];
  result = self->_countryOverride;
  if (!result)
  {

    return [(ALCity *)self unlocalizedCountryOverride];
  }

  return result;
}

- (void)setCountryOverride:(id)a3
{
  countryOverride = self->_countryOverride;
  if (countryOverride != a3)
  {
    self->_localizationAttempted = 1;

    self->_countryOverride = a3;
  }
}

- (void)setUnlocalizedName:(id)a3
{
  unlocalizedName = self->_unlocalizedName;
  if (unlocalizedName != a3)
  {

    self->_unlocalizedName = a3;
    self->_identifierForCPCity = 0;
  }
}

- (void)setUnlocalizedCountryName:(id)a3
{
  unlocalizedCountryName = self->_unlocalizedCountryName;
  if (unlocalizedCountryName != a3)
  {

    self->_unlocalizedCountryName = a3;
    self->_identifierForCPCity = 0;
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALCity;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ [id %d], %@ [%@] || %@, %@, %@, || %f %f", -[ALCity description](&v3, sel_description), -[ALCity name](self, "name"), self->_identifier, -[ALCity countryName](self, "countryName"), -[ALCity countryOverride](self, "countryOverride"), self->_timeZone, self->_localeCode, self->_yahooCode, self->_latitude, self->_longitude];
}

@end