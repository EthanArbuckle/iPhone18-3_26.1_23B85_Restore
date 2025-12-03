@interface PHBatchFetchingArrayFetchedClass
- (PHBatchFetchingArrayFetchedClass)initWithFetchedObjectClass:(Class)class;
- (PHBatchFetchingArrayFetchedClass)initWithFetchedPropertySetClass:(Class)class;
@end

@implementation PHBatchFetchingArrayFetchedClass

- (PHBatchFetchingArrayFetchedClass)initWithFetchedPropertySetClass:(Class)class
{
  v8.receiver = self;
  v8.super_class = PHBatchFetchingArrayFetchedClass;
  v5 = [(PHBatchFetchingArrayFetchedClass *)&v8 init];
  if (v5)
  {
    if (!class)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v5 file:@"PHBatchFetchingArray.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"fetchedPropertySetClass"}];
    }

    objc_storeStrong(&v5->_fetchedPropertySetClass, class);
  }

  return v5;
}

- (PHBatchFetchingArrayFetchedClass)initWithFetchedObjectClass:(Class)class
{
  v8.receiver = self;
  v8.super_class = PHBatchFetchingArrayFetchedClass;
  v5 = [(PHBatchFetchingArrayFetchedClass *)&v8 init];
  if (v5)
  {
    if (!class)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v5 file:@"PHBatchFetchingArray.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"fetchedObjectClass"}];
    }

    objc_storeStrong(&v5->_fetchedObjectClass, class);
  }

  return v5;
}

@end