@interface GAXAutomationCommand
+ (id)command:(id)command;
+ (id)command:(id)command parameters:(id)parameters;
+ (id)commandWithData:(id)data;
- (GAXAutomationCommand)initWithCoder:(id)coder;
- (id)description;
- (void)addParameter:(id)parameter forKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GAXAutomationCommand

+ (id)command:(id)command
{
  commandCopy = command;
  v4 = objc_alloc_init(GAXAutomationCommand);
  [(GAXAutomationCommand *)v4 setCommand:commandCopy];

  return v4;
}

+ (id)command:(id)command parameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [self command:command];
  [v7 setParameters:parametersCopy];

  return v7;
}

- (id)description
{
  command = [(GAXAutomationCommand *)self command];
  result = [(GAXAutomationCommand *)self result];
  errorMessage = [(GAXAutomationCommand *)self errorMessage];
  parameters = [(GAXAutomationCommand *)self parameters];
  v7 = [NSString stringWithFormat:@"GAX-UIA<%p>. Command:%@ Result:%@ Error:%@ Parameters:%@", self, command, result, errorMessage, parameters];

  return v7;
}

- (void)addParameter:(id)parameter forKey:(id)key
{
  parameterCopy = parameter;
  keyCopy = key;
  parameters = [(GAXAutomationCommand *)self parameters];
  v8 = [parameters mutableCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
  }

  [v8 setObject:parameterCopy forKeyedSubscript:keyCopy];
  [(GAXAutomationCommand *)self setParameters:v8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  command = [(GAXAutomationCommand *)self command];
  [coderCopy encodeObject:command forKey:@"command"];

  result = [(GAXAutomationCommand *)self result];
  [coderCopy encodeObject:result forKey:@"result"];

  errorMessage = [(GAXAutomationCommand *)self errorMessage];
  [coderCopy encodeObject:errorMessage forKey:@"error"];

  parameters = [(GAXAutomationCommand *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];
}

- (GAXAutomationCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = GAXAutomationCommand;
  v5 = [(GAXAutomationCommand *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"command"];
    [(GAXAutomationCommand *)v5 setCommand:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    [(GAXAutomationCommand *)v5 setErrorMessage:v7];

    v8 = [coderCopy decodePropertyListForKey:@"result"];
    [(GAXAutomationCommand *)v5 setResult:v8];

    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v9, v10, objc_opt_class(), 0];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"parameters"];
    [(GAXAutomationCommand *)v5 setParameters:v12];
  }

  return v5;
}

+ (id)commandWithData:(id)data
{
  dataCopy = data;
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:0];

  return v4;
}

@end