@interface CNContactImageSaveRequest
+ (id)saveRequestToCreateImage:(id)image forContactIdentifier:(id)identifier;
+ (id)saveRequestToCreateImages:(id)images forContactIdentifier:(id)identifier;
+ (id)saveRequestToDeleteImageForIdentifier:(id)identifier;
+ (id)saveRequestToDeleteImageForIdentifiers:(id)identifiers;
+ (id)saveRequestToDeleteImagesForContactIdentifiers:(id)identifiers;
- (CNContactImageSaveRequest)initWithContactImages:(id)images contactIdentifiers:(id)identifiers attributeName:(id)name operationType:(int64_t)type;
- (CNContactPosterDataChangeRequest)posterDataChangeRequest;
@end

@implementation CNContactImageSaveRequest

+ (id)saveRequestToCreateImage:(id)image forContactIdentifier:(id)identifier
{
  v13[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  imageCopy = image;
  v7 = [CNContactImageSaveRequest alloc];
  v13[0] = imageCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12 = identifierCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];

  v10 = [(CNContactImageSaveRequest *)v7 initWithContactImages:v8 contactIdentifiers:v9 attributeName:@"contactIdentifier" operationType:0];

  return v10;
}

+ (id)saveRequestToCreateImages:(id)images forContactIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  imagesCopy = images;
  v7 = [CNContactImageSaveRequest alloc];
  v11[0] = identifierCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(CNContactImageSaveRequest *)v7 initWithContactImages:imagesCopy contactIdentifiers:v8 attributeName:@"contactIdentifier" operationType:0];

  return v9;
}

+ (id)saveRequestToDeleteImagesForContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [CNContactImageSaveRequest alloc];
  v5 = [(CNContactImageSaveRequest *)v4 initWithContactImages:MEMORY[0x1E695E0F0] contactIdentifiers:identifiersCopy attributeName:@"contactIdentifier" operationType:2];

  return v5;
}

+ (id)saveRequestToDeleteImageForIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v3 = MEMORY[0x1E695DEC8];
  identifierCopy2 = identifier;
  v5 = [v3 arrayWithObjects:&identifierCopy count:1];
  v6 = [CNContactImageSaveRequest saveRequestToDeleteImageForIdentifiers:v5, identifierCopy, v9];

  return v6;
}

+ (id)saveRequestToDeleteImageForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [CNContactImageSaveRequest alloc];
  v5 = [(CNContactImageSaveRequest *)v4 initWithContactImages:MEMORY[0x1E695E0F0] contactIdentifiers:identifiersCopy attributeName:@"identifier" operationType:2];

  return v5;
}

- (CNContactImageSaveRequest)initWithContactImages:(id)images contactIdentifiers:(id)identifiers attributeName:(id)name operationType:(int64_t)type
{
  imagesCopy = images;
  identifiersCopy = identifiers;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = CNContactImageSaveRequest;
  v14 = [(CNContactImageSaveRequest *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_images, images);
    objc_storeStrong(&v15->_contactIdentifiers, identifiers);
    v15->_operationType = type;
    objc_storeStrong(&v15->_attributeName, name);
    v16 = v15;
  }

  return v15;
}

- (CNContactPosterDataChangeRequest)posterDataChangeRequest
{
  operationType = [(CNContactImageSaveRequest *)self operationType];
  if (operationType >= 2)
  {
    if (operationType != 2)
    {
      goto LABEL_6;
    }

    contactIdentifiers = [(CNContactImageSaveRequest *)self contactIdentifiers];
    v2 = [CNContactImageDeleteRequest requestToDeleteImagesForContactIdentifiers:contactIdentifiers];
  }

  else
  {
    contactIdentifiers = [(CNContactImageSaveRequest *)self images];
    contactIdentifiers2 = [(CNContactImageSaveRequest *)self contactIdentifiers];
    firstObject = [contactIdentifiers2 firstObject];
    v2 = [CNContactImageCreateRequest requestToCreateImages:contactIdentifiers forContactIdentifier:firstObject];
  }

LABEL_6:

  return v2;
}

@end