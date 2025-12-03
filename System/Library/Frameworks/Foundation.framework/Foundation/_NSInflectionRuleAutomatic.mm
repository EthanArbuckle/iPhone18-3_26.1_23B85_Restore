@interface _NSInflectionRuleAutomatic
- (_NSInflectionRuleAutomatic)initWithCoder:(id)coder;
- (id)description;
@end

@implementation _NSInflectionRuleAutomatic

- (_NSInflectionRuleAutomatic)initWithCoder:(id)coder
{
  v3 = +[NSInflectionRule automaticRule];

  return v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSInflectionRuleAutomatic;
  return [NSString stringWithFormat:@"%@ (automatic inflection rule)", [(_NSInflectionRuleAutomatic *)&v3 description]];
}

@end