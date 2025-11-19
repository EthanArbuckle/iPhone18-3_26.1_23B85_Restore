@interface AFOutputVoiceDescriptor
+ (id)newWithBuilder:(id)a3;
- (AFOutputVoiceDescriptor)initWithBuilder:(id)a3;
- (AFOutputVoiceDescriptor)initWithCoder:(id)a3;
- (AFOutputVoiceDescriptor)initWithLocalizedDisplay:(id)a3 localizedDisplayWithRegion:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFOutputVoiceDescriptor

- (void)encodeWithCoder:(id)a3
{
  localizedDisplay = self->_localizedDisplay;
  v5 = a3;
  [v5 encodeObject:localizedDisplay forKey:@"AFOutputVoiceDescriptor::localizedDisplay"];
  [v5 encodeObject:self->_localizedDisplayWithRegion forKey:@"AFOutputVoiceDescriptor::localizedDisplayWithRegion"];
}

- (AFOutputVoiceDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFOutputVoiceDescriptor::localizedDisplay"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFOutputVoiceDescriptor::localizedDisplayWithRegion"];

  v7 = [(AFOutputVoiceDescriptor *)self initWithLocalizedDisplay:v5 localizedDisplayWithRegion:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AFOutputVoiceDescriptor *)v5 localizedDisplay];
      localizedDisplay = self->_localizedDisplay;
      if (localizedDisplay == v6 || [(NSString *)localizedDisplay isEqual:v6])
      {
        v8 = [(AFOutputVoiceDescriptor *)v5 localizedDisplayWithRegion];
        localizedDisplayWithRegion = self->_localizedDisplayWithRegion;
        v10 = localizedDisplayWithRegion == v8 || [(NSString *)localizedDisplayWithRegion isEqual:v8];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFOutputVoiceDescriptor;
  v5 = [(AFOutputVoiceDescriptor *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {localizedDisplay = %@, localizedDisplayWithRegion = %@}", v5, self->_localizedDisplay, self->_localizedDisplayWithRegion];

  return v6;
}

- (AFOutputVoiceDescriptor)initWithLocalizedDisplay:(id)a3 localizedDisplayWithRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__AFOutputVoiceDescriptor_initWithLocalizedDisplay_localizedDisplayWithRegion___block_invoke;
  v12[3] = &unk_1E7342278;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
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

- (AFOutputVoiceDescriptor)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFOutputVoiceDescriptor;
  v5 = [(AFOutputVoiceDescriptor *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFOutputVoiceDescriptorMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFOutputVoiceDescriptorMutation *)v7 isDirty])
    {
      v8 = [(_AFOutputVoiceDescriptorMutation *)v7 getLocalizedDisplay];
      v9 = [v8 copy];
      localizedDisplay = v6->_localizedDisplay;
      v6->_localizedDisplay = v9;

      v11 = [(_AFOutputVoiceDescriptorMutation *)v7 getLocalizedDisplayWithRegion];
      v12 = [v11 copy];
      localizedDisplayWithRegion = v6->_localizedDisplayWithRegion;
      v6->_localizedDisplayWithRegion = v12;
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
    v5 = [[_AFOutputVoiceDescriptorMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFOutputVoiceDescriptorMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFOutputVoiceDescriptor);
      v7 = [(_AFOutputVoiceDescriptorMutation *)v5 getLocalizedDisplay];
      v8 = [v7 copy];
      localizedDisplay = v6->_localizedDisplay;
      v6->_localizedDisplay = v8;

      v10 = [(_AFOutputVoiceDescriptorMutation *)v5 getLocalizedDisplayWithRegion];
      v11 = [v10 copy];
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