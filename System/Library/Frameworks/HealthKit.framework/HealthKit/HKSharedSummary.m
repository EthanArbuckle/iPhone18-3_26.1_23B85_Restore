@interface HKSharedSummary
- (BOOL)isEqual:(id)a3;
- (HKSharedSummary)initWithCoder:(id)a3;
- (HKSharedSummary)initWithPackage:(id)a3 name:(id)a4 version:(id)a5 compatibilityVersion:(id)a6 authorizationIdentifiers:(id)a7 objectTypes:(id)a8 summaryData:(id)a9;
- (id)_initWithUUID:(id)a3 package:(id)a4 name:(id)a5 version:(id)a6 compatibilityVersion:(id)a7 authorizationIdentifiers:(id)a8 objectTypes:(id)a9 summaryData:(id)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSharedSummary

- (HKSharedSummary)initWithPackage:(id)a3 name:(id)a4 version:(id)a5 compatibilityVersion:(id)a6 authorizationIdentifiers:(id)a7 objectTypes:(id)a8 summaryData:(id)a9
{
  v16 = MEMORY[0x1E696AFB0];
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [v16 UUID];
  v25 = [(HKSharedSummary *)self _initWithUUID:v24 package:v23 name:v22 version:v21 compatibilityVersion:v20 authorizationIdentifiers:v19 objectTypes:v18 summaryData:v17];

  return v25;
}

- (id)_initWithUUID:(id)a3 package:(id)a4 name:(id)a5 version:(id)a6 compatibilityVersion:(id)a7 authorizationIdentifiers:(id)a8 objectTypes:(id)a9 summaryData:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v42.receiver = self;
  v42.super_class = HKSharedSummary;
  v25 = [(HKSharedSummary *)&v42 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_UUID, a3);
    v27 = [v18 copy];
    package = v26->_package;
    v26->_package = v27;

    v29 = [v19 copy];
    name = v26->_name;
    v26->_name = v29;

    v31 = [v20 copy];
    version = v26->_version;
    v26->_version = v31;

    v33 = [v21 copy];
    compatibilityVersion = v26->_compatibilityVersion;
    v26->_compatibilityVersion = v33;

    v35 = [v22 copy];
    authorizationIdentifiers = v26->_authorizationIdentifiers;
    v26->_authorizationIdentifiers = v35;

    v37 = [v23 copy];
    objectTypes = v26->_objectTypes;
    v26->_objectTypes = v37;

    v39 = [v24 copy];
    summaryData = v26->_summaryData;
    v26->_summaryData = v39;
  }

  return v26;
}

- (id)description
{
  v3 = [(NSSet *)self->_authorizationIdentifiers allObjects];
  v4 = [v3 componentsJoinedByString:{@", "}];

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(NSUUID *)self->_UUID UUIDString];
  v9 = [v5 stringWithFormat:@"<%@:%p UUID=%@, package=%@, name=%@, version=%@, authorizations=%@>", v7, self, v8, self->_package, self->_name, self->_version, v4];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      UUID = self->_UUID;
      v6 = [(HKSharedSummary *)v4 UUID];
      v7 = [(NSUUID *)UUID isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  [v5 encodeObject:self->_package forKey:@"Package"];
  [v5 encodeObject:self->_name forKey:@"Name"];
  [v5 encodeObject:self->_version forKey:@"Version"];
  [v5 encodeObject:self->_compatibilityVersion forKey:@"CompatibilityVersion"];
  [v5 encodeObject:self->_authorizationIdentifiers forKey:@"AuthorizationIdentifiers"];
  [v5 encodeObject:self->_objectTypes forKey:@"ObjectTypes"];
  [v5 encodeObject:self->_summaryData forKey:@"SummaryData"];
  [v5 encodeObject:self->_transaction forKey:@"Transaction"];
}

- (HKSharedSummary)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Package"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CompatibilityVersion"];
  v8 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v10 = [v8 setWithArray:v9];

  v24 = v10;
  v11 = [v3 decodeObjectOfClasses:v10 forKey:@"AuthorizationIdentifiers"];
  v12 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v14 = [v12 setWithArray:v13];

  v15 = [v3 decodeObjectOfClasses:v14 forKey:@"ObjectTypes"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SummaryData"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Transaction"];

  v18 = [HKSharedSummary _initWithUUID:"_initWithUUID:package:name:version:compatibilityVersion:authorizationIdentifiers:objectTypes:summaryData:" package:v4 name:v5 version:v6 compatibilityVersion:v7 authorizationIdentifiers:v15 objectTypes:v16 summaryData:?];
  v19 = v18;
  if (v18)
  {
    [(HKSharedSummary *)v18 _setTransaction:v17];
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

@end