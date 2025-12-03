@interface CXCallDirectoryExtension
- (CXCallDirectoryExtension)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXCallDirectoryExtension

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(CXCallDirectoryExtension *)self identifier];
  state = [(CXCallDirectoryExtension *)self state];
  priority = [(CXCallDirectoryExtension *)self priority];
  localizedName = [(CXCallDirectoryExtension *)self localizedName];
  v9 = [v3 stringWithFormat:@"<%@ %p: identifier=%@ state=%ld priority=%lld localizedName=%@>", v4, self, identifier, state, priority, localizedName];

  return v9;
}

- (CXCallDirectoryExtension)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = CXCallDirectoryExtension;
  v5 = [(CXCallDirectoryExtension *)&v26 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_identifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = NSStringFromSelector(sel_state);
    v5->_state = [coderCopy decodeIntegerForKey:v10];

    v11 = NSStringFromSelector(sel_priority);
    v5->_priority = [coderCopy decodeInt64ForKey:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_localizedName);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    localizedName = v5->_localizedName;
    v5->_localizedName = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_localizedContainingAppName);
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    localizedContainingAppName = v5->_localizedContainingAppName;
    v5->_localizedContainingAppName = v18;

    v20 = objc_opt_class();
    v21 = NSStringFromSelector(sel_plugInKitProxy);
    v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
    plugInKitProxy = v5->_plugInKitProxy;
    v5->_plugInKitProxy = v22;

    v24 = NSStringFromSelector(sel_isOnlyExtensionInContainingApp);
    v5->_onlyExtensionInContainingApp = [coderCopy decodeBoolForKey:v24];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CXCallDirectoryExtension *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v6];

  state = [(CXCallDirectoryExtension *)self state];
  v8 = NSStringFromSelector(sel_state);
  [coderCopy encodeInteger:state forKey:v8];

  priority = [(CXCallDirectoryExtension *)self priority];
  v10 = NSStringFromSelector(sel_priority);
  [coderCopy encodeInt64:priority forKey:v10];

  localizedName = [(CXCallDirectoryExtension *)self localizedName];
  v12 = NSStringFromSelector(sel_localizedName);
  [coderCopy encodeObject:localizedName forKey:v12];

  localizedContainingAppName = [(CXCallDirectoryExtension *)self localizedContainingAppName];
  v14 = NSStringFromSelector(sel_localizedContainingAppName);
  [coderCopy encodeObject:localizedContainingAppName forKey:v14];

  plugInKitProxy = [(CXCallDirectoryExtension *)self plugInKitProxy];
  v16 = NSStringFromSelector(sel_plugInKitProxy);
  [coderCopy encodeObject:plugInKitProxy forKey:v16];

  isOnlyExtensionInContainingApp = [(CXCallDirectoryExtension *)self isOnlyExtensionInContainingApp];
  v18 = NSStringFromSelector(sel_isOnlyExtensionInContainingApp);
  [coderCopy encodeBool:isOnlyExtensionInContainingApp forKey:v18];
}

@end