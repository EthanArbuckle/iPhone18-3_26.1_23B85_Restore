@interface SCNActionJavaScript
+ (id)javaScriptActionWithDuration:(double)a3 script:(id)a4;
- (SCNActionJavaScript)initWithCoder:(id)a3;
- (SCNActionJavaScript)initWithString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)parameters;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCNActionJavaScript

- (SCNActionJavaScript)initWithString:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNActionJavaScript;
  v4 = [(SCNAction *)&v6 init];
  if (v4)
  {
    v4->_script = [a3 copy];
    operator new();
  }

  return 0;
}

+ (id)javaScriptActionWithDuration:(double)a3 script:(id)a4
{
  v5 = [[SCNActionJavaScript alloc] initWithString:a4];
  [(SCNAction *)v5 setDuration:a3];
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNActionJavaScript;
  [(SCNAction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SCNActionJavaScript alloc] initWithString:self->_script];
  v5 = [(SCNAction *)self caction];
  v6 = [(SCNAction *)v4 caction];
  *(v6 + 56) = *&v5->var7;
  *(v6 + 104) = v5->var14;
  *(v6 + 120) = *&v5->var16;
  *(v6 + 80) = 0;
  return v4;
}

- (id)reversedAction
{
  v2 = [(SCNAction *)self copy];

  return v2;
}

- (SCNActionJavaScript)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNActionJavaScript;
  v4 = [(SCNAction *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_script = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"script", "copy"}];
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNActionJavaScript;
  [(SCNAction *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_script forKey:@"script"];
}

- (id)parameters
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = self->_script;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

@end