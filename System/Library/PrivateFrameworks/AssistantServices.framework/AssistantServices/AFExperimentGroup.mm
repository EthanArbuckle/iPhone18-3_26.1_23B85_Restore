@interface AFExperimentGroup
+ (id)newWithBuilder:(id)a3;
- (AFExperimentGroup)initWithBuilder:(id)a3;
- (AFExperimentGroup)initWithCoder:(id)a3;
- (AFExperimentGroup)initWithDictionaryRepresentation:(id)a3;
- (AFExperimentGroup)initWithIdentifier:(id)a3 allocation:(unint64_t)a4 properties:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (AFExperimentGroup)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"identifier"];
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

    v11 = [v10 unsignedIntegerValue];
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

    self = [(AFExperimentGroup *)self initWithIdentifier:v7 allocation:v11 properties:v13];
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
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"AFExperimentGroup::identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_allocation];
  [v6 encodeObject:v5 forKey:@"AFExperimentGroup::allocation"];

  [v6 encodeObject:self->_properties forKey:@"AFExperimentGroup::properties"];
}

- (AFExperimentGroup)initWithCoder:(id)a3
{
  v3 = a3;
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentGroup::identifier"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentGroup::allocation"];
  v19 = [v4 unsignedIntegerValue];

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
  v15 = [v3 decodeObjectOfClasses:v14 forKey:@"AFExperimentGroup::properties"];

  v16 = [(AFExperimentGroup *)self initWithIdentifier:v20 allocation:v19 properties:v15];
  return v16;
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
      allocation = self->_allocation;
      if (allocation == [(AFExperimentGroup *)v5 allocation])
      {
        v7 = [(AFExperimentGroup *)v5 identifier];
        identifier = self->_identifier;
        if (identifier == v7 || [(NSString *)identifier isEqual:v7])
        {
          v9 = [(AFExperimentGroup *)v5 properties];
          properties = self->_properties;
          v11 = properties == v9 || [(NSDictionary *)properties isEqual:v9];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFExperimentGroup;
  v5 = [(AFExperimentGroup *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, allocation = %llu, properties = %@}", v5, self->_identifier, self->_allocation, self->_properties];

  return v6;
}

- (AFExperimentGroup)initWithIdentifier:(id)a3 allocation:(unint64_t)a4 properties:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__AFExperimentGroup_initWithIdentifier_allocation_properties___block_invoke;
  v14[3] = &unk_1E7342508;
  v16 = v9;
  v17 = a4;
  v15 = v8;
  v10 = v9;
  v11 = v8;
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

- (AFExperimentGroup)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFExperimentGroup;
  v5 = [(AFExperimentGroup *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFExperimentGroupMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFExperimentGroupMutation *)v7 isDirty])
    {
      v8 = [(_AFExperimentGroupMutation *)v7 getIdentifier];
      v9 = [v8 copy];
      identifier = v6->_identifier;
      v6->_identifier = v9;

      v6->_allocation = [(_AFExperimentGroupMutation *)v7 getAllocation];
      v11 = [(_AFExperimentGroupMutation *)v7 getProperties];
      v12 = [v11 copy];
      properties = v6->_properties;
      v6->_properties = v12;
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
    v5 = [[_AFExperimentGroupMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFExperimentGroupMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFExperimentGroup);
      v7 = [(_AFExperimentGroupMutation *)v5 getIdentifier];
      v8 = [v7 copy];
      identifier = v6->_identifier;
      v6->_identifier = v8;

      v6->_allocation = [(_AFExperimentGroupMutation *)v5 getAllocation];
      v10 = [(_AFExperimentGroupMutation *)v5 getProperties];
      v11 = [v10 copy];
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