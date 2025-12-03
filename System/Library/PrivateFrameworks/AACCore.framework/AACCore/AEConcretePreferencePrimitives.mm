@interface AEConcretePreferencePrimitives
- (AEConcretePreferencePrimitives)initWithDomain:(id)domain;
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation AEConcretePreferencePrimitives

- (AEConcretePreferencePrimitives)initWithDomain:(id)domain
{
  domainCopy = domain;
  v9.receiver = self;
  v9.super_class = AEConcretePreferencePrimitives;
  v5 = [(AEConcretePreferencePrimitives *)&v9 init];
  if (v5)
  {
    v6 = [domainCopy copy];
    domain = v5->_domain;
    v5->_domain = v6;
  }

  return v5;
}

- (id)objectForKey:(id)key
{
  if (self)
  {
    domain = self->_domain;
  }

  else
  {
    domain = 0;
  }

  v4 = CFPreferencesCopyValue(key, domain, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  return v4;
}

- (void)setObject:(id)object forKey:(id)key
{
  if (self)
  {
    domain = self->_domain;
  }

  else
  {
    domain = 0;
  }

  CFPreferencesSetValue(key, object, domain, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
}

@end