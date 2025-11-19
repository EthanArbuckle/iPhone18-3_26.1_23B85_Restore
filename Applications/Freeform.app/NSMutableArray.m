@interface NSMutableArray
- (id)crl_pop;
- (id)crlaxPopObject;
- (unint64_t)crl_insertObject:(id)a3 usingComparator:(id)a4;
- (void)crl_addNonNilObject:(id)a3;
- (void)crl_addObjects:(id)a3;
- (void)crl_addObjectsFromNonNilArray:(id)a3;
- (void)crl_removeObjectsIdenticalToObjectsInArray:(id)a3;
- (void)crl_trimObjectsFromIndex:(unint64_t)a3;
- (void)crlaxAddObjectIfNotNil:(id)a3;
- (void)crlaxAddObjectIfNotNilWithAssert:(id)a3;
- (void)crlaxAddObjectsFromArrayIfNotNil:(id)a3;
- (void)crlaxAddObjectsFromArrayIfNotNilWithAssert:(id)a3;
- (void)crlaxAddObjectsInReverseOrder:(id)a3;
@end

@implementation NSMutableArray

- (id)crl_pop
{
  v3 = [(NSMutableArray *)self lastObject];
  if (v3)
  {
    [(NSMutableArray *)self removeLastObject];
  }

  return v3;
}

- (void)crl_addObjects:(id)a3
{
  v4 = a3;
  v8 = &v9;
  if (v4)
  {
    v5 = v4;
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

- (void)crl_addNonNilObject:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (void)crl_addObjectsFromNonNilArray:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self addObjectsFromArray:?];
  }
}

- (void)crl_removeObjectsIdenticalToObjectsInArray:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    [(NSMutableArray *)self removeAllObjects];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)crl_trimObjectsFromIndex:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self count];
  if (v5 > a3)
  {

    [(NSMutableArray *)self removeObjectsInRange:a3, &v5[-a3]];
  }
}

- (unint64_t)crl_insertObject:(id)a3 usingComparator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NSMutableArray *)self indexOfObject:v7 inSortedRange:0 options:[(NSMutableArray *)self count] usingComparator:1024, v6];

  [(NSMutableArray *)self insertObject:v7 atIndex:v8];
  return v8;
}

- (void)crlaxAddObjectIfNotNil:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (void)crlaxAddObjectIfNotNilWithAssert:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    [(NSMutableArray *)self addObject:v4];
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

- (void)crlaxAddObjectsFromArrayIfNotNil:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = [v4 count];
    v5 = v7;
    if (v6)
    {
      [(NSMutableArray *)self addObjectsFromArray:v7];
      v5 = v7;
    }
  }
}

- (void)crlaxAddObjectsFromArrayIfNotNilWithAssert:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    [(NSMutableArray *)self addObjectsFromArray:v4];
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

- (void)crlaxAddObjectsInReverseOrder:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 reverseObjectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v5);
          }

          [(NSMutableArray *)self addObject:*(*(&v10 + 1) + 8 * v9)];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)crlaxPopObject
{
  v3 = [(NSMutableArray *)self lastObject];
  [(NSMutableArray *)self removeLastObject];

  return v3;
}

@end