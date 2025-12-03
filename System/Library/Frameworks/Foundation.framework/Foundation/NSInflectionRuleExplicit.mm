@interface NSInflectionRuleExplicit
- (BOOL)isEqual:(id)equal;
- (NSInflectionRuleExplicit)initWithCoder:(id)coder;
- (NSInflectionRuleExplicit)initWithMorphology:(NSMorphology *)morphology;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSInflectionRuleExplicit

- (NSInflectionRuleExplicit)initWithMorphology:(NSMorphology *)morphology
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSInflectionRuleExplicit;
  _init = [(NSInflectionRule *)&v6 _init];
  if (_init)
  {
    _init->_morphology = [(NSMorphology *)morphology copy];
  }

  return _init;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSInflectionRuleExplicit;
  [(NSInflectionRuleExplicit *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  morphology = [(NSInflectionRuleExplicit *)self morphology];

  [coder encodeObject:morphology forKey:@"NS.Morphology"];
}

- (NSInflectionRuleExplicit)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSInflectionRuleExplicit;
  _init = [(NSInflectionRule *)&v6 _init];
  if (_init)
  {
    _init->_morphology = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.Morphology"];
  }

  return _init;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  morphology = [(NSInflectionRuleExplicit *)self morphology];
  morphology2 = [equal morphology];

  return [(NSMorphology *)morphology isEqual:morphology2];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSInflectionRuleExplicit;
  return [NSString stringWithFormat:@"%@ { morphology = %@ }", [(NSInflectionRuleExplicit *)&v3 description], [(NSInflectionRuleExplicit *)self morphology]];
}

@end