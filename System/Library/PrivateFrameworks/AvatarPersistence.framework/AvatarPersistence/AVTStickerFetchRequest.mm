@interface AVTStickerFetchRequest
+ (id)requestForAllRecentStickers;
+ (id)requestForMostRecentStickersWithResultLimit:(int64_t)limit;
+ (id)requestForStickersWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier;
- (AVTStickerFetchRequest)initWithCriteria:(int64_t)criteria;
- (AVTStickerFetchRequest)initWithCriteria:(int64_t)criteria avatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier;
- (AVTStickerFetchRequest)initWithCriteria:(int64_t)criteria resultLimit:(int64_t)limit;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVTStickerFetchRequest

+ (id)requestForAllRecentStickers
{
  v2 = [[self alloc] initWithCriteria:1];

  return v2;
}

+ (id)requestForMostRecentStickersWithResultLimit:(int64_t)limit
{
  v3 = [[self alloc] initWithCriteria:2 resultLimit:limit];

  return v3;
}

+ (id)requestForStickersWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier
{
  stickerIdentifierCopy = stickerIdentifier;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithCriteria:3 avatarIdentifier:identifierCopy stickerIdentifier:stickerIdentifierCopy];

  return v8;
}

- (AVTStickerFetchRequest)initWithCriteria:(int64_t)criteria
{
  v5.receiver = self;
  v5.super_class = AVTStickerFetchRequest;
  result = [(AVTStickerFetchRequest *)&v5 init];
  if (result)
  {
    result->_criteria = criteria;
  }

  return result;
}

- (AVTStickerFetchRequest)initWithCriteria:(int64_t)criteria resultLimit:(int64_t)limit
{
  result = [(AVTStickerFetchRequest *)self initWithCriteria:criteria];
  if (result)
  {
    result->_resultLimit = limit;
  }

  return result;
}

- (AVTStickerFetchRequest)initWithCriteria:(int64_t)criteria avatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier
{
  identifierCopy = identifier;
  stickerIdentifierCopy = stickerIdentifier;
  v11 = [(AVTStickerFetchRequest *)self initWithCriteria:criteria];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_avatarIdentifier, identifier);
    objc_storeStrong(&v12->_stickerIdentifier, stickerIdentifier);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      criteria = [(AVTStickerFetchRequest *)self criteria];
      if (criteria == [(AVTStickerFetchRequest *)equalCopy criteria])
      {
        resultLimit = [(AVTStickerFetchRequest *)self resultLimit];
        if (resultLimit == [(AVTStickerFetchRequest *)equalCopy resultLimit])
        {
          avatarIdentifier = [(AVTStickerFetchRequest *)self avatarIdentifier];
          if (!avatarIdentifier)
          {
            avatarIdentifier2 = [(AVTStickerFetchRequest *)equalCopy avatarIdentifier];
            if (!avatarIdentifier2)
            {
LABEL_9:
              stickerIdentifier = [(AVTStickerFetchRequest *)self stickerIdentifier];
              if (stickerIdentifier || ([(AVTStickerFetchRequest *)equalCopy stickerIdentifier], (avatarIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                stickerIdentifier2 = [(AVTStickerFetchRequest *)self stickerIdentifier];
                stickerIdentifier3 = [(AVTStickerFetchRequest *)equalCopy stickerIdentifier];
                v15 = [stickerIdentifier2 isEqual:stickerIdentifier3];

                if (stickerIdentifier)
                {
LABEL_19:

                  goto LABEL_16;
                }
              }

              else
              {
                v15 = 1;
              }

              goto LABEL_19;
            }
          }

          avatarIdentifier3 = [(AVTStickerFetchRequest *)self avatarIdentifier];
          avatarIdentifier4 = [(AVTStickerFetchRequest *)equalCopy avatarIdentifier];
          v11 = [avatarIdentifier3 isEqual:avatarIdentifier4];

          if (avatarIdentifier)
          {

            if (v11)
            {
              goto LABEL_9;
            }
          }

          else
          {

            if (v11)
            {
              goto LABEL_9;
            }
          }
        }
      }
    }

    v15 = 0;
  }

LABEL_16:

  return v15;
}

- (unint64_t)hash
{
  avatarIdentifier = [(AVTStickerFetchRequest *)self avatarIdentifier];
  avatarIdentifier2 = [(AVTStickerFetchRequest *)self avatarIdentifier];
  *(&v6 + 1) = avatarIdentifier;
  *&v6 = avatarIdentifier2;
  v5 = v6 >> 48;
  stickerIdentifier = [(AVTStickerFetchRequest *)self stickerIdentifier];
  stickerIdentifier2 = [(AVTStickerFetchRequest *)self stickerIdentifier];
  *(&v6 + 1) = stickerIdentifier;
  *&v6 = stickerIdentifier2;
  v9 = (v6 >> 43) ^ v5;
  *(&v6 + 1) = [(AVTStickerFetchRequest *)self resultLimit];
  *&v6 = [(AVTStickerFetchRequest *)self resultLimit];
  v10 = (v6 >> 32) ^ [(AVTStickerFetchRequest *)self criteria];

  return v9 ^ v10;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = AVTStickerFetchRequest;
  v3 = [(AVTStickerFetchRequest *)&v11 description];
  v4 = [v3 mutableCopy];

  criteria = [(AVTStickerFetchRequest *)self criteria];
  resultLimit = [(AVTStickerFetchRequest *)self resultLimit];
  avatarIdentifier = [(AVTStickerFetchRequest *)self avatarIdentifier];
  stickerIdentifier = [(AVTStickerFetchRequest *)self stickerIdentifier];
  [v4 appendFormat:@" criteria:%ld limit:%ld ari:%@ sci:%@", criteria, resultLimit, avatarIdentifier, stickerIdentifier];

  v9 = [v4 copy];

  return v9;
}

@end