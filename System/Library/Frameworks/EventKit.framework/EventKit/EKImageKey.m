@interface EKImageKey
- (BOOL)isEqual:(id)a3;
- (EKImageKey)initWithSourceID:(id)a3 identifier:(id)a4;
@end

@implementation EKImageKey

- (EKImageKey)initWithSourceID:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EKImageKey;
  v9 = [(EKImageKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceID, a3);
    objc_storeStrong(&v10->_identifier, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
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