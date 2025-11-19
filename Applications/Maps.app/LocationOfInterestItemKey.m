@interface LocationOfInterestItemKey
- (BOOL)isEqual:(id)a3;
- (LocationOfInterestItemKey)initWithLocationOfInterest:(id)a3;
- (unint64_t)hash;
@end

@implementation LocationOfInterestItemKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(LocationOfInterestItemKey *)v4 locationOfInterest];
      v6 = [(LocationOfInterestItemKey *)self locationOfInterest];
      v7 = [v6 identifier];
      if (v7)
      {
        v8 = v7;
        v9 = [v5 identifier];

        if (v9)
        {
          v10 = [(LocationOfInterestItemKey *)self locationOfInterest];
          v11 = [v10 identifier];
          v12 = [v5 identifier];
          v13 = [v11 isEqual:v12];

LABEL_10:
          goto LABEL_11;
        }
      }

      else
      {
      }

      v10 = [(LocationOfInterestItemKey *)self locationOfInterest];
      v13 = v10 == v5;
      goto LABEL_10;
    }

    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(LocationOfInterestItemKey *)self locationOfInterest];
  v4 = [v3 identifier];
  v5 = [(LocationOfInterestItemKey *)self locationOfInterest];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 identifier];
    v8 = [v7 hash];
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (LocationOfInterestItemKey)initWithLocationOfInterest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LocationOfInterestItemKey;
  v6 = [(LocationOfInterestItemKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationOfInterest, a3);
  }

  return v7;
}

@end