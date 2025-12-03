@interface PHPreferences
- (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value;
- (NSString)domain;
- (id)numberForKey:(id)key defaultValue:(id)value;
- (id)preferencesValueForKey:(id)key;
- (id)stringForKey:(id)key defaultValue:(id)value;
- (int64_t)integerForKey:(id)key defaultValue:(int64_t)value;
- (unint64_t)unsignedIntegerForKey:(id)key defaultValue:(unint64_t)value;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setPreferencesValue:(id)value forKey:(id)key;
- (void)setUnsignedInteger:(unint64_t)integer forKey:(id)key;
@end

@implementation PHPreferences

- (NSString)domain
{
  domain = self->_domain;
  if (!domain)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    bundleIdentifier = [v4 bundleIdentifier];
    v6 = self->_domain;
    self->_domain = bundleIdentifier;

    domain = self->_domain;
  }

  return domain;
}

- (id)preferencesValueForKey:(id)key
{
  keyCopy = key;
  domain = [(PHPreferences *)self domain];
  v6 = [(PHPreferences *)self preferencesValueForKey:keyCopy domain:domain];

  return v6;
}

- (void)setPreferencesValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  domain = [(PHPreferences *)self domain];
  [(PHPreferences *)self setPreferencesValue:valueCopy forKey:keyCopy domain:domain];
}

- (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value
{
  v5 = [(PHPreferences *)self numberForKey:key defaultValue:0];
  v6 = v5;
  if (v5)
  {
    value = [v5 BOOLValue];
  }

  return value;
}

- (id)numberForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(PHPreferences *)self preferencesValueForKey:key];
  objc_opt_class();
  v8 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  return v8;
}

- (int64_t)integerForKey:(id)key defaultValue:(int64_t)value
{
  v5 = [(PHPreferences *)self numberForKey:key defaultValue:0];
  v6 = v5;
  if (v5)
  {
    value = [v5 integerValue];
  }

  return value;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  v7 = [NSNumber numberWithInteger:integer];
  [(PHPreferences *)self setNumber:v7 forKey:keyCopy];
}

- (unint64_t)unsignedIntegerForKey:(id)key defaultValue:(unint64_t)value
{
  v5 = [(PHPreferences *)self numberForKey:key defaultValue:0];
  v6 = v5;
  if (v5)
  {
    value = [v5 unsignedIntegerValue];
  }

  return value;
}

- (void)setUnsignedInteger:(unint64_t)integer forKey:(id)key
{
  keyCopy = key;
  v7 = [NSNumber numberWithUnsignedInteger:integer];
  [(PHPreferences *)self setNumber:v7 forKey:keyCopy];
}

- (id)stringForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(PHPreferences *)self preferencesValueForKey:key];
  objc_opt_class();
  v8 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  return v8;
}

@end