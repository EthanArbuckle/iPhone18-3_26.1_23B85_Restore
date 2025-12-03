@interface BLSBacklightSceneVisualState
- (BLSBacklightSceneVisualState)initWithActiveAppearance:(int64_t)appearance updateFidelity:(int64_t)fidelity adjustedLuminance:(int64_t)luminance dimmed:(BOOL)dimmed;
- (BLSBacklightSceneVisualState)initWithCoder:(id)coder;
- (BLSBacklightSceneVisualState)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEssentiallyEqualToVisualState:(id)state;
- (NSString)description;
- (id)bls_shortLoggingString;
- (id)newVisualStateWithUpdateFidelity:(int64_t)fidelity;
- (int64_t)expectedFidelity;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSBacklightSceneVisualState

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_activeAppearance == 1 withName:@"active"];
  v5 = NSStringFromBLSUpdateFidelity(self->_updateFidelity);
  [v3 appendString:v5 withName:@"fidelity"];

  adjustedLuminance = self->_adjustedLuminance;
  v7 = @"Off";
  if (adjustedLuminance == 1)
  {
    v7 = @"Low";
  }

  if (adjustedLuminance == 2)
  {
    v8 = @"Full";
  }

  else
  {
    v8 = v7;
  }

  [v3 appendString:v8 withName:@"adjustedLuminance"];
  v9 = [v3 appendBool:self->_dimmed withName:@"dimmed" ifEqualTo:1];
  build = [v3 build];

  return build;
}

- (id)bls_shortLoggingString
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __54__BLSBacklightSceneVisualState_bls_shortLoggingString__block_invoke;
  v10 = &unk_278428688;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

id __54__BLSBacklightSceneVisualState_bls_shortLoggingString__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromBLSUpdateFidelity(*(*(a1 + 40) + 24));
  v4 = [v2 appendObject:v3 withName:0];

  v5 = *(*(a1 + 40) + 32);
  v6 = @"Off";
  if (v5 == 1)
  {
    v6 = @"Low";
  }

  if (v5 == 2)
  {
    v7 = @"Full";
  }

  else
  {
    v7 = v6;
  }

  v8 = [*(a1 + 32) appendObject:v7 withName:0];
  if (*(*(a1 + 40) + 16) == 1)
  {
    v9 = @"active";
  }

  else
  {
    v9 = @"inactive";
  }

  result = [*(a1 + 32) appendObject:v9 withName:0];
  if (*(*(a1 + 40) + 8) == 1)
  {
    return [*(a1 + 32) appendObject:@"dimmed" withName:0];
  }

  return result;
}

- (BLSBacklightSceneVisualState)initWithActiveAppearance:(int64_t)appearance updateFidelity:(int64_t)fidelity adjustedLuminance:(int64_t)luminance dimmed:(BOOL)dimmed
{
  v12.receiver = self;
  v12.super_class = BLSBacklightSceneVisualState;
  result = [(BLSBacklightSceneVisualState *)&v12 init];
  if (result)
  {
    result->_activeAppearance = appearance;
    result->_updateFidelity = fidelity;
    result->_adjustedLuminance = luminance;
    v11 = luminance == 2 && dimmed;
    result->_dimmed = v11;
  }

  return result;
}

- (id)newVisualStateWithUpdateFidelity:(int64_t)fidelity
{
  v5 = [BLSBacklightSceneVisualState alloc];
  activeAppearance = self->_activeAppearance;
  adjustedLuminance = self->_adjustedLuminance;
  dimmed = self->_dimmed;

  return [(BLSBacklightSceneVisualState *)v5 initWithActiveAppearance:activeAppearance updateFidelity:fidelity adjustedLuminance:adjustedLuminance dimmed:dimmed];
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_activeAppearance];
  v5 = [builder appendInteger:self->_updateFidelity];
  v6 = [builder appendInteger:self->_adjustedLuminance];
  v7 = [builder appendBool:self->_dimmed];
  v8 = [builder hash];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  activeAppearance = self->_activeAppearance;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __40__BLSBacklightSceneVisualState_isEqual___block_invoke;
  v28[3] = &unk_278428B28;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendInteger:activeAppearance counterpart:v28];
  updateFidelity = self->_updateFidelity;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __40__BLSBacklightSceneVisualState_isEqual___block_invoke_2;
  v26[3] = &unk_278428B28;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendInteger:updateFidelity counterpart:v26];
  adjustedLuminance = self->_adjustedLuminance;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __40__BLSBacklightSceneVisualState_isEqual___block_invoke_3;
  v24[3] = &unk_278428B28;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendInteger:adjustedLuminance counterpart:v24];
  dimmed = self->_dimmed;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __40__BLSBacklightSceneVisualState_isEqual___block_invoke_4;
  v22 = &unk_278428FA8;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendBool:dimmed counterpart:&v19];
  LOBYTE(dimmed) = [v5 isEqual];

  return dimmed;
}

- (BOOL)isEssentiallyEqualToVisualState:(id)state
{
  stateCopy = state;
  if ([(BLSBacklightSceneVisualState *)self isEqual:stateCopy])
  {
    v5 = 1;
  }

  else
  {
    dimmed = self->_dimmed;
    if (dimmed == [stateCopy isDimmed])
    {
      updateFidelity = [(BLSBacklightSceneVisualState *)self updateFidelity];
      updateFidelity2 = [stateCopy updateFidelity];
      v9 = updateFidelity2 == 1;
      if (updateFidelity != 2)
      {
        v9 = 0;
      }

      if (updateFidelity == 1)
      {
        v5 = updateFidelity2 == 2;
      }

      else
      {
        v5 = v9;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (int64_t)expectedFidelity
{
  if (self->_activeAppearance)
  {
    return self->_updateFidelity;
  }

  else
  {
    return 2;
  }
}

- (BLSBacklightSceneVisualState)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  int64 = xpc_dictionary_get_int64(dictionaryCopy, "act");
  v6 = xpc_dictionary_get_int64(dictionaryCopy, "fid");
  v7 = xpc_dictionary_get_int64(dictionaryCopy, "lum");
  v8 = xpc_dictionary_get_BOOL(dictionaryCopy, "dim");

  return [(BLSBacklightSceneVisualState *)self initWithActiveAppearance:int64 updateFidelity:v6 adjustedLuminance:v7 dimmed:v8];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  activeAppearance = self->_activeAppearance;
  xdict = dictionary;
  xpc_dictionary_set_int64(xdict, "act", activeAppearance);
  xpc_dictionary_set_int64(xdict, "fid", self->_updateFidelity);
  xpc_dictionary_set_int64(xdict, "lum", self->_adjustedLuminance);
  xpc_dictionary_set_BOOL(xdict, "dim", self->_dimmed);
}

- (BLSBacklightSceneVisualState)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCACA8];
  coderCopy = coder;
  v6 = [v4 stringWithUTF8String:"act"];
  v7 = [coderCopy decodeIntegerForKey:v6];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"fid"];
  v9 = [coderCopy decodeIntegerForKey:v8];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"lum"];
  v11 = [coderCopy decodeIntegerForKey:v10];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"dim"];
  v13 = [coderCopy decodeBoolForKey:v12];

  return [(BLSBacklightSceneVisualState *)self initWithActiveAppearance:v7 updateFidelity:v9 adjustedLuminance:v11 dimmed:v13];
}

- (void)encodeWithCoder:(id)coder
{
  activeAppearance_low = SLODWORD(self->_activeAppearance);
  v5 = MEMORY[0x277CCACA8];
  coderCopy = coder;
  v7 = [v5 stringWithUTF8String:"act"];
  [coderCopy encodeInteger:activeAppearance_low forKey:v7];

  updateFidelity_low = SLODWORD(self->_updateFidelity);
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"fid"];
  [coderCopy encodeInteger:updateFidelity_low forKey:v9];

  adjustedLuminance_low = SLODWORD(self->_adjustedLuminance);
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"lum"];
  [coderCopy encodeInteger:adjustedLuminance_low forKey:v11];

  dimmed = self->_dimmed;
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"dim"];
  [coderCopy encodeBool:dimmed forKey:v13];
}

@end