@interface AVTAvatarFetchRequest
+ (id)requestForAllAvatars;
+ (id)requestForAllAvatarsExcluding:(id)a3;
+ (id)requestForAvatarWithIdentifier:(id)a3;
+ (id)requestForAvatarsWithIdentifiers:(id)a3;
+ (id)requestForCustomAvatars;
+ (id)requestForCustomAvatarsWithLimit:(int64_t)a3;
+ (id)requestForPredefinedAvatars;
+ (id)requestForPredefinedAvatarsExcluding:(id)a3;
+ (id)requestForStorePrimaryAvatar;
- (AVTAvatarFetchRequest)initWithCriteria:(int64_t)a3 identifier:(id)a4;
- (AVTAvatarFetchRequest)initWithCriteria:(int64_t)a3 identifiers:(id)a4 excludedIdentifiers:(id)a5 fetchLimit:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation AVTAvatarFetchRequest

+ (id)requestForAllAvatars
{
  v2 = [[a1 alloc] initWithCriteria:0];

  return v2;
}

+ (id)requestForAllAvatarsExcluding:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCriteria:6 identifiers:0 excludedIdentifiers:v4 fetchLimit:0];

  return v5;
}

+ (id)requestForAvatarWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCriteria:1 identifier:v4];

  return v5;
}

+ (id)requestForAvatarsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v5 initWithCriteria:2 identifiers:v4 excludedIdentifiers:MEMORY[0x277CBEBF8] fetchLimit:0];

  return v6;
}

+ (id)requestForPredefinedAvatars
{
  v2 = [[a1 alloc] initWithCriteria:3];

  return v2;
}

+ (id)requestForPredefinedAvatarsExcluding:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCriteria:7 identifiers:0 excludedIdentifiers:v4 fetchLimit:0];

  return v5;
}

+ (id)requestForCustomAvatars
{
  v2 = [[a1 alloc] initWithCriteria:4];

  return v2;
}

+ (id)requestForCustomAvatarsWithLimit:(int64_t)a3
{
  v4 = [a1 alloc];
  v5 = [v4 initWithCriteria:4 identifiers:0 excludedIdentifiers:MEMORY[0x277CBEBF8] fetchLimit:a3];

  return v5;
}

+ (id)requestForStorePrimaryAvatar
{
  v2 = [[a1 alloc] initWithCriteria:5];

  return v2;
}

- (AVTAvatarFetchRequest)initWithCriteria:(int64_t)a3 identifier:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = [v6 arrayWithObjects:&v12 count:1];

  v9 = [(AVTAvatarFetchRequest *)self initWithCriteria:a3 identifiers:v8 excludedIdentifiers:MEMORY[0x277CBEBF8] fetchLimit:0, v12, v13];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (AVTAvatarFetchRequest)initWithCriteria:(int64_t)a3 identifiers:(id)a4 excludedIdentifiers:(id)a5 fetchLimit:(int64_t)a6
{
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AVTAvatarFetchRequest;
  v12 = [(AVTAvatarFetchRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_criteria = a3;
    v14 = [v10 copy];
    identifiers = v13->_identifiers;
    v13->_identifiers = v14;

    objc_storeStrong(&v13->_excludingIdentifiers, a5);
    v13->_fetchLimit = a6;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    v6 = [(AVTAvatarFetchRequest *)self criteria];
    if (v6 != [(AVTAvatarFetchRequest *)v5 criteria])
    {
      goto LABEL_17;
    }

    v7 = [(AVTAvatarFetchRequest *)self identifiers];
    if (v7 || ([(AVTAvatarFetchRequest *)v5 identifiers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(AVTAvatarFetchRequest *)self identifiers];
      v9 = [(AVTAvatarFetchRequest *)v5 identifiers];
      v10 = [v8 isEqual:v9];

      if (v7)
      {

        if (!v10)
        {
          goto LABEL_17;
        }
      }

      else
      {

        if ((v10 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    v12 = [(AVTAvatarFetchRequest *)self excludingIdentifiers];
    if (!v12)
    {
      v3 = [(AVTAvatarFetchRequest *)v5 excludingIdentifiers];
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    v13 = [(AVTAvatarFetchRequest *)self excludingIdentifiers];
    v14 = [(AVTAvatarFetchRequest *)v5 excludingIdentifiers];
    v15 = [v13 isEqual:v14];

    if (v12)
    {

      if (v15)
      {
LABEL_15:
        v16 = [(AVTAvatarFetchRequest *)self fetchLimit];
        v11 = v16 == [(AVTAvatarFetchRequest *)v5 fetchLimit];
        goto LABEL_18;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  v11 = 1;
LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(AVTAvatarFetchRequest *)self identifiers];
  v4 = [(AVTAvatarFetchRequest *)self identifiers];
  v5 = [(AVTAvatarFetchRequest *)self excludingIdentifiers];
  v6 = [(AVTAvatarFetchRequest *)self excludingIdentifiers];
  *(&v8 + 1) = v5 ^ v3;
  *&v8 = v6 ^ v4;
  v7 = v8 >> 43;
  *(&v8 + 1) = [(AVTAvatarFetchRequest *)self fetchLimit];
  *&v8 = [(AVTAvatarFetchRequest *)self fetchLimit];
  v9 = (v8 >> 32) ^ [(AVTAvatarFetchRequest *)self criteria];

  return v9 ^ v7;
}

@end