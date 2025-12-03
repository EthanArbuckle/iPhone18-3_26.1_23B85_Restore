@interface LibraryLazyResultsEnumerator
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation LibraryLazyResultsEnumerator

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  selfCopy = self;
  if (self)
  {
    enumerator = self->_enumerator;
    if (!enumerator)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = (*(selfCopy->_block + 2))();
      v12 = selfCopy->_enumerator;
      selfCopy->_enumerator = v11;

      objc_autoreleasePoolPop(v10);
      enumerator = selfCopy->_enumerator;
    }

    selfCopy = enumerator;
  }

  v13 = [(LibraryLazyResultsEnumerator *)selfCopy countByEnumeratingWithState:state objects:objects count:count];

  return v13;
}

@end