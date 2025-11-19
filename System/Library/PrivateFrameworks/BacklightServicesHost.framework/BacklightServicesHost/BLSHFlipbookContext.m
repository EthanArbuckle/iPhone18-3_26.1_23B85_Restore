@interface BLSHFlipbookContext
- (BLSHFlipbookContext)initWithCAContext:(id)a3 wantsTransform:(BOOL)a4 inverted:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLSHFlipbookContext

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_caContext withName:@"context"];
  v5 = [v3 appendBool:self->_wantsTransform withName:@"wantsTransform" ifEqualTo:1];
  v6 = [v3 appendBool:self->_inverted withName:@"inverted" ifEqualTo:1];
  v7 = [v3 build];

  return v7;
}

- (BLSHFlipbookContext)initWithCAContext:(id)a3 wantsTransform:(BOOL)a4 inverted:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = BLSHFlipbookContext;
  v10 = [(BLSHFlipbookContext *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_caContext, a3);
    v11->_wantsTransform = a4;
    v11->_inverted = a5;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendPointer:self->_caContext];
  v5 = [v3 appendBool:self->_wantsTransform];
  v6 = [v3 appendBool:self->_inverted];
  v7 = [v3 hash];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  caContext = self->_caContext;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __31__BLSHFlipbookContext_isEqual___block_invoke;
  v20[3] = &unk_27841E868;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendPointer:caContext counterpart:v20];
  wantsTransform = self->_wantsTransform;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __31__BLSHFlipbookContext_isEqual___block_invoke_2;
  v18[3] = &unk_278420208;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendBool:wantsTransform counterpart:v18];
  inverted = self->_inverted;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __31__BLSHFlipbookContext_isEqual___block_invoke_3;
  v16[3] = &unk_278420208;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendBool:inverted counterpart:v16];
  LOBYTE(inverted) = [v5 isEqual];

  return inverted;
}

@end