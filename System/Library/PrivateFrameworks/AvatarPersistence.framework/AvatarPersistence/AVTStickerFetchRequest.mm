@interface AVTStickerFetchRequest
+ (id)requestForAllRecentStickers;
+ (id)requestForMostRecentStickersWithResultLimit:(int64_t)a3;
+ (id)requestForStickersWithAvatarIdentifier:(id)a3 stickerIdentifier:(id)a4;
- (AVTStickerFetchRequest)initWithCriteria:(int64_t)a3;
- (AVTStickerFetchRequest)initWithCriteria:(int64_t)a3 avatarIdentifier:(id)a4 stickerIdentifier:(id)a5;
- (AVTStickerFetchRequest)initWithCriteria:(int64_t)a3 resultLimit:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVTStickerFetchRequest

+ (id)requestForAllRecentStickers
{
  v2 = [[a1 alloc] initWithCriteria:1];

  return v2;
}

+ (id)requestForMostRecentStickersWithResultLimit:(int64_t)a3
{
  v3 = [[a1 alloc] initWithCriteria:2 resultLimit:a3];

  return v3;
}

+ (id)requestForStickersWithAvatarIdentifier:(id)a3 stickerIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithCriteria:3 avatarIdentifier:v7 stickerIdentifier:v6];

  return v8;
}

- (AVTStickerFetchRequest)initWithCriteria:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AVTStickerFetchRequest;
  result = [(AVTStickerFetchRequest *)&v5 init];
  if (result)
  {
    result->_criteria = a3;
  }

  return result;
}

- (AVTStickerFetchRequest)initWithCriteria:(int64_t)a3 resultLimit:(int64_t)a4
{
  result = [(AVTStickerFetchRequest *)self initWithCriteria:a3];
  if (result)
  {
    result->_resultLimit = a4;
  }

  return result;
}

- (AVTStickerFetchRequest)initWithCriteria:(int64_t)a3 avatarIdentifier:(id)a4 stickerIdentifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(AVTStickerFetchRequest *)self initWithCriteria:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_avatarIdentifier, a4);
    objc_storeStrong(&v12->_stickerIdentifier, a5);
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(AVTStickerFetchRequest *)self criteria];
      if (v6 == [(AVTStickerFetchRequest *)v5 criteria])
      {
        v7 = [(AVTStickerFetchRequest *)self resultLimit];
        if (v7 == [(AVTStickerFetchRequest *)v5 resultLimit])
        {
          v8 = [(AVTStickerFetchRequest *)self avatarIdentifier];
          if (!v8)
          {
            v3 = [(AVTStickerFetchRequest *)v5 avatarIdentifier];
            if (!v3)
            {
LABEL_9:
              v12 = [(AVTStickerFetchRequest *)self stickerIdentifier];
              if (v12 || ([(AVTStickerFetchRequest *)v5 stickerIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v13 = [(AVTStickerFetchRequest *)self stickerIdentifier];
                v14 = [(AVTStickerFetchRequest *)v5 stickerIdentifier];
                v15 = [v13 isEqual:v14];

                if (v12)
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

          v9 = [(AVTStickerFetchRequest *)self avatarIdentifier];
          v10 = [(AVTStickerFetchRequest *)v5 avatarIdentifier];
          v11 = [v9 isEqual:v10];

          if (v8)
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
  v3 = [(AVTStickerFetchRequest *)self avatarIdentifier];
  v4 = [(AVTStickerFetchRequest *)self avatarIdentifier];
  *(&v6 + 1) = v3;
  *&v6 = v4;
  v5 = v6 >> 48;
  v7 = [(AVTStickerFetchRequest *)self stickerIdentifier];
  v8 = [(AVTStickerFetchRequest *)self stickerIdentifier];
  *(&v6 + 1) = v7;
  *&v6 = v8;
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

  v5 = [(AVTStickerFetchRequest *)self criteria];
  v6 = [(AVTStickerFetchRequest *)self resultLimit];
  v7 = [(AVTStickerFetchRequest *)self avatarIdentifier];
  v8 = [(AVTStickerFetchRequest *)self stickerIdentifier];
  [v4 appendFormat:@" criteria:%ld limit:%ld ari:%@ sci:%@", v5, v6, v7, v8];

  v9 = [v4 copy];

  return v9;
}

@end