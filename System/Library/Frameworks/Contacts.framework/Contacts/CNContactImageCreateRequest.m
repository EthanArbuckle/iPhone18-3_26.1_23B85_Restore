@interface CNContactImageCreateRequest
+ (id)requestToCreateImage:(id)a3 forContactIdentifier:(id)a4;
+ (id)requestToCreateImages:(id)a3 forContactIdentifier:(id)a4;
+ (id)requestToCreateRecentImage:(id)a3 forContactIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CNContactImageCreateRequest)initWithCoder:(id)a3;
- (CNContactImageCreateRequest)initWithContactImages:(id)a3 contactIdentifier:(id)a4 recentsOnly:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactImageCreateRequest

- (CNContactImageCreateRequest)initWithContactImages:(id)a3 contactIdentifier:(id)a4 recentsOnly:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = CNContactImageCreateRequest;
  v10 = [(CNContactImageCreateRequest *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    images = v10->_images;
    v10->_images = v11;

    v13 = [v9 copy];
    contactIdentifier = v10->_contactIdentifier;
    v10->_contactIdentifier = v13;

    v10->_recentsOnly = a5;
    v15 = v10;
  }

  return v10;
}

+ (id)requestToCreateImages:(id)a3 forContactIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNContactImageCreateRequest alloc] initWithContactImages:v6 contactIdentifier:v5 recentsOnly:0];

  return v7;
}

+ (id)requestToCreateImage:(id)a3 forContactIdentifier:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 arrayWithObjects:&v11 count:1];
  v9 = [CNContactImageCreateRequest requestToCreateImages:v8 forContactIdentifier:v6, v11, v12];

  return v9;
}

+ (id)requestToCreateRecentImage:(id)a3 forContactIdentifier:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [CNContactImageCreateRequest alloc];
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(CNContactImageCreateRequest *)v7 initWithContactImages:v8 contactIdentifier:v5 recentsOnly:1];

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
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && ((contactIdentifier = self->_contactIdentifier, !(contactIdentifier | v4->_contactIdentifier)) || [(NSString *)contactIdentifier isEqual:?]) && ((images = self->_images, !(images | v4->_images)) || [(NSArray *)images isEqual:?]) && self->_recentsOnly == v4->_recentsOnly;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  contactIdentifier = self->_contactIdentifier;
  v5 = a3;
  [v5 encodeObject:contactIdentifier forKey:@"contactIdentifier"];
  [v5 encodeObject:self->_images forKey:@"images"];
  [v5 encodeBool:self->_recentsOnly forKey:@"recentsOnly"];
}

- (CNContactImageCreateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"images"];
  v7 = [v4 decodeBoolForKey:@"recentsOnly"];

  v8 = [(CNContactImageCreateRequest *)self initWithContactImages:v6 contactIdentifier:v5 recentsOnly:v7];
  return v8;
}

@end