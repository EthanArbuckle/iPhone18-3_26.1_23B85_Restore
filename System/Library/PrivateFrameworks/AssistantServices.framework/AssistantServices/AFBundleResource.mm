@interface AFBundleResource
+ (id)newWithBuilder:(id)builder;
- (AFBundleResource)initWithBuilder:(id)builder;
- (AFBundleResource)initWithCoder:(id)coder;
- (AFBundleResource)initWithName:(id)name extension:(id)extension;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFBundleResource

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"AFBundleResource::name"];
  [coderCopy encodeObject:self->_extension forKey:@"AFBundleResource::extension"];
}

- (AFBundleResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBundleResource::name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBundleResource::extension"];

  v7 = [(AFBundleResource *)self initWithName:v5 extension:v6];
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
      name = [(AFBundleResource *)v5 name];
      name = self->_name;
      if (name == name || [(NSString *)name isEqual:name])
      {
        extension = [(AFBundleResource *)v5 extension];
        extension = self->_extension;
        v10 = extension == extension || [(NSString *)extension isEqual:extension];
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
  v8.super_class = AFBundleResource;
  v5 = [(AFBundleResource *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {name = %@, extension = %@}", v5, self->_name, self->_extension];

  return v6;
}

- (AFBundleResource)initWithName:(id)name extension:(id)extension
{
  nameCopy = name;
  extensionCopy = extension;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__AFBundleResource_initWithName_extension___block_invoke;
  v12[3] = &unk_1E7347918;
  v13 = nameCopy;
  v14 = extensionCopy;
  v8 = extensionCopy;
  v9 = nameCopy;
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

- (AFBundleResource)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = AFBundleResource;
  v5 = [(AFBundleResource *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFBundleResourceMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFBundleResourceMutation *)v7 isDirty])
    {
      getName = [(_AFBundleResourceMutation *)v7 getName];
      v9 = [getName copy];
      name = v6->_name;
      v6->_name = v9;

      getExtension = [(_AFBundleResourceMutation *)v7 getExtension];
      v12 = [getExtension copy];
      extension = v6->_extension;
      v6->_extension = v12;
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
    v5 = [[_AFBundleResourceMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFBundleResourceMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFBundleResource);
      getName = [(_AFBundleResourceMutation *)v5 getName];
      v8 = [getName copy];
      name = v6->_name;
      v6->_name = v8;

      getExtension = [(_AFBundleResourceMutation *)v5 getExtension];
      v11 = [getExtension copy];
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