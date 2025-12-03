@interface AFOutputVoiceDescriptor
+ (id)newWithBuilder:(id)builder;
- (AFOutputVoiceDescriptor)initWithBuilder:(id)builder;
- (AFOutputVoiceDescriptor)initWithCoder:(id)coder;
- (AFOutputVoiceDescriptor)initWithLocalizedDisplay:(id)display localizedDisplayWithRegion:(id)region;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFOutputVoiceDescriptor

- (void)encodeWithCoder:(id)coder
{
  localizedDisplay = self->_localizedDisplay;
  coderCopy = coder;
  [coderCopy encodeObject:localizedDisplay forKey:@"AFOutputVoiceDescriptor::localizedDisplay"];
  [coderCopy encodeObject:self->_localizedDisplayWithRegion forKey:@"AFOutputVoiceDescriptor::localizedDisplayWithRegion"];
}

- (AFOutputVoiceDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFOutputVoiceDescriptor::localizedDisplay"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFOutputVoiceDescriptor::localizedDisplayWithRegion"];

  v7 = [(AFOutputVoiceDescriptor *)self initWithLocalizedDisplay:v5 localizedDisplayWithRegion:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      localizedDisplay = [(AFOutputVoiceDescriptor *)v5 localizedDisplay];
      localizedDisplay = self->_localizedDisplay;
      if (localizedDisplay == localizedDisplay || [(NSString *)localizedDisplay isEqual:localizedDisplay])
      {
        localizedDisplayWithRegion = [(AFOutputVoiceDescriptor *)v5 localizedDisplayWithRegion];
        localizedDisplayWithRegion = self->_localizedDisplayWithRegion;
        v10 = localizedDisplayWithRegion == localizedDisplayWithRegion || [(NSString *)localizedDisplayWithRegion isEqual:localizedDisplayWithRegion];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFOutputVoiceDescriptor;
  v5 = [(AFOutputVoiceDescriptor *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {localizedDisplay = %@, localizedDisplayWithRegion = %@}", v5, self->_localizedDisplay, self->_localizedDisplayWithRegion];

  return v6;
}

- (AFOutputVoiceDescriptor)initWithLocalizedDisplay:(id)display localizedDisplayWithRegion:(id)region
{
  displayCopy = display;
  regionCopy = region;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__AFOutputVoiceDescriptor_initWithLocalizedDisplay_localizedDisplayWithRegion___block_invoke;
  v12[3] = &unk_1E7342278;
  v13 = displayCopy;
  v14 = regionCopy;
  v8 = regionCopy;
  v9 = displayCopy;
  v10 = [(AFOutputVoiceDescriptor *)self initWithBuilder:v12];

  return v10;
}

void __79__AFOutputVoiceDescriptor_initWithLocalizedDisplay_localizedDisplayWithRegion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLocalizedDisplay:v3];
  [v4 setLocalizedDisplayWithRegion:*(a1 + 40)];
}

- (AFOutputVoiceDescriptor)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = AFOutputVoiceDescriptor;
  v5 = [(AFOutputVoiceDescriptor *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFOutputVoiceDescriptorMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFOutputVoiceDescriptorMutation *)v7 isDirty])
    {
      getLocalizedDisplay = [(_AFOutputVoiceDescriptorMutation *)v7 getLocalizedDisplay];
      v9 = [getLocalizedDisplay copy];
      localizedDisplay = v6->_localizedDisplay;
      v6->_localizedDisplay = v9;

      getLocalizedDisplayWithRegion = [(_AFOutputVoiceDescriptorMutation *)v7 getLocalizedDisplayWithRegion];
      v12 = [getLocalizedDisplayWithRegion copy];
      localizedDisplayWithRegion = v6->_localizedDisplayWithRegion;
      v6->_localizedDisplayWithRegion = v12;
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
    v5 = [[_AFOutputVoiceDescriptorMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFOutputVoiceDescriptorMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFOutputVoiceDescriptor);
      getLocalizedDisplay = [(_AFOutputVoiceDescriptorMutation *)v5 getLocalizedDisplay];
      v8 = [getLocalizedDisplay copy];
      localizedDisplay = v6->_localizedDisplay;
      v6->_localizedDisplay = v8;

      getLocalizedDisplayWithRegion = [(_AFOutputVoiceDescriptorMutation *)v5 getLocalizedDisplayWithRegion];
      v11 = [getLocalizedDisplayWithRegion copy];
      localizedDisplayWithRegion = v6->_localizedDisplayWithRegion;
      v6->_localizedDisplayWithRegion = v11;
    }

    else
    {
      v6 = [(AFOutputVoiceDescriptor *)self copy];
    }
  }

  else
  {
    v6 = [(AFOutputVoiceDescriptor *)self copy];
  }

  return v6;
}

@end