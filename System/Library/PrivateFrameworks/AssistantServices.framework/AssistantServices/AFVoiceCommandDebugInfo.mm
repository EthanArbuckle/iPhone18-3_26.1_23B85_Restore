@interface AFVoiceCommandDebugInfo
- (AFVoiceCommandDebugInfo)initWithCoder:(id)coder;
- (AFVoiceCommandDebugInfo)initWithHasVoiceCommandInExhaustiveParses:(BOOL)parses hasVoiceCommandParses:(BOOL)commandParses hasVoiceCommandEditIntent:(BOOL)intent hasVoiceCommandAfterReranking:(BOOL)reranking hasNoVoiceCommandAfterRespeakCheck:(BOOL)check;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFVoiceCommandDebugInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && equalCopy->_hasVoiceCommandInExhaustiveParses == self->_hasVoiceCommandInExhaustiveParses && equalCopy->_hasVoiceCommandParses == self->_hasVoiceCommandParses && equalCopy->_hasVoiceCommandEditIntent == self->_hasVoiceCommandEditIntent && equalCopy->_hasVoiceCommandAfterReranking == self->_hasVoiceCommandAfterReranking && equalCopy->_hasNoVoiceCommandAfterRespeakCheck == self->_hasNoVoiceCommandAfterRespeakCheck;
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
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"[hasVoiceCommandInExhaustiveParses = %u]", self->_hasVoiceCommandInExhaustiveParses];
  [string appendFormat:@"[hasVoiceCommandParses = %u]", self->_hasVoiceCommandParses];
  [string appendFormat:@"[hasVoiceCommandEditIntent = %u]", self->_hasVoiceCommandEditIntent];
  [string appendFormat:@"[hasVoiceCommandAfterReranking = %u]", self->_hasVoiceCommandAfterReranking];
  [string appendFormat:@"[hasNoVoiceCommandAfterRespeakCheck = %u]", self->_hasNoVoiceCommandAfterRespeakCheck];

  return string;
}

- (AFVoiceCommandDebugInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AFVoiceCommandDebugInfo;
  v5 = [(AFVoiceCommandDebugInfo *)&v7 init];
  if (v5)
  {
    v5->_hasVoiceCommandInExhaustiveParses = [coderCopy decodeBoolForKey:@"hasVoiceCommandInExhaustiveParses"];
    v5->_hasVoiceCommandParses = [coderCopy decodeBoolForKey:@"hasVoiceCommandParses"];
    v5->_hasVoiceCommandEditIntent = [coderCopy decodeBoolForKey:@"hasVoiceCommandEditIntent"];
    v5->_hasVoiceCommandAfterReranking = [coderCopy decodeBoolForKey:@"hasVoiceCommandAfterReranking"];
    v5->_hasNoVoiceCommandAfterRespeakCheck = [coderCopy decodeBoolForKey:@"hasNoVoiceCommandAfterRespeakCheck"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  hasVoiceCommandInExhaustiveParses = self->_hasVoiceCommandInExhaustiveParses;
  coderCopy = coder;
  [coderCopy encodeBool:hasVoiceCommandInExhaustiveParses forKey:@"hasVoiceCommandInExhaustiveParses"];
  [coderCopy encodeBool:self->_hasVoiceCommandParses forKey:@"hasVoiceCommandParses"];
  [coderCopy encodeBool:self->_hasVoiceCommandEditIntent forKey:@"hasVoiceCommandEditIntent"];
  [coderCopy encodeBool:self->_hasVoiceCommandAfterReranking forKey:@"hasVoiceCommandAfterReranking"];
  [coderCopy encodeBool:self->_hasNoVoiceCommandAfterRespeakCheck forKey:@"hasNoVoiceCommandAfterRespeakCheck"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setHasVoiceCommandInExhaustiveParses:self->_hasVoiceCommandInExhaustiveParses];
  [v4 setHasVoiceCommandParses:self->_hasVoiceCommandParses];
  [v4 setHasVoiceCommandEditIntent:self->_hasVoiceCommandEditIntent];
  [v4 setHasVoiceCommandAfterReranking:self->_hasVoiceCommandAfterReranking];
  [v4 setHasNoVoiceCommandAfterRespeakCheck:self->_hasNoVoiceCommandAfterRespeakCheck];
  return v4;
}

- (AFVoiceCommandDebugInfo)initWithHasVoiceCommandInExhaustiveParses:(BOOL)parses hasVoiceCommandParses:(BOOL)commandParses hasVoiceCommandEditIntent:(BOOL)intent hasVoiceCommandAfterReranking:(BOOL)reranking hasNoVoiceCommandAfterRespeakCheck:(BOOL)check
{
  v13.receiver = self;
  v13.super_class = AFVoiceCommandDebugInfo;
  result = [(AFVoiceCommandDebugInfo *)&v13 init];
  if (result)
  {
    result->_hasVoiceCommandInExhaustiveParses = parses;
    result->_hasVoiceCommandParses = commandParses;
    result->_hasVoiceCommandEditIntent = intent;
    result->_hasVoiceCommandAfterReranking = reranking;
    result->_hasNoVoiceCommandAfterRespeakCheck = check;
  }

  return result;
}

@end