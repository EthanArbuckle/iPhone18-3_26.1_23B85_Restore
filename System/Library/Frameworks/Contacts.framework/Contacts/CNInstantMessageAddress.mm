@interface CNInstantMessageAddress
+ (CNInstantMessageAddress)instantMessageAddressWithDictionaryRepresentation:(id)a3;
+ (NSString)localizedStringForService:(NSString *)service;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid:(id *)a3;
- (CNInstantMessageAddress)initWithCoder:(id)a3;
- (CNInstantMessageAddress)initWithUsername:(id)a3 userIdentifier:(id)a4 service:(id)a5 teamIdentifier:(id)a6 bundleIdentifiers:(id)a7;
- (NSString)description;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNInstantMessageAddress

+ (NSString)localizedStringForService:(NSString *)service
{
  v4 = MEMORY[0x1E6996750];
  v5 = MEMORY[0x1E696AAE8];
  v6 = service;
  v7 = [v5 bundleForClass:a1];
  v8 = [v4 localizedStringForString:v6 bundle:v7 table:@"MessagingServices" returningNilIfNotFound:0];

  return v8;
}

+ (CNInstantMessageAddress)instantMessageAddressWithDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = +[CN instantMessageAddressFromDictionaryTransform];
  v5 = (v4)[2](v4, v3);

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[CN instantMessageAddressToDictionaryTransform];
  v4 = (v3)[2](v3, self);

  return v4;
}

- (CNInstantMessageAddress)initWithUsername:(id)a3 userIdentifier:(id)a4 service:(id)a5 teamIdentifier:(id)a6 bundleIdentifiers:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = CNInstantMessageAddress;
  v17 = [(CNInstantMessageAddress *)&v30 init];
  if (v17)
  {
    v18 = &stru_1F094DAB0;
    if (!v14)
    {
      v14 = &stru_1F094DAB0;
    }

    if (v12)
    {
      v18 = [v12 copy];
    }

    username = v17->_username;
    v17->_username = &v18->isa;

    v20 = [v13 copy];
    userIdentifier = v17->_userIdentifier;
    v17->_userIdentifier = v20;

    v22 = [(__CFString *)v14 copy];
    service = v17->_service;
    v17->_service = v22;

    v24 = [v15 copy];
    teamIdentifier = v17->_teamIdentifier;
    v17->_teamIdentifier = v24;

    v26 = [v16 copy];
    bundleIdentifiers = v17->_bundleIdentifiers;
    v17->_bundleIdentifiers = v26;

    v28 = v17;
  }

  return v17;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CNMutableInstantMessageAddress alloc];
  v5 = [(CNInstantMessageAddress *)self username];
  v6 = [(CNInstantMessageAddress *)self userIdentifier];
  v7 = [(CNInstantMessageAddress *)self service];
  v8 = [(CNInstantMessageAddress *)self teamIdentifier];
  v9 = [(CNInstantMessageAddress *)self bundleIdentifiers];
  v10 = [(CNInstantMessageAddress *)v4 initWithUsername:v5 userIdentifier:v6 service:v7 teamIdentifier:v8 bundleIdentifiers:v9];

  return v10;
}

- (CNInstantMessageAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CNInstantMessageAddress;
  v5 = [(CNInstantMessageAddress *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_username"];
    v7 = [v6 copy];
    username = v5->_username;
    v5->_username = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userIdentifier"];
    v10 = [v9 copy];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_service"];
    v13 = [v12 copy];
    service = v5->_service;
    v5->_service = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_teamIdentifier"];
    v16 = [v15 copy];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"_bundleIdentifiers"];
    v22 = [v21 copy];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v22;

    v24 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  username = self->_username;
  v5 = a3;
  [v5 encodeObject:username forKey:@"_username"];
  [v5 encodeObject:self->_userIdentifier forKey:@"_userIdentifier"];
  [v5 encodeObject:self->_service forKey:@"_service"];
  [v5 encodeObject:self->_teamIdentifier forKey:@"_teamIdentifier"];
  [v5 encodeObject:self->_bundleIdentifiers forKey:@"_bundleIdentifiers"];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"username" object:self->_username];
  v5 = [v3 appendName:@"userIdentifier" object:self->_userIdentifier];
  v6 = [v3 appendName:@"service" object:self->_service];
  v7 = [v3 appendName:@"teamIdentifier" object:self->_teamIdentifier];
  v8 = [v3 appendName:@"bundleIdentifiers" object:self->_bundleIdentifiers];
  v9 = [v3 build];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __35__CNInstantMessageAddress_isEqual___block_invoke;
  v24[3] = &unk_1E7412228;
  v24[4] = self;
  v25 = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__CNInstantMessageAddress_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v7 = v25;
  v23 = v7;
  v8 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __35__CNInstantMessageAddress_isEqual___block_invoke_3;
  v20[3] = &unk_1E7412228;
  v20[4] = self;
  v9 = v7;
  v21 = v9;
  v10 = _Block_copy(v20);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __35__CNInstantMessageAddress_isEqual___block_invoke_4;
  v18[3] = &unk_1E7412228;
  v18[4] = self;
  v11 = v9;
  v19 = v11;
  v12 = _Block_copy(v18);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__CNInstantMessageAddress_isEqual___block_invoke_5;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = v11;
  v13 = v11;
  v14 = _Block_copy(v16);
  LOBYTE(self) = [v5 isObject:v13 kindOfClass:v6 andEqualToObject:self withBlocks:{v24, v8, v10, v12, v14, 0}];

  return self;
}

uint64_t __35__CNInstantMessageAddress_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) username];
  v4 = [*(a1 + 40) username];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __35__CNInstantMessageAddress_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) userIdentifier];
  v4 = [*(a1 + 40) userIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __35__CNInstantMessageAddress_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) service];
  v4 = [*(a1 + 40) service];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __35__CNInstantMessageAddress_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) teamIdentifier];
  v4 = [*(a1 + 40) teamIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __35__CNInstantMessageAddress_isEqual___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) bundleIdentifiers];
  v4 = [*(a1 + 40) bundleIdentifiers];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __31__CNInstantMessageAddress_hash__block_invoke;
  v14[3] = &unk_1E7412250;
  v14[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__CNInstantMessageAddress_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __31__CNInstantMessageAddress_hash__block_invoke_3;
  v12[3] = &unk_1E7412250;
  v12[4] = self;
  v5 = _Block_copy(v12);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __31__CNInstantMessageAddress_hash__block_invoke_4;
  v11[3] = &unk_1E7412250;
  v11[4] = self;
  v6 = _Block_copy(v11);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__CNInstantMessageAddress_hash__block_invoke_5;
  v10[3] = &unk_1E7412250;
  v10[4] = self;
  v7 = _Block_copy(v10);
  v8 = [v3 hashWithBlocks:{v14, v4, v5, v6, v7, 0}];

  return v8;
}

uint64_t __31__CNInstantMessageAddress_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) username];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __31__CNInstantMessageAddress_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) userIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __31__CNInstantMessageAddress_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) service];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __31__CNInstantMessageAddress_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) teamIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __31__CNInstantMessageAddress_hash__block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) bundleIdentifiers];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (BOOL)isValid:(id *)a3
{
  if (isValid__cn_once_token_0_0 != -1)
  {
    [CNInstantMessageAddress isValid:];
  }

  v5 = isValid__cn_once_object_0_0;
  if (isValid__cn_once_token_1_0 != -1)
  {
    [CNInstantMessageAddress isValid:];
  }

  v6 = isValid__cn_once_token_2_0;
  v7 = isValid__cn_once_object_1_0;
  if (v6 != -1)
  {
    [CNInstantMessageAddress isValid:];
  }

  v8 = [CN areValidKeyPaths:v5 forObject:self expectedClasses:v7 allowNil:isValid__cn_once_object_2_0 error:a3];

  return v8;
}

uint64_t __35__CNInstantMessageAddress_isValid___block_invoke()
{
  v0 = [&unk_1F0987570 copy];
  v1 = isValid__cn_once_object_0_0;
  isValid__cn_once_object_0_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __35__CNInstantMessageAddress_isValid___block_invoke_2()
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:5];
  v1 = [v0 copy];
  v2 = isValid__cn_once_object_1_0;
  isValid__cn_once_object_1_0 = v1;
}

uint64_t __35__CNInstantMessageAddress_isValid___block_invoke_3()
{
  v0 = [&unk_1F0987588 copy];
  v1 = isValid__cn_once_object_2_0;
  isValid__cn_once_object_2_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end