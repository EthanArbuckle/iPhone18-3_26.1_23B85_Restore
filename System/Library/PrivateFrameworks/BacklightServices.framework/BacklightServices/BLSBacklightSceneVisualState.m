@interface BLSBacklightSceneVisualState
- (BLSBacklightSceneVisualState)initWithActiveAppearance:(int64_t)a3 updateFidelity:(int64_t)a4 adjustedLuminance:(int64_t)a5 dimmed:(BOOL)a6;
- (BLSBacklightSceneVisualState)initWithCoder:(id)a3;
- (BLSBacklightSceneVisualState)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEssentiallyEqualToVisualState:(id)a3;
- (NSString)description;
- (id)bls_shortLoggingString;
- (id)newVisualStateWithUpdateFidelity:(int64_t)a3;
- (int64_t)expectedFidelity;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
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
  v10 = [v3 build];

  return v10;
}

- (id)bls_shortLoggingString
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __54__BLSBacklightSceneVisualState_bls_shortLoggingString__block_invoke;
  v10 = &unk_278428688;
  v11 = v3;
  v12 = self;
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

- (BLSBacklightSceneVisualState)initWithActiveAppearance:(int64_t)a3 updateFidelity:(int64_t)a4 adjustedLuminance:(int64_t)a5 dimmed:(BOOL)a6
{
  v12.receiver = self;
  v12.super_class = BLSBacklightSceneVisualState;
  result = [(BLSBacklightSceneVisualState *)&v12 init];
  if (result)
  {
    result->_activeAppearance = a3;
    result->_updateFidelity = a4;
    result->_adjustedLuminance = a5;
    v11 = a5 == 2 && a6;
    result->_dimmed = v11;
  }

  return result;
}

- (id)newVisualStateWithUpdateFidelity:(int64_t)a3
{
  v5 = [BLSBacklightSceneVisualState alloc];
  activeAppearance = self->_activeAppearance;
  adjustedLuminance = self->_adjustedLuminance;
  dimmed = self->_dimmed;

  return [(BLSBacklightSceneVisualState *)v5 initWithActiveAppearance:activeAppearance updateFidelity:a3 adjustedLuminance:adjustedLuminance dimmed:dimmed];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:self->_activeAppearance];
  v5 = [v3 appendInteger:self->_updateFidelity];
  v6 = [v3 appendInteger:self->_adjustedLuminance];
  v7 = [v3 appendBool:self->_dimmed];
  v8 = [v3 hash];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  activeAppearance = self->_activeAppearance;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __40__BLSBacklightSceneVisualState_isEqual___block_invoke;
  v28[3] = &unk_278428B28;
  v7 = v4;
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

- (BOOL)isEssentiallyEqualToVisualState:(id)a3
{
  v4 = a3;
  if ([(BLSBacklightSceneVisualState *)self isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    dimmed = self->_dimmed;
    if (dimmed == [v4 isDimmed])
    {
      v7 = [(BLSBacklightSceneVisualState *)self updateFidelity];
      v8 = [v4 updateFidelity];
      v9 = v8 == 1;
      if (v7 != 2)
      {
        v9 = 0;
      }

      if (v7 == 1)
      {
        v5 = v8 == 2;
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

- (BLSBacklightSceneVisualState)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  int64 = xpc_dictionary_get_int64(v4, "act");
  v6 = xpc_dictionary_get_int64(v4, "fid");
  v7 = xpc_dictionary_get_int64(v4, "lum");
  v8 = xpc_dictionary_get_BOOL(v4, "dim");

  return [(BLSBacklightSceneVisualState *)self initWithActiveAppearance:int64 updateFidelity:v6 adjustedLuminance:v7 dimmed:v8];
}

- (void)encodeWithXPCDictionary:(id)a3
{
  activeAppearance = self->_activeAppearance;
  xdict = a3;
  xpc_dictionary_set_int64(xdict, "act", activeAppearance);
  xpc_dictionary_set_int64(xdict, "fid", self->_updateFidelity);
  xpc_dictionary_set_int64(xdict, "lum", self->_adjustedLuminance);
  xpc_dictionary_set_BOOL(xdict, "dim", self->_dimmed);
}

- (BLSBacklightSceneVisualState)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 stringWithUTF8String:"act"];
  v7 = [v5 decodeIntegerForKey:v6];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"fid"];
  v9 = [v5 decodeIntegerForKey:v8];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"lum"];
  v11 = [v5 decodeIntegerForKey:v10];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"dim"];
  v13 = [v5 decodeBoolForKey:v12];

  return [(BLSBacklightSceneVisualState *)self initWithActiveAppearance:v7 updateFidelity:v9 adjustedLuminance:v11 dimmed:v13];
}

- (void)encodeWithCoder:(id)a3
{
  activeAppearance_low = SLODWORD(self->_activeAppearance);
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithUTF8String:"act"];
  [v6 encodeInteger:activeAppearance_low forKey:v7];

  updateFidelity_low = SLODWORD(self->_updateFidelity);
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"fid"];
  [v6 encodeInteger:updateFidelity_low forKey:v9];

  adjustedLuminance_low = SLODWORD(self->_adjustedLuminance);
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"lum"];
  [v6 encodeInteger:adjustedLuminance_low forKey:v11];

  dimmed = self->_dimmed;
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"dim"];
  [v6 encodeBool:dimmed forKey:v13];
}

@end