@interface CXCallDirectoryExtension
- (CXCallDirectoryExtension)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXCallDirectoryExtension

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CXCallDirectoryExtension *)self identifier];
  v6 = [(CXCallDirectoryExtension *)self state];
  v7 = [(CXCallDirectoryExtension *)self priority];
  v8 = [(CXCallDirectoryExtension *)self localizedName];
  v9 = [v3 stringWithFormat:@"<%@ %p: identifier=%@ state=%ld priority=%lld localizedName=%@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (CXCallDirectoryExtension)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CXCallDirectoryExtension;
  v5 = [(CXCallDirectoryExtension *)&v26 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_identifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = NSStringFromSelector(sel_state);
    v5->_state = [v4 decodeIntegerForKey:v10];

    v11 = NSStringFromSelector(sel_priority);
    v5->_priority = [v4 decodeInt64ForKey:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_localizedName);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    localizedName = v5->_localizedName;
    v5->_localizedName = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_localizedContainingAppName);
    v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
    localizedContainingAppName = v5->_localizedContainingAppName;
    v5->_localizedContainingAppName = v18;

    v20 = objc_opt_class();
    v21 = NSStringFromSelector(sel_plugInKitProxy);
    v22 = [v4 decodeObjectOfClass:v20 forKey:v21];
    plugInKitProxy = v5->_plugInKitProxy;
    v5->_plugInKitProxy = v22;

    v24 = NSStringFromSelector(sel_isOnlyExtensionInContainingApp);
    v5->_onlyExtensionInContainingApp = [v4 decodeBoolForKey:v24];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryExtension *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXCallDirectoryExtension *)self state];
  v8 = NSStringFromSelector(sel_state);
  [v4 encodeInteger:v7 forKey:v8];

  v9 = [(CXCallDirectoryExtension *)self priority];
  v10 = NSStringFromSelector(sel_priority);
  [v4 encodeInt64:v9 forKey:v10];

  v11 = [(CXCallDirectoryExtension *)self localizedName];
  v12 = NSStringFromSelector(sel_localizedName);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(CXCallDirectoryExtension *)self localizedContainingAppName];
  v14 = NSStringFromSelector(sel_localizedContainingAppName);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(CXCallDirectoryExtension *)self plugInKitProxy];
  v16 = NSStringFromSelector(sel_plugInKitProxy);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(CXCallDirectoryExtension *)self isOnlyExtensionInContainingApp];
  v18 = NSStringFromSelector(sel_isOnlyExtensionInContainingApp);
  [v4 encodeBool:v17 forKey:v18];
}

@end