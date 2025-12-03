@interface CNContactImageCreateRequest
+ (id)requestToCreateImage:(id)image forContactIdentifier:(id)identifier;
+ (id)requestToCreateImages:(id)images forContactIdentifier:(id)identifier;
+ (id)requestToCreateRecentImage:(id)image forContactIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (CNContactImageCreateRequest)initWithCoder:(id)coder;
- (CNContactImageCreateRequest)initWithContactImages:(id)images contactIdentifier:(id)identifier recentsOnly:(BOOL)only;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactImageCreateRequest

- (CNContactImageCreateRequest)initWithContactImages:(id)images contactIdentifier:(id)identifier recentsOnly:(BOOL)only
{
  imagesCopy = images;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = CNContactImageCreateRequest;
  v10 = [(CNContactImageCreateRequest *)&v17 init];
  if (v10)
  {
    v11 = [imagesCopy copy];
    images = v10->_images;
    v10->_images = v11;

    v13 = [identifierCopy copy];
    contactIdentifier = v10->_contactIdentifier;
    v10->_contactIdentifier = v13;

    v10->_recentsOnly = only;
    v15 = v10;
  }

  return v10;
}

+ (id)requestToCreateImages:(id)images forContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  imagesCopy = images;
  v7 = [[CNContactImageCreateRequest alloc] initWithContactImages:imagesCopy contactIdentifier:identifierCopy recentsOnly:0];

  return v7;
}

+ (id)requestToCreateImage:(id)image forContactIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v5 = MEMORY[0x1E695DEC8];
  identifierCopy = identifier;
  imageCopy2 = image;
  v8 = [v5 arrayWithObjects:&imageCopy count:1];
  v9 = [CNContactImageCreateRequest requestToCreateImages:v8 forContactIdentifier:identifierCopy, imageCopy, v12];

  return v9;
}

+ (id)requestToCreateRecentImage:(id)image forContactIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  imageCopy = image;
  v7 = [CNContactImageCreateRequest alloc];
  v11[0] = imageCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(CNContactImageCreateRequest *)v7 initWithContactImages:v8 contactIdentifier:identifierCopy recentsOnly:1];

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
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && ((contactIdentifier = self->_contactIdentifier, !(contactIdentifier | equalCopy->_contactIdentifier)) || [(NSString *)contactIdentifier isEqual:?]) && ((images = self->_images, !(images | equalCopy->_images)) || [(NSArray *)images isEqual:?]) && self->_recentsOnly == equalCopy->_recentsOnly;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  contactIdentifier = self->_contactIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:contactIdentifier forKey:@"contactIdentifier"];
  [coderCopy encodeObject:self->_images forKey:@"images"];
  [coderCopy encodeBool:self->_recentsOnly forKey:@"recentsOnly"];
}

- (CNContactImageCreateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"images"];
  v7 = [coderCopy decodeBoolForKey:@"recentsOnly"];

  v8 = [(CNContactImageCreateRequest *)self initWithContactImages:v6 contactIdentifier:v5 recentsOnly:v7];
  return v8;
}

@end