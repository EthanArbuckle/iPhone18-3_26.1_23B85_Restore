@interface CSLHexAppNode
+ (id)fakeBundle;
+ (id)unarchiveFromDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExactlyEqual:(id)equal;
- (BOOL)valid;
- (CSLHexAppNode)init;
- (CSLHexAppNode)initWithBundleIdentifier:(id)identifier hex:(Hex)hex placementReason:(unint64_t)reason;
- (CSLHexAppNode)initWithCoder:(id)coder;
- (id).cxx_construct;
- (id)archiveToDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)initFromDictionary:(id)dictionary;
- (unint64_t)allPropertiesHash;
- (void)commitHexForReason:(unint64_t)reason isDirect:(BOOL)direct;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSLHexAppNode

- (CSLHexAppNode)initWithBundleIdentifier:(id)identifier hex:(Hex)hex placementReason:(unint64_t)reason
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = CSLHexAppNode;
  v9 = [(CSLHexAppNode *)&v13 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;

    v9->_hex = hex;
    v9->_savedHex = hex;
    v9->_directPlacementReason = reason;
    v9->_placementReason = reason;
  }

  return v9;
}

- (CSLHexAppNode)init
{
  v3 = +[CSLHexAppNode fakeBundle];
  v4 = [(CSLHexAppNode *)self initWithBundleIdentifier:v3 hex:0];

  return v4;
}

+ (id)fakeBundle
{
  v2 = +[NSUUID UUID];
  uUIDString = [v2 UUIDString];
  v4 = [NSString stringWithFormat:@"com.apple.unknown.%@", uUIDString];

  return v4;
}

- (BOOL)valid
{
  bundleIdentifier = [(CSLHexAppNode *)self bundleIdentifier];
  v3 = bundleIdentifier != 0;

  return v3;
}

- (void)commitHexForReason:(unint64_t)reason isDirect:(BOOL)direct
{
  if (self->_savedHex.q != self->_hex.q || self->_savedHex.r != self->_hex.r)
  {
    self->_savedHex = self->_hex;
    if (direct)
    {
      self->_directPlacementReason = reason;
    }

    self->_placementReason = reason;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bundleIdentifier = self->_bundleIdentifier;
      bundleIdentifier = [(CSLHexAppNode *)equalCopy bundleIdentifier];
      v7 = [(NSString *)bundleIdentifier isEqual:bundleIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)allPropertiesHash
{
  v3 = objc_alloc_init(BSHashBuilder);
  v4 = [v3 appendObject:self->_bundleIdentifier];
  v5 = [v3 hash];

  return v5;
}

- (BOOL)isExactlyEqual:(id)equal
{
  equalCopy = equal;
  v5 = [BSEqualsBuilder builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  bundleIdentifier = self->_bundleIdentifier;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_9260;
  v27[3] = &unk_38A78;
  v7 = equalCopy;
  v28 = v7;
  v8 = [v5 appendObject:bundleIdentifier counterpart:v27];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_9268;
  v25[3] = &unk_38AA0;
  v25[4] = self;
  v26 = v7;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_92B0;
  v23[3] = &unk_38AA0;
  v23[4] = self;
  v9 = v26;
  v24 = v9;
  v10 = objc_retainBlock(v23);
  v11 = [v5 appendEqualsBlocks:{v25, v10, 0}];

  directPlacementReason = self->_directPlacementReason;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_92F8;
  v21[3] = &unk_38AC8;
  v13 = v9;
  v22 = v13;
  v14 = [v5 appendUnsignedInteger:directPlacementReason counterpart:v21];
  placementReason = self->_placementReason;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_9300;
  v19[3] = &unk_38AC8;
  v16 = v13;
  v20 = v16;
  v17 = [v5 appendUnsignedInteger:placementReason counterpart:v19];
  LOBYTE(v13) = [v5 isEqual];

  return v13;
}

- (id)description
{
  bundleIdentifier = [(CSLHexAppNode *)self bundleIdentifier];
  v4 = [NSString stringWithFormat:@"%@ @ {%d, %d}", bundleIdentifier, self->_hex.q, self->_hex.r];

  return v4;
}

- (id)debugDescription
{
  wasReflowed = [(CSLHexAppNode *)self wasReflowed];
  bundleIdentifier = [(CSLHexAppNode *)self bundleIdentifier];
  q = self->_hex.q;
  r = self->_hex.r;
  v7 = NSStringFromCSLHexAppPlacementReason(self->_placementReason);
  v8 = v7;
  if (wasReflowed)
  {
    v9 = NSStringFromCSLHexAppPlacementReason(self->_directPlacementReason);
    v10 = [NSString stringWithFormat:@"%@ @ {%d, %d} %@(direct:%@)", bundleIdentifier, q, r, v8, v9];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%@ @ {%d, %d} %@", bundleIdentifier, q, r, v7];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithBundleIdentifier:hex:placementReason:", self->_bundleIdentifier, *&self->_hex, self->_directPlacementReason}];
  [(Hex *)v4 setPlacementReason:self->_placementReason];
  if (v4)
  {
    v4[4] = self->_savedHex;
  }

  return v4;
}

- (CSLHexAppNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Bundle"];
  v6 = [NSSet alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Hex"];
  if (!v9)
  {
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Position"];
  }

  v10 = [coderCopy decodeIntegerForKey:@"DirectReason"];
  v11 = [coderCopy decodeIntegerForKey:@"Reason"];
  v12 = -[CSLHexAppNode initWithBundleIdentifier:hex:placementReason:](self, "initWithBundleIdentifier:hex:placementReason:", v5, [v9 hex], v10);
  [(CSLHexAppNode *)v12 setPlacementReason:v11];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(CSLHexAppNode *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"Bundle"];

  v5 = [[CSLObjCHex alloc] initWithHex:*&self->_hex];
  [coderCopy encodeObject:v5 forKey:@"Hex"];
  [coderCopy encodeInteger:self->_placementReason forKey:@"Reason"];
  [coderCopy encodeInteger:self->_directPlacementReason forKey:@"DirectReason"];
}

- (id)archiveToDictionary
{
  v12[0] = self->_bundleIdentifier;
  v11[0] = @"Bundle";
  v11[1] = @"Hex";
  v3 = [NSNumber numberWithInt:self->_hex.q];
  v10[0] = v3;
  v4 = [NSNumber numberWithInt:self->_hex.r];
  v10[1] = v4;
  v5 = [NSArray arrayWithObjects:v10 count:2];
  v12[1] = v5;
  v11[2] = @"DirectReason";
  v6 = [NSNumber numberWithUnsignedInteger:self->_directPlacementReason];
  v12[2] = v6;
  v11[3] = @"Reason";
  v7 = [NSNumber numberWithUnsignedInteger:self->_placementReason];
  v12[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v8;
}

+ (id)unarchiveFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(objc_opt_class()) initFromDictionary:dictionaryCopy];
  }

  else
  {
    v5 = cslprf_icon_field_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E5C();
    }

    v4 = 0;
  }

  return v4;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy bs_safeStringForKey:@"Bundle"];
  if (v5)
  {
    v6 = [dictionaryCopy bs_safeArrayForKey:@"Hex"];
    if ([v6 count]== &dword_0 + 2)
    {
      firstObject = [v6 firstObject];
      v8 = objc_opt_class();
      v9 = firstObject;
      if (v8)
      {
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v12 = v10;

      lastObject = [v6 lastObject];
      v14 = objc_opt_class();
      v15 = lastObject;
      if (v14)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v12 && v17)
      {
        intValue = [v12 intValue];
        intValue2 = [v17 intValue];
        v19 = [dictionaryCopy bs_safeNumberForKey:@"DirectReason"];
        integerValue = [v19 integerValue];

        v21 = [dictionaryCopy bs_safeNumberForKey:@"Reason"];
        integerValue2 = [v21 integerValue];

        v23 = [(CSLHexAppNode *)self initWithBundleIdentifier:v5 hex:intValue | (intValue2 << 32) placementReason:integerValue];
        [(CSLHexAppNode *)v23 setPlacementReason:integerValue2];
        self = v23;
        selfCopy = self;
      }

      else
      {
        v24 = cslprf_icon_field_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_22F2C();
        }

        selfCopy = 0;
      }
    }

    else
    {
      v12 = cslprf_icon_field_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_22EC4();
      }

      selfCopy = 0;
    }
  }

  else
  {
    v6 = cslprf_icon_field_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22F94();
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end