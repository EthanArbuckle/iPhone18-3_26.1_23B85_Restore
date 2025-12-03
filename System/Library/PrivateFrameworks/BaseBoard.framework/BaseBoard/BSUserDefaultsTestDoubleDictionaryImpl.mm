@interface BSUserDefaultsTestDoubleDictionaryImpl
- (BOOL)BOOLForKey:(id)key;
- (BSUserDefaultsTestDoubleDictionaryImpl)init;
- (double)doubleForKey:(id)key;
- (float)floatForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)dataForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)stringArrayForKey:(id)key;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setFloat:(float)float forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setURL:(id)l forKey:(id)key;
@end

@implementation BSUserDefaultsTestDoubleDictionaryImpl

- (BSUserDefaultsTestDoubleDictionaryImpl)init
{
  v6.receiver = self;
  v6.super_class = BSUserDefaultsTestDoubleDictionaryImpl;
  v2 = [(BSUserDefaultsTestDoubleDictionaryImpl *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;
  }

  return v2;
}

- (id)objectForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];

  return v3;
}

- (id)stringForKey:(id)key
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:key];

  return v3;
}

- (id)arrayForKey:(id)key
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:key];

  return v3;
}

- (id)dictionaryForKey:(id)key
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:key];

  return v3;
}

- (id)dataForKey:(id)key
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:key];

  return v3;
}

- (id)stringArrayForKey:(id)key
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:key];

  return v3;
}

- (int64_t)integerForKey:(id)key
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:key];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (float)floatForKey:(id)key
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:key];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)doubleForKey:(id)key
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:key];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)BOOLForKey:(id)key
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)URLForKey:(id)key
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:key];
  v5 = [v3 URLWithString:v4];

  return v5;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:integer];
  [(BSUserDefaultsTestDoubleDictionaryImpl *)self setObject:v6 forKey:keyCopy];
}

- (void)setFloat:(float)float forKey:(id)key
{
  keyCopy = key;
  *&v6 = float;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [(BSUserDefaultsTestDoubleDictionaryImpl *)self setObject:v7 forKey:keyCopy];
}

- (void)setDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:double];
  [(BSUserDefaultsTestDoubleDictionaryImpl *)self setObject:v6 forKey:keyCopy];
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  keyCopy = key;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:boolCopy];
  [(BSUserDefaultsTestDoubleDictionaryImpl *)self setObject:v6 forKey:keyCopy];
}

- (void)setURL:(id)l forKey:(id)key
{
  keyCopy = key;
  absoluteString = [l absoluteString];
  [(BSUserDefaultsTestDoubleDictionaryImpl *)self setObject:absoluteString forKey:keyCopy];
}

@end