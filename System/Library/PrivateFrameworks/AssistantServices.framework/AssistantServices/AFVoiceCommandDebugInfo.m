@interface AFVoiceCommandDebugInfo
- (AFVoiceCommandDebugInfo)initWithCoder:(id)a3;
- (AFVoiceCommandDebugInfo)initWithHasVoiceCommandInExhaustiveParses:(BOOL)a3 hasVoiceCommandParses:(BOOL)a4 hasVoiceCommandEditIntent:(BOOL)a5 hasVoiceCommandAfterReranking:(BOOL)a6 hasNoVoiceCommandAfterRespeakCheck:(BOOL)a7;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFVoiceCommandDebugInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && v4->_hasVoiceCommandInExhaustiveParses == self->_hasVoiceCommandInExhaustiveParses && v4->_hasVoiceCommandParses == self->_hasVoiceCommandParses && v4->_hasVoiceCommandEditIntent == self->_hasVoiceCommandEditIntent && v4->_hasVoiceCommandAfterReranking == self->_hasVoiceCommandAfterReranking && v4->_hasNoVoiceCommandAfterRespeakCheck == self->_hasNoVoiceCommandAfterRespeakCheck;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"hasVoiceCommandInExhaustiveParses";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasVoiceCommandInExhaustiveParses];
  v12[0] = v3;
  v11[1] = @"hasVoiceCommandParses";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasVoiceCommandParses];
  v12[1] = v4;
  v11[2] = @"hasVoiceCommandEditIntent";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasVoiceCommandEditIntent];
  v12[2] = v5;
  v11[3] = @"hasVoiceCommandAfterReranking";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasVoiceCommandAfterReranking];
  v12[3] = v6;
  v11[4] = @"hasNoVoiceCommandAfterRespeakCheck";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasNoVoiceCommandAfterRespeakCheck];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"[hasVoiceCommandInExhaustiveParses = %u]", self->_hasVoiceCommandInExhaustiveParses];
  [v3 appendFormat:@"[hasVoiceCommandParses = %u]", self->_hasVoiceCommandParses];
  [v3 appendFormat:@"[hasVoiceCommandEditIntent = %u]", self->_hasVoiceCommandEditIntent];
  [v3 appendFormat:@"[hasVoiceCommandAfterReranking = %u]", self->_hasVoiceCommandAfterReranking];
  [v3 appendFormat:@"[hasNoVoiceCommandAfterRespeakCheck = %u]", self->_hasNoVoiceCommandAfterRespeakCheck];

  return v3;
}

- (AFVoiceCommandDebugInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AFVoiceCommandDebugInfo;
  v5 = [(AFVoiceCommandDebugInfo *)&v7 init];
  if (v5)
  {
    v5->_hasVoiceCommandInExhaustiveParses = [v4 decodeBoolForKey:@"hasVoiceCommandInExhaustiveParses"];
    v5->_hasVoiceCommandParses = [v4 decodeBoolForKey:@"hasVoiceCommandParses"];
    v5->_hasVoiceCommandEditIntent = [v4 decodeBoolForKey:@"hasVoiceCommandEditIntent"];
    v5->_hasVoiceCommandAfterReranking = [v4 decodeBoolForKey:@"hasVoiceCommandAfterReranking"];
    v5->_hasNoVoiceCommandAfterRespeakCheck = [v4 decodeBoolForKey:@"hasNoVoiceCommandAfterRespeakCheck"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  hasVoiceCommandInExhaustiveParses = self->_hasVoiceCommandInExhaustiveParses;
  v5 = a3;
  [v5 encodeBool:hasVoiceCommandInExhaustiveParses forKey:@"hasVoiceCommandInExhaustiveParses"];
  [v5 encodeBool:self->_hasVoiceCommandParses forKey:@"hasVoiceCommandParses"];
  [v5 encodeBool:self->_hasVoiceCommandEditIntent forKey:@"hasVoiceCommandEditIntent"];
  [v5 encodeBool:self->_hasVoiceCommandAfterReranking forKey:@"hasVoiceCommandAfterReranking"];
  [v5 encodeBool:self->_hasNoVoiceCommandAfterRespeakCheck forKey:@"hasNoVoiceCommandAfterRespeakCheck"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setHasVoiceCommandInExhaustiveParses:self->_hasVoiceCommandInExhaustiveParses];
  [v4 setHasVoiceCommandParses:self->_hasVoiceCommandParses];
  [v4 setHasVoiceCommandEditIntent:self->_hasVoiceCommandEditIntent];
  [v4 setHasVoiceCommandAfterReranking:self->_hasVoiceCommandAfterReranking];
  [v4 setHasNoVoiceCommandAfterRespeakCheck:self->_hasNoVoiceCommandAfterRespeakCheck];
  return v4;
}

- (AFVoiceCommandDebugInfo)initWithHasVoiceCommandInExhaustiveParses:(BOOL)a3 hasVoiceCommandParses:(BOOL)a4 hasVoiceCommandEditIntent:(BOOL)a5 hasVoiceCommandAfterReranking:(BOOL)a6 hasNoVoiceCommandAfterRespeakCheck:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = AFVoiceCommandDebugInfo;
  result = [(AFVoiceCommandDebugInfo *)&v13 init];
  if (result)
  {
    result->_hasVoiceCommandInExhaustiveParses = a3;
    result->_hasVoiceCommandParses = a4;
    result->_hasVoiceCommandEditIntent = a5;
    result->_hasVoiceCommandAfterReranking = a6;
    result->_hasNoVoiceCommandAfterRespeakCheck = a7;
  }

  return result;
}

@end