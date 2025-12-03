@interface PersonalizedItemPrioritizedStringAdornment
+ (PersonalizedItemPrioritizedStringAdornment)adornmentWithString:(id)string locale:(id)locale priority:(unint64_t)priority;
+ (id)defaultAdornment;
- (PersonalizedItemPrioritizedStringAdornment)initWithString:(id)string locale:(id)locale priority:(unint64_t)priority;
- (id)combineAdornment:(id)adornment;
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

- (PersonalizedItemPrioritizedStringAdornment)initWithString:(id)string locale:(id)locale priority:(unint64_t)priority
{
  stringCopy = string;
  localeCopy = locale;
  v14.receiver = self;
  v14.super_class = PersonalizedItemPrioritizedStringAdornment;
  v11 = [(PersonalizedItemPrioritizedStringAdornment *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_value, string);
    objc_storeStrong(&v12->_locale, locale);
    v12->_priority = priority;
  }

  return v12;
}

- (id)combineAdornment:(id)adornment
{
  adornmentCopy = adornment;
  priority = [(PersonalizedItemPrioritizedStringAdornment *)adornmentCopy priority];
  selfCopy2 = adornmentCopy;
  if (priority <= [(PersonalizedItemPrioritizedStringAdornment *)self priority])
  {
    priority2 = [(PersonalizedItemPrioritizedStringAdornment *)adornmentCopy priority];
    if (priority2 == [(PersonalizedItemPrioritizedStringAdornment *)self priority])
    {
      value = [(PersonalizedItemPrioritizedStringAdornment *)self value];
      v9 = [value length];

      if (v9)
      {
        selfCopy2 = self;
      }

      else
      {
        selfCopy2 = adornmentCopy;
      }
    }

    else
    {
      selfCopy2 = self;
    }
  }

  v10 = selfCopy2;

  return selfCopy2;
}

+ (PersonalizedItemPrioritizedStringAdornment)adornmentWithString:(id)string locale:(id)locale priority:(unint64_t)priority
{
  localeCopy = locale;
  stringCopy = string;
  v10 = [[self alloc] initWithString:stringCopy locale:localeCopy priority:priority];

  return v10;
}

@end