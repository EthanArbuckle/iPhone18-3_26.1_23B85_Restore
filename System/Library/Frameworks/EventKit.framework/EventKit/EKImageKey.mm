@interface EKImageKey
- (BOOL)isEqual:(id)equal;
- (EKImageKey)initWithSourceID:(id)d identifier:(id)identifier;
@end

@implementation EKImageKey

- (EKImageKey)initWithSourceID:(id)d identifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = EKImageKey;
  v9 = [(EKImageKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceID, d);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    if ([v7[1] isEqual:self->_sourceID])
    {
      v6 = [v7[2] isEqualToString:self->_identifier];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end