@interface PHASEMappedMetaParameterDefinition
- (PHASEMappedMetaParameterDefinition)init;
- (PHASEMappedMetaParameterDefinition)initWithInputMetaParameterDefinition:(PHASENumberMetaParameterDefinition *)inputMetaParameterDefinition envelope:(PHASEEnvelope *)envelope;
- (PHASEMappedMetaParameterDefinition)initWithInputMetaParameterDefinition:(PHASENumberMetaParameterDefinition *)inputMetaParameterDefinition envelope:(PHASEEnvelope *)envelope identifier:(NSString *)identifier;
- (PHASEMappedMetaParameterDefinition)initWithValue:(double)value;
- (PHASEMappedMetaParameterDefinition)initWithValue:(double)value identifier:(NSString *)identifier;
- (PHASEMappedMetaParameterDefinition)initWithValue:(double)value minimum:(double)minimum maximum:(double)maximum;
- (PHASEMappedMetaParameterDefinition)initWithValue:(double)value minimum:(double)minimum maximum:(double)maximum identifier:(NSString *)identifier;
@end

@implementation PHASEMappedMetaParameterDefinition

- (PHASEMappedMetaParameterDefinition)init
{
  [(PHASEMappedMetaParameterDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEMappedMetaParameterDefinition)initWithValue:(double)value identifier:(NSString *)identifier
{
  [(PHASEMappedMetaParameterDefinition *)self doesNotRecognizeSelector:a2, value];

  return 0;
}

- (PHASEMappedMetaParameterDefinition)initWithValue:(double)value
{
  [(PHASEMappedMetaParameterDefinition *)self doesNotRecognizeSelector:a2, value];

  return 0;
}

- (PHASEMappedMetaParameterDefinition)initWithValue:(double)value minimum:(double)minimum maximum:(double)maximum identifier:(NSString *)identifier
{
  [(PHASEMappedMetaParameterDefinition *)self doesNotRecognizeSelector:a2, value, minimum, maximum];

  return 0;
}

- (PHASEMappedMetaParameterDefinition)initWithValue:(double)value minimum:(double)minimum maximum:(double)maximum
{
  [(PHASEMappedMetaParameterDefinition *)self doesNotRecognizeSelector:a2, value, minimum, maximum];

  return 0;
}

- (PHASEMappedMetaParameterDefinition)initWithInputMetaParameterDefinition:(PHASENumberMetaParameterDefinition *)inputMetaParameterDefinition envelope:(PHASEEnvelope *)envelope identifier:(NSString *)identifier
{
  v8 = inputMetaParameterDefinition;
  v9 = envelope;
  v10 = identifier;
  v11 = [(PHASEMappedMetaParameterDefinition *)self initWithInputMetaParameterDefinition:v8 envelope:v9];
  v12 = v11;
  if (v11)
  {
    [(PHASEDefinition *)v11 setIdentifier:v10];
    v13 = v12;
  }

  return v12;
}

- (PHASEMappedMetaParameterDefinition)initWithInputMetaParameterDefinition:(PHASENumberMetaParameterDefinition *)inputMetaParameterDefinition envelope:(PHASEEnvelope *)envelope
{
  v7 = inputMetaParameterDefinition;
  v8 = envelope;
  v13.receiver = self;
  v13.super_class = PHASEMappedMetaParameterDefinition;
  v9 = [(PHASENumberMetaParameterDefinition *)&v13 initWithValue:0.0 minimum:-INFINITY maximum:INFINITY];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inputMetaParameterDefinition, inputMetaParameterDefinition);
    objc_storeStrong(&v10->_envelope, envelope);
    v11 = v10;
  }

  return v10;
}

@end