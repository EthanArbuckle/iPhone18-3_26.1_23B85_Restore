@interface NEBundleProxy
- (NEBundleProxy)initWithCoder:(id)a3;
- (NEBundleProxy)initWithIdentifier:(id)a3 url:(id)a4 machOUUIDs:(id)a5 name:(id)a6 appGroups:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEBundleProxy

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEBundleProxy *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(NEBundleProxy *)self url];
  [v4 encodeObject:v6 forKey:@"url"];

  v7 = [(NEBundleProxy *)self machOUUIDs];
  [v4 encodeObject:v7 forKey:@"machOUUIDs"];

  v8 = [(NEBundleProxy *)self name];
  [v4 encodeObject:v8 forKey:@"name"];

  v9 = [(NEBundleProxy *)self appGroups];
  [v4 encodeObject:v9 forKey:@"appGroups"];
}

- (NEBundleProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NEBundleProxy;
  v5 = [(NEBundleProxy *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"machOUUIDs"];
    machOUUIDs = v5->_machOUUIDs;
    v5->_machOUUIDs = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"appGroups"];
    appGroups = v5->_appGroups;
    v5->_appGroups = v20;
  }

  return v5;
}

- (NEBundleProxy)initWithIdentifier:(id)a3 url:(id)a4 machOUUIDs:(id)a5 name:(id)a6 appGroups:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = NEBundleProxy;
  v17 = [(NEBundleProxy *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, a3);
    objc_storeStrong(&v18->_url, a4);
    objc_storeStrong(&v18->_machOUUIDs, a5);
    objc_storeStrong(&v18->_name, a6);
    objc_storeStrong(&v18->_appGroups, a7);
  }

  return v18;
}

@end