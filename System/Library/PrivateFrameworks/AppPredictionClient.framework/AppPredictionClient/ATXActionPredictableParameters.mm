@interface ATXActionPredictableParameters
- (ATXActionPredictableParameters)init;
- (ATXActionPredictableParameters)initWithParameterKeys:(id)keys;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXActionPredictableParameters:(id)parameters;
@end

@implementation ATXActionPredictableParameters

- (ATXActionPredictableParameters)init
{
  v3 = objc_opt_new();
  v4 = [(ATXActionPredictableParameters *)self initWithParameterKeys:v3];

  return v4;
}

- (ATXActionPredictableParameters)initWithParameterKeys:(id)keys
{
  keysCopy = keys;
  v9.receiver = self;
  v9.super_class = ATXActionPredictableParameters;
  v5 = [(ATXActionPredictableParameters *)&v9 init];
  if (v5)
  {
    v6 = [keysCopy copy];
    parameterKeys = v5->_parameterKeys;
    v5->_parameterKeys = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActionPredictableParameters *)self isEqualToATXActionPredictableParameters:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXActionPredictableParameters:(id)parameters
{
  parameterKeys = [parameters parameterKeys];
  parameterKeys2 = [(ATXActionPredictableParameters *)self parameterKeys];
  v6 = [parameterKeys isEqualToSet:parameterKeys2];

  return v6;
}

@end