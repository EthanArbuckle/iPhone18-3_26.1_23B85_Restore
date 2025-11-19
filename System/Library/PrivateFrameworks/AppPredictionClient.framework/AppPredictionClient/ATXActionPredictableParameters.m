@interface ATXActionPredictableParameters
- (ATXActionPredictableParameters)init;
- (ATXActionPredictableParameters)initWithParameterKeys:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXActionPredictableParameters:(id)a3;
@end

@implementation ATXActionPredictableParameters

- (ATXActionPredictableParameters)init
{
  v3 = objc_opt_new();
  v4 = [(ATXActionPredictableParameters *)self initWithParameterKeys:v3];

  return v4;
}

- (ATXActionPredictableParameters)initWithParameterKeys:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXActionPredictableParameters;
  v5 = [(ATXActionPredictableParameters *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    parameterKeys = v5->_parameterKeys;
    v5->_parameterKeys = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActionPredictableParameters *)self isEqualToATXActionPredictableParameters:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXActionPredictableParameters:(id)a3
{
  v4 = [a3 parameterKeys];
  v5 = [(ATXActionPredictableParameters *)self parameterKeys];
  v6 = [v4 isEqualToSet:v5];

  return v6;
}

@end