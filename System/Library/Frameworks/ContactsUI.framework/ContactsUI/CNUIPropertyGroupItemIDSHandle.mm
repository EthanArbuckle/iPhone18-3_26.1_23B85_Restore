@interface CNUIPropertyGroupItemIDSHandle
+ (BOOL)supportsPropertyGroupItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (CNUIPropertyGroupItemIDSHandle)initWithPropertyGroupItem:(id)item;
- (NSString)_cnui_IDSIDRepresentation;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CNUIPropertyGroupItemIDSHandle

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CNUIPropertyGroupItemIDSHandle_hash__block_invoke;
  v3[3] = &unk_1E74E6308;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __38__CNUIPropertyGroupItemIDSHandle_hash__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contactPropertyHandle];
  v2 = [v1 hash];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__CNUIPropertyGroupItemIDSHandle_isEqual___block_invoke;
  v8[3] = &unk_1E74E7460;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
  LOBYTE(self) = [v5 isObject:self equalToOther:v6 withBlocks:{v8, 0}];

  return self;
}

uint64_t __42__CNUIPropertyGroupItemIDSHandle_isEqual___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) contactPropertyHandle];
  if (!v3)
  {
    v1 = [*(a1 + 40) contactPropertyHandle];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) contactPropertyHandle];
  v5 = [*(a1 + 40) contactPropertyHandle];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  contactPropertyHandle = [(CNUIPropertyGroupItemIDSHandle *)self contactPropertyHandle];
  v5 = [v3 appendName:@"handle" object:contactPropertyHandle];

  build = [v3 build];

  return build;
}

- (NSString)_cnui_IDSIDRepresentation
{
  contactPropertyHandle = [(CNUIPropertyGroupItemIDSHandle *)self contactPropertyHandle];
  _cnui_IDSIDRepresentation = [contactPropertyHandle _cnui_IDSIDRepresentation];

  return _cnui_IDSIDRepresentation;
}

- (CNUIPropertyGroupItemIDSHandle)initWithPropertyGroupItem:(id)item
{
  v25[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  supportedContactPropertyKeys = [MEMORY[0x1E6996AE8] supportedContactPropertyKeys];
  contactProperty = [itemCopy contactProperty];
  v7 = [contactProperty key];
  v8 = [supportedContactPropertyKeys containsObject:v7];

  if ((v8 & 1) == 0)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v24 = @"groupItem";
    v25[0] = itemCopy;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v21 = [v18 exceptionWithName:v19 reason:@"Unsupported property group item" userInfo:v20];
    v22 = v21;

    objc_exception_throw(v21);
  }

  v23.receiver = self;
  v23.super_class = CNUIPropertyGroupItemIDSHandle;
  v9 = [(CNUIPropertyGroupItemIDSHandle *)&v23 init];
  if (v9)
  {
    contactProperty2 = [itemCopy contactProperty];
    contactProperty = v9->_contactProperty;
    v9->_contactProperty = contactProperty2;

    v12 = objc_alloc(MEMORY[0x1E6996AE8]);
    contactProperty3 = [itemCopy contactProperty];
    v14 = [v12 initWithContactProperty:contactProperty3];
    contactPropertyHandle = v9->_contactPropertyHandle;
    v9->_contactPropertyHandle = v14;

    v16 = v9;
  }

  return v9;
}

+ (BOOL)supportsPropertyGroupItem:(id)item
{
  v3 = MEMORY[0x1E6996AE8];
  itemCopy = item;
  supportedContactPropertyKeys = [v3 supportedContactPropertyKeys];
  contactProperty = [itemCopy contactProperty];

  v7 = [contactProperty key];
  v8 = [supportedContactPropertyKeys containsObject:v7];

  return v8;
}

@end