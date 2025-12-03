@interface NEBundleProxy
- (NEBundleProxy)initWithCoder:(id)coder;
- (NEBundleProxy)initWithIdentifier:(id)identifier url:(id)url machOUUIDs:(id)ds name:(id)name appGroups:(id)groups;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEBundleProxy

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(NEBundleProxy *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  v6 = [(NEBundleProxy *)self url];
  [coderCopy encodeObject:v6 forKey:@"url"];

  machOUUIDs = [(NEBundleProxy *)self machOUUIDs];
  [coderCopy encodeObject:machOUUIDs forKey:@"machOUUIDs"];

  name = [(NEBundleProxy *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  appGroups = [(NEBundleProxy *)self appGroups];
  [coderCopy encodeObject:appGroups forKey:@"appGroups"];
}

- (NEBundleProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = NEBundleProxy;
  v5 = [(NEBundleProxy *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"machOUUIDs"];
    machOUUIDs = v5->_machOUUIDs;
    v5->_machOUUIDs = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"appGroups"];
    appGroups = v5->_appGroups;
    v5->_appGroups = v20;
  }

  return v5;
}

- (NEBundleProxy)initWithIdentifier:(id)identifier url:(id)url machOUUIDs:(id)ds name:(id)name appGroups:(id)groups
{
  identifierCopy = identifier;
  urlCopy = url;
  dsCopy = ds;
  nameCopy = name;
  groupsCopy = groups;
  v21.receiver = self;
  v21.super_class = NEBundleProxy;
  v17 = [(NEBundleProxy *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v18->_url, url);
    objc_storeStrong(&v18->_machOUUIDs, ds);
    objc_storeStrong(&v18->_name, name);
    objc_storeStrong(&v18->_appGroups, groups);
  }

  return v18;
}

@end