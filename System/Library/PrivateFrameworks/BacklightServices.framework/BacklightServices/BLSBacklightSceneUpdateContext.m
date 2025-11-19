@interface BLSBacklightSceneUpdateContext
- (BLSBacklightSceneUpdateContext)initWithVisualState:(id)a3 previousVisualState:(id)a4 frameSpecifier:(id)a5 animated:(BOOL)a6 triggerEvent:(id)a7 touchTargetable:(BOOL)a8;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLSBacklightSceneUpdateContext

- (BLSBacklightSceneUpdateContext)initWithVisualState:(id)a3 previousVisualState:(id)a4 frameSpecifier:(id)a5 animated:(BOOL)a6 triggerEvent:(id)a7 touchTargetable:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = BLSBacklightSceneUpdateContext;
  v18 = [(BLSBacklightSceneUpdateContext *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_visualState, a3);
    objc_storeStrong(&v19->_previousVisualState, a4);
    objc_storeStrong(&v19->_frameSpecifier, a5);
    v19->_animated = a6;
    objc_storeStrong(&v19->_triggerEvent, a7);
    v19->_touchTargetable = a8;
  }

  return v19;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_visualState withName:@"new"];
  v5 = [v3 appendObject:self->_previousVisualState withName:@"previous"];
  v6 = [v3 appendObject:self->_frameSpecifier withName:@"specifier" skipIfNil:1];
  v7 = [v3 appendBool:self->_animated withName:@"animated"];
  v8 = [v3 appendBool:self->_touchTargetable withName:@"touchTarget"];
  v9 = [v3 appendObject:self->_triggerEvent withName:@"trigger" skipIfNil:1];
  v10 = [v3 build];

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_visualState];
  v5 = [v3 appendObject:self->_previousVisualState];
  v6 = [v3 appendObject:self->_frameSpecifier];
  v7 = [v3 appendBool:self->_animated];
  v8 = [v3 appendBool:self->_touchTargetable];
  v9 = [v3 hash];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  visualState = self->_visualState;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __42__BLSBacklightSceneUpdateContext_isEqual___block_invoke;
  v30[3] = &unk_278428B00;
  v7 = v4;
  v31 = v7;
  v8 = [v5 appendObject:visualState counterpart:v30];
  previousVisualState = self->_previousVisualState;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __42__BLSBacklightSceneUpdateContext_isEqual___block_invoke_2;
  v28[3] = &unk_278428B00;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendObject:previousVisualState counterpart:v28];
  frameSpecifier = self->_frameSpecifier;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __42__BLSBacklightSceneUpdateContext_isEqual___block_invoke_3;
  v26[3] = &unk_278428B00;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendObject:frameSpecifier counterpart:v26];
  animated = self->_animated;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __42__BLSBacklightSceneUpdateContext_isEqual___block_invoke_4;
  v24[3] = &unk_278428FA8;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendBool:animated counterpart:v24];
  touchTargetable = self->_touchTargetable;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __42__BLSBacklightSceneUpdateContext_isEqual___block_invoke_5;
  v22[3] = &unk_278428FA8;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendBool:touchTargetable counterpart:v22];
  LOBYTE(touchTargetable) = [v5 isEqual];

  return touchTargetable;
}

@end