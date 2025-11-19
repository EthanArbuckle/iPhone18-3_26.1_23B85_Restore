@interface PHBatchFetchingArrayFetchedClass
- (PHBatchFetchingArrayFetchedClass)initWithFetchedObjectClass:(Class)a3;
- (PHBatchFetchingArrayFetchedClass)initWithFetchedPropertySetClass:(Class)a3;
@end

@implementation PHBatchFetchingArrayFetchedClass

- (PHBatchFetchingArrayFetchedClass)initWithFetchedPropertySetClass:(Class)a3
{
  v8.receiver = self;
  v8.super_class = PHBatchFetchingArrayFetchedClass;
  v5 = [(PHBatchFetchingArrayFetchedClass *)&v8 init];
  if (v5)
  {
    if (!a3)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:v5 file:@"PHBatchFetchingArray.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"fetchedPropertySetClass"}];
    }

    objc_storeStrong(&v5->_fetchedPropertySetClass, a3);
  }

  return v5;
}

- (PHBatchFetchingArrayFetchedClass)initWithFetchedObjectClass:(Class)a3
{
  v8.receiver = self;
  v8.super_class = PHBatchFetchingArrayFetchedClass;
  v5 = [(PHBatchFetchingArrayFetchedClass *)&v8 init];
  if (v5)
  {
    if (!a3)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:v5 file:@"PHBatchFetchingArray.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"fetchedObjectClass"}];
    }

    objc_storeStrong(&v5->_fetchedObjectClass, a3);
  }

  return v5;
}

@end