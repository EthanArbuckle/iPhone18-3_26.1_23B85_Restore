@interface PHPersonPLAdapter
- (id)newObjectWithPropertySets:(id)a3;
- (id)objectForKey:(id)a3;
@end

@implementation PHPersonPLAdapter

- (id)objectForKey:(id)a3
{
  v4 = a3;
  if ([@"uuid" isEqual:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PHPersonPLAdapter;
    v5 = [(PHObjectPLAdapter *)&v7 objectForKey:v4];
  }

  return v5;
}

- (id)newObjectWithPropertySets:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v5 = [PHPerson propertyFetchHintsForPropertySets:v4];

  v6 = [PHPerson alloc];
  v7 = [(PHObjectPLAdapter *)self photoLibrary];
  v8 = [(PHPerson *)v6 initWithFetchDictionary:self propertyHint:v5 photoLibrary:v7];

  return v8;
}

@end