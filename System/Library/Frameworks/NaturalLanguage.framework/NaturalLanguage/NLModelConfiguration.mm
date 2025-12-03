@interface NLModelConfiguration
+ (NSIndexSet)supportedRevisionsForType:(NLModelType)type;
+ (id)defaultModelConfigurationForType:(int64_t)type;
+ (id)defaultModelConfigurationForType:(int64_t)type options:(id)options error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NLModelConfiguration)initWithCoder:(id)coder;
- (NLModelConfiguration)initWithModelType:(int64_t)type options:(id)options error:(id *)error;
- (id)embeddingData;
- (id)embeddingModel;
- (id)embeddingURL;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NLModelConfiguration

- (NLModelConfiguration)initWithModelType:(int64_t)type options:(id)options error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v9 = unsignedIntegerForKey(optionsCopy, @"Revision", 0);
  v10 = stringForKey(optionsCopy, @"Language", 0);
  if (v9)
  {
    v11 = [NLModelConfiguration supportedRevisionsForType:type];
    v12 = [v11 containsIndex:v9];

    if ((v12 & 1) == 0)
    {
      if (error)
      {
        v13 = MEMORY[0x1E696ABC0];
        v27 = *MEMORY[0x1E696A578];
        v28[0] = @"The specified revision is not supported";
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
        *error = [v13 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:3 userInfo:v14];
      }

      selfCopy = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
    v9 = [NLModelConfiguration currentRevisionForType:type];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
    [v16 setObject:v17 forKey:@"Revision"];

    optionsCopy = v16;
  }

  v26.receiver = self;
  v26.super_class = NLModelConfiguration;
  v18 = [(NLModelConfiguration *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = type;
    v18->_revision = v9;
    v20 = [v10 copy];
    language = v19->_language;
    v19->_language = v20;

    v22 = [optionsCopy copy];
    options = v19->_options;
    v19->_options = v22;
  }

  self = v19;
  selfCopy = self;
LABEL_10:

  v24 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

+ (id)defaultModelConfigurationForType:(int64_t)type
{
  v3 = [[NLModelConfiguration alloc] initWithModelType:type options:0 error:0];

  return v3;
}

+ (id)defaultModelConfigurationForType:(int64_t)type options:(id)options error:(id *)error
{
  optionsCopy = options;
  v8 = [[NLModelConfiguration alloc] initWithModelType:type options:optionsCopy error:error];

  return v8;
}

- (unint64_t)hash
{
  type = [(NLModelConfiguration *)self type];
  v4 = [(NLModelConfiguration *)self revision]^ (type << 16);
  language = [(NLModelConfiguration *)self language];
  v6 = [language hash];
  options = [(NLModelConfiguration *)self options];
  v8 = v6 ^ [options hash];

  return v4 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
    goto LABEL_15;
  }

  if (!equalCopy)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  type = [(NLModelConfiguration *)self type];
  if (type != [(NLModelConfiguration *)v5 type])
  {
    goto LABEL_14;
  }

  revision = [(NLModelConfiguration *)self revision];
  if (revision != [(NLModelConfiguration *)v5 revision])
  {
    goto LABEL_14;
  }

  language = [(NLModelConfiguration *)self language];
  if (!language)
  {
    language2 = [(NLModelConfiguration *)v5 language];

    if (!language2)
    {
      goto LABEL_8;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

LABEL_8:
  language3 = [(NLModelConfiguration *)self language];
  language4 = [(NLModelConfiguration *)v5 language];
  if ([language3 isEqualToString:language4])
  {
    options = [(NLModelConfiguration *)self options];
    options2 = [(NLModelConfiguration *)v5 options];
    v13 = [options isEqual:options2];
  }

  else
  {
    v13 = 0;
  }

LABEL_15:
  return v13;
}

- (id)embeddingURL
{
  v2 = [(NSDictionary *)self->_options objectForKey:@"EmbeddingURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)embeddingModel
{
  v2 = [(NSDictionary *)self->_options objectForKey:@"EmbeddingModel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)embeddingData
{
  v2 = [(NSDictionary *)self->_options objectForKey:@"EmbeddingData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLModelConfiguration requires keyed coding" userInfo:0];
    objc_exception_throw(v5);
  }

  [coderCopy encodeInteger:-[NLModelConfiguration type](self forKey:{"type"), @"NLModelType"}];
  options = [(NLModelConfiguration *)self options];
  [coderCopy encodeObject:options forKey:@"NLOptions"];
}

- (NLModelConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLModelConfiguration requires keyed coding" userInfo:0];
    objc_exception_throw(v9);
  }

  v5 = [coderCopy decodeIntegerForKey:@"NLModelType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NLOptions"];
  v7 = [(NLModelConfiguration *)self initWithModelType:v5 options:v6 error:0];

  return v7;
}

+ (NSIndexSet)supportedRevisionsForType:(NLModelType)type
{
  v3 = MEMORY[0x1E696AC90];
  v4 = [self currentRevisionForType:type];

  return [v3 indexSetWithIndex:v4];
}

@end