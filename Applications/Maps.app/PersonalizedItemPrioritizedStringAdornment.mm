@interface PersonalizedItemPrioritizedStringAdornment
+ (PersonalizedItemPrioritizedStringAdornment)adornmentWithString:(id)a3 locale:(id)a4 priority:(unint64_t)a5;
+ (id)defaultAdornment;
- (PersonalizedItemPrioritizedStringAdornment)initWithString:(id)a3 locale:(id)a4 priority:(unint64_t)a5;
- (id)combineAdornment:(id)a3;
@end

@implementation PersonalizedItemPrioritizedStringAdornment

+ (id)defaultAdornment
{
  if (qword_10195F318 != -1)
  {
    dispatch_once(&qword_10195F318, &stru_101655A10);
  }

  v3 = qword_10195F310;

  return v3;
}

- (PersonalizedItemPrioritizedStringAdornment)initWithString:(id)a3 locale:(id)a4 priority:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PersonalizedItemPrioritizedStringAdornment;
  v11 = [(PersonalizedItemPrioritizedStringAdornment *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_value, a3);
    objc_storeStrong(&v12->_locale, a4);
    v12->_priority = a5;
  }

  return v12;
}

- (id)combineAdornment:(id)a3
{
  v4 = a3;
  v5 = [(PersonalizedItemPrioritizedStringAdornment *)v4 priority];
  v6 = v4;
  if (v5 <= [(PersonalizedItemPrioritizedStringAdornment *)self priority])
  {
    v7 = [(PersonalizedItemPrioritizedStringAdornment *)v4 priority];
    if (v7 == [(PersonalizedItemPrioritizedStringAdornment *)self priority])
    {
      v8 = [(PersonalizedItemPrioritizedStringAdornment *)self value];
      v9 = [v8 length];

      if (v9)
      {
        v6 = self;
      }

      else
      {
        v6 = v4;
      }
    }

    else
    {
      v6 = self;
    }
  }

  v10 = v6;

  return v6;
}

+ (PersonalizedItemPrioritizedStringAdornment)adornmentWithString:(id)a3 locale:(id)a4 priority:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithString:v9 locale:v8 priority:a5];

  return v10;
}

@end