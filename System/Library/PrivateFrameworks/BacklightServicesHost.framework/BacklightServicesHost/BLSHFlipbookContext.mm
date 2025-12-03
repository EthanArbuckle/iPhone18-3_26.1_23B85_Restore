@interface BLSHFlipbookContext
- (BLSHFlipbookContext)initWithCAContext:(id)context wantsTransform:(BOOL)transform inverted:(BOOL)inverted;
- (BOOL)isEqual:(id)equal;
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
  build = [v3 build];

  return build;
}

- (BLSHFlipbookContext)initWithCAContext:(id)context wantsTransform:(BOOL)transform inverted:(BOOL)inverted
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = BLSHFlipbookContext;
  v10 = [(BLSHFlipbookContext *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_caContext, context);
    v11->_wantsTransform = transform;
    v11->_inverted = inverted;
  }

  return v11;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendPointer:self->_caContext];
  v5 = [builder appendBool:self->_wantsTransform];
  v6 = [builder appendBool:self->_inverted];
  v7 = [builder hash];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  caContext = self->_caContext;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __31__BLSHFlipbookContext_isEqual___block_invoke;
  v20[3] = &unk_27841E868;
  v7 = equalCopy;
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