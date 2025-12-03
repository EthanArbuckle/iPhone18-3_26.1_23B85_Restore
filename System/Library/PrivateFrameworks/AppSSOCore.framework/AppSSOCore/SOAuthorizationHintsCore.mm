@interface SOAuthorizationHintsCore
- (SOAuthorizationHintsCore)initWithCoder:(id)coder;
- (SOAuthorizationHintsCore)initWithLocalizedExtensionBundleDisplayName:(id)name;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SOAuthorizationHintsCore

- (SOAuthorizationHintsCore)initWithLocalizedExtensionBundleDisplayName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = SOAuthorizationHintsCore;
  v6 = [(SOAuthorizationHintsCore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localizedExtensionBundleDisplayName, name);
  }

  return v7;
}

- (SOAuthorizationHintsCore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SOAuthorizationHintsCore;
  v5 = [(SOAuthorizationHintsCore *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_localizedExtensionBundleDisplayName);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    localizedExtensionBundleDisplayName = v5->_localizedExtensionBundleDisplayName;
    v5->_localizedExtensionBundleDisplayName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  localizedExtensionBundleDisplayName = self->_localizedExtensionBundleDisplayName;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_localizedExtensionBundleDisplayName);
  [coderCopy encodeObject:localizedExtensionBundleDisplayName forKey:v5];
}

- (id)description
{
  v8[1] = *MEMORY[0x1E69E9840];
  localizedExtensionBundleDisplayName = @"(null)";
  if (self->_localizedExtensionBundleDisplayName)
  {
    localizedExtensionBundleDisplayName = self->_localizedExtensionBundleDisplayName;
  }

  v7 = @"localizedExtensionBundleDisplayName";
  v8[0] = localizedExtensionBundleDisplayName;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v3 description];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end