@interface SCNActionJavaScript
+ (id)javaScriptActionWithDuration:(double)duration script:(id)script;
- (SCNActionJavaScript)initWithCoder:(id)coder;
- (SCNActionJavaScript)initWithString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)parameters;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNActionJavaScript

- (SCNActionJavaScript)initWithString:(id)string
{
  v6.receiver = self;
  v6.super_class = SCNActionJavaScript;
  v4 = [(SCNAction *)&v6 init];
  if (v4)
  {
    v4->_script = [string copy];
    operator new();
  }

  return 0;
}

+ (id)javaScriptActionWithDuration:(double)duration script:(id)script
{
  v5 = [[SCNActionJavaScript alloc] initWithString:script];
  [(SCNAction *)v5 setDuration:duration];
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNActionJavaScript;
  [(SCNAction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SCNActionJavaScript alloc] initWithString:self->_script];
  caction = [(SCNAction *)self caction];
  caction2 = [(SCNAction *)v4 caction];
  *(caction2 + 56) = *&caction->var7;
  *(caction2 + 104) = caction->var14;
  *(caction2 + 120) = *&caction->var16;
  *(caction2 + 80) = 0;
  return v4;
}

- (id)reversedAction
{
  v2 = [(SCNAction *)self copy];

  return v2;
}

- (SCNActionJavaScript)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNActionJavaScript;
  v4 = [(SCNAction *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_script = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"script", "copy"}];
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SCNActionJavaScript;
  [(SCNAction *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_script forKey:@"script"];
}

- (id)parameters
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = self->_script;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

@end