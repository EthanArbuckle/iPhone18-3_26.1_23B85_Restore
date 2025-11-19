@interface AFBDictionaryEnumerator
- (AFBDictionaryEnumerator)initWithDictionary:(id)a3;
- (id)nextObject;
@end

@implementation AFBDictionaryEnumerator

- (AFBDictionaryEnumerator)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AFBDictionaryEnumerator;
  v6 = [(AFBDictionaryEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dict, a3);
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