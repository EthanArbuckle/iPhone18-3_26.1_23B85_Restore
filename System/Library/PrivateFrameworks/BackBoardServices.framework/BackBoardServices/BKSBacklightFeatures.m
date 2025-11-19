@interface BKSBacklightFeatures
+ (id)protobufSchema;
- (BKSBacklightFeatures)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)didFinishProtobufDecodingWithError:(id *)a3;
- (id)succinctDescription;
- (void)setFixedBrightnessLevelWhileDisabled:(float)a3;
- (void)setFixedBrightnessNitsWhileDisabled:(float)a3;
@end

@implementation BKSBacklightFeatures

- (id)didFinishProtobufDecodingWithError:(id *)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  fixedBrightnessLevelWhileDisabled = self->_fixedBrightnessLevelWhileDisabled;
  if (fixedBrightnessLevelWhileDisabled == -1.0 || (fixedBrightnessNitsWhileDisabled = self->_fixedBrightnessNitsWhileDisabled, fixedBrightnessNitsWhileDisabled == -1.0))
  {
    v10 = self;
  }

  else
  {
    if (a3)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E696A798];
      v13 = *MEMORY[0x1E696A588];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot have both set: nitsWhileDisabled:%g levelWhileDisabled:%g", fixedBrightnessNitsWhileDisabled, fixedBrightnessLevelWhileDisabled];
      v14[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *a3 = [v6 errorWithDomain:v7 code:22 userInfo:v9];
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BKSBacklightFeatures *)self succinctDescriptionBuilder];
  v5 = [v4 appendBool:self->_disableFeatures withName:@"disableFeatures"];
  v6 = [v4 appendFloat:@"fixedBrightnessNitsWhileDisabled" withName:self->_fixedBrightnessNitsWhileDisabled];
  v7 = [v4 appendFloat:@"fixedBrightnessLevelWhileDisabled" withName:self->_fixedBrightnessLevelWhileDisabled];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKSBacklightFeatures *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BKSBacklightFeatures *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)setFixedBrightnessLevelWhileDisabled:(float)a3
{
  if (self->_fixedBrightnessNitsWhileDisabled >= 0.0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"BKSBacklightFeatures.m" lineNumber:33 description:@"cannot set both brightness level and nits; choose one or the other"];
  }

  self->_fixedBrightnessLevelWhileDisabled = a3;
}

- (void)setFixedBrightnessNitsWhileDisabled:(float)a3
{
  if (self->_fixedBrightnessLevelWhileDisabled >= 0.0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"BKSBacklightFeatures.m" lineNumber:28 description:@"cannot set both brightness level and nits; choose one or the other"];
  }

  self->_fixedBrightnessNitsWhileDisabled = a3;
}

- (BKSBacklightFeatures)init
{
  v8.receiver = self;
  v8.super_class = BKSBacklightFeatures;
  result = [(BKSBacklightFeatures *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    *&result->_fixedBrightnessNitsWhileDisabled = _D0;
  }

  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__BKSBacklightFeatures_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_9819 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_9819, block);
  }

  v2 = protobufSchema_schema_9820;

  return v2;
}

uint64_t __38__BKSBacklightFeatures_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  protobufSchema_schema_9820 = [MEMORY[0x1E698E750] buildSchemaForClass:objc_opt_class() builder:&__block_literal_global_9822];

  return MEMORY[0x1EEE66BB8]();
}

void __38__BKSBacklightFeatures_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_disableFeatures" forTag:1];
  [v2 addField:"_fixedBrightnessNitsWhileDisabled" forTag:2];
  [v2 addField:"_fixedBrightnessLevelWhileDisabled" forTag:3];
}

@end