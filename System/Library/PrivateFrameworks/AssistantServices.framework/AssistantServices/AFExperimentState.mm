@interface AFExperimentState
+ (id)newWithBuilder:(id)builder;
- (AFExperimentState)initWithBuilder:(id)builder;
- (AFExperimentState)initWithCoder:(id)coder;
- (AFExperimentState)initWithDictionaryRepresentation:(id)representation;
- (AFExperimentState)initWithLastSyncDate:(id)date didEnd:(BOOL)end endingGroupIdentifier:(id)identifier version:(id)version;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (AFExperimentState)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"lastSyncDate"];
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

    bOOLValue = [v10 BOOLValue];
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

    self = [(AFExperimentState *)self initWithLastSyncDate:v7 didEnd:bOOLValue endingGroupIdentifier:v13 version:v15];
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
  lastSyncDate = self->_lastSyncDate;
  coderCopy = coder;
  [coderCopy encodeObject:lastSyncDate forKey:@"AFExperimentState::lastSyncDate"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_didEnd];
  [coderCopy encodeObject:v5 forKey:@"AFExperimentState::didEnd"];

  [coderCopy encodeObject:self->_endingGroupIdentifier forKey:@"AFExperimentState::endingGroupIdentifier"];
  [coderCopy encodeObject:self->_version forKey:@"AFExperimentState::version"];
}

- (AFExperimentState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentState::lastSyncDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentState::didEnd"];
  bOOLValue = [v6 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentState::endingGroupIdentifier"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentState::version"];

  v10 = [(AFExperimentState *)self initWithLastSyncDate:v5 didEnd:bOOLValue endingGroupIdentifier:v8 version:v9];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      didEnd = self->_didEnd;
      if (didEnd == [(AFExperimentState *)v5 didEnd])
      {
        lastSyncDate = [(AFExperimentState *)v5 lastSyncDate];
        lastSyncDate = self->_lastSyncDate;
        if (lastSyncDate == lastSyncDate || [(NSDate *)lastSyncDate isEqual:lastSyncDate])
        {
          endingGroupIdentifier = [(AFExperimentState *)v5 endingGroupIdentifier];
          endingGroupIdentifier = self->_endingGroupIdentifier;
          if (endingGroupIdentifier == endingGroupIdentifier || [(NSString *)endingGroupIdentifier isEqual:endingGroupIdentifier])
          {
            version = [(AFExperimentState *)v5 version];
            version = self->_version;
            v13 = version == version || [(NSString *)version isEqual:version];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFExperimentState)initWithLastSyncDate:(id)date didEnd:(BOOL)end endingGroupIdentifier:(id)identifier version:(id)version
{
  dateCopy = date;
  identifierCopy = identifier;
  versionCopy = version;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__AFExperimentState_initWithLastSyncDate_didEnd_endingGroupIdentifier_version___block_invoke;
  v18[3] = &unk_1E7345EA8;
  endCopy = end;
  v19 = dateCopy;
  v20 = identifierCopy;
  v21 = versionCopy;
  v13 = versionCopy;
  v14 = identifierCopy;
  v15 = dateCopy;
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

- (AFExperimentState)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v18.receiver = self;
  v18.super_class = AFExperimentState;
  v5 = [(AFExperimentState *)&v18 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFExperimentStateMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFExperimentStateMutation *)v7 isDirty])
    {
      getLastSyncDate = [(_AFExperimentStateMutation *)v7 getLastSyncDate];
      v9 = [getLastSyncDate copy];
      lastSyncDate = v6->_lastSyncDate;
      v6->_lastSyncDate = v9;

      v6->_didEnd = [(_AFExperimentStateMutation *)v7 getDidEnd];
      getEndingGroupIdentifier = [(_AFExperimentStateMutation *)v7 getEndingGroupIdentifier];
      v12 = [getEndingGroupIdentifier copy];
      endingGroupIdentifier = v6->_endingGroupIdentifier;
      v6->_endingGroupIdentifier = v12;

      getVersion = [(_AFExperimentStateMutation *)v7 getVersion];
      v15 = [getVersion copy];
      version = v6->_version;
      v6->_version = v15;
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
    v5 = [[_AFExperimentStateMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFExperimentStateMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFExperimentState);
      getLastSyncDate = [(_AFExperimentStateMutation *)v5 getLastSyncDate];
      v8 = [getLastSyncDate copy];
      lastSyncDate = v6->_lastSyncDate;
      v6->_lastSyncDate = v8;

      v6->_didEnd = [(_AFExperimentStateMutation *)v5 getDidEnd];
      getEndingGroupIdentifier = [(_AFExperimentStateMutation *)v5 getEndingGroupIdentifier];
      v11 = [getEndingGroupIdentifier copy];
      endingGroupIdentifier = v6->_endingGroupIdentifier;
      v6->_endingGroupIdentifier = v11;

      getVersion = [(_AFExperimentStateMutation *)v5 getVersion];
      v14 = [getVersion copy];
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