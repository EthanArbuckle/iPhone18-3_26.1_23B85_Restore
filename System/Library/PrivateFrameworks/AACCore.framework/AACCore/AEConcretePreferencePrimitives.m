@interface AEConcretePreferencePrimitives
- (AEConcretePreferencePrimitives)initWithDomain:(id)a3;
- (id)objectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation AEConcretePreferencePrimitives

- (AEConcretePreferencePrimitives)initWithDomain:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AEConcretePreferencePrimitives;
  v5 = [(AEConcretePreferencePrimitives *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    domain = v5->_domain;
    v5->_domain = v6;
  }

  return v5;
}

- (id)objectForKey:(id)a3
{
  if (self)
  {
    domain = self->_domain;
  }

  else
  {
    domain = 0;
  }

  v4 = CFPreferencesCopyValue(a3, domain, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  return v4;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  if (self)
  {
    domain = self->_domain;
  }

  else
  {
    domain = 0;
  }

  CFPreferencesSetValue(a4, a3, domain, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
}

@end