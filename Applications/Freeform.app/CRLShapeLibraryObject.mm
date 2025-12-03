@interface CRLShapeLibraryObject
- (CRLShapeLibraryObject)initWithDictionary:(id)dictionary;
- (id)objectForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (void)i_removeObjectForKey:(id)key;
@end

@implementation CRLShapeLibraryObject

- (CRLShapeLibraryObject)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = CRLShapeLibraryObject;
  v6 = [(CRLShapeLibraryObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
  }

  return v7;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  p_dictionary = [(CRLShapeLibraryObject *)self p_dictionary];
  v6 = [p_dictionary objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)valueForKeyPath:(id)path
{
  pathCopy = path;
  p_dictionary = [(CRLShapeLibraryObject *)self p_dictionary];
  v6 = [p_dictionary valueForKeyPath:pathCopy];

  return v6;
}

- (void)i_removeObjectForKey:(id)key
{
  keyCopy = key;
  p_dictionary = [(CRLShapeLibraryObject *)self p_dictionary];
  v6 = [p_dictionary mutableCopy];

  [(NSDictionary *)v6 removeObjectForKey:keyCopy];
  dictionary = self->_dictionary;
  self->_dictionary = v6;
}

@end