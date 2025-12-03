@interface PHASEMetaParameterDefinition
- (PHASEMetaParameterDefinition)init;
- (PHASEMetaParameterDefinition)initWithValue:(id)value;
- (id)initInternal;
@end

@implementation PHASEMetaParameterDefinition

- (PHASEMetaParameterDefinition)init
{
  [(PHASEMetaParameterDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initInternal
{
  [(PHASEMetaParameterDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEMetaParameterDefinition)initWithValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = PHASEMetaParameterDefinition;
  initInternal = [(PHASEDefinition *)&v10 initInternal];
  v7 = initInternal;
  if (initInternal)
  {
    objc_storeStrong(initInternal + 2, value);
    v8 = v7;
  }

  return v7;
}

@end