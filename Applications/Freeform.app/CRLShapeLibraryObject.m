@interface CRLShapeLibraryObject
- (CRLShapeLibraryObject)initWithDictionary:(id)a3;
- (id)objectForKey:(id)a3;
- (id)valueForKeyPath:(id)a3;
- (void)i_removeObjectForKey:(id)a3;
@end

@implementation CRLShapeLibraryObject

- (CRLShapeLibraryObject)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRLShapeLibraryObject;
  v6 = [(CRLShapeLibraryObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
  }

  return v7;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(CRLShapeLibraryObject *)self p_dictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)valueForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(CRLShapeLibraryObject *)self p_dictionary];
  v6 = [v5 valueForKeyPath:v4];

  return v6;
}

- (void)i_removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(CRLShapeLibraryObject *)self p_dictionary];
  v6 = [v5 mutableCopy];

  [(NSDictionary *)v6 removeObjectForKey:v4];
  dictionary = self->_dictionary;
  self->_dictionary = v6;
}

@end