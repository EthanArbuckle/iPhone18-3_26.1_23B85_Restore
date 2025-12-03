@interface AFSystemStateSnapshot
+ (id)newWithBuilder:(id)builder;
- (AFSystemStateSnapshot)initWithBuilder:(id)builder;
- (AFSystemStateSnapshot)initWithCoder:(id)coder;
- (AFSystemStateSnapshot)initWithDictionaryRepresentation:(id)representation;
- (AFSystemStateSnapshot)initWithSerializedBackingStore:(id)store;
- (AFSystemStateSnapshot)initWithSleepState:(int64_t)state;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)ad_shortDescription;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSystemStateSnapshot

- (id)ad_shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  sleepState = [(AFSystemStateSnapshot *)self sleepState];
  if (sleepState > 2)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = off_1E7348230[sleepState];
  }

  v5 = v4;
  v6 = [v2 stringWithFormat:@"(attention = %@)", v5];

  return v6;
}

- (AFSystemStateSnapshot)initWithSerializedBackingStore:(id)store
{
  v13 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(AFSystemStateSnapshot *)self initWithDictionaryRepresentation:storeCopy];
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
        v10 = "[AFSystemStateSnapshot(ContextSnapshot) initWithSerializedBackingStore:]";
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

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sleepState = self->_sleepState;
  if (sleepState > 2)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_1E7348230[sleepState];
  }

  v6 = v5;
  [v3 setObject:v6 forKey:@"sleepState"];

  v7 = [v3 copy];

  return v7;
}

- (AFSystemStateSnapshot)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    v4 = [representation objectForKey:@"sleepState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = AFSleepStateGetFromName(v4);
    }

    else
    {
      v5 = 0;
    }

    self = [(AFSystemStateSnapshot *)self initWithSleepState:v5];
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
  v3 = MEMORY[0x1E696AD98];
  sleepState = self->_sleepState;
  coderCopy = coder;
  v6 = [v3 numberWithInteger:sleepState];
  [coderCopy encodeObject:v6 forKey:@"AFSystemStateSnapshot::sleepState"];
}

- (AFSystemStateSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSystemStateSnapshot::sleepState"];

  integerValue = [v5 integerValue];

  return [(AFSystemStateSnapshot *)self initWithSleepState:integerValue];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sleepState = self->_sleepState;
      v6 = sleepState == [(AFSystemStateSnapshot *)equalCopy sleepState];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sleepState];
  v3 = [v2 hash];

  return v3;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = AFSystemStateSnapshot;
  v5 = [(AFSystemStateSnapshot *)&v11 description];
  sleepState = self->_sleepState;
  if (sleepState > 2)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E7348230[sleepState];
  }

  v8 = v7;
  v9 = [v4 initWithFormat:@"%@ {sleepState = %@}", v5, v8];

  return v9;
}

- (AFSystemStateSnapshot)initWithSleepState:(int64_t)state
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AFSystemStateSnapshot_initWithSleepState___block_invoke;
  v4[3] = &__block_descriptor_40_e41_v16__0___AFSystemStateSnapshotMutating__8l;
  v4[4] = state;
  return [(AFSystemStateSnapshot *)self initWithBuilder:v4];
}

- (AFSystemStateSnapshot)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = AFSystemStateSnapshot;
  v5 = [(AFSystemStateSnapshot *)&v9 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFSystemStateSnapshotMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFSystemStateSnapshotMutation *)v7 isDirty])
    {
      v6->_sleepState = [(_AFSystemStateSnapshotMutation *)v7 getSleepState];
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
    v5 = [[_AFSystemStateSnapshotMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFSystemStateSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSystemStateSnapshot);
      v6->_sleepState = [(_AFSystemStateSnapshotMutation *)v5 getSleepState];
    }

    else
    {
      v6 = [(AFSystemStateSnapshot *)self copy];
    }
  }

  else
  {
    v6 = [(AFSystemStateSnapshot *)self copy];
  }

  return v6;
}

@end