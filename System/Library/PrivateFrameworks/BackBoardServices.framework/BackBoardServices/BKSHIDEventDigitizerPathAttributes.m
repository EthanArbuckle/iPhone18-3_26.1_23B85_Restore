@interface BKSHIDEventDigitizerPathAttributes
+ (id)protobufSchema;
- (BKSHIDEventDeferringChangeBasis)changeBasis;
- (BKSHIDEventProvenance)provenance;
- (BOOL)isEqual:(id)a3;
- (CGPoint)hitTestLocation;
- (CGPoint)preciseLocation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)setProvenance:(id)a3;
@end

@implementation BKSHIDEventDigitizerPathAttributes

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__BKSHIDEventDigitizerPathAttributes_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_318 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_318, block);
  }

  v2 = protobufSchema_schema_317;

  return v2;
}

uint64_t __52__BKSHIDEventDigitizerPathAttributes_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_317 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_320];

  return MEMORY[0x1EEE66BB8]();
}

void __52__BKSHIDEventDigitizerPathAttributes_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_pathIndex"];
  [v2 addField:"_touchIdentifier"];
  [v2 addField:"_userIdentifier"];
  [v2 addField:"_hitTestContextCategory"];
  [v2 addField:"_locus"];
  [v2 addField:"_zGradient"];
  [v2 addField:"_hitTestLocation"];
  [v2 addField:"_preciseLocation"];
  [v2 addField:"_simpleProvenance"];
  [v2 addField:"_authenticationMessage"];
  [v2 addField:"_securityAnalysis"];
}

- (CGPoint)preciseLocation
{
  x = self->_preciseLocation.x;
  y = self->_preciseLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)hitTestLocation
{
  x = self->_hitTestLocation.x;
  y = self->_hitTestLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v15 = a3;
  v4 = [v15 appendInteger:self->_pathIndex withName:@"pathIndex"];
  v5 = [v15 appendInteger:self->_touchIdentifier withName:@"touchIdentifier"];
  v6 = [v15 appendInteger:self->_userIdentifier withName:@"userIdentifier"];
  v7 = [v15 appendInteger:self->_locus withName:@"locus"];
  v8 = NSStringFromBKSTouchHitTestContextCategory(self->_hitTestContextCategory);
  [v15 appendString:v8 withName:@"hitTestContextCategory"];

  v9 = [v15 appendFloat:@"zGradient" withName:self->_zGradient];
  v10 = [v15 appendPoint:@"hitTestLocation" withName:{self->_hitTestLocation.x, self->_hitTestLocation.y}];
  v11 = [v15 appendPoint:@"preciseLocation" withName:{self->_preciseLocation.x, self->_preciseLocation.y}];
  v12 = [v15 appendObject:self->_authenticationMessage withName:@"authenticationMessage" skipIfNil:1];
  v13 = [v15 appendObject:self->_simpleProvenance withName:@"simpleProvenance" skipIfNil:1];
  v14 = [v15 appendObject:self->_securityAnalysis withName:@"securityAnalysis" skipIfNil:1];
}

- (void)setProvenance:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v15 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    authenticationMessage = self->_authenticationMessage;
    self->_authenticationMessage = 0;

    v7 = v15;
    simpleProvenance = self->_simpleProvenance;
    self->_simpleProvenance = v7;
LABEL_8:

    v10 = *MEMORY[0x1E69E9840];

    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_authenticationMessage, a3);
LABEL_7:
    simpleProvenance = self->_simpleProvenance;
    self->_simpleProvenance = 0;
    goto LABEL_8;
  }

  if (!v15)
  {
    v9 = self->_authenticationMessage;
    self->_authenticationMessage = 0;

    goto LABEL_7;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setProvenance doesn't know what to do with %@", objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138544642;
    v17 = v12;
    v18 = 2114;
    v19 = v14;
    v20 = 2048;
    v21 = self;
    v22 = 2114;
    v23 = @"BKSHIDEventAttributes.m";
    v24 = 1024;
    v25 = 654;
    v26 = 2114;
    v27 = v11;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v11 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BKSHIDEventDeferringChangeBasis)changeBasis
{
  v3 = [BKSHIDEventDeferringChangeBasis alloc];
  v4 = [(BKSHIDEventDigitizerPathAttributes *)self provenance];
  v5 = [(BKSHIDEventDeferringChangeBasis *)v3 initWithEventProvenance:v4];

  return v5;
}

- (BKSHIDEventProvenance)provenance
{
  authenticationMessage = self->_authenticationMessage;
  if (!authenticationMessage)
  {
    authenticationMessage = self->_simpleProvenance;
  }

  return authenticationMessage;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (self->_pathIndex == v5[4] && self->_touchIdentifier == *(v5 + 5) && self->_userIdentifier == *(v5 + 6) && self->_locus == *(v5 + 16) && self->_hitTestContextCategory == v5[5] && self->_zGradient == *(v5 + 7) && self->_hitTestLocation.x == *(v5 + 8) && self->_hitTestLocation.y == *(v5 + 9) && self->_preciseLocation.x == *(v5 + 10) && self->_preciseLocation.y == *(v5 + 11) && (authenticationMessage = self->_authenticationMessage, v8 = v6[6], BSEqualObjects()) && (simpleProvenance = self->_simpleProvenance, v10 = v6[1], BSEqualObjects()))
    {
      securityAnalysis = self->_securityAnalysis;
      v12 = v6[7];
      v13 = BSEqualObjects();
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  *(v4 + 32) = self->_pathIndex;
  *(v4 + 20) = self->_touchIdentifier;
  *(v4 + 24) = self->_userIdentifier;
  *(v4 + 40) = self->_hitTestContextCategory;
  *(v4 + 16) = self->_locus;
  *(v4 + 28) = self->_zGradient;
  *(v4 + 64) = self->_hitTestLocation;
  *(v4 + 80) = self->_preciseLocation;
  objc_storeStrong((v4 + 48), self->_authenticationMessage);
  objc_storeStrong((v4 + 8), self->_simpleProvenance);
  objc_storeStrong((v4 + 56), self->_securityAnalysis);
  return v4;
}

@end