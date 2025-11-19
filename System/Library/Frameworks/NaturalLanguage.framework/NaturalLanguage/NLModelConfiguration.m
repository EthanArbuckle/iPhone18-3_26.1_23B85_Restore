@interface NLModelConfiguration
+ (NSIndexSet)supportedRevisionsForType:(NLModelType)type;
+ (id)defaultModelConfigurationForType:(int64_t)a3;
+ (id)defaultModelConfigurationForType:(int64_t)a3 options:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (NLModelConfiguration)initWithCoder:(id)a3;
- (NLModelConfiguration)initWithModelType:(int64_t)a3 options:(id)a4 error:(id *)a5;
- (id)embeddingData;
- (id)embeddingModel;
- (id)embeddingURL;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NLModelConfiguration

- (NLModelConfiguration)initWithModelType:(int64_t)a3 options:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = unsignedIntegerForKey(v8, @"Revision", 0);
  v10 = stringForKey(v8, @"Language", 0);
  if (v9)
  {
    v11 = [NLModelConfiguration supportedRevisionsForType:a3];
    v12 = [v11 containsIndex:v9];

    if ((v12 & 1) == 0)
    {
      if (a5)
      {
        v13 = MEMORY[0x1E696ABC0];
        v27 = *MEMORY[0x1E696A578];
        v28[0] = @"The specified revision is not supported";
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
        *a5 = [v13 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:3 userInfo:v14];
      }

      v15 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
    v9 = [NLModelConfiguration currentRevisionForType:a3];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
    [v16 setObject:v17 forKey:@"Revision"];

    v8 = v16;
  }

  v26.receiver = self;
  v26.super_class = NLModelConfiguration;
  v18 = [(NLModelConfiguration *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = a3;
    v18->_revision = v9;
    v20 = [v10 copy];
    language = v19->_language;
    v19->_language = v20;

    v22 = [v8 copy];
    options = v19->_options;
    v19->_options = v22;
  }

  self = v19;
  v15 = self;
LABEL_10:

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)defaultModelConfigurationForType:(int64_t)a3
{
  v3 = [[NLModelConfiguration alloc] initWithModelType:a3 options:0 error:0];

  return v3;
}

+ (id)defaultModelConfigurationForType:(int64_t)a3 options:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [[NLModelConfiguration alloc] initWithModelType:a3 options:v7 error:a5];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NLModelConfiguration *)self type];
  v4 = [(NLModelConfiguration *)self revision]^ (v3 << 16);
  v5 = [(NLModelConfiguration *)self language];
  v6 = [v5 hash];
  v7 = [(NLModelConfiguration *)self options];
  v8 = v6 ^ [v7 hash];

  return v4 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = [(NLModelConfiguration *)self type];
  if (v6 != [(NLModelConfiguration *)v5 type])
  {
    goto LABEL_14;
  }

  v7 = [(NLModelConfiguration *)self revision];
  if (v7 != [(NLModelConfiguration *)v5 revision])
  {
    goto LABEL_14;
  }

  v8 = [(NLModelConfiguration *)self language];
  if (!v8)
  {
    v14 = [(NLModelConfiguration *)v5 language];

    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v9 = [(NLModelConfiguration *)self language];
  v10 = [(NLModelConfiguration *)v5 language];
  if ([v9 isEqualToString:v10])
  {
    v11 = [(NLModelConfiguration *)self options];
    v12 = [(NLModelConfiguration *)v5 options];
    v13 = [v11 isEqual:v12];
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if (([v6 allowsKeyedCoding] & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLModelConfiguration requires keyed coding" userInfo:0];
    objc_exception_throw(v5);
  }

  [v6 encodeInteger:-[NLModelConfiguration type](self forKey:{"type"), @"NLModelType"}];
  v4 = [(NLModelConfiguration *)self options];
  [v6 encodeObject:v4 forKey:@"NLOptions"];
}

- (NLModelConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLModelConfiguration requires keyed coding" userInfo:0];
    objc_exception_throw(v9);
  }

  v5 = [v4 decodeIntegerForKey:@"NLModelType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NLOptions"];
  v7 = [(NLModelConfiguration *)self initWithModelType:v5 options:v6 error:0];

  return v7;
}

+ (NSIndexSet)supportedRevisionsForType:(NLModelType)type
{
  v3 = MEMORY[0x1E696AC90];
  v4 = [a1 currentRevisionForType:type];

  return [v3 indexSetWithIndex:v4];
}

@end