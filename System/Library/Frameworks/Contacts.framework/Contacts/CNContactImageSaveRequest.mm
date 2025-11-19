@interface CNContactImageSaveRequest
+ (id)saveRequestToCreateImage:(id)a3 forContactIdentifier:(id)a4;
+ (id)saveRequestToCreateImages:(id)a3 forContactIdentifier:(id)a4;
+ (id)saveRequestToDeleteImageForIdentifier:(id)a3;
+ (id)saveRequestToDeleteImageForIdentifiers:(id)a3;
+ (id)saveRequestToDeleteImagesForContactIdentifiers:(id)a3;
- (CNContactImageSaveRequest)initWithContactImages:(id)a3 contactIdentifiers:(id)a4 attributeName:(id)a5 operationType:(int64_t)a6;
- (CNContactPosterDataChangeRequest)posterDataChangeRequest;
@end

@implementation CNContactImageSaveRequest

+ (id)saveRequestToCreateImage:(id)a3 forContactIdentifier:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [CNContactImageSaveRequest alloc];
  v13[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12 = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];

  v10 = [(CNContactImageSaveRequest *)v7 initWithContactImages:v8 contactIdentifiers:v9 attributeName:@"contactIdentifier" operationType:0];

  return v10;
}

+ (id)saveRequestToCreateImages:(id)a3 forContactIdentifier:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [CNContactImageSaveRequest alloc];
  v11[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(CNContactImageSaveRequest *)v7 initWithContactImages:v6 contactIdentifiers:v8 attributeName:@"contactIdentifier" operationType:0];

  return v9;
}

+ (id)saveRequestToDeleteImagesForContactIdentifiers:(id)a3
{
  v3 = a3;
  v4 = [CNContactImageSaveRequest alloc];
  v5 = [(CNContactImageSaveRequest *)v4 initWithContactImages:MEMORY[0x1E695E0F0] contactIdentifiers:v3 attributeName:@"contactIdentifier" operationType:2];

  return v5;
}

+ (id)saveRequestToDeleteImageForIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [CNContactImageSaveRequest saveRequestToDeleteImageForIdentifiers:v5, v8, v9];

  return v6;
}

+ (id)saveRequestToDeleteImageForIdentifiers:(id)a3
{
  v3 = a3;
  v4 = [CNContactImageSaveRequest alloc];
  v5 = [(CNContactImageSaveRequest *)v4 initWithContactImages:MEMORY[0x1E695E0F0] contactIdentifiers:v3 attributeName:@"identifier" operationType:2];

  return v5;
}

- (CNContactImageSaveRequest)initWithContactImages:(id)a3 contactIdentifiers:(id)a4 attributeName:(id)a5 operationType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = CNContactImageSaveRequest;
  v14 = [(CNContactImageSaveRequest *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_images, a3);
    objc_storeStrong(&v15->_contactIdentifiers, a4);
    v15->_operationType = a6;
    objc_storeStrong(&v15->_attributeName, a5);
    v16 = v15;
  }

  return v15;
}

- (CNContactPosterDataChangeRequest)posterDataChangeRequest
{
  v4 = [(CNContactImageSaveRequest *)self operationType];
  if (v4 >= 2)
  {
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    v5 = [(CNContactImageSaveRequest *)self contactIdentifiers];
    v2 = [CNContactImageDeleteRequest requestToDeleteImagesForContactIdentifiers:v5];
  }

  else
  {
    v5 = [(CNContactImageSaveRequest *)self images];
    v6 = [(CNContactImageSaveRequest *)self contactIdentifiers];
    v7 = [v6 firstObject];
    v2 = [CNContactImageCreateRequest requestToCreateImages:v5 forContactIdentifier:v7];
  }

LABEL_6:

  return v2;
}

@end