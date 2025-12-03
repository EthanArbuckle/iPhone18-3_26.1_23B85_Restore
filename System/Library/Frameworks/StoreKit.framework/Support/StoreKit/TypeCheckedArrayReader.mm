@interface TypeCheckedArrayReader
- (TypeCheckedArrayReader)initWithArray:(id)array;
- (id)enumeratorForObjectsOfClass:(Class)class;
@end

@implementation TypeCheckedArrayReader

- (TypeCheckedArrayReader)initWithArray:(id)array
{
  arrayCopy = array;
  v8.receiver = self;
  v8.super_class = TypeCheckedArrayReader;
  v5 = [(TypeCheckedArrayReader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_array, arrayCopy);
  }

  return v6;
}

- (id)enumeratorForObjectsOfClass:(Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->_array);
  v5 = [(TypeCheckedAbstractReader *)TypeCheckedArrayReader _predicateForKindOfClass:class];
  v6 = [WeakRetained filteredArrayUsingPredicate:v5];
  objectEnumerator = [v6 objectEnumerator];

  return objectEnumerator;
}

@end