@interface SOAuthorizationHints
- (SOAuthorizationHints)initWithAuthorizationHintsCore:(id)a3;
- (id)description;
@end

@implementation SOAuthorizationHints

- (SOAuthorizationHints)initWithAuthorizationHintsCore:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SOAuthorizationHints;
  v5 = [(SOAuthorizationHints *)&v9 init];
  if (v5)
  {
    v6 = [v4 localizedExtensionBundleDisplayName];
    localizedExtensionBundleDisplayName = v5->_localizedExtensionBundleDisplayName;
    v5->_localizedExtensionBundleDisplayName = v6;
  }

  return v5;
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