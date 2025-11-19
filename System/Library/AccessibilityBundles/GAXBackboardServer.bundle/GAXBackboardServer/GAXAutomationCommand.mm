@interface GAXAutomationCommand
+ (id)command:(id)a3;
+ (id)command:(id)a3 parameters:(id)a4;
+ (id)commandWithData:(id)a3;
- (GAXAutomationCommand)initWithCoder:(id)a3;
- (id)description;
- (void)addParameter:(id)a3 forKey:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GAXAutomationCommand

+ (id)command:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GAXAutomationCommand);
  [(GAXAutomationCommand *)v4 setCommand:v3];

  return v4;
}

+ (id)command:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = [a1 command:a3];
  [v7 setParameters:v6];

  return v7;
}

- (id)description
{
  v3 = [(GAXAutomationCommand *)self command];
  v4 = [(GAXAutomationCommand *)self result];
  v5 = [(GAXAutomationCommand *)self errorMessage];
  v6 = [(GAXAutomationCommand *)self parameters];
  v7 = [NSString stringWithFormat:@"GAX-UIA<%p>. Command:%@ Result:%@ Error:%@ Parameters:%@", self, v3, v4, v5, v6];

  return v7;
}

- (void)addParameter:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(GAXAutomationCommand *)self parameters];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
  }

  [v8 setObject:v9 forKeyedSubscript:v6];
  [(GAXAutomationCommand *)self setParameters:v8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GAXAutomationCommand *)self command];
  [v4 encodeObject:v5 forKey:@"command"];

  v6 = [(GAXAutomationCommand *)self result];
  [v4 encodeObject:v6 forKey:@"result"];

  v7 = [(GAXAutomationCommand *)self errorMessage];
  [v4 encodeObject:v7 forKey:@"error"];

  v8 = [(GAXAutomationCommand *)self parameters];
  [v4 encodeObject:v8 forKey:@"parameters"];
}

- (GAXAutomationCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GAXAutomationCommand;
  v5 = [(GAXAutomationCommand *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"command"];
    [(GAXAutomationCommand *)v5 setCommand:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    [(GAXAutomationCommand *)v5 setErrorMessage:v7];

    v8 = [v4 decodePropertyListForKey:@"result"];
    [(GAXAutomationCommand *)v5 setResult:v8];

    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v9, v10, objc_opt_class(), 0];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"parameters"];
    [(GAXAutomationCommand *)v5 setParameters:v12];
  }

  return v5;
}

+ (id)commandWithData:(id)a3
{
  v3 = a3;
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

@end