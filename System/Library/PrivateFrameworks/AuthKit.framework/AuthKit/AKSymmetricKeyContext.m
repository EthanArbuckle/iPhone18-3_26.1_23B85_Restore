@interface AKSymmetricKeyContext
- (AKSymmetricKeyContext)initWithCoder:(id)a3;
- (AKSymmetricKeyContext)initWithRequestedSubdomains:(id)a3;
- (AKSymmetricKeyContext)initWithRequestedSubdomains:(id)a3 clientLabel:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKSymmetricKeyContext

- (AKSymmetricKeyContext)initWithRequestedSubdomains:(id)a3 clientLabel:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AKSymmetricKeyContext;
  v11 = [(AKSymmetricKeyContext *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_requestedSubdomains, location[0]);
    objc_storeStrong(&v11->_clientLabel, v9);
  }

  v6 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (AKSymmetricKeyContext)initWithRequestedSubdomains:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v7 = [(AKSymmetricKeyContext *)v3 initWithRequestedSubdomains:location[0] clientLabel:0];
  v5 = MEMORY[0x1E69E5928](v7);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v5;
}

- (AKSymmetricKeyContext)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v15;
  v15 = 0;
  v12 = [(AKSymmetricKeyContext *)v3 init];
  v15 = v12;
  objc_storeStrong(&v15, v12);
  if (v12)
  {
    v10 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v13 = [v10 setWithArray:?];
    MEMORY[0x1E69E5920](v11);
    v4 = [location[0] decodeObjectOfClasses:v13 forKey:@"_requestedSubdomains"];
    requestedSubdomains = v15->_requestedSubdomains;
    v15->_requestedSubdomains = v4;
    MEMORY[0x1E69E5920](requestedSubdomains);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientLabel"];
    clientLabel = v15->_clientLabel;
    v15->_clientLabel = v6;
    MEMORY[0x1E69E5920](clientLabel);
    objc_storeStrong(&v13, 0);
  }

  v9 = MEMORY[0x1E69E5928](v15);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  *MEMORY[0x1E69E9840];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_requestedSubdomains forKey:@"_requestedSubdomains"];
  [location[0] encodeObject:v4->_clientLabel forKey:@"_clientLabel"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10 = self;
  v9[2] = a2;
  v9[1] = a3;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSArray *)v10->_requestedSubdomains copy];
  v4 = *(v9[0] + 1);
  *(v9[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v10->_clientLabel copy];
  v6 = *(v9[0] + 2);
  *(v9[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

@end