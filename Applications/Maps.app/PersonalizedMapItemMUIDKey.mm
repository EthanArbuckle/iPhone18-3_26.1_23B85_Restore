@interface PersonalizedMapItemMUIDKey
- (BOOL)isEqual:(id)equal;
- (PersonalizedMapItemMUIDKey)initWithMUID:(unint64_t)d;
@end

@implementation PersonalizedMapItemMUIDKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v9 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    muid = [(PersonalizedMapItemMUIDKey *)self muid];
    muid2 = [(PersonalizedMapItemMUIDKey *)v6 muid];

    v9 = muid == muid2;
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (PersonalizedMapItemMUIDKey)initWithMUID:(unint64_t)d
{
  v8.receiver = self;
  v8.super_class = PersonalizedMapItemMUIDKey;
  v4 = [(PersonalizedMapItemMUIDKey *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_muid = d;
    v6 = [NSNumber numberWithUnsignedLongLong:d];
    v5->_hash = [v6 hash];
  }

  return v5;
}

@end