@interface ATXNamedHandle
- (ATXNamedHandle)initWithCoder:(id)a3;
- (ATXNamedHandle)initWithName:(id)a3 handle:(id)a4 contactIdentifier:(id)a5 handleType:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXNamedHandle

- (ATXNamedHandle)initWithName:(id)a3 handle:(id)a4 contactIdentifier:(id)a5 handleType:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = ATXNamedHandle;
  v14 = [(ATXNamedHandle *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    name = v14->_name;
    v14->_name = v15;

    v17 = [v11 copy];
    handle = v14->_handle;
    v14->_handle = v17;

    v19 = [v12 copy];
    contactIdentifier = v14->_contactIdentifier;
    v14->_contactIdentifier = v19;

    v21 = [v13 copy];
    handleType = v14->_handleType;
    v14->_handleType = v21;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXNamedHandle *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(ATXNamedHandle *)self handle];
  [v4 encodeObject:v6 forKey:@"handle"];

  v7 = [(ATXNamedHandle *)self contactIdentifier];
  [v4 encodeObject:v7 forKey:@"contactIdentifier"];

  v8 = [(ATXNamedHandle *)self handleType];
  [v4 encodeObject:v8 forKey:@"handleType"];
}

- (ATXNamedHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ATXNamedHandle;
  v5 = [(ATXNamedHandle *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handleType"];
    handleType = v5->_handleType;
    v5->_handleType = v12;

    v14 = v5;
  }

  return v5;
}

@end