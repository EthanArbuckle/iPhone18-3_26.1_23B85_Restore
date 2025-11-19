@interface CSLHexAppNode
+ (id)fakeBundle;
+ (id)unarchiveFromDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExactlyEqual:(id)a3;
- (BOOL)valid;
- (CSLHexAppNode)init;
- (CSLHexAppNode)initWithBundleIdentifier:(id)a3 hex:(Hex)a4 placementReason:(unint64_t)a5;
- (CSLHexAppNode)initWithCoder:(id)a3;
- (id).cxx_construct;
- (id)archiveToDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)initFromDictionary:(id)a3;
- (unint64_t)allPropertiesHash;
- (void)commitHexForReason:(unint64_t)a3 isDirect:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSLHexAppNode

- (CSLHexAppNode)initWithBundleIdentifier:(id)a3 hex:(Hex)a4 placementReason:(unint64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = CSLHexAppNode;
  v9 = [(CSLHexAppNode *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;

    v9->_hex = a4;
    v9->_savedHex = a4;
    v9->_directPlacementReason = a5;
    v9->_placementReason = a5;
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
  v3 = [v2 UUIDString];
  v4 = [NSString stringWithFormat:@"com.apple.unknown.%@", v3];

  return v4;
}

- (BOOL)valid
{
  v2 = [(CSLHexAppNode *)self bundleIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (void)commitHexForReason:(unint64_t)a3 isDirect:(BOOL)a4
{
  if (self->_savedHex.q != self->_hex.q || self->_savedHex.r != self->_hex.r)
  {
    self->_savedHex = self->_hex;
    if (a4)
    {
      self->_directPlacementReason = a3;
    }

    self->_placementReason = a3;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bundleIdentifier = self->_bundleIdentifier;
      v6 = [(CSLHexAppNode *)v4 bundleIdentifier];
      v7 = [(NSString *)bundleIdentifier isEqual:v6];
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

- (BOOL)isExactlyEqual:(id)a3
{
  v4 = a3;
  v5 = [BSEqualsBuilder builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  bundleIdentifier = self->_bundleIdentifier;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_9260;
  v27[3] = &unk_38A78;
  v7 = v4;
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
  v3 = [(CSLHexAppNode *)self bundleIdentifier];
  v4 = [NSString stringWithFormat:@"%@ @ {%d, %d}", v3, self->_hex.q, self->_hex.r];

  return v4;
}

- (id)debugDescription
{
  v3 = [(CSLHexAppNode *)self wasReflowed];
  v4 = [(CSLHexAppNode *)self bundleIdentifier];
  q = self->_hex.q;
  r = self->_hex.r;
  v7 = NSStringFromCSLHexAppPlacementReason(self->_placementReason);
  v8 = v7;
  if (v3)
  {
    v9 = NSStringFromCSLHexAppPlacementReason(self->_directPlacementReason);
    v10 = [NSString stringWithFormat:@"%@ @ {%d, %d} %@(direct:%@)", v4, q, r, v8, v9];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%@ @ {%d, %d} %@", v4, q, r, v7];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithBundleIdentifier:hex:placementReason:", self->_bundleIdentifier, *&self->_hex, self->_directPlacementReason}];
  [(Hex *)v4 setPlacementReason:self->_placementReason];
  if (v4)
  {
    v4[4] = self->_savedHex;
  }

  return v4;
}

- (CSLHexAppNode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Bundle"];
  v6 = [NSSet alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Hex"];
  if (!v9)
  {
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Position"];
  }

  v10 = [v4 decodeIntegerForKey:@"DirectReason"];
  v11 = [v4 decodeIntegerForKey:@"Reason"];
  v12 = -[CSLHexAppNode initWithBundleIdentifier:hex:placementReason:](self, "initWithBundleIdentifier:hex:placementReason:", v5, [v9 hex], v10);
  [(CSLHexAppNode *)v12 setPlacementReason:v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(CSLHexAppNode *)self bundleIdentifier];
  [v6 encodeObject:v4 forKey:@"Bundle"];

  v5 = [[CSLObjCHex alloc] initWithHex:*&self->_hex];
  [v6 encodeObject:v5 forKey:@"Hex"];
  [v6 encodeInteger:self->_placementReason forKey:@"Reason"];
  [v6 encodeInteger:self->_directPlacementReason forKey:@"DirectReason"];
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

+ (id)unarchiveFromDictionary:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(objc_opt_class()) initFromDictionary:v3];
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

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 bs_safeStringForKey:@"Bundle"];
  if (v5)
  {
    v6 = [v4 bs_safeArrayForKey:@"Hex"];
    if ([v6 count]== &dword_0 + 2)
    {
      v7 = [v6 firstObject];
      v8 = objc_opt_class();
      v9 = v7;
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

      v13 = [v6 lastObject];
      v14 = objc_opt_class();
      v15 = v13;
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
        v26 = [v12 intValue];
        v18 = [v17 intValue];
        v19 = [v4 bs_safeNumberForKey:@"DirectReason"];
        v20 = [v19 integerValue];

        v21 = [v4 bs_safeNumberForKey:@"Reason"];
        v22 = [v21 integerValue];

        v23 = [(CSLHexAppNode *)self initWithBundleIdentifier:v5 hex:v26 | (v18 << 32) placementReason:v20];
        [(CSLHexAppNode *)v23 setPlacementReason:v22];
        self = v23;
        v11 = self;
      }

      else
      {
        v24 = cslprf_icon_field_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_22F2C();
        }

        v11 = 0;
      }
    }

    else
    {
      v12 = cslprf_icon_field_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_22EC4();
      }

      v11 = 0;
    }
  }

  else
  {
    v6 = cslprf_icon_field_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22F94();
    }

    v11 = 0;
  }

  return v11;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end