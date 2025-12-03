@interface CNContactPosterDeleteRequest
+ (id)os_log;
+ (id)requestToDeletePosterForIdentifier:(id)identifier;
+ (id)requestToDeletePosterForIdentifiers:(id)identifiers;
+ (id)requestToDeletePostersForContactIdentifiers:(id)identifiers;
- (BOOL)isEqual:(id)equal;
- (CNContactPosterDeleteRequest)initWithAttributeName:(id)name attributesToDeleteBy:(id)by;
- (CNContactPosterDeleteRequest)initWithCoder:(id)coder;
- (id)persistentStoreRequest;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactPosterDeleteRequest

+ (id)os_log
{
  if (os_log_cn_once_token_0_19 != -1)
  {
    +[CNContactPosterDeleteRequest os_log];
  }

  v3 = os_log_cn_once_object_0_19;

  return v3;
}

uint64_t __38__CNContactPosterDeleteRequest_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "PosterOperation");
  v1 = os_log_cn_once_object_0_19;
  os_log_cn_once_object_0_19 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)requestToDeletePosterForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [[CNContactPosterDeleteRequest alloc] initWithAttributeName:@"identifier" attributesToDeleteBy:identifiersCopy];

  return v4;
}

+ (id)requestToDeletePosterForIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v3 = MEMORY[0x1E695DEC8];
  identifierCopy2 = identifier;
  v5 = [v3 arrayWithObjects:&identifierCopy count:1];
  v6 = [CNContactPosterDeleteRequest requestToDeletePosterForIdentifiers:v5, identifierCopy, v9];

  return v6;
}

+ (id)requestToDeletePostersForContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [[CNContactPosterDeleteRequest alloc] initWithAttributeName:@"contactIdentifier" attributesToDeleteBy:identifiersCopy];

  return v4;
}

- (CNContactPosterDeleteRequest)initWithAttributeName:(id)name attributesToDeleteBy:(id)by
{
  nameCopy = name;
  byCopy = by;
  v27.receiver = self;
  v27.super_class = CNContactPosterDeleteRequest;
  v9 = [(CNContactPosterDeleteRequest *)&v27 init];
  if (!v9)
  {
    goto LABEL_11;
  }

  if (!nameCopy || ![nameCopy length])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [(CNContactPosterDeleteRequest *)os_log initWithAttributeName:v12 attributesToDeleteBy:v13, v14, v15, v16, v17, v18];
    }

    goto LABEL_10;
  }

  if (((*(*MEMORY[0x1E6996538] + 16))() & 1) == 0)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [(CNContactPosterDeleteRequest *)os_log initWithAttributeName:v19 attributesToDeleteBy:v20, v21, v22, v23, v24, v25];
    }

LABEL_10:

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  objc_storeStrong(&v9->_attributeName, name);
  objc_storeStrong(&v9->_attributesToDeleteBy, by);
  v10 = v9;
LABEL_12:

  return v10;
}

- (id)persistentStoreRequest
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695D560] batchUpdateRequestWithEntityName:@"CNContactPoster"];
  v4 = *MEMORY[0x1E6996538];
  attributesToDeleteBy = [(CNContactPosterDeleteRequest *)self attributesToDeleteBy];
  LODWORD(v4) = (*(v4 + 16))(v4, attributesToDeleteBy);

  if (v4)
  {
    v6 = MEMORY[0x1E696AE18];
    attributeName = [(CNContactPosterDeleteRequest *)self attributeName];
    attributesToDeleteBy2 = [(CNContactPosterDeleteRequest *)self attributesToDeleteBy];
    v9 = [v6 predicateWithFormat:@"%K IN %@", attributeName, attributesToDeleteBy2];
    [v3 setPredicate:v9];
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [(CNContactPosterDeleteRequest *)os_log initWithAttributeName:v11 attributesToDeleteBy:v12, v13, v14, v15, v16, v17];
    }

    v18 = [MEMORY[0x1E696AE18] predicateWithValue:0];
    [v3 setPredicate:v18];
  }

  v22[0] = @"deletionDate";
  date = [MEMORY[0x1E695DF00] date];
  v22[1] = @"isCurrent";
  v23[0] = date;
  v23[1] = MEMORY[0x1E695E110];
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v3 setPropertiesToUpdate:v20];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (attributeName = self->_attributeName, attributeName | equalCopy->_attributeName) && ![(NSString *)attributeName isEqual:?]|| (attributesToDeleteBy = self->_attributesToDeleteBy, attributesToDeleteBy | equalCopy->_attributesToDeleteBy) && ![(NSArray *)attributesToDeleteBy isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  attributeName = self->_attributeName;
  coderCopy = coder;
  [coderCopy encodeObject:attributeName forKey:@"attributeName"];
  [coderCopy encodeObject:self->_attributesToDeleteBy forKey:@"attributesToDeleteBy"];
}

- (CNContactPosterDeleteRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributeName"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"attributesToDeleteBy"];

  v7 = [(CNContactPosterDeleteRequest *)self initWithAttributeName:v5 attributesToDeleteBy:v6];
  return v7;
}

@end