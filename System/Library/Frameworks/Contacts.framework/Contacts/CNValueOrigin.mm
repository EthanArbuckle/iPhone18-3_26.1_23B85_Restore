@interface CNValueOrigin
- (BOOL)isEqual:(id)equal;
- (CNValueOrigin)init;
- (CNValueOrigin)initWithCoder:(id)coder;
- (CNValueOrigin)initWithLocalizedApplicationName:(id)name donationIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNValueOrigin

- (CNValueOrigin)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNValueOrigin)initWithLocalizedApplicationName:(id)name donationIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CNValueOrigin;
  v8 = [(CNValueOrigin *)&v15 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    localizedApplicationName = v8->_localizedApplicationName;
    v8->_localizedApplicationName = v9;

    v11 = [identifierCopy copy];
    donationIdentifier = v8->_donationIdentifier;
    v8->_donationIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  localizedApplicationName = [(CNValueOrigin *)self localizedApplicationName];
  v5 = [v3 appendName:@"localizedApplicationName" object:localizedApplicationName];

  donationIdentifier = [(CNValueOrigin *)self donationIdentifier];
  v7 = [v3 appendName:@"donationIdentifier" object:donationIdentifier];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __25__CNValueOrigin_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __25__CNValueOrigin_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  selfCopy = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy}];

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

- (CNValueOrigin)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedApplicationName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"donationIdentifier"];

  v7 = [(CNValueOrigin *)self initWithLocalizedApplicationName:v5 donationIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localizedApplicationName = [(CNValueOrigin *)self localizedApplicationName];
  [coderCopy encodeObject:localizedApplicationName forKey:@"localizedApplicationName"];

  donationIdentifier = [(CNValueOrigin *)self donationIdentifier];
  [coderCopy encodeObject:donationIdentifier forKey:@"donationIdentifier"];
}

@end