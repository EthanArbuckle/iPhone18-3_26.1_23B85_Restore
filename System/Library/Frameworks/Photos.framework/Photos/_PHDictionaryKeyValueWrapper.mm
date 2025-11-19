@interface _PHDictionaryKeyValueWrapper
- (NSSet)missingPropertyNames;
- (_PHDictionaryKeyValueWrapper)initWithFetchedPropertyNamesByEntityName:(id)a3;
- (id)description;
- (id)valueForKey:(id)a3;
- (void)setObjectID:(id)a3 dictionary:(id)a4;
@end

@implementation _PHDictionaryKeyValueWrapper

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:v4];
  if (!v5)
  {
    fetchedPropertyNamesByEntityName = self->_fetchedPropertyNamesByEntityName;
    v7 = [(NSManagedObjectID *)self->_objectID entity];
    v8 = [v7 name];
    v9 = [(NSDictionary *)fetchedPropertyNamesByEntityName objectForKeyedSubscript:v8];

    if (([v9 containsObject:v4] & 1) == 0)
    {
      [(NSMutableSet *)self->_missingPropertyNames addObject:v4];
    }
  }

  return v5;
}

- (NSSet)missingPropertyNames
{
  v3 = [(NSMutableSet *)self->_missingPropertyNames count];
  if (v3)
  {
    v3 = [(NSMutableSet *)self->_missingPropertyNames copy];
  }

  return v3;
}

- (void)setObjectID:(id)a3 dictionary:(id)a4
{
  objc_storeStrong(&self->_objectID, a3);
  v10 = a3;
  v7 = a4;
  v8 = [v7 copy];

  dictionary = self->_dictionary;
  self->_dictionary = v8;

  [(NSMutableSet *)self->_missingPropertyNames removeAllObjects];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p: dictionary:%@ missingKeys:%@>", v5, self, self->_dictionary, self->_missingPropertyNames];

  return v6;
}

- (_PHDictionaryKeyValueWrapper)initWithFetchedPropertyNamesByEntityName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _PHDictionaryKeyValueWrapper;
  v6 = [(_PHDictionaryKeyValueWrapper *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchedPropertyNamesByEntityName, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    missingPropertyNames = v7->_missingPropertyNames;
    v7->_missingPropertyNames = v8;
  }

  return v7;
}

@end