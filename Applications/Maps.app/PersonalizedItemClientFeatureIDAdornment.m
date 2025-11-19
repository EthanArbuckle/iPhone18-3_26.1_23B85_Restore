@interface PersonalizedItemClientFeatureIDAdornment
+ (PersonalizedItemClientFeatureIDAdornment)adornmentWithClientFeatureID:(unint64_t)a3;
- (PersonalizedItemClientFeatureIDAdornment)initWithClientFeatureID:(unint64_t)a3;
- (id)combineAdornment:(id)a3;
@end

@implementation PersonalizedItemClientFeatureIDAdornment

- (id)combineAdornment:(id)a3
{
  v4 = a3;
  if ([v4 clientFeatureID])
  {
    clientFeatureID = self->_clientFeatureID;
    v6 = objc_opt_class();
    if (clientFeatureID)
    {
      v7 = self->_clientFeatureID;
      v8 = ([v4 clientFeatureID] ^ v7);
    }

    else
    {
      v8 = [v4 clientFeatureID];
    }

    v9 = v6;
  }

  else
  {
    v9 = objc_opt_class();
    v8 = self->_clientFeatureID;
  }

  v10 = [v9 adornmentWithClientFeatureID:v8];

  return v10;
}

- (PersonalizedItemClientFeatureIDAdornment)initWithClientFeatureID:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PersonalizedItemClientFeatureIDAdornment;
  result = [(PersonalizedItemClientFeatureIDAdornment *)&v5 init];
  if (result)
  {
    result->_clientFeatureID = a3;
  }

  return result;
}

+ (PersonalizedItemClientFeatureIDAdornment)adornmentWithClientFeatureID:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithClientFeatureID:a3];

  return v3;
}

@end