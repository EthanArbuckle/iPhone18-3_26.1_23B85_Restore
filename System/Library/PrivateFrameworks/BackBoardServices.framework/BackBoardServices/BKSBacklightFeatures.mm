@interface BKSBacklightFeatures
+ (id)protobufSchema;
- (BKSBacklightFeatures)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)didFinishProtobufDecodingWithError:(id *)error;
- (id)succinctDescription;
- (void)setFixedBrightnessLevelWhileDisabled:(float)disabled;
- (void)setFixedBrightnessNitsWhileDisabled:(float)disabled;
@end

@implementation BKSBacklightFeatures

- (id)didFinishProtobufDecodingWithError:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  fixedBrightnessLevelWhileDisabled = self->_fixedBrightnessLevelWhileDisabled;
  if (fixedBrightnessLevelWhileDisabled == -1.0 || (fixedBrightnessNitsWhileDisabled = self->_fixedBrightnessNitsWhileDisabled, fixedBrightnessNitsWhileDisabled == -1.0))
  {
    selfCopy = self;
  }

  else
  {
    if (error)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E696A798];
      v13 = *MEMORY[0x1E696A588];
      fixedBrightnessLevelWhileDisabled = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot have both set: nitsWhileDisabled:%g levelWhileDisabled:%g", fixedBrightnessNitsWhileDisabled, fixedBrightnessLevelWhileDisabled];
      v14[0] = fixedBrightnessLevelWhileDisabled;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *error = [v6 errorWithDomain:v7 code:22 userInfo:v9];
    }

    selfCopy = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKSBacklightFeatures *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendBool:self->_disableFeatures withName:@"disableFeatures"];
  v6 = [succinctDescriptionBuilder appendFloat:@"fixedBrightnessNitsWhileDisabled" withName:self->_fixedBrightnessNitsWhileDisabled];
  v7 = [succinctDescriptionBuilder appendFloat:@"fixedBrightnessLevelWhileDisabled" withName:self->_fixedBrightnessLevelWhileDisabled];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSBacklightFeatures *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSBacklightFeatures *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)setFixedBrightnessLevelWhileDisabled:(float)disabled
{
  if (self->_fixedBrightnessNitsWhileDisabled >= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSBacklightFeatures.m" lineNumber:33 description:@"cannot set both brightness level and nits; choose one or the other"];
  }

  self->_fixedBrightnessLevelWhileDisabled = disabled;
}

- (void)setFixedBrightnessNitsWhileDisabled:(float)disabled
{
  if (self->_fixedBrightnessLevelWhileDisabled >= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSBacklightFeatures.m" lineNumber:28 description:@"cannot set both brightness level and nits; choose one or the other"];
  }

  self->_fixedBrightnessNitsWhileDisabled = disabled;
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
  block[4] = self;
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