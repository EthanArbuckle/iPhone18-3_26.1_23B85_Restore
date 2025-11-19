@interface CNValueOrigin
- (BOOL)isEqual:(id)a3;
- (CNValueOrigin)init;
- (CNValueOrigin)initWithCoder:(id)a3;
- (CNValueOrigin)initWithLocalizedApplicationName:(id)a3 donationIdentifier:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNValueOrigin

- (CNValueOrigin)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNValueOrigin)initWithLocalizedApplicationName:(id)a3 donationIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNValueOrigin;
  v8 = [(CNValueOrigin *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    localizedApplicationName = v8->_localizedApplicationName;
    v8->_localizedApplicationName = v9;

    v11 = [v7 copy];
    donationIdentifier = v8->_donationIdentifier;
    v8->_donationIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNValueOrigin *)self localizedApplicationName];
  v5 = [v3 appendName:@"localizedApplicationName" object:v4];

  v6 = [(CNValueOrigin *)self donationIdentifier];
  v7 = [v3 appendName:@"donationIdentifier" object:v6];

  v8 = [v3 build];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __25__CNValueOrigin_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __25__CNValueOrigin_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

uint64_t __25__CNValueOrigin_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) donationIdentifier];
  v4 = [*(a1 + 40) donationIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __25__CNValueOrigin_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) localizedApplicationName];
  v4 = [*(a1 + 40) localizedApplicationName];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __21__CNValueOrigin_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __21__CNValueOrigin_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __21__CNValueOrigin_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) donationIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __21__CNValueOrigin_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) localizedApplicationName];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (CNValueOrigin)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedApplicationName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"donationIdentifier"];

  v7 = [(CNValueOrigin *)self initWithLocalizedApplicationName:v5 donationIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CNValueOrigin *)self localizedApplicationName];
  [v4 encodeObject:v5 forKey:@"localizedApplicationName"];

  v6 = [(CNValueOrigin *)self donationIdentifier];
  [v4 encodeObject:v6 forKey:@"donationIdentifier"];
}

@end