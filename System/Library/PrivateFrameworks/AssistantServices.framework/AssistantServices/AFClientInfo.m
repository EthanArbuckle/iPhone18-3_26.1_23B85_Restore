@interface AFClientInfo
+ (id)newWithBuilder:(id)a3;
- (AFClientInfo)initWithBuilder:(id)a3;
- (AFClientInfo)initWithCoder:(id)a3;
- (AFClientInfo)initWithProcessIdentifier:(int)a3 processName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFClientInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  processIdentifier = self->_processIdentifier;
  v7 = a3;
  v6 = [v4 numberWithInt:processIdentifier];
  [v7 encodeObject:v6 forKey:@"AFClientInfo::processIdentifier"];

  [v7 encodeObject:self->_processName forKey:@"AFClientInfo::processName"];
}

- (AFClientInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientInfo::processIdentifier"];
  v6 = [v5 intValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientInfo::processName"];

  v8 = [(AFClientInfo *)self initWithProcessIdentifier:v6 processName:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      processIdentifier = self->_processIdentifier;
      if (processIdentifier == [(AFClientInfo *)v5 processIdentifier])
      {
        v7 = [(AFClientInfo *)v5 processName];
        processName = self->_processName;
        v9 = processName == v7 || [(NSString *)processName isEqual:v7];
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
  v3 = [MEMORY[0x1E696AD98] numberWithInt:self->_processIdentifier];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_processName hash];

  return v5 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFClientInfo;
  v5 = [(AFClientInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {processIdentifier = %d, processName = %@}", v5, self->_processIdentifier, self->_processName];

  return v6;
}

- (AFClientInfo)initWithProcessIdentifier:(int)a3 processName:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AFClientInfo_initWithProcessIdentifier_processName___block_invoke;
  v10[3] = &unk_1E7349670;
  v12 = a3;
  v11 = v6;
  v7 = v6;
  v8 = [(AFClientInfo *)self initWithBuilder:v10];

  return v8;
}

void __54__AFClientInfo_initWithProcessIdentifier_processName___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setProcessIdentifier:v3];
  [v4 setProcessName:*(a1 + 32)];
}

- (AFClientInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFClientInfo;
  v5 = [(AFClientInfo *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFClientInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFClientInfoMutation *)v7 isDirty])
    {
      v6->_processIdentifier = [(_AFClientInfoMutation *)v7 getProcessIdentifier];
      v8 = [(_AFClientInfoMutation *)v7 getProcessName];
      v9 = [v8 copy];
      processName = v6->_processName;
      v6->_processName = v9;
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
    v5 = [[_AFClientInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFClientInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFClientInfo);
      v6->_processIdentifier = [(_AFClientInfoMutation *)v5 getProcessIdentifier];
      v7 = [(_AFClientInfoMutation *)v5 getProcessName];
      v8 = [v7 copy];
      processName = v6->_processName;
      v6->_processName = v8;
    }

    else
    {
      v6 = [(AFClientInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFClientInfo *)self copy];
  }

  return v6;
}

@end