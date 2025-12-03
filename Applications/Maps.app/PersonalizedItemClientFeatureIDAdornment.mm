@interface PersonalizedItemClientFeatureIDAdornment
+ (PersonalizedItemClientFeatureIDAdornment)adornmentWithClientFeatureID:(unint64_t)d;
- (PersonalizedItemClientFeatureIDAdornment)initWithClientFeatureID:(unint64_t)d;
- (id)combineAdornment:(id)adornment;
@end

@implementation PersonalizedItemClientFeatureIDAdornment

- (id)combineAdornment:(id)adornment
{
  adornmentCopy = adornment;
  if ([adornmentCopy clientFeatureID])
  {
    clientFeatureID = self->_clientFeatureID;
    v6 = objc_opt_class();
    if (clientFeatureID)
    {
      v7 = self->_clientFeatureID;
      clientFeatureID = ([adornmentCopy clientFeatureID] ^ v7);
    }

    else
    {
      clientFeatureID = [adornmentCopy clientFeatureID];
    }

    v9 = v6;
  }

  else
  {
    v9 = objc_opt_class();
    clientFeatureID = self->_clientFeatureID;
  }

  v10 = [v9 adornmentWithClientFeatureID:clientFeatureID];

  return v10;
}

- (PersonalizedItemClientFeatureIDAdornment)initWithClientFeatureID:(unint64_t)d
{
  v5.receiver = self;
  v5.super_class = PersonalizedItemClientFeatureIDAdornment;
  result = [(PersonalizedItemClientFeatureIDAdornment *)&v5 init];
  if (result)
  {
    result->_clientFeatureID = d;
  }

  return result;
}

+ (PersonalizedItemClientFeatureIDAdornment)adornmentWithClientFeatureID:(unint64_t)d
{
  v3 = [[self alloc] initWithClientFeatureID:d];

  return v3;
}

@end