@interface WFHandoffRunRequest
+ (id)handoffRunRequestWithActionIdentifier:(id)a3 input:(id)a4 serializedParameters:(id)a5 processedParameters:(id)a6;
- (WFHandoffRunRequest)initWithActionIdentifier:(id)a3 input:(id)a4 serializedParameters:(id)a5 processedParameters:(id)a6;
- (WFHandoffRunRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFHandoffRunRequest

- (WFHandoffRunRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"input"];
  if ([v4 containsValueForKey:@"serializedParameters"])
  {
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v7, v8, v9, v10, v11, objc_opt_class(), 0];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"serializedParameters"];
  }

  else
  {
    v13 = 0;
  }

  if ([v4 containsValueForKey:@"processedParameters"])
  {
    v14 = +[WFParameterValueRegistry registeredValueClasses];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"processedParameters"];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(WFHandoffRunRequest *)self initWithActionIdentifier:v5 input:v6 serializedParameters:v13 processedParameters:v15];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFHandoffRunRequest *)self actionIdentifier];
  [v4 encodeObject:v5 forKey:@"actionIdentifier"];

  v6 = [(WFHandoffRunRequest *)self input];
  [v4 encodeObject:v6 forKey:@"input"];

  v7 = [(WFHandoffRunRequest *)self serializedParameters];
  [v4 encodeObject:v7 forKey:@"serializedParameters"];

  v8 = [(WFHandoffRunRequest *)self processedParameters];
  [v4 encodeObject:v8 forKey:@"processedParameters"];
}

- (WFHandoffRunRequest)initWithActionIdentifier:(id)a3 input:(id)a4 serializedParameters:(id)a5 processedParameters:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 && (v22.receiver = self, v22.super_class = WFHandoffRunRequest, (self = [(WFHandoffRunRequest *)&v22 init]) != 0))
  {
    v14 = [v10 copy];
    actionIdentifier = self->_actionIdentifier;
    self->_actionIdentifier = v14;

    v16 = [v12 copy];
    serializedParameters = self->_serializedParameters;
    self->_serializedParameters = v16;

    v18 = [v13 copy];
    processedParameters = self->_processedParameters;
    self->_processedParameters = v18;

    objc_storeStrong(&self->_input, a4);
    self = self;
    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)handoffRunRequestWithActionIdentifier:(id)a3 input:(id)a4 serializedParameters:(id)a5 processedParameters:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithActionIdentifier:v13 input:v12 serializedParameters:v11 processedParameters:v10];

  return v14;
}

@end