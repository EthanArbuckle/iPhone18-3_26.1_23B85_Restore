@interface CNUICoreApplicationAuthorizationItem
- (BOOL)hasChanges;
- (BOOL)isEqual:(id)a3;
- (CNUICoreApplicationAuthorizationItem)init;
- (CNUICoreApplicationAuthorizationItem)initWithCoder:(id)a3;
- (CNUICoreApplicationAuthorizationItem)initWithIcon:(id)a3 name:(id)a4 bundleIdentifier:(id)a5 deviceType:(int64_t)a6 authorization:(int64_t)a7 shouldTakeSnapshot:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)itemBySettingIcon:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNUICoreApplicationAuthorizationItem

- (BOOL)hasChanges
{
  v2 = self;
  v3 = [(CNUICoreApplicationAuthorizationItem *)self snapshot];
  LOBYTE(v2) = [(CNUICoreApplicationAuthorizationItem *)v2 isEqual:v3];

  return v2 ^ 1;
}

- (id)itemBySettingIcon:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(CNUICoreApplicationAuthorizationItem *)self name];
  v7 = [(CNUICoreApplicationAuthorizationItem *)self bundleIdentifier];
  v8 = [v5 initWithIcon:v4 name:v6 bundleIdentifier:v7 deviceType:-[CNUICoreApplicationAuthorizationItem deviceType](self authorization:{"deviceType"), -[CNUICoreApplicationAuthorizationItem authorization](self, "authorization")}];

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUICoreApplicationAuthorizationItem *)self icon];
  v5 = [v3 appendName:@"icon" BOOLValue:v4 != 0];

  v6 = [(CNUICoreApplicationAuthorizationItem *)self name];
  v7 = [v3 appendName:@"name" object:v6];

  v8 = [(CNUICoreApplicationAuthorizationItem *)self bundleIdentifier];
  v9 = [v3 appendName:@"bundleIdentifier" object:v8];

  v10 = [v3 appendName:@"deviceType" integerValue:{-[CNUICoreApplicationAuthorizationItem deviceType](self, "deviceType")}];
  v11 = [v3 appendName:@"authorizationLevel" integerValue:{-[CNUICoreApplicationAuthorizationItem authorization](self, "authorization")}];
  v12 = [v3 build];

  return v12;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v4 = [(CNUICoreApplicationAuthorizationItem *)self icon];
  v5 = [v3 objectHash:v4];

  v6 = MEMORY[0x1E6996730];
  v7 = [(CNUICoreApplicationAuthorizationItem *)self name];
  v8 = [v6 objectHash:v7] - v5 + 32 * v5;

  v9 = MEMORY[0x1E6996730];
  v10 = [(CNUICoreApplicationAuthorizationItem *)self bundleIdentifier];
  v11 = [v9 objectHash:v10] - v8 + 32 * v8;

  v12 = [(CNUICoreApplicationAuthorizationItem *)self deviceType];
  if (v12 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = -v12;
  }

  v14 = v13 - v11 + 32 * v11;
  v15 = [(CNUICoreApplicationAuthorizationItem *)self authorization];
  if (v15 >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = -v15;
  }

  return v16 - v14 + 32 * v14 + 486695567;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNUICoreApplicationAuthorizationItem icon](self, "icon"), v6 = -[CNUICoreApplicationAuthorizationItem icon](v4, "icon"), !(v5 | v6)) || [v5 isEqual:v6]) && ((v7 = -[CNUICoreApplicationAuthorizationItem name](self, "name"), v8 = -[CNUICoreApplicationAuthorizationItem name](v4, "name"), !(v7 | v8)) || objc_msgSend(v7, "isEqual:", v8)) && ((v9 = -[CNUICoreApplicationAuthorizationItem bundleIdentifier](self, "bundleIdentifier"), v10 = -[CNUICoreApplicationAuthorizationItem bundleIdentifier](v4, "bundleIdentifier"), !(v9 | v10)) || objc_msgSend(v9, "isEqual:", v10)) && (v11 = -[CNUICoreApplicationAuthorizationItem deviceType](self, "deviceType"), v11 == -[CNUICoreApplicationAuthorizationItem deviceType](v4, "deviceType")))
    {
      v12 = [(CNUICoreApplicationAuthorizationItem *)self authorization];
      v13 = v12 == [(CNUICoreApplicationAuthorizationItem *)v4 authorization];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(CNUICoreApplicationAuthorizationItem *)self icon];
  v6 = [(CNUICoreApplicationAuthorizationItem *)self name];
  v7 = [(CNUICoreApplicationAuthorizationItem *)self bundleIdentifier];
  v8 = [v4 initWithIcon:v5 name:v6 bundleIdentifier:v7 deviceType:-[CNUICoreApplicationAuthorizationItem deviceType](self authorization:"deviceType") shouldTakeSnapshot:{-[CNUICoreApplicationAuthorizationItem authorization](self, "authorization"), 0}];

  v9 = [(CNUICoreApplicationAuthorizationItem *)self snapshot];
  v10 = v8[6];
  v8[6] = v9;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  icon = self->_icon;
  v5 = a3;
  [v5 encodeObject:icon forKey:@"_icon"];
  [v5 encodeObject:self->_name forKey:@"_name"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"_bundleIdentifier"];
  [v5 encodeInteger:self->_deviceType forKey:@"_deviceType"];
  [v5 encodeInteger:self->_authorization forKey:@"_authorization"];
  [v5 encodeObject:self->_snapshot forKey:@"_snapshot"];
}

- (CNUICoreApplicationAuthorizationItem)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CNUICoreApplicationAuthorizationItem;
  v5 = [(CNUICoreApplicationAuthorizationItem *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_icon"];
    v7 = [v6 copy];
    icon = v5->_icon;
    v5->_icon = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    v10 = [v9 copy];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    v13 = [v12 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v13;

    v5->_deviceType = [v4 decodeIntegerForKey:@"_deviceType"];
    v5->_authorization = [v4 decodeIntegerForKey:@"_authorization"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_snapshot"];
    v16 = [v15 copy];
    snapshot = v5->_snapshot;
    v5->_snapshot = v16;

    v18 = v5;
  }

  return v5;
}

- (CNUICoreApplicationAuthorizationItem)initWithIcon:(id)a3 name:(id)a4 bundleIdentifier:(id)a5 deviceType:(int64_t)a6 authorization:(int64_t)a7 shouldTakeSnapshot:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (!v15)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = @"parameter ‘name’ must be nonnull";
    goto LABEL_11;
  }

  v17 = v16;
  if (!v16)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = @"parameter ‘bundleIdentifier’ must be nonnull";
LABEL_11:
    v32 = [v29 exceptionWithName:v30 reason:v31 userInfo:0];
    objc_exception_throw(v32);
  }

  v33.receiver = self;
  v33.super_class = CNUICoreApplicationAuthorizationItem;
  v18 = [(CNUICoreApplicationAuthorizationItem *)&v33 init];
  if (v18)
  {
    v19 = [v14 copy];
    icon = v18->_icon;
    v18->_icon = v19;

    v21 = [v15 copy];
    name = v18->_name;
    v18->_name = v21;

    v23 = [v17 copy];
    bundleIdentifier = v18->_bundleIdentifier;
    v18->_bundleIdentifier = v23;

    v18->_deviceType = a6;
    v18->_authorization = a7;
    if (a8)
    {
      v25 = [(CNUICoreApplicationAuthorizationItem *)v18 copy];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
    }

    snapshot = v18->_snapshot;
    v18->_snapshot = v25;

    v27 = v18;
  }

  return v18;
}

- (CNUICoreApplicationAuthorizationItem)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

@end