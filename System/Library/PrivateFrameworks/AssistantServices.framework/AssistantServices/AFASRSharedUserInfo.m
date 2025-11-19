@interface AFASRSharedUserInfo
+ (id)newWithBuilder:(id)a3;
- (AFASRSharedUserInfo)initWithBuilder:(id)a3;
- (AFASRSharedUserInfo)initWithCoder:(id)a3;
- (AFASRSharedUserInfo)initWithSharedUserId:(id)a3 loggableSharedUserId:(id)a4 loggableUserIdHash:(id)a5 personaId:(id)a6;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFASRSharedUserInfo

- (void)encodeWithCoder:(id)a3
{
  sharedUserId = self->_sharedUserId;
  v5 = a3;
  [v5 encodeObject:sharedUserId forKey:@"AFASRSharedUserInfo::sharedUserId"];
  [v5 encodeObject:self->_loggableSharedUserId forKey:@"AFASRSharedUserInfo::loggableSharedUserId"];
  [v5 encodeObject:self->_loggableUserIdHash forKey:@"AFASRSharedUserInfo::loggableUserIdHash"];
  [v5 encodeObject:self->_personaId forKey:@"AFASRSharedUserInfo::personaId"];
}

- (AFASRSharedUserInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFASRSharedUserInfo::sharedUserId"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFASRSharedUserInfo::loggableSharedUserId"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFASRSharedUserInfo::loggableUserIdHash"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFASRSharedUserInfo::personaId"];

  v9 = [(AFASRSharedUserInfo *)self initWithSharedUserId:v5 loggableSharedUserId:v6 loggableUserIdHash:v7 personaId:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AFASRSharedUserInfo *)v5 sharedUserId];
      sharedUserId = self->_sharedUserId;
      if (sharedUserId == v6 || [(NSString *)sharedUserId isEqual:v6])
      {
        v8 = [(AFASRSharedUserInfo *)v5 loggableSharedUserId];
        loggableSharedUserId = self->_loggableSharedUserId;
        if (loggableSharedUserId == v8 || [(NSString *)loggableSharedUserId isEqual:v8])
        {
          v10 = [(AFASRSharedUserInfo *)v5 loggableUserIdHash];
          loggableUserIdHash = self->_loggableUserIdHash;
          if (loggableUserIdHash == v10 || [(NSString *)loggableUserIdHash isEqual:v10])
          {
            v12 = [(AFASRSharedUserInfo *)v5 personaId];
            personaId = self->_personaId;
            v14 = personaId == v12 || [(NSString *)personaId isEqual:v12];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFASRSharedUserInfo;
  v5 = [(AFASRSharedUserInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {sharedUserId = %@, loggableSharedUserId = %@, loggableUserIdHash = %@, personaId = %@}", v5, self->_sharedUserId, self->_loggableSharedUserId, self->_loggableUserIdHash, self->_personaId];

  return v6;
}

- (AFASRSharedUserInfo)initWithSharedUserId:(id)a3 loggableSharedUserId:(id)a4 loggableUserIdHash:(id)a5 personaId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__AFASRSharedUserInfo_initWithSharedUserId_loggableSharedUserId_loggableUserIdHash_personaId___block_invoke;
  v20[3] = &unk_1E7345A18;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
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

- (AFASRSharedUserInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = AFASRSharedUserInfo;
  v5 = [(AFASRSharedUserInfo *)&v21 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFASRSharedUserInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFASRSharedUserInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFASRSharedUserInfoMutation *)v7 getSharedUserId];
      v9 = [v8 copy];
      sharedUserId = v6->_sharedUserId;
      v6->_sharedUserId = v9;

      v11 = [(_AFASRSharedUserInfoMutation *)v7 getLoggableSharedUserId];
      v12 = [v11 copy];
      loggableSharedUserId = v6->_loggableSharedUserId;
      v6->_loggableSharedUserId = v12;

      v14 = [(_AFASRSharedUserInfoMutation *)v7 getLoggableUserIdHash];
      v15 = [v14 copy];
      loggableUserIdHash = v6->_loggableUserIdHash;
      v6->_loggableUserIdHash = v15;

      v17 = [(_AFASRSharedUserInfoMutation *)v7 getPersonaId];
      v18 = [v17 copy];
      personaId = v6->_personaId;
      v6->_personaId = v18;
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
    v5 = [[_AFASRSharedUserInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFASRSharedUserInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFASRSharedUserInfo);
      v7 = [(_AFASRSharedUserInfoMutation *)v5 getSharedUserId];
      v8 = [v7 copy];
      sharedUserId = v6->_sharedUserId;
      v6->_sharedUserId = v8;

      v10 = [(_AFASRSharedUserInfoMutation *)v5 getLoggableSharedUserId];
      v11 = [v10 copy];
      loggableSharedUserId = v6->_loggableSharedUserId;
      v6->_loggableSharedUserId = v11;

      v13 = [(_AFASRSharedUserInfoMutation *)v5 getLoggableUserIdHash];
      v14 = [v13 copy];
      loggableUserIdHash = v6->_loggableUserIdHash;
      v6->_loggableUserIdHash = v14;

      v16 = [(_AFASRSharedUserInfoMutation *)v5 getPersonaId];
      v17 = [v16 copy];
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