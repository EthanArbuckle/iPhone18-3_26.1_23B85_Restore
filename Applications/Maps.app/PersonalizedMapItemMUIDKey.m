@interface PersonalizedMapItemMUIDKey
- (BOOL)isEqual:(id)a3;
- (PersonalizedMapItemMUIDKey)initWithMUID:(unint64_t)a3;
@end

@implementation PersonalizedMapItemMUIDKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v9 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(PersonalizedMapItemMUIDKey *)self muid];
    v8 = [(PersonalizedMapItemMUIDKey *)v6 muid];

    v9 = v7 == v8;
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (PersonalizedMapItemMUIDKey)initWithMUID:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = PersonalizedMapItemMUIDKey;
  v4 = [(PersonalizedMapItemMUIDKey *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_muid = a3;
    v6 = [NSNumber numberWithUnsignedLongLong:a3];
    v5->_hash = [v6 hash];
  }

  return v5;
}

@end