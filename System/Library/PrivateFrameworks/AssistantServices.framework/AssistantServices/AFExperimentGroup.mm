@interface AFExperimentGroup
+ (id)newWithBuilder:(id)builder;
- (AFExperimentGroup)initWithBuilder:(id)builder;
- (AFExperimentGroup)initWithCoder:(id)coder;
- (AFExperimentGroup)initWithDictionaryRepresentation:(id)representation;
- (AFExperimentGroup)initWithIdentifier:(id)identifier allocation:(unint64_t)allocation properties:(id)properties;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFExperimentGroup

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_allocation];
  [v4 setObject:v6 forKey:@"allocation"];

  properties = self->_properties;
  if (properties)
  {
    [v4 setObject:properties forKey:@"properties"];
  }

  v8 = [v4 copy];

  return v8;
}

- (AFExperimentGroup)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 objectForKey:@"allocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    unsignedIntegerValue = [v10 unsignedIntegerValue];
    v12 = [v5 objectForKey:@"properties"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    self = [(AFExperimentGroup *)self initWithIdentifier:v7 allocation:unsignedIntegerValue properties:v13];
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
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"AFExperimentGroup::identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_allocation];
  [coderCopy encodeObject:v5 forKey:@"AFExperimentGroup::allocation"];

  [coderCopy encodeObject:self->_properties forKey:@"AFExperimentGroup::properties"];
}

- (AFExperimentGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentGroup::identifier"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentGroup::allocation"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v18 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v18 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"AFExperimentGroup::properties"];

  v16 = [(AFExperimentGroup *)self initWithIdentifier:v20 allocation:unsignedIntegerValue properties:v15];
  return v16;
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
      allocation = self->_allocation;
      if (allocation == [(AFExperimentGroup *)v5 allocation])
      {
        identifier = [(AFExperimentGroup *)v5 identifier];
        identifier = self->_identifier;
        if (identifier == identifier || [(NSString *)identifier isEqual:identifier])
        {
          properties = [(AFExperimentGroup *)v5 properties];
          properties = self->_properties;
          v11 = properties == properties || [(NSDictionary *)properties isEqual:properties];
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
  v3 = [(NSString *)self->_identifier hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_allocation];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSDictionary *)self->_properties hash];

  return v5 ^ v6;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFExperimentGroup;
  v5 = [(AFExperimentGroup *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, allocation = %llu, properties = %@}", v5, self->_identifier, self->_allocation, self->_properties];

  return v6;
}

- (AFExperimentGroup)initWithIdentifier:(id)identifier allocation:(unint64_t)allocation properties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__AFExperimentGroup_initWithIdentifier_allocation_properties___block_invoke;
  v14[3] = &unk_1E7342508;
  v16 = propertiesCopy;
  allocationCopy = allocation;
  v15 = identifierCopy;
  v10 = propertiesCopy;
  v11 = identifierCopy;
  v12 = [(AFExperimentGroup *)self initWithBuilder:v14];

  return v12;
}

void __62__AFExperimentGroup_initWithIdentifier_allocation_properties___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setIdentifier:v3];
  [v4 setAllocation:a1[6]];
  [v4 setProperties:a1[5]];
}

- (AFExperimentGroup)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = AFExperimentGroup;
  v5 = [(AFExperimentGroup *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFExperimentGroupMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFExperimentGroupMutation *)v7 isDirty])
    {
      getIdentifier = [(_AFExperimentGroupMutation *)v7 getIdentifier];
      v9 = [getIdentifier copy];
      identifier = v6->_identifier;
      v6->_identifier = v9;

      v6->_allocation = [(_AFExperimentGroupMutation *)v7 getAllocation];
      getProperties = [(_AFExperimentGroupMutation *)v7 getProperties];
      v12 = [getProperties copy];
      properties = v6->_properties;
      v6->_properties = v12;
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
    v5 = [[_AFExperimentGroupMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFExperimentGroupMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFExperimentGroup);
      getIdentifier = [(_AFExperimentGroupMutation *)v5 getIdentifier];
      v8 = [getIdentifier copy];
      identifier = v6->_identifier;
      v6->_identifier = v8;

      v6->_allocation = [(_AFExperimentGroupMutation *)v5 getAllocation];
      getProperties = [(_AFExperimentGroupMutation *)v5 getProperties];
      v11 = [getProperties copy];
      properties = v6->_properties;
      v6->_properties = v11;
    }

    else
    {
      v6 = [(AFExperimentGroup *)self copy];
    }
  }

  else
  {
    v6 = [(AFExperimentGroup *)self copy];
  }

  return v6;
}

@end