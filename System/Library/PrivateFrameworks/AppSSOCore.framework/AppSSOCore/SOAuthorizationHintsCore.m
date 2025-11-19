@interface SOAuthorizationHintsCore
- (SOAuthorizationHintsCore)initWithCoder:(id)a3;
- (SOAuthorizationHintsCore)initWithLocalizedExtensionBundleDisplayName:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SOAuthorizationHintsCore

- (SOAuthorizationHintsCore)initWithLocalizedExtensionBundleDisplayName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SOAuthorizationHintsCore;
  v6 = [(SOAuthorizationHintsCore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localizedExtensionBundleDisplayName, a3);
  }

  return v7;
}

- (SOAuthorizationHintsCore)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SOAuthorizationHintsCore;
  v5 = [(SOAuthorizationHintsCore *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_localizedExtensionBundleDisplayName);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    localizedExtensionBundleDisplayName = v5->_localizedExtensionBundleDisplayName;
    v5->_localizedExtensionBundleDisplayName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  localizedExtensionBundleDisplayName = self->_localizedExtensionBundleDisplayName;
  v4 = a3;
  v5 = NSStringFromSelector(sel_localizedExtensionBundleDisplayName);
  [v4 encodeObject:localizedExtensionBundleDisplayName forKey:v5];
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