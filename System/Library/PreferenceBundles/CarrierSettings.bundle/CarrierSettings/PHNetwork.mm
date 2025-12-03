@interface PHNetwork
+ (id)networkFromDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)code;
- (NSString)displayName;
- (PHNetwork)initWithName:(id)name;
- (id)description;
- (unint64_t)hash;
@end

@implementation PHNetwork

+ (id)networkFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    v3 = *MEMORY[0x277CC3CF0];
    dictionaryCopy = dictionary;
    v5 = [dictionaryCopy objectForKey:v3];
    v6 = [[PHNetwork alloc] initWithName:v5];
    [(PHNetwork *)v6 setDictionaryRepresentation:dictionaryCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PHNetwork)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = PHNetwork;
  v6 = [(PHNetwork *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (NSString)displayName
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  name = [(PHNetwork *)self name];
  v5 = [v3 localizedStringForKey:name value:&stru_284EE7748 table:@"Carrier"];

  return v5;
}

- (NSString)code
{
  dictionaryRepresentation = [(PHNetwork *)self dictionaryRepresentation];

  if (dictionaryRepresentation)
  {
    dictionaryRepresentation2 = [(PHNetwork *)self dictionaryRepresentation];
    v5 = [dictionaryRepresentation2 valueForKey:*MEMORY[0x277CC3CC8]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    dictionaryRepresentation = [(PHNetwork *)self dictionaryRepresentation];
    if (dictionaryRepresentation && (v7 = dictionaryRepresentation, [v5 dictionaryRepresentation], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      code = [(PHNetwork *)self code];
      if (code)
      {
        code2 = [v5 code];
        if (code2)
        {
          code3 = [(PHNetwork *)self code];
          code4 = [v5 code];
          v13 = [code3 isEqualToString:code4];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  dictionaryRepresentation = [(PHNetwork *)self dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [(PHNetwork *)self dictionaryRepresentation];
  }

  else
  {
    [(PHNetwork *)self name];
  }
  v4 = ;
  v5 = [v4 hash];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(PHNetwork *)self name];
  code = [(PHNetwork *)self code];
  v6 = [v3 stringWithFormat:@"PHNetwork: '%@' %@. State:%lu", name, code, -[PHNetwork state](self, "state")];

  return v6;
}

@end