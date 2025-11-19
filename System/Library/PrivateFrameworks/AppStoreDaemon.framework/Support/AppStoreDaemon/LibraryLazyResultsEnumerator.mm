@interface LibraryLazyResultsEnumerator
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation LibraryLazyResultsEnumerator

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = self;
  if (self)
  {
    enumerator = self->_enumerator;
    if (!enumerator)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = (*(v8->_block + 2))();
      v12 = v8->_enumerator;
      v8->_enumerator = v11;

      objc_autoreleasePoolPop(v10);
      enumerator = v8->_enumerator;
    }

    v8 = enumerator;
  }

  v13 = [(LibraryLazyResultsEnumerator *)v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v13;
}

@end