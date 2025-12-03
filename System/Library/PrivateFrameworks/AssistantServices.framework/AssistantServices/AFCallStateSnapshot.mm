@interface AFCallStateSnapshot
+ (id)newWithBuilder:(id)builder;
- (AFCallStateSnapshot)initWithBuilder:(id)builder;
- (AFCallStateSnapshot)initWithCallState:(unint64_t)state onSpeaker:(BOOL)speaker isDropInCall:(BOOL)call;
- (AFCallStateSnapshot)initWithCoder:(id)coder;
- (AFCallStateSnapshot)initWithDictionaryRepresentation:(id)representation;
- (AFCallStateSnapshot)initWithSerializedBackingStore:(id)store;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)ad_shortDescription;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFCallStateSnapshot

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = AFCallStateGetNames(self->_callState);
  [v3 setObject:v4 forKey:@"callState"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_onSpeaker];
  [v3 setObject:v5 forKey:@"onSpeaker"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDropInCall];
  [v3 setObject:v6 forKey:@"isDropInCall"];

  v7 = [v3 copy];

  return v7;
}

- (id)ad_shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = AFCallStateGetNames([(AFCallStateSnapshot *)self callState]);
  v4 = [v3 componentsJoinedByString:@"|"];
  v5 = [v2 stringWithFormat:@"(callState = %@)", v4];

  return v5;
}

- (AFCallStateSnapshot)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"callState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = AFCallStateGetFromNames(v6);
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 objectForKey:@"onSpeaker"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    bOOLValue = [v10 BOOLValue];
    v12 = [v5 objectForKey:@"isDropInCall"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    bOOLValue2 = [v13 BOOLValue];
    self = [(AFCallStateSnapshot *)self initWithCallState:v7 onSpeaker:bOOLValue isDropInCall:bOOLValue2];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  callState = self->_callState;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:callState];
  [coderCopy encodeObject:v7 forKey:@"AFCallStateSnapshot::callState"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_onSpeaker];
  [coderCopy encodeObject:v8 forKey:@"AFCallStateSnapshot::onSpeaker"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDropInCall];
  [coderCopy encodeObject:v9 forKey:@"AFCallStateSnapshot::isDropInCall"];
}

- (AFCallStateSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCallStateSnapshot::callState"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCallStateSnapshot::onSpeaker"];
  bOOLValue = [v7 BOOLValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCallStateSnapshot::isDropInCall"];

  bOOLValue2 = [v9 BOOLValue];

  return [(AFCallStateSnapshot *)self initWithCallState:unsignedIntegerValue onSpeaker:bOOLValue isDropInCall:bOOLValue2];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      callState = self->_callState;
      if (callState == [(AFCallStateSnapshot *)v5 callState]&& (onSpeaker = self->_onSpeaker, onSpeaker == [(AFCallStateSnapshot *)v5 onSpeaker]))
      {
        isDropInCall = self->_isDropInCall;
        v9 = isDropInCall == [(AFCallStateSnapshot *)v5 isDropInCall];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_callState];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_onSpeaker];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDropInCall];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = AFCallStateSnapshot;
  v5 = [(AFCallStateSnapshot *)&v13 description];
  v6 = AFCallStateGetNames(self->_callState);
  v7 = [v6 componentsJoinedByString:@"|"];
  v8 = v7;
  v9 = @"NO";
  if (self->_onSpeaker)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_isDropInCall)
  {
    v9 = @"YES";
  }

  v11 = [v4 initWithFormat:@"%@ {callState = %@, onSpeaker = %@, isDropInCall = %@}", v5, v7, v10, v9];

  return v11;
}

- (AFCallStateSnapshot)initWithCallState:(unint64_t)state onSpeaker:(BOOL)speaker isDropInCall:(BOOL)call
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__AFCallStateSnapshot_initWithCallState_onSpeaker_isDropInCall___block_invoke;
  v6[3] = &__block_descriptor_42_e39_v16__0___AFCallStateSnapshotMutating__8l;
  v6[4] = state;
  speakerCopy = speaker;
  callCopy = call;
  return [(AFCallStateSnapshot *)self initWithBuilder:v6];
}

void __64__AFCallStateSnapshot_initWithCallState_onSpeaker_isDropInCall___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setCallState:v3];
  [v4 setOnSpeaker:*(a1 + 40)];
  [v4 setIsDropInCall:*(a1 + 41)];
}

- (AFCallStateSnapshot)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = AFCallStateSnapshot;
  v5 = [(AFCallStateSnapshot *)&v9 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFCallStateSnapshotMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFCallStateSnapshotMutation *)v7 isDirty])
    {
      v6->_callState = [(_AFCallStateSnapshotMutation *)v7 getCallState];
      v6->_onSpeaker = [(_AFCallStateSnapshotMutation *)v7 getOnSpeaker];
      v6->_isDropInCall = [(_AFCallStateSnapshotMutation *)v7 getIsDropInCall];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFCallStateSnapshotMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFCallStateSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFCallStateSnapshot);
      v6->_callState = [(_AFCallStateSnapshotMutation *)v5 getCallState];
      v6->_onSpeaker = [(_AFCallStateSnapshotMutation *)v5 getOnSpeaker];
      v6->_isDropInCall = [(_AFCallStateSnapshotMutation *)v5 getIsDropInCall];
    }

    else
    {
      v6 = [(AFCallStateSnapshot *)self copy];
    }
  }

  else
  {
    v6 = [(AFCallStateSnapshot *)self copy];
  }

  return v6;
}

- (AFCallStateSnapshot)initWithSerializedBackingStore:(id)store
{
  v13 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(AFCallStateSnapshot *)self initWithDictionaryRepresentation:storeCopy];
    selfCopy = self;
  }

  else
  {
    if (storeCopy)
    {
      v6 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "[AFCallStateSnapshot(ContextSnapshot) initWithSerializedBackingStore:]";
        v11 = 2112;
        v12 = storeCopy;
        _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s #hal serializedBackingStore is of unexpected type: %@", &v9, 0x16u);
      }
    }

    selfCopy = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end