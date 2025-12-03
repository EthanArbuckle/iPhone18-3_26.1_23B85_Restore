@interface NSMutableArray
- (id)crl_pop;
- (id)crlaxPopObject;
- (unint64_t)crl_insertObject:(id)object usingComparator:(id)comparator;
- (void)crl_addNonNilObject:(id)object;
- (void)crl_addObjects:(id)objects;
- (void)crl_addObjectsFromNonNilArray:(id)array;
- (void)crl_removeObjectsIdenticalToObjectsInArray:(id)array;
- (void)crl_trimObjectsFromIndex:(unint64_t)index;
- (void)crlaxAddObjectIfNotNil:(id)nil;
- (void)crlaxAddObjectIfNotNilWithAssert:(id)assert;
- (void)crlaxAddObjectsFromArrayIfNotNil:(id)nil;
- (void)crlaxAddObjectsFromArrayIfNotNilWithAssert:(id)assert;
- (void)crlaxAddObjectsInReverseOrder:(id)order;
@end

@implementation NSMutableArray

- (id)crl_pop
{
  lastObject = [(NSMutableArray *)self lastObject];
  if (lastObject)
  {
    [(NSMutableArray *)self removeLastObject];
  }

  return lastObject;
}

- (void)crl_addObjects:(id)objects
{
  objectsCopy = objects;
  v8 = &v9;
  if (objectsCopy)
  {
    v5 = objectsCopy;
    do
    {
      [(NSMutableArray *)self addObject:v5];
      v6 = v8++;
      v7 = *v6;

      v5 = v7;
    }

    while (v7);
  }
}

- (void)crl_addNonNilObject:(id)object
{
  if (object)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (void)crl_addObjectsFromNonNilArray:(id)array
{
  if (array)
  {
    [(NSMutableArray *)self addObjectsFromArray:?];
  }
}

- (void)crl_removeObjectsIdenticalToObjectsInArray:(id)array
{
  arrayCopy = array;
  v5 = arrayCopy;
  if (self == arrayCopy)
  {
    [(NSMutableArray *)self removeAllObjects];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NSMutableArray *)arrayCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [(NSMutableArray *)self indexOfObjectIdenticalTo:v10];
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (j = v11; j != 0x7FFFFFFFFFFFFFFFLL; j = [(NSMutableArray *)self indexOfObjectIdenticalTo:v10])
            {
              [(NSMutableArray *)self removeObjectAtIndex:j];
            }
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)crl_trimObjectsFromIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self count];
  if (v5 > index)
  {

    [(NSMutableArray *)self removeObjectsInRange:index, &v5[-index]];
  }
}

- (unint64_t)crl_insertObject:(id)object usingComparator:(id)comparator
{
  comparatorCopy = comparator;
  objectCopy = object;
  comparatorCopy = [(NSMutableArray *)self indexOfObject:objectCopy inSortedRange:0 options:[(NSMutableArray *)self count] usingComparator:1024, comparatorCopy];

  [(NSMutableArray *)self insertObject:objectCopy atIndex:comparatorCopy];
  return comparatorCopy;
}

- (void)crlaxAddObjectIfNotNil:(id)nil
{
  if (nil)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (void)crlaxAddObjectIfNotNilWithAssert:(id)assert
{
  assertCopy = assert;
  v12 = assertCopy;
  if (assertCopy)
  {
    [(NSMutableArray *)self addObject:assertCopy];
  }

  else if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Parameter was nil.", v6, v7, v8, v9, v10, v11))
    {
      abort();
    }
  }
}

- (void)crlaxAddObjectsFromArrayIfNotNil:(id)nil
{
  nilCopy = nil;
  v5 = nilCopy;
  if (nilCopy)
  {
    v7 = nilCopy;
    v6 = [nilCopy count];
    v5 = v7;
    if (v6)
    {
      [(NSMutableArray *)self addObjectsFromArray:v7];
      v5 = v7;
    }
  }
}

- (void)crlaxAddObjectsFromArrayIfNotNilWithAssert:(id)assert
{
  assertCopy = assert;
  v12 = assertCopy;
  if (assertCopy)
  {
    [(NSMutableArray *)self addObjectsFromArray:assertCopy];
  }

  else if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Parameter was nil.", v6, v7, v8, v9, v10, v11))
    {
      abort();
    }
  }
}

- (void)crlaxAddObjectsInReverseOrder:(id)order
{
  orderCopy = order;
  if ([orderCopy count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    reverseObjectEnumerator = [orderCopy reverseObjectEnumerator];
    v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          [(NSMutableArray *)self addObject:*(*(&v10 + 1) + 8 * v9)];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)crlaxPopObject
{
  lastObject = [(NSMutableArray *)self lastObject];
  [(NSMutableArray *)self removeLastObject];

  return lastObject;
}

@end