@interface FCUIFocus
- (BOOL)isEqual:(id)equal;
- (FCUIFocus)initWithMode:(id)mode;
- (NSString)activityColorName;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation FCUIFocus

- (FCUIFocus)initWithMode:(id)mode
{
  modeCopy = mode;
  v9.receiver = self;
  v9.super_class = FCUIFocus;
  v5 = [(FCUIFocus *)&v9 init];
  if (v5)
  {
    v6 = [modeCopy copy];
    dndMode = v5->_dndMode;
    v5->_dndMode = v6;
  }

  return v5;
}

- (NSString)activityColorName
{
  tintColorName = [(DNDMode *)self->_dndMode tintColorName];
  v3 = tintColorName;
  if (tintColorName)
  {
    v4 = tintColorName;
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
  activityUniqueIdentifier = [(FCUIFocus *)self activityUniqueIdentifier];
  v4 = [activityUniqueIdentifier hash];
  activityIdentifier = [(FCUIFocus *)self activityIdentifier];
  v6 = [activityIdentifier hash] ^ v4;
  activitySemanticType = [(FCUIFocus *)self activitySemanticType];
  activityDisplayName = [(FCUIFocus *)self activityDisplayName];
  v9 = v6 ^ activitySemanticType ^ [activityDisplayName hash];
  activitySymbolImageName = [(FCUIFocus *)self activitySymbolImageName];
  v11 = [activitySymbolImageName hash];
  activityColorName = [(FCUIFocus *)self activityColorName];
  v13 = v11 ^ [activityColorName hash];
  v14 = v13 ^ [(FCUIFocus *)self isPlaceholder];

  return v9 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      activityUniqueIdentifier = [(FCUIFocus *)self activityUniqueIdentifier];
      activityUniqueIdentifier2 = [(FCUIFocus *)v5 activityUniqueIdentifier];
      if (BSEqualObjects())
      {
        activityIdentifier = [(FCUIFocus *)self activityIdentifier];
        activityIdentifier2 = [(FCUIFocus *)v5 activityIdentifier];
        if (BSEqualObjects() && (v10 = [(FCUIFocus *)self activitySemanticType], v10 == [(FCUIFocus *)v5 activitySemanticType]))
        {
          activityDisplayName = [(FCUIFocus *)self activityDisplayName];
          activityDisplayName2 = [(FCUIFocus *)v5 activityDisplayName];
          if (BSEqualObjects())
          {
            activitySymbolImageName = [(FCUIFocus *)self activitySymbolImageName];
            [(FCUIFocus *)v5 activitySymbolImageName];
            v14 = v18 = activitySymbolImageName;
            if (BSEqualObjects())
            {
              isPlaceholder = [(FCUIFocus *)self isPlaceholder];
              v16 = isPlaceholder ^ [(FCUIFocus *)v5 isPlaceholder]^ 1;
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
  activityIdentifier = [(FCUIFocus *)self activityIdentifier];
  activityUniqueIdentifier = [(FCUIFocus *)self activityUniqueIdentifier];
  v6 = [NSNumber numberWithInteger:[(FCUIFocus *)self activitySemanticType]];
  activityDisplayName = [(FCUIFocus *)self activityDisplayName];
  activitySymbolImageName = [(FCUIFocus *)self activitySymbolImageName];
  activityColorName = [(FCUIFocus *)self activityColorName];
  [(FCUIFocus *)self isPlaceholder];
  v10 = NSStringFromBOOL();
  v11 = [NSString stringWithFormat:@"<%@: %p activityIdentifier: %@; activityUniqueIdentifier: %@; activitySemanticType: %@; activityDisplayName: %@; activitySymbolImageName: %@; activityColorName: %@; isPlaceholder: %@ >", v3, self, activityIdentifier, activityUniqueIdentifier, v6, activityDisplayName, activitySymbolImageName, activityColorName, v10];;

  return v11;
}

@end