@interface AFASRSharedUserInfo
+ (id)newWithBuilder:(id)builder;
- (AFASRSharedUserInfo)initWithBuilder:(id)builder;
- (AFASRSharedUserInfo)initWithCoder:(id)coder;
- (AFASRSharedUserInfo)initWithSharedUserId:(id)id loggableSharedUserId:(id)userId loggableUserIdHash:(id)hash personaId:(id)personaId;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFASRSharedUserInfo

- (void)encodeWithCoder:(id)coder
{
  sharedUserId = self->_sharedUserId;
  coderCopy = coder;
  [coderCopy encodeObject:sharedUserId forKey:@"AFASRSharedUserInfo::sharedUserId"];
  [coderCopy encodeObject:self->_loggableSharedUserId forKey:@"AFASRSharedUserInfo::loggableSharedUserId"];
  [coderCopy encodeObject:self->_loggableUserIdHash forKey:@"AFASRSharedUserInfo::loggableUserIdHash"];
  [coderCopy encodeObject:self->_personaId forKey:@"AFASRSharedUserInfo::personaId"];
}

- (AFASRSharedUserInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFASRSharedUserInfo::sharedUserId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFASRSharedUserInfo::loggableSharedUserId"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFASRSharedUserInfo::loggableUserIdHash"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFASRSharedUserInfo::personaId"];

  v9 = [(AFASRSharedUserInfo *)self initWithSharedUserId:v5 loggableSharedUserId:v6 loggableUserIdHash:v7 personaId:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sharedUserId = [(AFASRSharedUserInfo *)v5 sharedUserId];
      sharedUserId = self->_sharedUserId;
      if (sharedUserId == sharedUserId || [(NSString *)sharedUserId isEqual:sharedUserId])
      {
        loggableSharedUserId = [(AFASRSharedUserInfo *)v5 loggableSharedUserId];
        loggableSharedUserId = self->_loggableSharedUserId;
        if (loggableSharedUserId == loggableSharedUserId || [(NSString *)loggableSharedUserId isEqual:loggableSharedUserId])
        {
          loggableUserIdHash = [(AFASRSharedUserInfo *)v5 loggableUserIdHash];
          loggableUserIdHash = self->_loggableUserIdHash;
          if (loggableUserIdHash == loggableUserIdHash || [(NSString *)loggableUserIdHash isEqual:loggableUserIdHash])
          {
            personaId = [(AFASRSharedUserInfo *)v5 personaId];
            personaId = self->_personaId;
            v14 = personaId == personaId || [(NSString *)personaId isEqual:personaId];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sharedUserId hash];
  v4 = [(NSString *)self->_loggableSharedUserId hash]^ v3;
  v5 = [(NSString *)self->_loggableUserIdHash hash];
  return v4 ^ v5 ^ [(NSString *)self->_personaId hash];
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFASRSharedUserInfo;
  v5 = [(AFASRSharedUserInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {sharedUserId = %@, loggableSharedUserId = %@, loggableUserIdHash = %@, personaId = %@}", v5, self->_sharedUserId, self->_loggableSharedUserId, self->_loggableUserIdHash, self->_personaId];

  return v6;
}

- (AFASRSharedUserInfo)initWithSharedUserId:(id)id loggableSharedUserId:(id)userId loggableUserIdHash:(id)hash personaId:(id)personaId
{
  idCopy = id;
  userIdCopy = userId;
  hashCopy = hash;
  personaIdCopy = personaId;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__AFASRSharedUserInfo_initWithSharedUserId_loggableSharedUserId_loggableUserIdHash_personaId___block_invoke;
  v20[3] = &unk_1E7345A18;
  v21 = idCopy;
  v22 = userIdCopy;
  v23 = hashCopy;
  v24 = personaIdCopy;
  v14 = personaIdCopy;
  v15 = hashCopy;
  v16 = userIdCopy;
  v17 = idCopy;
  v18 = [(AFASRSharedUserInfo *)self initWithBuilder:v20];

  return v18;
}

void __94__AFASRSharedUserInfo_initWithSharedUserId_loggableSharedUserId_loggableUserIdHash_personaId___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setSharedUserId:v3];
  [v4 setLoggableSharedUserId:a1[5]];
  [v4 setLoggableUserIdHash:a1[6]];
  [v4 setPersonaId:a1[7]];
}

- (AFASRSharedUserInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v21.receiver = self;
  v21.super_class = AFASRSharedUserInfo;
  v5 = [(AFASRSharedUserInfo *)&v21 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFASRSharedUserInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFASRSharedUserInfoMutation *)v7 isDirty])
    {
      getSharedUserId = [(_AFASRSharedUserInfoMutation *)v7 getSharedUserId];
      v9 = [getSharedUserId copy];
      sharedUserId = v6->_sharedUserId;
      v6->_sharedUserId = v9;

      getLoggableSharedUserId = [(_AFASRSharedUserInfoMutation *)v7 getLoggableSharedUserId];
      v12 = [getLoggableSharedUserId copy];
      loggableSharedUserId = v6->_loggableSharedUserId;
      v6->_loggableSharedUserId = v12;

      getLoggableUserIdHash = [(_AFASRSharedUserInfoMutation *)v7 getLoggableUserIdHash];
      v15 = [getLoggableUserIdHash copy];
      loggableUserIdHash = v6->_loggableUserIdHash;
      v6->_loggableUserIdHash = v15;

      getPersonaId = [(_AFASRSharedUserInfoMutation *)v7 getPersonaId];
      v18 = [getPersonaId copy];
      personaId = v6->_personaId;
      v6->_personaId = v18;
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
    v5 = [[_AFASRSharedUserInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFASRSharedUserInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFASRSharedUserInfo);
      getSharedUserId = [(_AFASRSharedUserInfoMutation *)v5 getSharedUserId];
      v8 = [getSharedUserId copy];
      sharedUserId = v6->_sharedUserId;
      v6->_sharedUserId = v8;

      getLoggableSharedUserId = [(_AFASRSharedUserInfoMutation *)v5 getLoggableSharedUserId];
      v11 = [getLoggableSharedUserId copy];
      loggableSharedUserId = v6->_loggableSharedUserId;
      v6->_loggableSharedUserId = v11;

      getLoggableUserIdHash = [(_AFASRSharedUserInfoMutation *)v5 getLoggableUserIdHash];
      v14 = [getLoggableUserIdHash copy];
      loggableUserIdHash = v6->_loggableUserIdHash;
      v6->_loggableUserIdHash = v14;

      getPersonaId = [(_AFASRSharedUserInfoMutation *)v5 getPersonaId];
      v17 = [getPersonaId copy];
      personaId = v6->_personaId;
      v6->_personaId = v17;
    }

    else
    {
      v6 = [(AFASRSharedUserInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFASRSharedUserInfo *)self copy];
  }

  return v6;
}

@end