@interface PHPreferences
- (BOOL)BOOLForKey:(id)a3 defaultValue:(BOOL)a4;
- (NSString)domain;
- (id)numberForKey:(id)a3 defaultValue:(id)a4;
- (id)preferencesValueForKey:(id)a3;
- (id)stringForKey:(id)a3 defaultValue:(id)a4;
- (int64_t)integerForKey:(id)a3 defaultValue:(int64_t)a4;
- (unint64_t)unsignedIntegerForKey:(id)a3 defaultValue:(unint64_t)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setPreferencesValue:(id)a3 forKey:(id)a4;
- (void)setUnsignedInteger:(unint64_t)a3 forKey:(id)a4;
@end

@implementation PHPreferences

- (NSString)domain
{
  domain = self->_domain;
  if (!domain)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 bundleIdentifier];
    v6 = self->_domain;
    self->_domain = v5;

    domain = self->_domain;
  }

  return domain;
}

- (id)preferencesValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(PHPreferences *)self domain];
  v6 = [(PHPreferences *)self preferencesValueForKey:v4 domain:v5];

  return v6;
}

- (void)setPreferencesValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PHPreferences *)self domain];
  [(PHPreferences *)self setPreferencesValue:v7 forKey:v6 domain:v8];
}

- (BOOL)BOOLForKey:(id)a3 defaultValue:(BOOL)a4
{
  v5 = [(PHPreferences *)self numberForKey:a3 defaultValue:0];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (id)numberForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(PHPreferences *)self preferencesValueForKey:a3];
  objc_opt_class();
  v8 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  return v8;
}

- (int64_t)integerForKey:(id)a3 defaultValue:(int64_t)a4
{
  v5 = [(PHPreferences *)self numberForKey:a3 defaultValue:0];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 integerValue];
  }

  return a4;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [NSNumber numberWithInteger:a3];
  [(PHPreferences *)self setNumber:v7 forKey:v6];
}

- (unint64_t)unsignedIntegerForKey:(id)a3 defaultValue:(unint64_t)a4
{
  v5 = [(PHPreferences *)self numberForKey:a3 defaultValue:0];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 unsignedIntegerValue];
  }

  return a4;
}

- (void)setUnsignedInteger:(unint64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  [(PHPreferences *)self setNumber:v7 forKey:v6];
}

- (id)stringForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(PHPreferences *)self preferencesValueForKey:a3];
  objc_opt_class();
  v8 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  return v8;
}

@end