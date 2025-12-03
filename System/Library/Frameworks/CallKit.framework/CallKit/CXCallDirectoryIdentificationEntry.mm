@interface CXCallDirectoryIdentificationEntry
- (CXCallDirectoryIdentificationEntry)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXCallDirectoryIdentificationEntry

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  extensionIdentifier = [(CXCallDirectoryIdentificationEntry *)self extensionIdentifier];
  localizedExtensionName = [(CXCallDirectoryIdentificationEntry *)self localizedExtensionName];
  localizedExtensionContainingAppName = [(CXCallDirectoryIdentificationEntry *)self localizedExtensionContainingAppName];
  localizedLabel = [(CXCallDirectoryIdentificationEntry *)self localizedLabel];
  iconURL = [(CXCallDirectoryIdentificationEntry *)self iconURL];
  v10 = [v3 stringWithFormat:@"<%@ %p extensionIdentifier=%@ localizedExtensionName=%@ localizedExtensionContainingAppName=%@ localizedLabel=%@ iconURL=%@ type=%ld>", v4, self, extensionIdentifier, localizedExtensionName, localizedExtensionContainingAppName, localizedLabel, iconURL, -[CXCallDirectoryIdentificationEntry type](self, "type")];

  return v10;
}

- (CXCallDirectoryIdentificationEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CXCallDirectoryIdentificationEntry *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_extensionIdentifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    v9 = [v8 copy];
    extensionIdentifier = v5->_extensionIdentifier;
    v5->_extensionIdentifier = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_localizedExtensionName);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    v14 = [v13 copy];
    localizedExtensionName = v5->_localizedExtensionName;
    v5->_localizedExtensionName = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_localizedExtensionContainingAppName);
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    v19 = [v18 copy];
    localizedExtensionContainingAppName = v5->_localizedExtensionContainingAppName;
    v5->_localizedExtensionContainingAppName = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_localizedLabel);
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    v24 = [v23 copy];
    localizedLabel = v5->_localizedLabel;
    v5->_localizedLabel = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_iconURL);
    v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];
    v29 = [v28 copy];
    iconURL = v5->_iconURL;
    v5->_iconURL = v29;

    v31 = NSStringFromSelector(sel_type);
    v5->_type = [coderCopy decodeIntForKey:v31];

    v32 = NSStringFromSelector(sel_fromCache);
    v5->_fromCache = [coderCopy decodeBoolForKey:v32];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  extensionIdentifier = [(CXCallDirectoryIdentificationEntry *)self extensionIdentifier];
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  [coderCopy encodeObject:extensionIdentifier forKey:v6];

  localizedExtensionName = [(CXCallDirectoryIdentificationEntry *)self localizedExtensionName];
  v8 = NSStringFromSelector(sel_localizedExtensionName);
  [coderCopy encodeObject:localizedExtensionName forKey:v8];

  localizedExtensionContainingAppName = [(CXCallDirectoryIdentificationEntry *)self localizedExtensionContainingAppName];
  v10 = NSStringFromSelector(sel_localizedExtensionContainingAppName);
  [coderCopy encodeObject:localizedExtensionContainingAppName forKey:v10];

  localizedLabel = [(CXCallDirectoryIdentificationEntry *)self localizedLabel];
  v12 = NSStringFromSelector(sel_localizedLabel);
  [coderCopy encodeObject:localizedLabel forKey:v12];

  iconURL = [(CXCallDirectoryIdentificationEntry *)self iconURL];
  v14 = NSStringFromSelector(sel_iconURL);
  [coderCopy encodeObject:iconURL forKey:v14];

  type = [(CXCallDirectoryIdentificationEntry *)self type];
  v16 = NSStringFromSelector(sel_type);
  [coderCopy encodeInt:type forKey:v16];

  fromCache = [(CXCallDirectoryIdentificationEntry *)self fromCache];
  v18 = NSStringFromSelector(sel_fromCache);
  [coderCopy encodeBool:fromCache forKey:v18];
}

@end