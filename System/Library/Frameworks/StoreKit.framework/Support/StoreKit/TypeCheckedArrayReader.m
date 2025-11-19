@interface TypeCheckedArrayReader
- (TypeCheckedArrayReader)initWithArray:(id)a3;
- (id)enumeratorForObjectsOfClass:(Class)a3;
@end

@implementation TypeCheckedArrayReader

- (TypeCheckedArrayReader)initWithArray:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TypeCheckedArrayReader;
  v5 = [(TypeCheckedArrayReader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_array, v4);
  }

  return v6;
}

- (id)enumeratorForObjectsOfClass:(Class)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_array);
  v5 = [(TypeCheckedAbstractReader *)TypeCheckedArrayReader _predicateForKindOfClass:a3];
  v6 = [WeakRetained filteredArrayUsingPredicate:v5];
  v7 = [v6 objectEnumerator];

  return v7;
}

@end