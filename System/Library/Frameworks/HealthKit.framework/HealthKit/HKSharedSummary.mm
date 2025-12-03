@interface HKSharedSummary
- (BOOL)isEqual:(id)equal;
- (HKSharedSummary)initWithCoder:(id)coder;
- (HKSharedSummary)initWithPackage:(id)package name:(id)name version:(id)version compatibilityVersion:(id)compatibilityVersion authorizationIdentifiers:(id)identifiers objectTypes:(id)types summaryData:(id)data;
- (id)_initWithUUID:(id)d package:(id)package name:(id)name version:(id)version compatibilityVersion:(id)compatibilityVersion authorizationIdentifiers:(id)identifiers objectTypes:(id)types summaryData:(id)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSharedSummary

- (HKSharedSummary)initWithPackage:(id)package name:(id)name version:(id)version compatibilityVersion:(id)compatibilityVersion authorizationIdentifiers:(id)identifiers objectTypes:(id)types summaryData:(id)data
{
  v16 = MEMORY[0x1E696AFB0];
  dataCopy = data;
  typesCopy = types;
  identifiersCopy = identifiers;
  compatibilityVersionCopy = compatibilityVersion;
  versionCopy = version;
  nameCopy = name;
  packageCopy = package;
  uUID = [v16 UUID];
  v25 = [(HKSharedSummary *)self _initWithUUID:uUID package:packageCopy name:nameCopy version:versionCopy compatibilityVersion:compatibilityVersionCopy authorizationIdentifiers:identifiersCopy objectTypes:typesCopy summaryData:dataCopy];

  return v25;
}

- (id)_initWithUUID:(id)d package:(id)package name:(id)name version:(id)version compatibilityVersion:(id)compatibilityVersion authorizationIdentifiers:(id)identifiers objectTypes:(id)types summaryData:(id)self0
{
  dCopy = d;
  packageCopy = package;
  nameCopy = name;
  versionCopy = version;
  compatibilityVersionCopy = compatibilityVersion;
  identifiersCopy = identifiers;
  typesCopy = types;
  dataCopy = data;
  v42.receiver = self;
  v42.super_class = HKSharedSummary;
  v25 = [(HKSharedSummary *)&v42 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_UUID, d);
    v27 = [packageCopy copy];
    package = v26->_package;
    v26->_package = v27;

    v29 = [nameCopy copy];
    name = v26->_name;
    v26->_name = v29;

    v31 = [versionCopy copy];
    version = v26->_version;
    v26->_version = v31;

    v33 = [compatibilityVersionCopy copy];
    compatibilityVersion = v26->_compatibilityVersion;
    v26->_compatibilityVersion = v33;

    v35 = [identifiersCopy copy];
    authorizationIdentifiers = v26->_authorizationIdentifiers;
    v26->_authorizationIdentifiers = v35;

    v37 = [typesCopy copy];
    objectTypes = v26->_objectTypes;
    v26->_objectTypes = v37;

    v39 = [dataCopy copy];
    summaryData = v26->_summaryData;
    v26->_summaryData = v39;
  }

  return v26;
}

- (id)description
{
  allObjects = [(NSSet *)self->_authorizationIdentifiers allObjects];
  v4 = [allObjects componentsJoinedByString:{@", "}];

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  v9 = [v5 stringWithFormat:@"<%@:%p UUID=%@, package=%@, name=%@, version=%@, authorizations=%@>", v7, self, uUIDString, self->_package, self->_name, self->_version, v4];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      UUID = self->_UUID;
      uUID = [(HKSharedSummary *)equalCopy UUID];
      v7 = [(NSUUID *)UUID isEqual:uUID];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_package forKey:@"Package"];
  [coderCopy encodeObject:self->_name forKey:@"Name"];
  [coderCopy encodeObject:self->_version forKey:@"Version"];
  [coderCopy encodeObject:self->_compatibilityVersion forKey:@"CompatibilityVersion"];
  [coderCopy encodeObject:self->_authorizationIdentifiers forKey:@"AuthorizationIdentifiers"];
  [coderCopy encodeObject:self->_objectTypes forKey:@"ObjectTypes"];
  [coderCopy encodeObject:self->_summaryData forKey:@"SummaryData"];
  [coderCopy encodeObject:self->_transaction forKey:@"Transaction"];
}

- (HKSharedSummary)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Package"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CompatibilityVersion"];
  v8 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v10 = [v8 setWithArray:v9];

  v24 = v10;
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"AuthorizationIdentifiers"];
  v12 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v14 = [v12 setWithArray:v13];

  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"ObjectTypes"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SummaryData"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Transaction"];

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