@interface LocationOfInterestItemKey
- (BOOL)isEqual:(id)equal;
- (LocationOfInterestItemKey)initWithLocationOfInterest:(id)interest;
- (unint64_t)hash;
@end

@implementation LocationOfInterestItemKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      locationOfInterest = [(LocationOfInterestItemKey *)equalCopy locationOfInterest];
      locationOfInterest2 = [(LocationOfInterestItemKey *)self locationOfInterest];
      identifier = [locationOfInterest2 identifier];
      if (identifier)
      {
        v8 = identifier;
        identifier2 = [locationOfInterest identifier];

        if (identifier2)
        {
          locationOfInterest3 = [(LocationOfInterestItemKey *)self locationOfInterest];
          identifier3 = [locationOfInterest3 identifier];
          identifier4 = [locationOfInterest identifier];
          v13 = [identifier3 isEqual:identifier4];

LABEL_10:
          goto LABEL_11;
        }
      }

      else
      {
      }

      locationOfInterest3 = [(LocationOfInterestItemKey *)self locationOfInterest];
      v13 = locationOfInterest3 == locationOfInterest;
      goto LABEL_10;
    }

    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (unint64_t)hash
{
  locationOfInterest = [(LocationOfInterestItemKey *)self locationOfInterest];
  identifier = [locationOfInterest identifier];
  locationOfInterest2 = [(LocationOfInterestItemKey *)self locationOfInterest];
  v6 = locationOfInterest2;
  if (identifier)
  {
    identifier2 = [locationOfInterest2 identifier];
    v8 = [identifier2 hash];
  }

  else
  {
    v8 = locationOfInterest2;
  }

  return v8;
}

- (LocationOfInterestItemKey)initWithLocationOfInterest:(id)interest
{
  interestCopy = interest;
  v9.receiver = self;
  v9.super_class = LocationOfInterestItemKey;
  v6 = [(LocationOfInterestItemKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationOfInterest, interest);
  }

  return v7;
}

@end