@interface AFSystemStateSnapshot
+ (id)newWithBuilder:(id)a3;
- (AFSystemStateSnapshot)initWithBuilder:(id)a3;
- (AFSystemStateSnapshot)initWithCoder:(id)a3;
- (AFSystemStateSnapshot)initWithDictionaryRepresentation:(id)a3;
- (AFSystemStateSnapshot)initWithSerializedBackingStore:(id)a3;
- (AFSystemStateSnapshot)initWithSleepState:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)ad_shortDescription;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSystemStateSnapshot

- (id)ad_shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(AFSystemStateSnapshot *)self sleepState];
  if (v3 > 2)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = off_1E7348230[v3];
  }

  v5 = v4;
  v6 = [v2 stringWithFormat:@"(attention = %@)", v5];

  return v6;
}

- (AFSystemStateSnapshot)initWithSerializedBackingStore:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(AFSystemStateSnapshot *)self initWithDictionaryRepresentation:v4];
    v5 = self;
  }

  else
  {
    if (v4)
    {
      v6 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "[AFSystemStateSnapshot(ContextSnapshot) initWithSerializedBackingStore:]";
        v11 = 2112;
        v12 = v4;
        _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s #hal serializedBackingStore is of unexpected type: %@", &v9, 0x16u);
      }
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
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

- (AFSystemStateSnapshot)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKey:@"sleepState"];
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
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  sleepState = self->_sleepState;
  v5 = a3;
  v6 = [v3 numberWithInteger:sleepState];
  [v5 encodeObject:v6 forKey:@"AFSystemStateSnapshot::sleepState"];
}

- (AFSystemStateSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSystemStateSnapshot::sleepState"];

  v6 = [v5 integerValue];

  return [(AFSystemStateSnapshot *)self initWithSleepState:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sleepState = self->_sleepState;
      v6 = sleepState == [(AFSystemStateSnapshot *)v4 sleepState];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (AFSystemStateSnapshot)initWithSleepState:(int64_t)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AFSystemStateSnapshot_initWithSleepState___block_invoke;
  v4[3] = &__block_descriptor_40_e41_v16__0___AFSystemStateSnapshotMutating__8l;
  v4[4] = a3;
  return [(AFSystemStateSnapshot *)self initWithBuilder:v4];
}

- (AFSystemStateSnapshot)initWithBuilder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFSystemStateSnapshot;
  v5 = [(AFSystemStateSnapshot *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFSystemStateSnapshotMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFSystemStateSnapshotMutation *)v7 isDirty])
    {
      v6->_sleepState = [(_AFSystemStateSnapshotMutation *)v7 getSleepState];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFSystemStateSnapshotMutation alloc] initWithBase:self];
    v4[2](v4, v5);
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