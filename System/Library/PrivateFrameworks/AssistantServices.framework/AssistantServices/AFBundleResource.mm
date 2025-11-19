@interface AFBundleResource
+ (id)newWithBuilder:(id)a3;
- (AFBundleResource)initWithBuilder:(id)a3;
- (AFBundleResource)initWithCoder:(id)a3;
- (AFBundleResource)initWithName:(id)a3 extension:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFBundleResource

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"AFBundleResource::name"];
  [v5 encodeObject:self->_extension forKey:@"AFBundleResource::extension"];
}

- (AFBundleResource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFBundleResource::name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFBundleResource::extension"];

  v7 = [(AFBundleResource *)self initWithName:v5 extension:v6];
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
      v6 = [(AFBundleResource *)v5 name];
      name = self->_name;
      if (name == v6 || [(NSString *)name isEqual:v6])
      {
        v8 = [(AFBundleResource *)v5 extension];
        extension = self->_extension;
        v10 = extension == v8 || [(NSString *)extension isEqual:v8];
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
  v8.super_class = AFBundleResource;
  v5 = [(AFBundleResource *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {name = %@, extension = %@}", v5, self->_name, self->_extension];

  return v6;
}

- (AFBundleResource)initWithName:(id)a3 extension:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__AFBundleResource_initWithName_extension___block_invoke;
  v12[3] = &unk_1E7347918;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(AFBundleResource *)self initWithBuilder:v12];

  return v10;
}

void __43__AFBundleResource_initWithName_extension___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setName:v3];
  [v4 setExtension:*(a1 + 40)];
}

- (AFBundleResource)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFBundleResource;
  v5 = [(AFBundleResource *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFBundleResourceMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFBundleResourceMutation *)v7 isDirty])
    {
      v8 = [(_AFBundleResourceMutation *)v7 getName];
      v9 = [v8 copy];
      name = v6->_name;
      v6->_name = v9;

      v11 = [(_AFBundleResourceMutation *)v7 getExtension];
      v12 = [v11 copy];
      extension = v6->_extension;
      v6->_extension = v12;
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
    v5 = [[_AFBundleResourceMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFBundleResourceMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFBundleResource);
      v7 = [(_AFBundleResourceMutation *)v5 getName];
      v8 = [v7 copy];
      name = v6->_name;
      v6->_name = v8;

      v10 = [(_AFBundleResourceMutation *)v5 getExtension];
      v11 = [v10 copy];
      extension = v6->_extension;
      v6->_extension = v11;
    }

    else
    {
      v6 = [(AFBundleResource *)self copy];
    }
  }

  else
  {
    v6 = [(AFBundleResource *)self copy];
  }

  return v6;
}

@end