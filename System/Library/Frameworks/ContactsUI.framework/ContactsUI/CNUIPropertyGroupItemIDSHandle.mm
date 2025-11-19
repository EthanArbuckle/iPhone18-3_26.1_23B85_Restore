@interface CNUIPropertyGroupItemIDSHandle
+ (BOOL)supportsPropertyGroupItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CNUIPropertyGroupItemIDSHandle)initWithPropertyGroupItem:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__CNUIPropertyGroupItemIDSHandle_isEqual___block_invoke;
  v8[3] = &unk_1E74E7460;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
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
  v4 = [(CNUIPropertyGroupItemIDSHandle *)self contactPropertyHandle];
  v5 = [v3 appendName:@"handle" object:v4];

  v6 = [v3 build];

  return v6;
}

- (NSString)_cnui_IDSIDRepresentation
{
  v2 = [(CNUIPropertyGroupItemIDSHandle *)self contactPropertyHandle];
  v3 = [v2 _cnui_IDSIDRepresentation];

  return v3;
}

- (CNUIPropertyGroupItemIDSHandle)initWithPropertyGroupItem:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E6996AE8] supportedContactPropertyKeys];
  v6 = [v4 contactProperty];
  v7 = [v6 key];
  v8 = [v5 containsObject:v7];

  if ((v8 & 1) == 0)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v24 = @"groupItem";
    v25[0] = v4;
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
    v10 = [v4 contactProperty];
    contactProperty = v9->_contactProperty;
    v9->_contactProperty = v10;

    v12 = objc_alloc(MEMORY[0x1E6996AE8]);
    v13 = [v4 contactProperty];
    v14 = [v12 initWithContactProperty:v13];
    contactPropertyHandle = v9->_contactPropertyHandle;
    v9->_contactPropertyHandle = v14;

    v16 = v9;
  }

  return v9;
}

+ (BOOL)supportsPropertyGroupItem:(id)a3
{
  v3 = MEMORY[0x1E6996AE8];
  v4 = a3;
  v5 = [v3 supportedContactPropertyKeys];
  v6 = [v4 contactProperty];

  v7 = [v6 key];
  v8 = [v5 containsObject:v7];

  return v8;
}

@end