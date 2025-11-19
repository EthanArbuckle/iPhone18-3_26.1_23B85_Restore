@interface NSInflectionRuleExplicit
- (BOOL)isEqual:(id)a3;
- (NSInflectionRuleExplicit)initWithCoder:(id)a3;
- (NSInflectionRuleExplicit)initWithMorphology:(NSMorphology *)morphology;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSInflectionRuleExplicit

- (NSInflectionRuleExplicit)initWithMorphology:(NSMorphology *)morphology
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSInflectionRuleExplicit;
  v4 = [(NSInflectionRule *)&v6 _init];
  if (v4)
  {
    v4->_morphology = [(NSMorphology *)morphology copy];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSInflectionRuleExplicit;
  [(NSInflectionRuleExplicit *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = [(NSInflectionRuleExplicit *)self morphology];

  [a3 encodeObject:v4 forKey:@"NS.Morphology"];
}

- (NSInflectionRuleExplicit)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSInflectionRuleExplicit;
  v4 = [(NSInflectionRule *)&v6 _init];
  if (v4)
  {
    v4->_morphology = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.Morphology"];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSInflectionRuleExplicit *)self morphology];
  v6 = [a3 morphology];

  return [(NSMorphology *)v5 isEqual:v6];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSInflectionRuleExplicit;
  return [NSString stringWithFormat:@"%@ { morphology = %@ }", [(NSInflectionRuleExplicit *)&v3 description], [(NSInflectionRuleExplicit *)self morphology]];
}

@end