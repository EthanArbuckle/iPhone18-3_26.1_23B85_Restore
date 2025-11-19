@interface PHNetwork
+ (id)networkFromDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)code;
- (NSString)displayName;
- (PHNetwork)initWithName:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PHNetwork

+ (id)networkFromDictionary:(id)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x277CC3CF0];
    v4 = a3;
    v5 = [v4 objectForKey:v3];
    v6 = [[PHNetwork alloc] initWithName:v5];
    [(PHNetwork *)v6 setDictionaryRepresentation:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PHNetwork)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHNetwork;
  v6 = [(PHNetwork *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
  }

  return v7;
}

- (NSString)displayName
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [(PHNetwork *)self name];
  v5 = [v3 localizedStringForKey:v4 value:&stru_284EE7748 table:@"Carrier"];

  return v5;
}

- (NSString)code
{
  v3 = [(PHNetwork *)self dictionaryRepresentation];

  if (v3)
  {
    v4 = [(PHNetwork *)self dictionaryRepresentation];
    v5 = [v4 valueForKey:*MEMORY[0x277CC3CC8]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PHNetwork *)self dictionaryRepresentation];
    if (v6 && (v7 = v6, [v5 dictionaryRepresentation], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      v9 = [(PHNetwork *)self code];
      if (v9)
      {
        v10 = [v5 code];
        if (v10)
        {
          v11 = [(PHNetwork *)self code];
          v12 = [v5 code];
          v13 = [v11 isEqualToString:v12];
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
  v3 = [(PHNetwork *)self dictionaryRepresentation];
  if (v3)
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
  v4 = [(PHNetwork *)self name];
  v5 = [(PHNetwork *)self code];
  v6 = [v3 stringWithFormat:@"PHNetwork: '%@' %@. State:%lu", v4, v5, -[PHNetwork state](self, "state")];

  return v6;
}

@end