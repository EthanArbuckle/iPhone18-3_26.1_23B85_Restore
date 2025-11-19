@interface CXCallDirectoryIdentificationEntry
- (CXCallDirectoryIdentificationEntry)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXCallDirectoryIdentificationEntry

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CXCallDirectoryIdentificationEntry *)self extensionIdentifier];
  v6 = [(CXCallDirectoryIdentificationEntry *)self localizedExtensionName];
  v7 = [(CXCallDirectoryIdentificationEntry *)self localizedExtensionContainingAppName];
  v8 = [(CXCallDirectoryIdentificationEntry *)self localizedLabel];
  v9 = [(CXCallDirectoryIdentificationEntry *)self iconURL];
  v10 = [v3 stringWithFormat:@"<%@ %p extensionIdentifier=%@ localizedExtensionName=%@ localizedExtensionContainingAppName=%@ localizedLabel=%@ iconURL=%@ type=%ld>", v4, self, v5, v6, v7, v8, v9, -[CXCallDirectoryIdentificationEntry type](self, "type")];

  return v10;
}

- (CXCallDirectoryIdentificationEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryIdentificationEntry *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_extensionIdentifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    v9 = [v8 copy];
    extensionIdentifier = v5->_extensionIdentifier;
    v5->_extensionIdentifier = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_localizedExtensionName);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    v14 = [v13 copy];
    localizedExtensionName = v5->_localizedExtensionName;
    v5->_localizedExtensionName = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_localizedExtensionContainingAppName);
    v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
    v19 = [v18 copy];
    localizedExtensionContainingAppName = v5->_localizedExtensionContainingAppName;
    v5->_localizedExtensionContainingAppName = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_localizedLabel);
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    v24 = [v23 copy];
    localizedLabel = v5->_localizedLabel;
    v5->_localizedLabel = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_iconURL);
    v28 = [v4 decodeObjectOfClass:v26 forKey:v27];
    v29 = [v28 copy];
    iconURL = v5->_iconURL;
    v5->_iconURL = v29;

    v31 = NSStringFromSelector(sel_type);
    v5->_type = [v4 decodeIntForKey:v31];

    v32 = NSStringFromSelector(sel_fromCache);
    v5->_fromCache = [v4 decodeBoolForKey:v32];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryIdentificationEntry *)self extensionIdentifier];
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXCallDirectoryIdentificationEntry *)self localizedExtensionName];
  v8 = NSStringFromSelector(sel_localizedExtensionName);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CXCallDirectoryIdentificationEntry *)self localizedExtensionContainingAppName];
  v10 = NSStringFromSelector(sel_localizedExtensionContainingAppName);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(CXCallDirectoryIdentificationEntry *)self localizedLabel];
  v12 = NSStringFromSelector(sel_localizedLabel);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(CXCallDirectoryIdentificationEntry *)self iconURL];
  v14 = NSStringFromSelector(sel_iconURL);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(CXCallDirectoryIdentificationEntry *)self type];
  v16 = NSStringFromSelector(sel_type);
  [v4 encodeInt:v15 forKey:v16];

  v17 = [(CXCallDirectoryIdentificationEntry *)self fromCache];
  v18 = NSStringFromSelector(sel_fromCache);
  [v4 encodeBool:v17 forKey:v18];
}

@end