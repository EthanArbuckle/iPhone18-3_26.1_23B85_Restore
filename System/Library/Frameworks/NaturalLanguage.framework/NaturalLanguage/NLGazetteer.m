@interface NLGazetteer
+ (BOOL)writeGazetteerForDictionary:(NSDictionary *)dictionary language:(NLLanguage)language toURL:(NSURL *)url error:(NSError *)error;
+ (BOOL)writeGazetteerMLModelForDictionary:(id)a3 language:(id)a4 toURL:(id)a5 options:(id)a6 error:(id *)a7;
+ (NLGazetteer)gazetteerWithContentsOfURL:(NSURL *)url error:(NSError *)error;
+ (NLGazetteer)gazetteerWithData:(id)a3 error:(id *)a4;
+ (NLGazetteer)gazetteerWithMLModel:(id)a3 error:(id *)a4;
- (BOOL)writeMLModelToURL:(id)a3 options:(id)a4 error:(id *)a5;
- (NLGazetteer)initWithContentsOfURL:(NSURL *)url error:(NSError *)error;
- (NLGazetteer)initWithData:(NSData *)data error:(NSError *)error;
- (NLGazetteer)initWithDictionary:(NSDictionary *)dictionary language:(NLLanguage)language error:(NSError *)error;
- (NLGazetteer)initWithMLModel:(id)a3 error:(id *)a4;
- (NLGazetteer)initWithNLModel:(id)a3 error:(id *)p_isa;
- (NSData)data;
- (NSString)labelForString:(NSString *)string;
- (id)labels;
- (id)modelDescription;
- (void)dealloc;
@end

@implementation NLGazetteer

+ (NLGazetteer)gazetteerWithContentsOfURL:(NSURL *)url error:(NSError *)error
{
  v5 = url;
  v6 = [objc_alloc(objc_opt_class()) initWithContentsOfURL:v5 error:error];

  return v6;
}

+ (NLGazetteer)gazetteerWithData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithData:v5 error:a4];

  return v6;
}

+ (NLGazetteer)gazetteerWithMLModel:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithMLModel:v5 error:a4];

  return v6;
}

- (NLGazetteer)initWithContentsOfURL:(NSURL *)url error:(NSError *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = url;
  v7 = [(NSURL *)v6 path];
  v8 = [v7 pathExtension];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v27 = 0;
  if (([v9 fileExistsAtPath:v7 isDirectory:&v27] & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v13 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v35[0] = @"Could not find gazetteer file";
    v14 = MEMORY[0x1E695DF20];
    v15 = v35;
    v16 = &v34;
    goto LABEL_8;
  }

  if (v27)
  {
    goto LABEL_3;
  }

  if ([v8 isEqualToString:@"mlmodel"])
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v13 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33 = @"Cannot load gazetteer from uncompiled mlmodel file";
    v14 = MEMORY[0x1E695DF20];
    v15 = &v33;
    v16 = &v32;
LABEL_8:
    v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    *error = [v13 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v17];

    goto LABEL_9;
  }

  if ((v27 & 1) == 0)
  {
    v26 = 0;
    v30 = *MEMORY[0x1E6998140];
    v31 = v6;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v20 = NLGazetteerCreate();
    if (v20)
    {
      v21 = v20;
      v25.receiver = self;
      v25.super_class = NLGazetteer;
      v22 = [(NLGazetteer *)&v25 init];
      if (v22)
      {
        v22->_gazetteer = v21;
      }

      v12 = v22;
      goto LABEL_5;
    }

    if (error)
    {
      v23 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v29 = @"Failed to load gazetteer file";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *error = [v23 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v24];
    }
  }

LABEL_3:
  v10 = [NLModel modelWithContentsOfURL:v6 error:error];
  if (!v10)
  {
LABEL_9:
    error = 0;
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [(NLGazetteer *)self initWithNLModel:v10 error:error];
LABEL_5:
  self = v12;

  error = self;
LABEL_10:

  v18 = *MEMORY[0x1E69E9840];
  return error;
}

- (NLGazetteer)initWithData:(NSData *)data error:(NSError *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = data;
  v19 = 0;
  v22 = *MEMORY[0x1E6998138];
  v23[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v8 = NLGazetteerCreate();
  if (v8)
  {
    v9 = v8;
    v18.receiver = self;
    v18.super_class = NLGazetteer;
    v10 = [(NLGazetteer *)&v18 init];
    if (v10)
    {
      v10->_gazetteer = v9;
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21 = @"Failed to load gazetteer data";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *error = [v12 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:5 userInfo:v13];

    v14 = [NLModel modelWithData:v6 error:error];
    if (v14)
    {
      v15 = v14;
      self = [(NLGazetteer *)self initWithNLModel:v14 error:error];

      v11 = self;
    }

    else
    {
      v11 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (NLGazetteer)initWithNLModel:(id)a3 error:(id *)p_isa
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 gazetteer];
  v9 = [v8 _gazetteerRef];

  if (v9)
  {
    v15.receiver = self;
    v15.super_class = NLGazetteer;
    v10 = [(NLGazetteer *)&v15 init];
    if (v10)
    {
      v10->_gazetteer = CFRetain(v9);
      objc_storeStrong(&v10->_nlModel, a3);
    }

    self = v10;
    p_isa = &self->super.isa;
  }

  else if (p_isa)
  {
    v11 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"Failed to load gazetteer file";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *p_isa = [v11 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:6 userInfo:v12];

    p_isa = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (NLGazetteer)initWithMLModel:(id)a3 error:(id *)a4
{
  v6 = [NLModel modelWithMLModel:a3 error:?];
  if (v6)
  {
    self = [(NLGazetteer *)self initWithNLModel:v6 error:a4];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

- (NLGazetteer)initWithDictionary:(NSDictionary *)dictionary language:(NLLanguage)language error:(NSError *)error
{
  v8 = dictionary;
  v9 = language;
  v17 = 0;
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x1E6998148], v10, *MEMORY[0x1E6998150], 0}];
  v12 = NLGazetteerCreate();
  if (v12)
  {
    v13 = v12;
    v16.receiver = self;
    v16.super_class = NLGazetteer;
    v14 = [(NLGazetteer *)&v16 init];
    self = v14;
    if (v14)
    {
      v14->_gazetteer = v13;
    }
  }

  else if (error)
  {
    *error = v17;
  }

  return self;
}

- (void)dealloc
{
  gazetteer = self->_gazetteer;
  if (gazetteer)
  {
    CFRelease(gazetteer);
  }

  v4.receiver = self;
  v4.super_class = NLGazetteer;
  [(NLGazetteer *)&v4 dealloc];
}

- (NSString)labelForString:(NSString *)string
{
  gazetteer = self->_gazetteer;
  v4 = NLGazetteerCopyLabel();

  return v4;
}

- (id)labels
{
  gazetteer = self->_gazetteer;
  v3 = NLGazetteerCopyAvailableLabels();

  return v3;
}

- (NSData)data
{
  gazetteer = self->_gazetteer;
  v3 = NLGazetteerCopyCompressedModel();

  return v3;
}

+ (BOOL)writeGazetteerForDictionary:(NSDictionary *)dictionary language:(NLLanguage)language toURL:(NSURL *)url error:(NSError *)error
{
  v9 = url;
  v10 = language;
  v11 = dictionary;
  v12 = [objc_alloc(objc_opt_class()) initWithDictionary:v11 language:v10 error:error];

  if (v12)
  {
    v13 = [v12 data];
    v14 = [v13 writeToURL:v9 options:1 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)modelDescription
{
  v2 = [(NLGazetteer *)self labels];
  v3 = v2;
  if (v2 && [v2 count])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@"This model is a gazetteer which tags words according to set {%@}", v5];
  }

  else
  {
    v6 = @"This model is a gazetteer";
  }

  return v6;
}

- (BOOL)writeMLModelToURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E695DF20];
  v11 = [(NLGazetteer *)self language];
  v12 = [v10 dictionaryWithObjectsAndKeys:{v11, @"Language", 0}];
  v13 = [NLModelConfiguration defaultModelConfigurationForType:0 options:v12 error:a5];

  v14 = [[NLModelImplG alloc] initWithGazetteer:self];
  v15 = [[NLModel alloc] initWithConfiguration:v13 modelImpl:v14];
  if (v15)
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
    v17 = *MEMORY[0x1E695FDB8];
    v18 = [v16 objectForKey:*MEMORY[0x1E695FDB8]];

    if (!v18)
    {
      v19 = [(NLGazetteer *)self modelDescription];
      [v16 setObject:v19 forKey:v17];
    }

    v20 = [(NLModel *)v15 writeMLModelToURL:v8 options:v16 error:a5];
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"NLNaturalLanguageErrorDomain" code:6 userInfo:0];
    *a5 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)writeGazetteerMLModelForDictionary:(id)a3 language:(id)a4 toURL:(id)a5 options:(id)a6 error:(id *)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [objc_alloc(objc_opt_class()) initWithDictionary:v14 language:v13 error:a7];

  if (v15)
  {
    v16 = [v15 writeMLModelToURL:v11 options:v12 error:a7];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end