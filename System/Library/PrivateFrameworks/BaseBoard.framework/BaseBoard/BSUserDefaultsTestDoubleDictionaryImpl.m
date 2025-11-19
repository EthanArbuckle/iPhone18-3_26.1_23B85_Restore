@interface BSUserDefaultsTestDoubleDictionaryImpl
- (BOOL)BOOLForKey:(id)a3;
- (BSUserDefaultsTestDoubleDictionaryImpl)init;
- (double)doubleForKey:(id)a3;
- (float)floatForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)dataForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (id)stringArrayForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (int64_t)integerForKey:(id)a3;
- (void)setBool:(BOOL)a3 forKey:(id)a4;
- (void)setDouble:(double)a3 forKey:(id)a4;
- (void)setFloat:(float)a3 forKey:(id)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setURL:(id)a3 forKey:(id)a4;
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

- (id)objectForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:a3];

  return v3;
}

- (id)stringForKey:(id)a3
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:a3];

  return v3;
}

- (id)arrayForKey:(id)a3
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:a3];

  return v3;
}

- (id)dictionaryForKey:(id)a3
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:a3];

  return v3;
}

- (id)dataForKey:(id)a3
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:a3];

  return v3;
}

- (id)stringArrayForKey:(id)a3
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:a3];

  return v3;
}

- (int64_t)integerForKey:(id)a3
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (float)floatForKey:(id)a3
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)doubleForKey:(id)a3
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)BOOLForKey:(id)a3
{
  v3 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)URLForKey:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [(BSUserDefaultsTestDoubleDictionaryImpl *)self objectForKey:a3];
  v5 = [v3 URLWithString:v4];

  return v5;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v7 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(BSUserDefaultsTestDoubleDictionaryImpl *)self setObject:v6 forKey:v7];
}

- (void)setFloat:(float)a3 forKey:(id)a4
{
  v8 = a4;
  *&v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [(BSUserDefaultsTestDoubleDictionaryImpl *)self setObject:v7 forKey:v8];
}

- (void)setDouble:(double)a3 forKey:(id)a4
{
  v7 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(BSUserDefaultsTestDoubleDictionaryImpl *)self setObject:v6 forKey:v7];
}

- (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [(BSUserDefaultsTestDoubleDictionaryImpl *)self setObject:v6 forKey:v7];
}

- (void)setURL:(id)a3 forKey:(id)a4
{
  v7 = a4;
  v6 = [a3 absoluteString];
  [(BSUserDefaultsTestDoubleDictionaryImpl *)self setObject:v6 forKey:v7];
}

@end