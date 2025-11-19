@interface PHASEStringMetaParameterDefinition
- (PHASEStringMetaParameterDefinition)init;
- (PHASEStringMetaParameterDefinition)initWithValue:(NSString *)value;
- (PHASEStringMetaParameterDefinition)initWithValue:(NSString *)value identifier:(NSString *)identifier;
@end

@implementation PHASEStringMetaParameterDefinition

- (PHASEStringMetaParameterDefinition)init
{
  [(PHASEStringMetaParameterDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEStringMetaParameterDefinition)initWithValue:(NSString *)value identifier:(NSString *)identifier
{
  v6 = value;
  v7 = identifier;
  v8 = [(PHASEStringMetaParameterDefinition *)self initWithValue:v6];
  v9 = v8;
  if (v8)
  {
    [(PHASEDefinition *)v8 setIdentifier:v7];
    v10 = v9;
  }

  return v9;
}

- (PHASEStringMetaParameterDefinition)initWithValue:(NSString *)value
{
  v7.receiver = self;
  v7.super_class = PHASEStringMetaParameterDefinition;
  v3 = [(PHASEMetaParameterDefinition *)&v7 initWithValue:value];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end