@interface AFInstanceInfo
+ (id)newWithBuilder:(id)a3;
- (AFInstanceInfo)initWithBuilder:(id)a3;
- (AFInstanceInfo)initWithCoder:(id)a3;
- (AFInstanceInfo)initWithDictionaryRepresentation:(id)a3;
- (AFInstanceInfo)initWithInstanceUUID:(id)a3 applicationType:(int64_t)a4 applicationUUID:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFInstanceInfo

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  instanceUUID = self->_instanceUUID;
  if (instanceUUID)
  {
    [v3 setObject:instanceUUID forKey:@"instanceUUID"];
  }

  applicationType = self->_applicationType;
  v7 = @"(unknown)";
  if (applicationType == 1)
  {
    v7 = @"default";
  }

  if (applicationType)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"unspecified";
  }

  v9 = v8;
  [v4 setObject:v9 forKey:@"applicationType"];

  applicationUUID = self->_applicationUUID;
  if (applicationUUID)
  {
    [v4 setObject:applicationUUID forKey:@"applicationUUID"];
  }

  v11 = [v4 copy];

  return v11;
}

- (AFInstanceInfo)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"instanceUUID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 objectForKey:@"applicationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = AFInstanceApplicationTypeGetFromName(v9);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v5 objectForKey:@"applicationUUID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(AFInstanceInfo *)self initWithInstanceUUID:v7 applicationType:v10 applicationUUID:v12];
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
  instanceUUID = self->_instanceUUID;
  v6 = a3;
  [v6 encodeObject:instanceUUID forKey:@"AFInstanceInfo::instanceUUID"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_applicationType];
  [v6 encodeObject:v5 forKey:@"AFInstanceInfo::applicationType"];

  [v6 encodeObject:self->_applicationUUID forKey:@"AFInstanceInfo::applicationUUID"];
}

- (AFInstanceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFInstanceInfo::instanceUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFInstanceInfo::applicationType"];
  v7 = [v6 integerValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFInstanceInfo::applicationUUID"];

  v9 = [(AFInstanceInfo *)self initWithInstanceUUID:v5 applicationType:v7 applicationUUID:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      applicationType = self->_applicationType;
      if (applicationType == [(AFInstanceInfo *)v5 applicationType])
      {
        v7 = [(AFInstanceInfo *)v5 instanceUUID];
        instanceUUID = self->_instanceUUID;
        if (instanceUUID == v7 || [(NSUUID *)instanceUUID isEqual:v7])
        {
          v9 = [(AFInstanceInfo *)v5 applicationUUID];
          applicationUUID = self->_applicationUUID;
          v11 = applicationUUID == v9 || [(NSUUID *)applicationUUID isEqual:v9];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_instanceUUID hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_applicationType];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSUUID *)self->_applicationUUID hash];

  return v5 ^ v6;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = AFInstanceInfo;
  v5 = [(AFInstanceInfo *)&v13 description];
  instanceUUID = self->_instanceUUID;
  applicationType = self->_applicationType;
  v8 = @"(unknown)";
  if (applicationType == 1)
  {
    v8 = @"default";
  }

  if (applicationType)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"unspecified";
  }

  v10 = v9;
  v11 = [v4 initWithFormat:@"%@ {instanceUUID = %@, applicationType = %@, applicationUUID = %@}", v5, instanceUUID, v10, self->_applicationUUID];

  return v11;
}

- (AFInstanceInfo)initWithInstanceUUID:(id)a3 applicationType:(int64_t)a4 applicationUUID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__AFInstanceInfo_initWithInstanceUUID_applicationType_applicationUUID___block_invoke;
  v14[3] = &unk_1E7342570;
  v16 = v9;
  v17 = a4;
  v15 = v8;
  v10 = v9;
  v11 = v8;
  v12 = [(AFInstanceInfo *)self initWithBuilder:v14];

  return v12;
}

void __71__AFInstanceInfo_initWithInstanceUUID_applicationType_applicationUUID___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setInstanceUUID:v3];
  [v4 setApplicationType:a1[6]];
  [v4 setApplicationUUID:a1[5]];
}

- (AFInstanceInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFInstanceInfo;
  v5 = [(AFInstanceInfo *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFInstanceInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFInstanceInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFInstanceInfoMutation *)v7 getInstanceUUID];
      v9 = [v8 copy];
      instanceUUID = v6->_instanceUUID;
      v6->_instanceUUID = v9;

      v6->_applicationType = [(_AFInstanceInfoMutation *)v7 getApplicationType];
      v11 = [(_AFInstanceInfoMutation *)v7 getApplicationUUID];
      v12 = [v11 copy];
      applicationUUID = v6->_applicationUUID;
      v6->_applicationUUID = v12;
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
    v5 = [[_AFInstanceInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFInstanceInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFInstanceInfo);
      v7 = [(_AFInstanceInfoMutation *)v5 getInstanceUUID];
      v8 = [v7 copy];
      instanceUUID = v6->_instanceUUID;
      v6->_instanceUUID = v8;

      v6->_applicationType = [(_AFInstanceInfoMutation *)v5 getApplicationType];
      v10 = [(_AFInstanceInfoMutation *)v5 getApplicationUUID];
      v11 = [v10 copy];
      applicationUUID = v6->_applicationUUID;
      v6->_applicationUUID = v11;
    }

    else
    {
      v6 = [(AFInstanceInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFInstanceInfo *)self copy];
  }

  return v6;
}

@end