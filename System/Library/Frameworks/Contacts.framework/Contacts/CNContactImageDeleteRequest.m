@interface CNContactImageDeleteRequest
+ (id)os_log;
+ (id)requestToDeleteImageForIdentifier:(id)a3;
+ (id)requestToDeleteImageForIdentifiers:(id)a3;
+ (id)requestToDeleteImagesForContactIdentifiers:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CNContactImageDeleteRequest)initWithAttributeName:(id)a3 attributesToDeleteBy:(id)a4;
- (CNContactImageDeleteRequest)initWithCoder:(id)a3;
- (id)persistentStoreRequest;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactImageDeleteRequest

+ (id)os_log
{
  if (os_log_cn_once_token_0_14 != -1)
  {
    +[CNContactImageDeleteRequest os_log];
  }

  v3 = os_log_cn_once_object_0_14;

  return v3;
}

uint64_t __37__CNContactImageDeleteRequest_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "PosterOperation");
  v1 = os_log_cn_once_object_0_14;
  os_log_cn_once_object_0_14 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)requestToDeleteImageForIdentifiers:(id)a3
{
  v3 = a3;
  v4 = [[CNContactImageDeleteRequest alloc] initWithAttributeName:@"identifier" attributesToDeleteBy:v3];

  return v4;
}

+ (id)requestToDeleteImageForIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [CNContactImageDeleteRequest requestToDeleteImageForIdentifiers:v5, v8, v9];

  return v6;
}

+ (id)requestToDeleteImagesForContactIdentifiers:(id)a3
{
  v3 = a3;
  v4 = [[CNContactImageDeleteRequest alloc] initWithAttributeName:@"contactIdentifier" attributesToDeleteBy:v3];

  return v4;
}

- (CNContactImageDeleteRequest)initWithAttributeName:(id)a3 attributesToDeleteBy:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = CNContactImageDeleteRequest;
  v9 = [(CNContactImageDeleteRequest *)&v29 init];
  if (!v9)
  {
    goto LABEL_11;
  }

  if (!v7 || ![v7 length])
  {
    v13 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CNContactImageDeleteRequest *)v13 initWithAttributeName:v14 attributesToDeleteBy:v15, v16, v17, v18, v19, v20];
    }

    goto LABEL_10;
  }

  if (((*(*MEMORY[0x1E6996538] + 16))() & 1) == 0)
  {
    v13 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CNContactImageDeleteRequest *)v13 initWithAttributeName:v21 attributesToDeleteBy:v22, v23, v24, v25, v26, v27];
    }

LABEL_10:

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  objc_storeStrong(&v9->_attributeName, a3);
  v10 = [v8 copy];
  attributesToDeleteBy = v9->_attributesToDeleteBy;
  v9->_attributesToDeleteBy = v10;

  v12 = v9;
LABEL_12:

  return v12;
}

- (id)persistentStoreRequest
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695D560] batchUpdateRequestWithEntityName:@"CNContactImage"];
  v4 = *MEMORY[0x1E6996538];
  v5 = [(CNContactImageDeleteRequest *)self attributesToDeleteBy];
  LODWORD(v4) = (*(v4 + 16))(v4, v5);

  if (v4)
  {
    v6 = MEMORY[0x1E696AE18];
    v7 = [(CNContactImageDeleteRequest *)self attributeName];
    v8 = [(CNContactImageDeleteRequest *)self attributesToDeleteBy];
    v9 = [v6 predicateWithFormat:@"%K IN %@", v7, v8];
    [v3 setPredicate:v9];
  }

  else
  {
    v10 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CNContactImageDeleteRequest *)v10 initWithAttributeName:v11 attributesToDeleteBy:v12, v13, v14, v15, v16, v17];
    }

    v18 = [MEMORY[0x1E696AE18] predicateWithValue:0];
    [v3 setPredicate:v18];
  }

  v22[0] = @"deletionDate";
  v19 = [MEMORY[0x1E695DF00] date];
  v22[1] = @"isCurrent";
  v23[0] = v19;
  v23[1] = MEMORY[0x1E695E110];
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v3 setPropertiesToUpdate:v20];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (attributeName = self->_attributeName, attributeName | v4->_attributeName) && ![(NSString *)attributeName isEqual:?]|| (attributesToDeleteBy = self->_attributesToDeleteBy, attributesToDeleteBy | v4->_attributesToDeleteBy) && ![(NSArray *)attributesToDeleteBy isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  attributeName = self->_attributeName;
  v5 = a3;
  [v5 encodeObject:attributeName forKey:@"attributeName"];
  [v5 encodeObject:self->_attributesToDeleteBy forKey:@"attributesToDeleteBy"];
}

- (CNContactImageDeleteRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributeName"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"attributesToDeleteBy"];

  v7 = [(CNContactImageDeleteRequest *)self initWithAttributeName:v5 attributesToDeleteBy:v6];
  return v7;
}

@end