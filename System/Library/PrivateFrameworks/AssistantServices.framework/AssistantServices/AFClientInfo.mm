@interface AFClientInfo
+ (id)newWithBuilder:(id)builder;
- (AFClientInfo)initWithBuilder:(id)builder;
- (AFClientInfo)initWithCoder:(id)coder;
- (AFClientInfo)initWithProcessIdentifier:(int)identifier processName:(id)name;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFClientInfo

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  processIdentifier = self->_processIdentifier;
  coderCopy = coder;
  v6 = [v4 numberWithInt:processIdentifier];
  [coderCopy encodeObject:v6 forKey:@"AFClientInfo::processIdentifier"];

  [coderCopy encodeObject:self->_processName forKey:@"AFClientInfo::processName"];
}

- (AFClientInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientInfo::processIdentifier"];
  intValue = [v5 intValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientInfo::processName"];

  v8 = [(AFClientInfo *)self initWithProcessIdentifier:intValue processName:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      processIdentifier = self->_processIdentifier;
      if (processIdentifier == [(AFClientInfo *)v5 processIdentifier])
      {
        processName = [(AFClientInfo *)v5 processName];
        processName = self->_processName;
        v9 = processName == processName || [(NSString *)processName isEqual:processName];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFClientInfo;
  v5 = [(AFClientInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {processIdentifier = %d, processName = %@}", v5, self->_processIdentifier, self->_processName];

  return v6;
}

- (AFClientInfo)initWithProcessIdentifier:(int)identifier processName:(id)name
{
  nameCopy = name;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AFClientInfo_initWithProcessIdentifier_processName___block_invoke;
  v10[3] = &unk_1E7349670;
  identifierCopy = identifier;
  v11 = nameCopy;
  v7 = nameCopy;
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

- (AFClientInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = AFClientInfo;
  v5 = [(AFClientInfo *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFClientInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFClientInfoMutation *)v7 isDirty])
    {
      v6->_processIdentifier = [(_AFClientInfoMutation *)v7 getProcessIdentifier];
      getProcessName = [(_AFClientInfoMutation *)v7 getProcessName];
      v9 = [getProcessName copy];
      processName = v6->_processName;
      v6->_processName = v9;
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
    v5 = [[_AFClientInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFClientInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFClientInfo);
      v6->_processIdentifier = [(_AFClientInfoMutation *)v5 getProcessIdentifier];
      getProcessName = [(_AFClientInfoMutation *)v5 getProcessName];
      v8 = [getProcessName copy];
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