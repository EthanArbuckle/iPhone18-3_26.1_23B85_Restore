@interface AVTAvatarFetchRequest
+ (id)requestForAllAvatars;
+ (id)requestForAllAvatarsExcluding:(id)excluding;
+ (id)requestForAvatarWithIdentifier:(id)identifier;
+ (id)requestForAvatarsWithIdentifiers:(id)identifiers;
+ (id)requestForCustomAvatars;
+ (id)requestForCustomAvatarsWithLimit:(int64_t)limit;
+ (id)requestForPredefinedAvatars;
+ (id)requestForPredefinedAvatarsExcluding:(id)excluding;
+ (id)requestForStorePrimaryAvatar;
- (AVTAvatarFetchRequest)initWithCriteria:(int64_t)criteria identifier:(id)identifier;
- (AVTAvatarFetchRequest)initWithCriteria:(int64_t)criteria identifiers:(id)identifiers excludedIdentifiers:(id)excludedIdentifiers fetchLimit:(int64_t)limit;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation AVTAvatarFetchRequest

+ (id)requestForAllAvatars
{
  v2 = [[self alloc] initWithCriteria:0];

  return v2;
}

+ (id)requestForAllAvatarsExcluding:(id)excluding
{
  excludingCopy = excluding;
  v5 = [[self alloc] initWithCriteria:6 identifiers:0 excludedIdentifiers:excludingCopy fetchLimit:0];

  return v5;
}

+ (id)requestForAvatarWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithCriteria:1 identifier:identifierCopy];

  return v5;
}

+ (id)requestForAvatarsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [self alloc];
  v6 = [v5 initWithCriteria:2 identifiers:identifiersCopy excludedIdentifiers:MEMORY[0x277CBEBF8] fetchLimit:0];

  return v6;
}

+ (id)requestForPredefinedAvatars
{
  v2 = [[self alloc] initWithCriteria:3];

  return v2;
}

+ (id)requestForPredefinedAvatarsExcluding:(id)excluding
{
  excludingCopy = excluding;
  v5 = [[self alloc] initWithCriteria:7 identifiers:0 excludedIdentifiers:excludingCopy fetchLimit:0];

  return v5;
}

+ (id)requestForCustomAvatars
{
  v2 = [[self alloc] initWithCriteria:4];

  return v2;
}

+ (id)requestForCustomAvatarsWithLimit:(int64_t)limit
{
  v4 = [self alloc];
  v5 = [v4 initWithCriteria:4 identifiers:0 excludedIdentifiers:MEMORY[0x277CBEBF8] fetchLimit:limit];

  return v5;
}

+ (id)requestForStorePrimaryAvatar
{
  v2 = [[self alloc] initWithCriteria:5];

  return v2;
}

- (AVTAvatarFetchRequest)initWithCriteria:(int64_t)criteria identifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = MEMORY[0x277CBEA60];
  identifierCopy2 = identifier;
  v8 = [v6 arrayWithObjects:&identifierCopy count:1];

  v9 = [(AVTAvatarFetchRequest *)self initWithCriteria:criteria identifiers:v8 excludedIdentifiers:MEMORY[0x277CBEBF8] fetchLimit:0, identifierCopy, v13];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (AVTAvatarFetchRequest)initWithCriteria:(int64_t)criteria identifiers:(id)identifiers excludedIdentifiers:(id)excludedIdentifiers fetchLimit:(int64_t)limit
{
  identifiersCopy = identifiers;
  excludedIdentifiersCopy = excludedIdentifiers;
  v17.receiver = self;
  v17.super_class = AVTAvatarFetchRequest;
  v12 = [(AVTAvatarFetchRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_criteria = criteria;
    v14 = [identifiersCopy copy];
    identifiers = v13->_identifiers;
    v13->_identifiers = v14;

    objc_storeStrong(&v13->_excludingIdentifiers, excludedIdentifiers);
    v13->_fetchLimit = limit;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    criteria = [(AVTAvatarFetchRequest *)self criteria];
    if (criteria != [(AVTAvatarFetchRequest *)equalCopy criteria])
    {
      goto LABEL_17;
    }

    identifiers = [(AVTAvatarFetchRequest *)self identifiers];
    if (identifiers || ([(AVTAvatarFetchRequest *)equalCopy identifiers], (excludingIdentifiers2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifiers2 = [(AVTAvatarFetchRequest *)self identifiers];
      identifiers3 = [(AVTAvatarFetchRequest *)equalCopy identifiers];
      v10 = [identifiers2 isEqual:identifiers3];

      if (identifiers)
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

    excludingIdentifiers = [(AVTAvatarFetchRequest *)self excludingIdentifiers];
    if (!excludingIdentifiers)
    {
      excludingIdentifiers2 = [(AVTAvatarFetchRequest *)equalCopy excludingIdentifiers];
      if (!excludingIdentifiers2)
      {
        goto LABEL_15;
      }
    }

    excludingIdentifiers3 = [(AVTAvatarFetchRequest *)self excludingIdentifiers];
    excludingIdentifiers4 = [(AVTAvatarFetchRequest *)equalCopy excludingIdentifiers];
    v15 = [excludingIdentifiers3 isEqual:excludingIdentifiers4];

    if (excludingIdentifiers)
    {

      if (v15)
      {
LABEL_15:
        fetchLimit = [(AVTAvatarFetchRequest *)self fetchLimit];
        v11 = fetchLimit == [(AVTAvatarFetchRequest *)equalCopy fetchLimit];
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
  identifiers = [(AVTAvatarFetchRequest *)self identifiers];
  identifiers2 = [(AVTAvatarFetchRequest *)self identifiers];
  excludingIdentifiers = [(AVTAvatarFetchRequest *)self excludingIdentifiers];
  excludingIdentifiers2 = [(AVTAvatarFetchRequest *)self excludingIdentifiers];
  *(&v8 + 1) = excludingIdentifiers ^ identifiers;
  *&v8 = excludingIdentifiers2 ^ identifiers2;
  v7 = v8 >> 43;
  *(&v8 + 1) = [(AVTAvatarFetchRequest *)self fetchLimit];
  *&v8 = [(AVTAvatarFetchRequest *)self fetchLimit];
  v9 = (v8 >> 32) ^ [(AVTAvatarFetchRequest *)self criteria];

  return v9 ^ v7;
}

@end