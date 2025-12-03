@interface UNNotificationActionIcon
- (BOOL)isEqual:(id)equal;
- (UNNotificationActionIcon)initWithCoder:(id)coder;
- (id)_description;
- (id)_initWithImageName:(id)name systemIcon:(BOOL)icon;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationActionIcon

- (id)_initWithImageName:(id)name systemIcon:(BOOL)icon
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = UNNotificationActionIcon;
  v7 = [(UNNotificationActionIcon *)&v11 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    imageName = v7->_imageName;
    v7->_imageName = v8;

    v7->_systemIcon = icon;
  }

  return v7;
}

- (unint64_t)hash
{
  imageName = [(UNNotificationActionIcon *)self imageName];
  v4 = [imageName hash];
  isSystemIcon = [(UNNotificationActionIcon *)self isSystemIcon];

  return v4 ^ isSystemIcon;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageName = [(UNNotificationActionIcon *)self imageName];
    imageName2 = [equalCopy imageName];
    if (UNEqualStrings(imageName, imageName2))
    {
      isSystemIcon = [(UNNotificationActionIcon *)self isSystemIcon];
      v8 = isSystemIcon ^ [equalCopy isSystemIcon] ^ 1;
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
  imageName = [(UNNotificationActionIcon *)self imageName];
  [(UNNotificationActionIcon *)self isSystemIcon];
  v6 = NSStringFromBOOL();
  v7 = [v3 stringWithFormat:@"<%@: %p imageName: %@, isSystemIcon: %@", v4, self, imageName, v6];;

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  _description = [(UNNotificationActionIcon *)self _description];
  v4 = [v2 stringWithFormat:@"%@>", _description];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  imageName = [(UNNotificationActionIcon *)self imageName];
  [coderCopy encodeObject:imageName forKey:@"imageName"];

  [coderCopy encodeBool:-[UNNotificationActionIcon isSystemIcon](self forKey:{"isSystemIcon"), @"systemIcon"}];
}

- (UNNotificationActionIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
  v6 = [v5 copy];

  v7 = [coderCopy decodeBoolForKey:@"systemIcon"];
  v8 = [(UNNotificationActionIcon *)self _initWithImageName:v6 systemIcon:v7];

  return v8;
}

@end