@interface CNUICoreApplicationAuthorizationItem
- (BOOL)hasChanges;
- (BOOL)isEqual:(id)equal;
- (CNUICoreApplicationAuthorizationItem)init;
- (CNUICoreApplicationAuthorizationItem)initWithCoder:(id)coder;
- (CNUICoreApplicationAuthorizationItem)initWithIcon:(id)icon name:(id)name bundleIdentifier:(id)identifier deviceType:(int64_t)type authorization:(int64_t)authorization shouldTakeSnapshot:(BOOL)snapshot;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)itemBySettingIcon:(id)icon;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNUICoreApplicationAuthorizationItem

- (BOOL)hasChanges
{
  selfCopy = self;
  snapshot = [(CNUICoreApplicationAuthorizationItem *)self snapshot];
  LOBYTE(selfCopy) = [(CNUICoreApplicationAuthorizationItem *)selfCopy isEqual:snapshot];

  return selfCopy ^ 1;
}

- (id)itemBySettingIcon:(id)icon
{
  iconCopy = icon;
  v5 = objc_alloc(objc_opt_class());
  name = [(CNUICoreApplicationAuthorizationItem *)self name];
  bundleIdentifier = [(CNUICoreApplicationAuthorizationItem *)self bundleIdentifier];
  v8 = [v5 initWithIcon:iconCopy name:name bundleIdentifier:bundleIdentifier deviceType:-[CNUICoreApplicationAuthorizationItem deviceType](self authorization:{"deviceType"), -[CNUICoreApplicationAuthorizationItem authorization](self, "authorization")}];

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  icon = [(CNUICoreApplicationAuthorizationItem *)self icon];
  v5 = [v3 appendName:@"icon" BOOLValue:icon != 0];

  name = [(CNUICoreApplicationAuthorizationItem *)self name];
  v7 = [v3 appendName:@"name" object:name];

  bundleIdentifier = [(CNUICoreApplicationAuthorizationItem *)self bundleIdentifier];
  v9 = [v3 appendName:@"bundleIdentifier" object:bundleIdentifier];

  v10 = [v3 appendName:@"deviceType" integerValue:{-[CNUICoreApplicationAuthorizationItem deviceType](self, "deviceType")}];
  v11 = [v3 appendName:@"authorizationLevel" integerValue:{-[CNUICoreApplicationAuthorizationItem authorization](self, "authorization")}];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  icon = [(CNUICoreApplicationAuthorizationItem *)self icon];
  v5 = [v3 objectHash:icon];

  v6 = MEMORY[0x1E6996730];
  name = [(CNUICoreApplicationAuthorizationItem *)self name];
  v8 = [v6 objectHash:name] - v5 + 32 * v5;

  v9 = MEMORY[0x1E6996730];
  bundleIdentifier = [(CNUICoreApplicationAuthorizationItem *)self bundleIdentifier];
  v11 = [v9 objectHash:bundleIdentifier] - v8 + 32 * v8;

  deviceType = [(CNUICoreApplicationAuthorizationItem *)self deviceType];
  if (deviceType >= 0)
  {
    v13 = deviceType;
  }

  else
  {
    v13 = -deviceType;
  }

  v14 = v13 - v11 + 32 * v11;
  authorization = [(CNUICoreApplicationAuthorizationItem *)self authorization];
  if (authorization >= 0)
  {
    v16 = authorization;
  }

  else
  {
    v16 = -authorization;
  }

  return v16 - v14 + 32 * v14 + 486695567;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNUICoreApplicationAuthorizationItem icon](self, "icon"), v6 = -[CNUICoreApplicationAuthorizationItem icon](equalCopy, "icon"), !(v5 | v6)) || [v5 isEqual:v6]) && ((v7 = -[CNUICoreApplicationAuthorizationItem name](self, "name"), v8 = -[CNUICoreApplicationAuthorizationItem name](equalCopy, "name"), !(v7 | v8)) || objc_msgSend(v7, "isEqual:", v8)) && ((v9 = -[CNUICoreApplicationAuthorizationItem bundleIdentifier](self, "bundleIdentifier"), v10 = -[CNUICoreApplicationAuthorizationItem bundleIdentifier](equalCopy, "bundleIdentifier"), !(v9 | v10)) || objc_msgSend(v9, "isEqual:", v10)) && (v11 = -[CNUICoreApplicationAuthorizationItem deviceType](self, "deviceType"), v11 == -[CNUICoreApplicationAuthorizationItem deviceType](equalCopy, "deviceType")))
    {
      authorization = [(CNUICoreApplicationAuthorizationItem *)self authorization];
      v13 = authorization == [(CNUICoreApplicationAuthorizationItem *)equalCopy authorization];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  icon = [(CNUICoreApplicationAuthorizationItem *)self icon];
  name = [(CNUICoreApplicationAuthorizationItem *)self name];
  bundleIdentifier = [(CNUICoreApplicationAuthorizationItem *)self bundleIdentifier];
  v8 = [v4 initWithIcon:icon name:name bundleIdentifier:bundleIdentifier deviceType:-[CNUICoreApplicationAuthorizationItem deviceType](self authorization:"deviceType") shouldTakeSnapshot:{-[CNUICoreApplicationAuthorizationItem authorization](self, "authorization"), 0}];

  snapshot = [(CNUICoreApplicationAuthorizationItem *)self snapshot];
  v10 = v8[6];
  v8[6] = snapshot;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  icon = self->_icon;
  coderCopy = coder;
  [coderCopy encodeObject:icon forKey:@"_icon"];
  [coderCopy encodeObject:self->_name forKey:@"_name"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"_bundleIdentifier"];
  [coderCopy encodeInteger:self->_deviceType forKey:@"_deviceType"];
  [coderCopy encodeInteger:self->_authorization forKey:@"_authorization"];
  [coderCopy encodeObject:self->_snapshot forKey:@"_snapshot"];
}

- (CNUICoreApplicationAuthorizationItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CNUICoreApplicationAuthorizationItem;
  v5 = [(CNUICoreApplicationAuthorizationItem *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_icon"];
    v7 = [v6 copy];
    icon = v5->_icon;
    v5->_icon = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    v10 = [v9 copy];
    name = v5->_name;
    v5->_name = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    v13 = [v12 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v13;

    v5->_deviceType = [coderCopy decodeIntegerForKey:@"_deviceType"];
    v5->_authorization = [coderCopy decodeIntegerForKey:@"_authorization"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_snapshot"];
    v16 = [v15 copy];
    snapshot = v5->_snapshot;
    v5->_snapshot = v16;

    v18 = v5;
  }

  return v5;
}

- (CNUICoreApplicationAuthorizationItem)initWithIcon:(id)icon name:(id)name bundleIdentifier:(id)identifier deviceType:(int64_t)type authorization:(int64_t)authorization shouldTakeSnapshot:(BOOL)snapshot
{
  iconCopy = icon;
  nameCopy = name;
  identifierCopy = identifier;
  if (!nameCopy)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = @"parameter ‘name’ must be nonnull";
    goto LABEL_11;
  }

  v17 = identifierCopy;
  if (!identifierCopy)
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
    v19 = [iconCopy copy];
    icon = v18->_icon;
    v18->_icon = v19;

    v21 = [nameCopy copy];
    name = v18->_name;
    v18->_name = v21;

    v23 = [v17 copy];
    bundleIdentifier = v18->_bundleIdentifier;
    v18->_bundleIdentifier = v23;

    v18->_deviceType = type;
    v18->_authorization = authorization;
    if (snapshot)
    {
      null = [(CNUICoreApplicationAuthorizationItem *)v18 copy];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    snapshot = v18->_snapshot;
    v18->_snapshot = null;

    v27 = v18;
  }

  return v18;
}

- (CNUICoreApplicationAuthorizationItem)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

@end