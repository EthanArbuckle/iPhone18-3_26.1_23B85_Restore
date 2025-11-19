@interface AFExperimentState
+ (id)newWithBuilder:(id)a3;
- (AFExperimentState)initWithBuilder:(id)a3;
- (AFExperimentState)initWithCoder:(id)a3;
- (AFExperimentState)initWithDictionaryRepresentation:(id)a3;
- (AFExperimentState)initWithLastSyncDate:(id)a3 didEnd:(BOOL)a4 endingGroupIdentifier:(id)a5 version:(id)a6;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFExperimentState

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  lastSyncDate = self->_lastSyncDate;
  if (lastSyncDate)
  {
    [v3 setObject:lastSyncDate forKey:@"lastSyncDate"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_didEnd];
  [v4 setObject:v6 forKey:@"didEnd"];

  endingGroupIdentifier = self->_endingGroupIdentifier;
  if (endingGroupIdentifier)
  {
    [v4 setObject:endingGroupIdentifier forKey:@"endingGroupIdentifier"];
  }

  version = self->_version;
  if (version)
  {
    [v4 setObject:version forKey:@"version"];
  }

  v9 = [v4 copy];

  return v9;
}

- (AFExperimentState)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"lastSyncDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 objectForKey:@"didEnd"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 BOOLValue];
    v12 = [v5 objectForKey:@"endingGroupIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v5 objectForKey:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    self = [(AFExperimentState *)self initWithLastSyncDate:v7 didEnd:v11 endingGroupIdentifier:v13 version:v15];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  lastSyncDate = self->_lastSyncDate;
  v6 = a3;
  [v6 encodeObject:lastSyncDate forKey:@"AFExperimentState::lastSyncDate"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_didEnd];
  [v6 encodeObject:v5 forKey:@"AFExperimentState::didEnd"];

  [v6 encodeObject:self->_endingGroupIdentifier forKey:@"AFExperimentState::endingGroupIdentifier"];
  [v6 encodeObject:self->_version forKey:@"AFExperimentState::version"];
}

- (AFExperimentState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentState::lastSyncDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentState::didEnd"];
  v7 = [v6 BOOLValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentState::endingGroupIdentifier"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentState::version"];

  v10 = [(AFExperimentState *)self initWithLastSyncDate:v5 didEnd:v7 endingGroupIdentifier:v8 version:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      didEnd = self->_didEnd;
      if (didEnd == [(AFExperimentState *)v5 didEnd])
      {
        v7 = [(AFExperimentState *)v5 lastSyncDate];
        lastSyncDate = self->_lastSyncDate;
        if (lastSyncDate == v7 || [(NSDate *)lastSyncDate isEqual:v7])
        {
          v9 = [(AFExperimentState *)v5 endingGroupIdentifier];
          endingGroupIdentifier = self->_endingGroupIdentifier;
          if (endingGroupIdentifier == v9 || [(NSString *)endingGroupIdentifier isEqual:v9])
          {
            v11 = [(AFExperimentState *)v5 version];
            version = self->_version;
            v13 = version == v11 || [(NSString *)version isEqual:v11];
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
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_lastSyncDate hash];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_didEnd];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSString *)self->_endingGroupIdentifier hash];
  v7 = v6 ^ [(NSString *)self->_version hash];

  return v5 ^ v7;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = AFExperimentState;
  v5 = [(AFExperimentState *)&v11 description];
  v6 = v5;
  v7 = @"NO";
  if (self->_didEnd)
  {
    v7 = @"YES";
  }

  endingGroupIdentifier = self->_endingGroupIdentifier;
  v9 = [v4 initWithFormat:@"%@ {lastSyncDate = %@, didEnd = %@, endingGroupIdentifier = %@, version = %@}", v5, self->_lastSyncDate, v7, endingGroupIdentifier, self->_version];

  return v9;
}

- (AFExperimentState)initWithLastSyncDate:(id)a3 didEnd:(BOOL)a4 endingGroupIdentifier:(id)a5 version:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__AFExperimentState_initWithLastSyncDate_didEnd_endingGroupIdentifier_version___block_invoke;
  v18[3] = &unk_1E7345EA8;
  v22 = a4;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = [(AFExperimentState *)self initWithBuilder:v18];

  return v16;
}

void __79__AFExperimentState_initWithLastSyncDate_didEnd_endingGroupIdentifier_version___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLastSyncDate:v3];
  [v4 setDidEnd:*(a1 + 56)];
  [v4 setEndingGroupIdentifier:*(a1 + 40)];
  [v4 setVersion:*(a1 + 48)];
}

- (AFExperimentState)initWithBuilder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AFExperimentState;
  v5 = [(AFExperimentState *)&v18 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFExperimentStateMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFExperimentStateMutation *)v7 isDirty])
    {
      v8 = [(_AFExperimentStateMutation *)v7 getLastSyncDate];
      v9 = [v8 copy];
      lastSyncDate = v6->_lastSyncDate;
      v6->_lastSyncDate = v9;

      v6->_didEnd = [(_AFExperimentStateMutation *)v7 getDidEnd];
      v11 = [(_AFExperimentStateMutation *)v7 getEndingGroupIdentifier];
      v12 = [v11 copy];
      endingGroupIdentifier = v6->_endingGroupIdentifier;
      v6->_endingGroupIdentifier = v12;

      v14 = [(_AFExperimentStateMutation *)v7 getVersion];
      v15 = [v14 copy];
      version = v6->_version;
      v6->_version = v15;
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
    v5 = [[_AFExperimentStateMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFExperimentStateMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFExperimentState);
      v7 = [(_AFExperimentStateMutation *)v5 getLastSyncDate];
      v8 = [v7 copy];
      lastSyncDate = v6->_lastSyncDate;
      v6->_lastSyncDate = v8;

      v6->_didEnd = [(_AFExperimentStateMutation *)v5 getDidEnd];
      v10 = [(_AFExperimentStateMutation *)v5 getEndingGroupIdentifier];
      v11 = [v10 copy];
      endingGroupIdentifier = v6->_endingGroupIdentifier;
      v6->_endingGroupIdentifier = v11;

      v13 = [(_AFExperimentStateMutation *)v5 getVersion];
      v14 = [v13 copy];
      version = v6->_version;
      v6->_version = v14;
    }

    else
    {
      v6 = [(AFExperimentState *)self copy];
    }
  }

  else
  {
    v6 = [(AFExperimentState *)self copy];
  }

  return v6;
}

@end