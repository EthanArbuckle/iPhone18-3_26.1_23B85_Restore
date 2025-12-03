@interface AFBDictionaryEnumerator
- (AFBDictionaryEnumerator)initWithDictionary:(id)dictionary;
- (id)nextObject;
@end

@implementation AFBDictionaryEnumerator

- (AFBDictionaryEnumerator)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = AFBDictionaryEnumerator;
  v6 = [(AFBDictionaryEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dict, dictionary);
    v7->_index = 0;
  }

  return v7;
}

- (id)nextObject
{
  index = self->_index;
  if (index < [(AFBDictionary *)self->_dict count])
  {
    dict = self->_dict;
    ++self->_index;
    v4 = [AFBDictionary keyAtIndex:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end