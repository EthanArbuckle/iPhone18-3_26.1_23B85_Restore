@interface CNiOSABPreferredChannelContactPredicate
- (BOOL)isEqual:(id)a3;
- (CNiOSABPreferredChannelContactPredicate)initWithCoder:(id)a3;
- (CNiOSABPreferredChannelContactPredicate)initWithPreferredChannel:(id)a3 limitOne:(BOOL)a4;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABPreferredChannelContactPredicate

- (CNiOSABPreferredChannelContactPredicate)initWithPreferredChannel:(id)a3 limitOne:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CNiOSABPreferredChannelContactPredicate;
  v7 = [(CNPredicate *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    preferredChannel = v7->_preferredChannel;
    v7->_preferredChannel = v8;

    v7->_limitOne = a4;
    v10 = v7;
  }

  return v7;
}

- (CNiOSABPreferredChannelContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABPreferredChannelContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preferredChannel"];
    v7 = [v6 copy];
    preferredChannel = v5->_preferredChannel;
    v5->_preferredChannel = v7;

    v5->_limitOne = [v4 decodeBoolForKey:@"_limitOne"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABPreferredChannelContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_preferredChannel forKey:{@"_preferredChannel", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_limitOne forKey:@"_limitOne"];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v9 = a4;
  v10 = a6;
  v11 = self;
  v12 = CNUnimplementedMethodException();
  objc_exception_throw(v12);
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5
{
  v6 = MEMORY[0x1E698A130];
  v7 = [(CNiOSABPreferredChannelContactPredicate *)self preferredChannel:a3];
  v8 = [v6 predicateForContactsMatchingPreferredChannel:v7 limitOne:{-[CNiOSABPreferredChannelContactPredicate limitOne](self, "limitOne")}];

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingPreferredChannel:]"];
  v5 = [v3 appendName:@"limitOne" BOOLValue:{-[CNiOSABPreferredChannelContactPredicate limitOne](self, "limitOne")}];
  v6 = [(CNiOSABPreferredChannelContactPredicate *)self preferredChannel];
  v7 = [v3 appendName:@"preferredChannel" BOOLValue:v6 != 0];

  v8 = [v3 build];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__CNiOSABPreferredChannelContactPredicate_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __51__CNiOSABPreferredChannelContactPredicate_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

uint64_t __51__CNiOSABPreferredChannelContactPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) preferredChannel];
  v4 = [*(a1 + 40) preferredChannel];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __51__CNiOSABPreferredChannelContactPredicate_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) limitOne];
  v4 = [*(a1 + 40) limitOne];

  return [v2 isBool:v3 equalToOther:v4];
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CNiOSABPreferredChannelContactPredicate_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__CNiOSABPreferredChannelContactPredicate_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __47__CNiOSABPreferredChannelContactPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) preferredChannel];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __47__CNiOSABPreferredChannelContactPredicate_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) limitOne];

  return [v1 BOOLHash:v2];
}

@end