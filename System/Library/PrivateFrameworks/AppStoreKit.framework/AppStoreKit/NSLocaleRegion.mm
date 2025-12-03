@interface NSLocaleRegion
- (BOOL)isEqual:(id)equal;
- (NSLocaleRegion)initWithLocaleIdentifier:(id)identifier;
- (NSLocaleRegion)initWithRegionIdentifier:(id)identifier;
- (unint64_t)hash;
@end

@implementation NSLocaleRegion

- (NSLocaleRegion)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = NSLocaleRegion;
  v5 = [(NSLocaleRegion *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifierCopy];
    v7 = v6;
    if (v6)
    {
      countryCode = [v6 countryCode];
      if ([countryCode length])
      {
        if ([countryCode isEqualToString:@"XKS"])
        {
          [(NSLocaleRegion *)v5 setTwoCharacterCode:@"XK"];
          [(NSLocaleRegion *)v5 setThreeCharacterCode:@"XKK"];
        }

        else
        {
          [(NSLocaleRegion *)v5 setTwoCharacterCode:countryCode];
          threeCharacterRegionCode = [v7 threeCharacterRegionCode];
          [(NSLocaleRegion *)v5 setThreeCharacterCode:threeCharacterRegionCode];
        }

        v9 = v5;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSLocaleRegion)initWithRegionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = NSLocaleRegion;
  v5 = [(NSLocaleRegion *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DF58];
    v7 = [@"_" stringByAppendingString:identifierCopy];
    v8 = [v6 localeWithLocaleIdentifier:v7];

    if (v8)
    {
      countryCode = [v8 countryCode];
      if ([countryCode length])
      {
        if ([countryCode isEqualToString:@"XKS"])
        {
          [(NSLocaleRegion *)v5 setTwoCharacterCode:@"XK"];
          [(NSLocaleRegion *)v5 setThreeCharacterCode:@"XKK"];
        }

        else
        {
          [(NSLocaleRegion *)v5 setTwoCharacterCode:countryCode];
          threeCharacterRegionCode = [v8 threeCharacterRegionCode];
          [(NSLocaleRegion *)v5 setThreeCharacterCode:threeCharacterRegionCode];
        }

        v10 = v5;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  twoCharacterCode = [(NSLocaleRegion *)self twoCharacterCode];
  v3 = [twoCharacterCode hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      twoCharacterCode = [(NSLocaleRegion *)self twoCharacterCode];
      twoCharacterCode2 = [(NSLocaleRegion *)equalCopy twoCharacterCode];
      v7 = [twoCharacterCode isEqual:twoCharacterCode2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end