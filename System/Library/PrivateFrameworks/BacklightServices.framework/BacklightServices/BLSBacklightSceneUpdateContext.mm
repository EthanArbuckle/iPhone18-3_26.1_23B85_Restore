@interface BLSBacklightSceneUpdateContext
- (BLSBacklightSceneUpdateContext)initWithVisualState:(id)state previousVisualState:(id)visualState frameSpecifier:(id)specifier animated:(BOOL)animated triggerEvent:(id)event touchTargetable:(BOOL)targetable;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLSBacklightSceneUpdateContext

- (BLSBacklightSceneUpdateContext)initWithVisualState:(id)state previousVisualState:(id)visualState frameSpecifier:(id)specifier animated:(BOOL)animated triggerEvent:(id)event touchTargetable:(BOOL)targetable
{
  stateCopy = state;
  visualStateCopy = visualState;
  specifierCopy = specifier;
  eventCopy = event;
  v22.receiver = self;
  v22.super_class = BLSBacklightSceneUpdateContext;
  v18 = [(BLSBacklightSceneUpdateContext *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_visualState, state);
    objc_storeStrong(&v19->_previousVisualState, visualState);
    objc_storeStrong(&v19->_frameSpecifier, specifier);
    v19->_animated = animated;
    objc_storeStrong(&v19->_triggerEvent, event);
    v19->_touchTargetable = targetable;
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
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_visualState];
  v5 = [builder appendObject:self->_previousVisualState];
  v6 = [builder appendObject:self->_frameSpecifier];
  v7 = [builder appendBool:self->_animated];
  v8 = [builder appendBool:self->_touchTargetable];
  v9 = [builder hash];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  visualState = self->_visualState;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __42__BLSBacklightSceneUpdateContext_isEqual___block_invoke;
  v30[3] = &unk_278428B00;
  v7 = equalCopy;
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