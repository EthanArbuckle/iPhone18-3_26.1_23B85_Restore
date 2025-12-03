@interface PHPersonPLAdapter
- (id)newObjectWithPropertySets:(id)sets;
- (id)objectForKey:(id)key;
@end

@implementation PHPersonPLAdapter

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if ([@"uuid" isEqual:keyCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PHPersonPLAdapter;
    v5 = [(PHObjectPLAdapter *)&v7 objectForKey:keyCopy];
  }

  return v5;
}

- (id)newObjectWithPropertySets:(id)sets
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:sets];
  v5 = [PHPerson propertyFetchHintsForPropertySets:v4];

  v6 = [PHPerson alloc];
  photoLibrary = [(PHObjectPLAdapter *)self photoLibrary];
  v8 = [(PHPerson *)v6 initWithFetchDictionary:self propertyHint:v5 photoLibrary:photoLibrary];

  return v8;
}

@end