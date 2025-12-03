@interface AFMyriadSession
+ (id)newWithBuilder:(id)builder;
- (AFMyriadSession)initWithBuilder:(id)builder;
- (AFMyriadSession)initWithCoder:(id)coder;
- (AFMyriadSession)initWithGeneration:(unint64_t)generation sessionId:(id)id currentElectionAdvertisementId:(id)advertisementId currentElectionAdvertisementData:(id)data electionAdvertisementDataByIds:(id)ids;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFMyriadSession

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  generation = self->_generation;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:generation];
  [coderCopy encodeObject:v6 forKey:@"AFMyriadSession::generation"];

  [coderCopy encodeObject:self->_sessionId forKey:@"AFMyriadSession::sessionId"];
  [coderCopy encodeObject:self->_currentElectionAdvertisementId forKey:@"AFMyriadSession::currentElectionAdvertisementId"];
  [coderCopy encodeObject:self->_currentElectionAdvertisementData forKey:@"AFMyriadSession::currentElectionAdvertisementData"];
  [coderCopy encodeObject:self->_electionAdvertisementDataByIds forKey:@"AFMyriadSession::electionAdvertisementDataByIds"];
}

- (AFMyriadSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadSession::generation"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadSession::sessionId"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadSession::currentElectionAdvertisementId"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadSession::currentElectionAdvertisementData"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"AFMyriadSession::electionAdvertisementDataByIds"];

  v15 = [(AFMyriadSession *)self initWithGeneration:unsignedLongLongValue sessionId:v7 currentElectionAdvertisementId:v8 currentElectionAdvertisementData:v9 electionAdvertisementDataByIds:v14];
  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      generation = self->_generation;
      if (generation == [(AFMyriadSession *)v5 generation])
      {
        sessionId = [(AFMyriadSession *)v5 sessionId];
        sessionId = self->_sessionId;
        if (sessionId == sessionId || [(NSUUID *)sessionId isEqual:sessionId])
        {
          currentElectionAdvertisementId = [(AFMyriadSession *)v5 currentElectionAdvertisementId];
          currentElectionAdvertisementId = self->_currentElectionAdvertisementId;
          if (currentElectionAdvertisementId == currentElectionAdvertisementId || [(NSUUID *)currentElectionAdvertisementId isEqual:currentElectionAdvertisementId])
          {
            currentElectionAdvertisementData = [(AFMyriadSession *)v5 currentElectionAdvertisementData];
            currentElectionAdvertisementData = self->_currentElectionAdvertisementData;
            if (currentElectionAdvertisementData == currentElectionAdvertisementData || [(NSData *)currentElectionAdvertisementData isEqual:currentElectionAdvertisementData])
            {
              electionAdvertisementDataByIds = [(AFMyriadSession *)v5 electionAdvertisementDataByIds];
              electionAdvertisementDataByIds = self->_electionAdvertisementDataByIds;
              v15 = electionAdvertisementDataByIds == electionAdvertisementDataByIds || [(NSDictionary *)electionAdvertisementDataByIds isEqual:electionAdvertisementDataByIds];
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_generation];
  v4 = [v3 hash];
  v5 = [(NSUUID *)self->_sessionId hash];
  v6 = v5 ^ [(NSUUID *)self->_currentElectionAdvertisementId hash];
  v7 = v6 ^ [(NSData *)self->_currentElectionAdvertisementData hash]^ v4;
  v8 = [(NSDictionary *)self->_electionAdvertisementDataByIds hash];

  return v7 ^ v8;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFMyriadSession;
  v5 = [(AFMyriadSession *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generation = %llu, sessionId = %@, currentElectionAdvertisementId = %@, currentElectionAdvertisementData = (%llu bytes), electionAdvertisementDataByIds = %@}", v5, self->_generation, self->_sessionId, self->_currentElectionAdvertisementId, -[NSData length](self->_currentElectionAdvertisementData, "length"), self->_electionAdvertisementDataByIds];

  return v6;
}

- (AFMyriadSession)initWithGeneration:(unint64_t)generation sessionId:(id)id currentElectionAdvertisementId:(id)advertisementId currentElectionAdvertisementData:(id)data electionAdvertisementDataByIds:(id)ids
{
  idCopy = id;
  advertisementIdCopy = advertisementId;
  dataCopy = data;
  idsCopy = ids;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __143__AFMyriadSession_initWithGeneration_sessionId_currentElectionAdvertisementId_currentElectionAdvertisementData_electionAdvertisementDataByIds___block_invoke;
  v22[3] = &unk_1E7345388;
  v26 = idsCopy;
  generationCopy = generation;
  v23 = idCopy;
  v24 = advertisementIdCopy;
  v25 = dataCopy;
  v16 = idsCopy;
  v17 = dataCopy;
  v18 = advertisementIdCopy;
  v19 = idCopy;
  v20 = [(AFMyriadSession *)self initWithBuilder:v22];

  return v20;
}

void __143__AFMyriadSession_initWithGeneration_sessionId_currentElectionAdvertisementId_currentElectionAdvertisementData_electionAdvertisementDataByIds___block_invoke(void *a1, void *a2)
{
  v3 = a1[8];
  v4 = a2;
  [v4 setGeneration:v3];
  [v4 setSessionId:a1[4]];
  [v4 setCurrentElectionAdvertisementId:a1[5]];
  [v4 setCurrentElectionAdvertisementData:a1[6]];
  [v4 setElectionAdvertisementDataByIds:a1[7]];
}

- (AFMyriadSession)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v21.receiver = self;
  v21.super_class = AFMyriadSession;
  v5 = [(AFMyriadSession *)&v21 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFMyriadSessionMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFMyriadSessionMutation *)v7 isDirty])
    {
      v6->_generation = [(_AFMyriadSessionMutation *)v7 getGeneration];
      getSessionId = [(_AFMyriadSessionMutation *)v7 getSessionId];
      v9 = [getSessionId copy];
      sessionId = v6->_sessionId;
      v6->_sessionId = v9;

      getCurrentElectionAdvertisementId = [(_AFMyriadSessionMutation *)v7 getCurrentElectionAdvertisementId];
      v12 = [getCurrentElectionAdvertisementId copy];
      currentElectionAdvertisementId = v6->_currentElectionAdvertisementId;
      v6->_currentElectionAdvertisementId = v12;

      getCurrentElectionAdvertisementData = [(_AFMyriadSessionMutation *)v7 getCurrentElectionAdvertisementData];
      v15 = [getCurrentElectionAdvertisementData copy];
      currentElectionAdvertisementData = v6->_currentElectionAdvertisementData;
      v6->_currentElectionAdvertisementData = v15;

      getElectionAdvertisementDataByIds = [(_AFMyriadSessionMutation *)v7 getElectionAdvertisementDataByIds];
      v18 = [getElectionAdvertisementDataByIds copy];
      electionAdvertisementDataByIds = v6->_electionAdvertisementDataByIds;
      v6->_electionAdvertisementDataByIds = v18;
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
    v5 = [[_AFMyriadSessionMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFMyriadSessionMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFMyriadSession);
      v6->_generation = [(_AFMyriadSessionMutation *)v5 getGeneration];
      getSessionId = [(_AFMyriadSessionMutation *)v5 getSessionId];
      v8 = [getSessionId copy];
      sessionId = v6->_sessionId;
      v6->_sessionId = v8;

      getCurrentElectionAdvertisementId = [(_AFMyriadSessionMutation *)v5 getCurrentElectionAdvertisementId];
      v11 = [getCurrentElectionAdvertisementId copy];
      currentElectionAdvertisementId = v6->_currentElectionAdvertisementId;
      v6->_currentElectionAdvertisementId = v11;

      getCurrentElectionAdvertisementData = [(_AFMyriadSessionMutation *)v5 getCurrentElectionAdvertisementData];
      v14 = [getCurrentElectionAdvertisementData copy];
      currentElectionAdvertisementData = v6->_currentElectionAdvertisementData;
      v6->_currentElectionAdvertisementData = v14;

      getElectionAdvertisementDataByIds = [(_AFMyriadSessionMutation *)v5 getElectionAdvertisementDataByIds];
      v17 = [getElectionAdvertisementDataByIds copy];
      electionAdvertisementDataByIds = v6->_electionAdvertisementDataByIds;
      v6->_electionAdvertisementDataByIds = v17;
    }

    else
    {
      v6 = [(AFMyriadSession *)self copy];
    }
  }

  else
  {
    v6 = [(AFMyriadSession *)self copy];
  }

  return v6;
}

@end