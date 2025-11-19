@interface PHASEMetaParameterDefinition
- (PHASEMetaParameterDefinition)init;
- (PHASEMetaParameterDefinition)initWithValue:(id)a3;
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

- (PHASEMetaParameterDefinition)initWithValue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PHASEMetaParameterDefinition;
  v6 = [(PHASEDefinition *)&v10 initInternal];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, a3);
    v8 = v7;
  }

  return v7;
}

@end