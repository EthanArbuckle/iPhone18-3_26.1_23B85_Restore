@interface CNReputationHandle
+ (CNReputationHandle)handleWithEmailAddress:(id)a3;
+ (CNReputationHandle)handleWithPhoneNumber:(id)a3;
+ (CNReputationHandle)handleWithStringValue:(id)a3;
+ (id)descriptionForType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CNReputationHandle)initWithStringValue:(id)a3 type:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)configureBuilder:(id)a3;
@end

@implementation CNReputationHandle

+ (CNReputationHandle)handleWithStringValue:(id)a3
{
  v3 = a3;
  v4 = [(CNReputationHandle *)[_CNReputationGenericHandle alloc] initWithStringValue:v3 type:0];

  return v4;
}

+ (CNReputationHandle)handleWithEmailAddress:(id)a3
{
  v3 = a3;
  v4 = [(CNReputationHandle *)[_CNReputationEmailAddressHandle alloc] initWithStringValue:v3 type:1];

  return v4;
}

+ (CNReputationHandle)handleWithPhoneNumber:(id)a3
{
  v3 = a3;
  v4 = [(CNReputationHandle *)[_CNReputationPhoneNumberHandle alloc] initWithStringValue:v3 type:2];

  return v4;
}

- (CNReputationHandle)initWithStringValue:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CNReputationHandle;
  v7 = [(CNReputationHandle *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    stringValue = v7->_stringValue;
    v7->_stringValue = v8;

    v7->_type = a4;
    v10 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNReputationHandle *)self stringValue];
  v5 = [v3 appendName:@"handle" object:v4];

  v6 = [objc_opt_class() descriptionForType:{-[CNReputationHandle type](self, "type")}];
  v7 = [v3 appendName:@"type" object:v6];

  v8 = [v3 build];

  return v8;
}

+ (id)descriptionForType:(int64_t)a3
{
  v3 = MEMORY[0x1E696AEC0];
  if (a3 > 2)
  {
    v4 = @"%@ (invalid)";
  }

  else
  {
    v4 = off_1E74162C8[a3];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __30__CNReputationHandle_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __30__CNReputationHandle_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

uint64_t __30__CNReputationHandle_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) type];
  v4 = [*(a1 + 40) type];

  return [v2 isInteger:v3 equalToOther:v4];
}

uint64_t __30__CNReputationHandle_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) stringValue];
  v4 = [*(a1 + 40) stringValue];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__CNReputationHandle_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __26__CNReputationHandle_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __26__CNReputationHandle_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) stringValue];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __26__CNReputationHandle_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) type];

  return [v1 integerHash:v2];
}

- (void)configureBuilder:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

@end