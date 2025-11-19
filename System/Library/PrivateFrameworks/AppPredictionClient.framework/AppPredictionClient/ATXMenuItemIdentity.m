@interface ATXMenuItemIdentity
- (ATXMenuItemIdentity)initWithAppIdentity:(id)a3 menuItemsPath:(id)a4;
- (ATXMenuItemIdentity)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXMenuItemIdentity:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXMenuItemIdentity

- (ATXMenuItemIdentity)initWithAppIdentity:(id)a3 menuItemsPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ATXMenuItemIdentity;
  v9 = [(ATXMenuItemIdentity *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appIdentity, a3);
    v11 = [v8 copy];
    menuItemsPath = v10->_menuItemsPath;
    v10->_menuItemsPath = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXMenuItemIdentity allocWithZone:a3];
  v5 = [(ATXMenuItemIdentity *)self appIdentity];
  v6 = [(ATXMenuItemIdentity *)self menuItemsPath];
  v7 = [(ATXMenuItemIdentity *)v4 initWithAppIdentity:v5 menuItemsPath:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(ATXMenuItemIdentity *)self appIdentity];
  v4 = [v3 hash];

  v5 = [(ATXMenuItemIdentity *)self menuItemsPath];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXMenuItemIdentity *)self isEqualToATXMenuItemIdentity:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXMenuItemIdentity:(id)a3
{
  v4 = a3;
  v5 = self->_appIdentity;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v9 == v4[2])
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

- (ATXMenuItemIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXMenuItemIdentity;
  v5 = [(ATXMenuItemIdentity *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appIdentity"];
    appIdentity = v5->_appIdentity;
    v5->_appIdentity = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"menuPath"];
    menuItemsPath = v5->_menuItemsPath;
    v5->_menuItemsPath = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  appIdentity = self->_appIdentity;
  v5 = a3;
  [v5 encodeObject:appIdentity forKey:@"appIdentity"];
  [v5 encodeObject:self->_menuItemsPath forKey:@"menuPath"];
}

@end