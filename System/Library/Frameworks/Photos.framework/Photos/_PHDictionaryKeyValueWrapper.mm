@interface _PHDictionaryKeyValueWrapper
- (NSSet)missingPropertyNames;
- (_PHDictionaryKeyValueWrapper)initWithFetchedPropertyNamesByEntityName:(id)name;
- (id)description;
- (id)valueForKey:(id)key;
- (void)setObjectID:(id)d dictionary:(id)dictionary;
@end

@implementation _PHDictionaryKeyValueWrapper

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:keyCopy];
  if (!v5)
  {
    fetchedPropertyNamesByEntityName = self->_fetchedPropertyNamesByEntityName;
    entity = [(NSManagedObjectID *)self->_objectID entity];
    name = [entity name];
    v9 = [(NSDictionary *)fetchedPropertyNamesByEntityName objectForKeyedSubscript:name];

    if (([v9 containsObject:keyCopy] & 1) == 0)
    {
      [(NSMutableSet *)self->_missingPropertyNames addObject:keyCopy];
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

- (void)setObjectID:(id)d dictionary:(id)dictionary
{
  objc_storeStrong(&self->_objectID, d);
  dCopy = d;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy copy];

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

- (_PHDictionaryKeyValueWrapper)initWithFetchedPropertyNamesByEntityName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = _PHDictionaryKeyValueWrapper;
  v6 = [(_PHDictionaryKeyValueWrapper *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchedPropertyNamesByEntityName, name);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    missingPropertyNames = v7->_missingPropertyNames;
    v7->_missingPropertyNames = v8;
  }

  return v7;
}

@end