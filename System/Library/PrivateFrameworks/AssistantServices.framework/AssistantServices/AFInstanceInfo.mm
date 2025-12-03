@interface AFInstanceInfo
+ (id)newWithBuilder:(id)builder;
- (AFInstanceInfo)initWithBuilder:(id)builder;
- (AFInstanceInfo)initWithCoder:(id)coder;
- (AFInstanceInfo)initWithDictionaryRepresentation:(id)representation;
- (AFInstanceInfo)initWithInstanceUUID:(id)d applicationType:(int64_t)type applicationUUID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (AFInstanceInfo)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"instanceUUID"];
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
  instanceUUID = self->_instanceUUID;
  coderCopy = coder;
  [coderCopy encodeObject:instanceUUID forKey:@"AFInstanceInfo::instanceUUID"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_applicationType];
  [coderCopy encodeObject:v5 forKey:@"AFInstanceInfo::applicationType"];

  [coderCopy encodeObject:self->_applicationUUID forKey:@"AFInstanceInfo::applicationUUID"];
}

- (AFInstanceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFInstanceInfo::instanceUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFInstanceInfo::applicationType"];
  integerValue = [v6 integerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFInstanceInfo::applicationUUID"];

  v9 = [(AFInstanceInfo *)self initWithInstanceUUID:v5 applicationType:integerValue applicationUUID:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      applicationType = self->_applicationType;
      if (applicationType == [(AFInstanceInfo *)v5 applicationType])
      {
        instanceUUID = [(AFInstanceInfo *)v5 instanceUUID];
        instanceUUID = self->_instanceUUID;
        if (instanceUUID == instanceUUID || [(NSUUID *)instanceUUID isEqual:instanceUUID])
        {
          applicationUUID = [(AFInstanceInfo *)v5 applicationUUID];
          applicationUUID = self->_applicationUUID;
          v11 = applicationUUID == applicationUUID || [(NSUUID *)applicationUUID isEqual:applicationUUID];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFInstanceInfo)initWithInstanceUUID:(id)d applicationType:(int64_t)type applicationUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__AFInstanceInfo_initWithInstanceUUID_applicationType_applicationUUID___block_invoke;
  v14[3] = &unk_1E7342570;
  v16 = iDCopy;
  typeCopy = type;
  v15 = dCopy;
  v10 = iDCopy;
  v11 = dCopy;
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

- (AFInstanceInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = AFInstanceInfo;
  v5 = [(AFInstanceInfo *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFInstanceInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFInstanceInfoMutation *)v7 isDirty])
    {
      getInstanceUUID = [(_AFInstanceInfoMutation *)v7 getInstanceUUID];
      v9 = [getInstanceUUID copy];
      instanceUUID = v6->_instanceUUID;
      v6->_instanceUUID = v9;

      v6->_applicationType = [(_AFInstanceInfoMutation *)v7 getApplicationType];
      getApplicationUUID = [(_AFInstanceInfoMutation *)v7 getApplicationUUID];
      v12 = [getApplicationUUID copy];
      applicationUUID = v6->_applicationUUID;
      v6->_applicationUUID = v12;
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
    v5 = [[_AFInstanceInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFInstanceInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFInstanceInfo);
      getInstanceUUID = [(_AFInstanceInfoMutation *)v5 getInstanceUUID];
      v8 = [getInstanceUUID copy];
      instanceUUID = v6->_instanceUUID;
      v6->_instanceUUID = v8;

      v6->_applicationType = [(_AFInstanceInfoMutation *)v5 getApplicationType];
      getApplicationUUID = [(_AFInstanceInfoMutation *)v5 getApplicationUUID];
      v11 = [getApplicationUUID copy];
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