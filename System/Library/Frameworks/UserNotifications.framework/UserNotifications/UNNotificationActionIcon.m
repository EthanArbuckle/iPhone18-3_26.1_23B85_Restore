@interface UNNotificationActionIcon
- (BOOL)isEqual:(id)a3;
- (UNNotificationActionIcon)initWithCoder:(id)a3;
- (id)_description;
- (id)_initWithImageName:(id)a3 systemIcon:(BOOL)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationActionIcon

- (id)_initWithImageName:(id)a3 systemIcon:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = UNNotificationActionIcon;
  v7 = [(UNNotificationActionIcon *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    imageName = v7->_imageName;
    v7->_imageName = v8;

    v7->_systemIcon = a4;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(UNNotificationActionIcon *)self imageName];
  v4 = [v3 hash];
  v5 = [(UNNotificationActionIcon *)self isSystemIcon];

  return v4 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UNNotificationActionIcon *)self imageName];
    v6 = [v4 imageName];
    if (UNEqualStrings(v5, v6))
    {
      v7 = [(UNNotificationActionIcon *)self isSystemIcon];
      v8 = v7 ^ [v4 isSystemIcon] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)_description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UNNotificationActionIcon *)self imageName];
  [(UNNotificationActionIcon *)self isSystemIcon];
  v6 = NSStringFromBOOL();
  v7 = [v3 stringWithFormat:@"<%@: %p imageName: %@, isSystemIcon: %@", v4, self, v5, v6];;

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(UNNotificationActionIcon *)self _description];
  v4 = [v2 stringWithFormat:@"%@>", v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(UNNotificationActionIcon *)self imageName];
  [v5 encodeObject:v4 forKey:@"imageName"];

  [v5 encodeBool:-[UNNotificationActionIcon isSystemIcon](self forKey:{"isSystemIcon"), @"systemIcon"}];
}

- (UNNotificationActionIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
  v6 = [v5 copy];

  v7 = [v4 decodeBoolForKey:@"systemIcon"];
  v8 = [(UNNotificationActionIcon *)self _initWithImageName:v6 systemIcon:v7];

  return v8;
}

@end