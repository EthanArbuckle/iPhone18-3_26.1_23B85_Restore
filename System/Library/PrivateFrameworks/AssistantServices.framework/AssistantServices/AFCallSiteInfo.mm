@interface AFCallSiteInfo
+ (id)newWithBuilder:(id)builder;
- (AFCallSiteInfo)initWithBuilder:(id)builder;
- (AFCallSiteInfo)initWithCoder:(id)coder;
- (AFCallSiteInfo)initWithDictionaryRepresentation:(id)representation;
- (AFCallSiteInfo)initWithImagePath:(id)path symbolName:(id)name;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFCallSiteInfo

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  imagePath = self->_imagePath;
  if (imagePath)
  {
    [v3 setObject:imagePath forKey:@"imagePath"];
  }

  symbolName = self->_symbolName;
  if (symbolName)
  {
    [v4 setObject:symbolName forKey:@"symbolName"];
  }

  v7 = [v4 copy];

  return v7;
}

- (AFCallSiteInfo)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    v5 = [representationCopy objectForKey:@"imagePath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = [representationCopy objectForKey:@"symbolName"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    self = [(AFCallSiteInfo *)self initWithImagePath:v6 symbolName:v9];
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
  imagePath = self->_imagePath;
  coderCopy = coder;
  [coderCopy encodeObject:imagePath forKey:@"AFCallSiteInfo::imagePath"];
  [coderCopy encodeObject:self->_symbolName forKey:@"AFCallSiteInfo::symbolName"];
}

- (AFCallSiteInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCallSiteInfo::imagePath"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCallSiteInfo::symbolName"];

  v7 = [(AFCallSiteInfo *)self initWithImagePath:v5 symbolName:v6];
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
      imagePath = [(AFCallSiteInfo *)v5 imagePath];
      imagePath = self->_imagePath;
      if (imagePath == imagePath || [(NSString *)imagePath isEqual:imagePath])
      {
        symbolName = [(AFCallSiteInfo *)v5 symbolName];
        symbolName = self->_symbolName;
        v10 = symbolName == symbolName || [(NSString *)symbolName isEqual:symbolName];
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
  v8.super_class = AFCallSiteInfo;
  v5 = [(AFCallSiteInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {imagePath = %@, symbolName = %@}", v5, self->_imagePath, self->_symbolName];

  return v6;
}

- (AFCallSiteInfo)initWithImagePath:(id)path symbolName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__AFCallSiteInfo_initWithImagePath_symbolName___block_invoke;
  v12[3] = &unk_1E7347250;
  v13 = pathCopy;
  v14 = nameCopy;
  v8 = nameCopy;
  v9 = pathCopy;
  v10 = [(AFCallSiteInfo *)self initWithBuilder:v12];

  return v10;
}

void __47__AFCallSiteInfo_initWithImagePath_symbolName___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setImagePath:v3];
  [v4 setSymbolName:*(a1 + 40)];
}

- (AFCallSiteInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = AFCallSiteInfo;
  v5 = [(AFCallSiteInfo *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFCallSiteInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFCallSiteInfoMutation *)v7 isDirty])
    {
      getImagePath = [(_AFCallSiteInfoMutation *)v7 getImagePath];
      v9 = [getImagePath copy];
      imagePath = v6->_imagePath;
      v6->_imagePath = v9;

      getSymbolName = [(_AFCallSiteInfoMutation *)v7 getSymbolName];
      v12 = [getSymbolName copy];
      symbolName = v6->_symbolName;
      v6->_symbolName = v12;
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
    v5 = [[_AFCallSiteInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFCallSiteInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFCallSiteInfo);
      getImagePath = [(_AFCallSiteInfoMutation *)v5 getImagePath];
      v8 = [getImagePath copy];
      imagePath = v6->_imagePath;
      v6->_imagePath = v8;

      getSymbolName = [(_AFCallSiteInfoMutation *)v5 getSymbolName];
      v11 = [getSymbolName copy];
      symbolName = v6->_symbolName;
      v6->_symbolName = v11;
    }

    else
    {
      v6 = [(AFCallSiteInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFCallSiteInfo *)self copy];
  }

  return v6;
}

@end