@interface FCUIFocus
- (BOOL)isEqual:(id)a3;
- (FCUIFocus)initWithMode:(id)a3;
- (NSString)activityColorName;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation FCUIFocus

- (FCUIFocus)initWithMode:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCUIFocus;
  v5 = [(FCUIFocus *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dndMode = v5->_dndMode;
    v5->_dndMode = v6;
  }

  return v5;
}

- (NSString)activityColorName
{
  v2 = [(DNDMode *)self->_dndMode tintColorName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[DNDMode defaultTintColorName];
  }

  v5 = v4;

  return v5;
}

- (unint64_t)hash
{
  v3 = [(FCUIFocus *)self activityUniqueIdentifier];
  v4 = [v3 hash];
  v5 = [(FCUIFocus *)self activityIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(FCUIFocus *)self activitySemanticType];
  v8 = [(FCUIFocus *)self activityDisplayName];
  v9 = v6 ^ v7 ^ [v8 hash];
  v10 = [(FCUIFocus *)self activitySymbolImageName];
  v11 = [v10 hash];
  v12 = [(FCUIFocus *)self activityColorName];
  v13 = v11 ^ [v12 hash];
  v14 = v13 ^ [(FCUIFocus *)self isPlaceholder];

  return v9 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(FCUIFocus *)self activityUniqueIdentifier];
      v7 = [(FCUIFocus *)v5 activityUniqueIdentifier];
      if (BSEqualObjects())
      {
        v8 = [(FCUIFocus *)self activityIdentifier];
        v9 = [(FCUIFocus *)v5 activityIdentifier];
        if (BSEqualObjects() && (v10 = [(FCUIFocus *)self activitySemanticType], v10 == [(FCUIFocus *)v5 activitySemanticType]))
        {
          v11 = [(FCUIFocus *)self activityDisplayName];
          v12 = [(FCUIFocus *)v5 activityDisplayName];
          if (BSEqualObjects())
          {
            v13 = [(FCUIFocus *)self activitySymbolImageName];
            [(FCUIFocus *)v5 activitySymbolImageName];
            v14 = v18 = v13;
            if (BSEqualObjects())
            {
              v15 = [(FCUIFocus *)self isPlaceholder];
              v16 = v15 ^ [(FCUIFocus *)v5 isPlaceholder]^ 1;
            }

            else
            {
              LOBYTE(v16) = 0;
            }
          }

          else
          {
            LOBYTE(v16) = 0;
          }
        }

        else
        {
          LOBYTE(v16) = 0;
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(FCUIFocus *)self activityIdentifier];
  v5 = [(FCUIFocus *)self activityUniqueIdentifier];
  v6 = [NSNumber numberWithInteger:[(FCUIFocus *)self activitySemanticType]];
  v7 = [(FCUIFocus *)self activityDisplayName];
  v8 = [(FCUIFocus *)self activitySymbolImageName];
  v9 = [(FCUIFocus *)self activityColorName];
  [(FCUIFocus *)self isPlaceholder];
  v10 = NSStringFromBOOL();
  v11 = [NSString stringWithFormat:@"<%@: %p activityIdentifier: %@; activityUniqueIdentifier: %@; activitySemanticType: %@; activityDisplayName: %@; activitySymbolImageName: %@; activityColorName: %@; isPlaceholder: %@ >", v3, self, v4, v5, v6, v7, v8, v9, v10];;

  return v11;
}

@end