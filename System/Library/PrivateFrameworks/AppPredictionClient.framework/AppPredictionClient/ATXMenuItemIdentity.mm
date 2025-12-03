@interface ATXMenuItemIdentity
- (ATXMenuItemIdentity)initWithAppIdentity:(id)identity menuItemsPath:(id)path;
- (ATXMenuItemIdentity)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXMenuItemIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXMenuItemIdentity

- (ATXMenuItemIdentity)initWithAppIdentity:(id)identity menuItemsPath:(id)path
{
  identityCopy = identity;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = ATXMenuItemIdentity;
  v9 = [(ATXMenuItemIdentity *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appIdentity, identity);
    v11 = [pathCopy copy];
    menuItemsPath = v10->_menuItemsPath;
    v10->_menuItemsPath = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXMenuItemIdentity allocWithZone:zone];
  appIdentity = [(ATXMenuItemIdentity *)self appIdentity];
  menuItemsPath = [(ATXMenuItemIdentity *)self menuItemsPath];
  v7 = [(ATXMenuItemIdentity *)v4 initWithAppIdentity:appIdentity menuItemsPath:menuItemsPath];

  return v7;
}

- (unint64_t)hash
{
  appIdentity = [(ATXMenuItemIdentity *)self appIdentity];
  v4 = [appIdentity hash];

  menuItemsPath = [(ATXMenuItemIdentity *)self menuItemsPath];
  v6 = [menuItemsPath hash] - v4 + 32 * v4;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXMenuItemIdentity *)self isEqualToATXMenuItemIdentity:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXMenuItemIdentity:(id)identity
{
  identityCopy = identity;
  v5 = self->_appIdentity;
  v6 = v5;
  if (v5 == identityCopy[1])
  {
  }

  else
  {
    v7 = [(ATXAppIdentity *)v5 isEqual:?];

    if (!v7)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_menuItemsPath;
  v10 = v9;
  if (v9 == identityCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSArray *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@:%@>", self->_appIdentity, self->_menuItemsPath];

  return v2;
}

- (ATXMenuItemIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ATXMenuItemIdentity;
  v5 = [(ATXMenuItemIdentity *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appIdentity"];
    appIdentity = v5->_appIdentity;
    v5->_appIdentity = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"menuPath"];
    menuItemsPath = v5->_menuItemsPath;
    v5->_menuItemsPath = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  appIdentity = self->_appIdentity;
  coderCopy = coder;
  [coderCopy encodeObject:appIdentity forKey:@"appIdentity"];
  [coderCopy encodeObject:self->_menuItemsPath forKey:@"menuPath"];
}

@end