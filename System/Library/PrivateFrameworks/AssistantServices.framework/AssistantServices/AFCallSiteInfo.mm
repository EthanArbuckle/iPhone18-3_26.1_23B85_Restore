@interface AFCallSiteInfo
+ (id)newWithBuilder:(id)a3;
- (AFCallSiteInfo)initWithBuilder:(id)a3;
- (AFCallSiteInfo)initWithCoder:(id)a3;
- (AFCallSiteInfo)initWithDictionaryRepresentation:(id)a3;
- (AFCallSiteInfo)initWithImagePath:(id)a3 symbolName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (AFCallSiteInfo)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKey:@"imagePath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 objectForKey:@"symbolName"];

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
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  imagePath = self->_imagePath;
  v5 = a3;
  [v5 encodeObject:imagePath forKey:@"AFCallSiteInfo::imagePath"];
  [v5 encodeObject:self->_symbolName forKey:@"AFCallSiteInfo::symbolName"];
}

- (AFCallSiteInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFCallSiteInfo::imagePath"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFCallSiteInfo::symbolName"];

  v7 = [(AFCallSiteInfo *)self initWithImagePath:v5 symbolName:v6];
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
      v6 = [(AFCallSiteInfo *)v5 imagePath];
      imagePath = self->_imagePath;
      if (imagePath == v6 || [(NSString *)imagePath isEqual:v6])
      {
        v8 = [(AFCallSiteInfo *)v5 symbolName];
        symbolName = self->_symbolName;
        v10 = symbolName == v8 || [(NSString *)symbolName isEqual:v8];
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
  v8.super_class = AFCallSiteInfo;
  v5 = [(AFCallSiteInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {imagePath = %@, symbolName = %@}", v5, self->_imagePath, self->_symbolName];

  return v6;
}

- (AFCallSiteInfo)initWithImagePath:(id)a3 symbolName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__AFCallSiteInfo_initWithImagePath_symbolName___block_invoke;
  v12[3] = &unk_1E7347250;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
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

- (AFCallSiteInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFCallSiteInfo;
  v5 = [(AFCallSiteInfo *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFCallSiteInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFCallSiteInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFCallSiteInfoMutation *)v7 getImagePath];
      v9 = [v8 copy];
      imagePath = v6->_imagePath;
      v6->_imagePath = v9;

      v11 = [(_AFCallSiteInfoMutation *)v7 getSymbolName];
      v12 = [v11 copy];
      symbolName = v6->_symbolName;
      v6->_symbolName = v12;
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
    v5 = [[_AFCallSiteInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFCallSiteInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFCallSiteInfo);
      v7 = [(_AFCallSiteInfoMutation *)v5 getImagePath];
      v8 = [v7 copy];
      imagePath = v6->_imagePath;
      v6->_imagePath = v8;

      v10 = [(_AFCallSiteInfoMutation *)v5 getSymbolName];
      v11 = [v10 copy];
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