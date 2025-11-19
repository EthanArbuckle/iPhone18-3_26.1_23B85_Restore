@interface CNReputationResult
+ (id)descriptionForScore:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CNReputationResult)initWithHandle:(id)a3 score:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation CNReputationResult

- (CNReputationResult)initWithHandle:(id)a3 score:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CNReputationResult;
  v7 = [(CNReputationResult *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    handle = v7->_handle;
    v7->_handle = v8;

    v7->_score = a4;
    v10 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNReputationResult *)self handle];
  v5 = [v3 appendName:@"handle" object:v4];

  v6 = [objc_opt_class() descriptionForScore:{-[CNReputationResult score](self, "score")}];
  v7 = [v3 appendName:@"score" object:v6];

  v8 = [v3 build];

  return v8;
}

+ (id)descriptionForScore:(int64_t)a3
{
  v3 = MEMORY[0x1E696AEC0];
  if (a3 > 2)
  {
    v4 = @"%@ (invalid)";
  }

  else
  {
    v4 = off_1E7417468[a3];
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
  v15[2] = __30__CNReputationResult_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __30__CNReputationResult_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

uint64_t __30__CNReputationResult_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) score];
  v4 = [*(a1 + 40) score];

  return [v2 isInteger:v3 equalToOther:v4];
}

uint64_t __30__CNReputationResult_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) handle];
  v4 = [*(a1 + 40) handle];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__CNReputationResult_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __26__CNReputationResult_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __26__CNReputationResult_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) handle];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __26__CNReputationResult_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) score];

  return [v1 integerHash:v2];
}

@end