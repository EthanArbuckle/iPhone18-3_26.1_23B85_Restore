@interface WFHandoffRunRequest
+ (id)handoffRunRequestWithActionIdentifier:(id)identifier input:(id)input serializedParameters:(id)parameters processedParameters:(id)processedParameters;
- (WFHandoffRunRequest)initWithActionIdentifier:(id)identifier input:(id)input serializedParameters:(id)parameters processedParameters:(id)processedParameters;
- (WFHandoffRunRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFHandoffRunRequest

- (WFHandoffRunRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"input"];
  if ([coderCopy containsValueForKey:@"serializedParameters"])
  {
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v7, v8, v9, v10, v11, objc_opt_class(), 0];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"serializedParameters"];
  }

  else
  {
    v13 = 0;
  }

  if ([coderCopy containsValueForKey:@"processedParameters"])
  {
    v14 = +[WFParameterValueRegistry registeredValueClasses];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"processedParameters"];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(WFHandoffRunRequest *)self initWithActionIdentifier:v5 input:v6 serializedParameters:v13 processedParameters:v15];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionIdentifier = [(WFHandoffRunRequest *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  input = [(WFHandoffRunRequest *)self input];
  [coderCopy encodeObject:input forKey:@"input"];

  serializedParameters = [(WFHandoffRunRequest *)self serializedParameters];
  [coderCopy encodeObject:serializedParameters forKey:@"serializedParameters"];

  processedParameters = [(WFHandoffRunRequest *)self processedParameters];
  [coderCopy encodeObject:processedParameters forKey:@"processedParameters"];
}

- (WFHandoffRunRequest)initWithActionIdentifier:(id)identifier input:(id)input serializedParameters:(id)parameters processedParameters:(id)processedParameters
{
  identifierCopy = identifier;
  inputCopy = input;
  parametersCopy = parameters;
  processedParametersCopy = processedParameters;
  if (identifierCopy && (v22.receiver = self, v22.super_class = WFHandoffRunRequest, (self = [(WFHandoffRunRequest *)&v22 init]) != 0))
  {
    v14 = [identifierCopy copy];
    actionIdentifier = self->_actionIdentifier;
    self->_actionIdentifier = v14;

    v16 = [parametersCopy copy];
    serializedParameters = self->_serializedParameters;
    self->_serializedParameters = v16;

    v18 = [processedParametersCopy copy];
    processedParameters = self->_processedParameters;
    self->_processedParameters = v18;

    objc_storeStrong(&self->_input, input);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)handoffRunRequestWithActionIdentifier:(id)identifier input:(id)input serializedParameters:(id)parameters processedParameters:(id)processedParameters
{
  processedParametersCopy = processedParameters;
  parametersCopy = parameters;
  inputCopy = input;
  identifierCopy = identifier;
  v14 = [[self alloc] initWithActionIdentifier:identifierCopy input:inputCopy serializedParameters:parametersCopy processedParameters:processedParametersCopy];

  return v14;
}

@end