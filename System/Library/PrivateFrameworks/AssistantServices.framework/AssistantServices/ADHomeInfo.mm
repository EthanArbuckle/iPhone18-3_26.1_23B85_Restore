@interface ADHomeInfo
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation ADHomeInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ADHomeInfo);
  [(ADHomeInfo *)v4 setPersonalDomainsIsEnabled:[(ADHomeInfo *)self personalDomainsIsEnabled]];
  [(ADHomeInfo *)v4 setSecurePersonalDomainsRequireAuth:[(ADHomeInfo *)self securePersonalDomainsRequireAuth]];
  v5 = [(ADHomeInfo *)self currentHomeIdentifier];
  [(ADHomeInfo *)v4 setCurrentHomeIdentifier:v5];

  return v4;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithBool:self->_personalDomainsIsEnabled];
  v4 = [v3 hash];
  v5 = [NSNumber numberWithBool:self->_securePersonalDomainsRequireAuth];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSUUID *)self->_currentHomeIdentifier hash];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (self->_personalDomainsIsEnabled == *(v5 + 8) && self->_securePersonalDomainsRequireAuth == *(v5 + 9))
    {
      currentHomeIdentifier = self->_currentHomeIdentifier;
      if (currentHomeIdentifier | v6[2])
      {
        v8 = [(NSUUID *)currentHomeIdentifier isEqual:?];
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v10.receiver = self;
  v10.super_class = ADHomeInfo;
  v4 = [(ADHomeInfo *)&v10 description];
  v5 = [(ADHomeInfo *)self personalDomainsIsEnabled];
  v6 = [(ADHomeInfo *)self securePersonalDomainsRequireAuth];
  v7 = [(ADHomeInfo *)self currentHomeIdentifier];
  v8 = [v3 initWithFormat:@"%@ Personal Domains Enabled: %d Auth Required: %d, currentHomeIdentifier: %@", v4, v5, v6, v7];

  return v8;
}

@end