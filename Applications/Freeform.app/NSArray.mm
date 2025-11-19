@interface NSArray
+ (id)crl_arrayByUnioningArray:(id)a3 withArray:(id)a4;
+ (id)crl_arrayWithCGFloats:(const double *)a3 count:(unint64_t)a4;
+ (id)crl_arrayWithInts:(const int *)a3 count:(unint64_t)a4;
+ (id)crl_arrayWithNonNilObject:(id)a3;
+ (id)crl_arrayWithUIntegers:(const unint64_t *)a3 count:(unint64_t)a4;
- (BOOL)crl_allObjectsPassTest:(id)a3;
- (BOOL)crl_conformsToAnyUTType:(id)a3;
- (BOOL)crl_containsObjectPassingTest:(id)a3;
- (BOOL)crl_enumerateAllBoardItemsNestedRecursivelyUsingBlock:(id)a3;
- (BOOL)crl_isHomogeneousForClass:(Class)a3;
- (id)crl_UTTypes;
- (id)crl_arrayByAddingNonContainedObjectsFromArray:(id)a3;
- (id)crl_arrayByFlattening;
- (id)crl_arrayByMappingObjectsUsingBlock:(id)a3;
- (id)crl_arrayByRemovingFirstObject;
- (id)crl_arrayByRemovingObjectsAtIndexes:(id)a3;
- (id)crl_arrayByRemovingObjectsIdenticalToObjectsInArray:(id)a3;
- (id)crl_arrayByReversingOrder;
- (id)crl_arrayByTransformingWithBlock:(id)a3;
- (id)crl_arrayOfObjectsPassingTest:(id)a3;
- (id)crl_arrayWithObjectsInHashTable:(id)a3;
- (id)crl_arrayWithObjectsInSet:(id)a3;
- (id)crl_firstObjectPassingTest:(id)a3;
- (id)crl_indexesOfObjects:(id)a3;
- (id)crl_initWithCGFloats:(const double *)a3 count:(unint64_t)a4;
- (id)crl_initWithInts:(const int *)a3 count:(unint64_t)a4;
- (id)crl_initWithUIntegers:(const unint64_t *)a3 count:(unint64_t)a4;
- (id)crl_intersectionWithArray:(id)a3;
- (id)crl_objectPriorToObject:(id)a3;
- (id)crl_onlyObject;
- (id)crl_rangeCheckedObjectAtIndex:(unint64_t)a3;
- (id)crlaxExtractElementsOfType:(Class)a3;
- (id)crlaxFirstElementOfType:(Class)a3;
- (id)crlaxObjectAtIndexOrNil:(unint64_t)a3;
- (id)crlaxObjectsPassingTest:(id)a3;
- (unint64_t)crl_indexOfSmallestObject;
- (void)crl_enumerateSnapshotObjectsUsingBlock:(id)a3;
- (void)crlaxPerformBlock:(id)a3 onElementsOfType:(Class)a4;
@end

@implementation NSArray

- (id)crl_initWithCGFloats:(const double *)a3 count:(unint64_t)a4
{
  if (a4 < 0x11)
  {
    if (!a4)
    {
      return [(NSArray *)self initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [NSNumber numberWithDouble:a3[v8]];
      ++v8;
    }

    while (a4 != v8);
    v9 = [(NSArray *)self initWithObjects:v7 count:a4];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(a4, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [(NSArray *)self initWithObjects:0 count:a4];
}

+ (id)crl_arrayWithCGFloats:(const double *)a3 count:(unint64_t)a4
{
  v4 = [[a1 alloc] crl_initWithCGFloats:a3 count:a4];

  return v4;
}

- (id)crl_initWithInts:(const int *)a3 count:(unint64_t)a4
{
  if (a4 < 0x11)
  {
    if (!a4)
    {
      return [(NSArray *)self initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [NSNumber numberWithInt:a3[v8]];
      ++v8;
    }

    while (a4 != v8);
    v9 = [(NSArray *)self initWithObjects:v7 count:a4];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(a4, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [(NSArray *)self initWithObjects:0 count:a4];
}

+ (id)crl_arrayWithInts:(const int *)a3 count:(unint64_t)a4
{
  v4 = [[a1 alloc] crl_initWithInts:a3 count:a4];

  return v4;
}

+ (id)crl_arrayByUnioningArray:(id)a3 withArray:(id)a4
{
  if (a3)
  {
    return [a3 crl_arrayByAddingNonContainedObjectsFromArray:a4];
  }

  else
  {
    return a4;
  }
}

- (id)crl_initWithUIntegers:(const unint64_t *)a3 count:(unint64_t)a4
{
  if (a4 < 0x11)
  {
    if (!a4)
    {
      return [(NSArray *)self initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [NSNumber numberWithInteger:a3[v8]];
      ++v8;
    }

    while (a4 != v8);
    v9 = [(NSArray *)self initWithObjects:v7 count:a4];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(a4, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [(NSArray *)self initWithObjects:0 count:a4];
}

+ (id)crl_arrayWithUIntegers:(const unint64_t *)a3 count:(unint64_t)a4
{
  v4 = [[a1 alloc] crl_initWithUIntegers:a3 count:a4];

  return v4;
}

- (id)crl_rangeCheckedObjectAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self count]<= a3)
  {
    return 0;
  }

  return [(NSArray *)self objectAtIndex:a3];
}

- (id)crl_objectPriorToObject:(id)a3
{
  v4 = [(NSArray *)self indexOfObject:a3];
  if (!v4 || v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(NSArray *)self objectAtIndex:v4 - 1];
}

- (unint64_t)crl_indexOfSmallestObject
{
  v3 = [(NSArray *)self count];
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v8 = [(NSArray *)self objectAtIndex:v5];
    v9 = v8;
    if (!v6 || [v8 compare:v6] == -1)
    {
      v6 = v9;
      v7 = v5;
    }

    ++v5;
  }

  while (v4 != v5);
  return v7;
}

- (id)crl_indexesOfObjects:(id)a3
{
  v5 = +[NSMutableIndexSet indexSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [(NSArray *)self indexOfObject:*(*(&v12 + 1) + 8 * v9)];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addIndex:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)crl_arrayWithObjectsInSet:(id)a3
{
  v5 = +[NSMutableArray array];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(self);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([a3 containsObject:v10])
          {
            [v5 addObject:v10];
          }
        }

        v7 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (id)crl_arrayWithObjectsInHashTable:(id)a3
{
  v5 = +[NSMutableArray array];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(self);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([a3 containsObject:v10])
          {
            [v5 addObject:v10];
          }
        }

        v7 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (id)crl_intersectionWithArray:(id)a3
{
  v5 = +[NSMutableArray array];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(self);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([a3 indexOfObject:v10] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addObject:v10];
          }
        }

        v7 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (id)crl_arrayByRemovingObjectsIdenticalToObjectsInArray:(id)a3
{
  v5 = [a3 count];
  if (!v5)
  {
    return self;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  p_super = self;
  do
  {
    v10 = [a3 objectAtIndex:v7];
    v11 = [(NSArray *)p_super indexOfObjectIdenticalTo:v10];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v11; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSArray *)p_super indexOfObjectIdenticalTo:v10])
      {
        if (!v8)
        {
          v8 = [NSMutableArray arrayWithArray:self];
          p_super = &v8->super;
        }

        [(NSMutableArray *)v8 removeObjectAtIndex:i];
      }
    }

    ++v7;
  }

  while (v7 != v6);
  return p_super;
}

- (id)crl_arrayByAddingNonContainedObjectsFromArray:(id)a3
{
  if (a3 && (v5 = [a3 count]) != 0)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [a3 objectAtIndex:v8];
      if (![(NSArray *)self containsObject:v9])
      {
        if (!v7)
        {
          v7 = [NSMutableArray arrayWithCapacity:&v6[[(NSArray *)self count]]];
          [(NSMutableArray *)v7 addObjectsFromArray:self];
        }

        [(NSMutableArray *)v7 addObject:v9];
      }

      ++v8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return v7;
  }

  else
  {
    return self;
  }
}

- (id)crl_arrayByReversingOrder
{
  v3 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSArray *)self reverseObjectEnumerator];
  v5 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableArray *)v3 addObject:*(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSEnumerator *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)crl_arrayByRemovingFirstObject
{
  if (![(NSArray *)self count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131EAF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131EB04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131EBCC();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Can't remove the first object of an empty array!", v6, v7, v8, v9, v10, v11, v12, "[NSArray(CRLAdditions) crl_arrayByRemovingFirstObject]");
    v13 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[NSArray(CRLAdditions) crl_arrayByRemovingFirstObject]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSArray_CRLAdditions.m"] lineNumber:239 isFatal:1 description:"Can't remove the first object of an empty array!"];
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v13, v14);
    abort();
  }

  v3 = [NSMutableArray arrayWithArray:self];
  [(NSMutableArray *)v3 removeObjectAtIndex:0];
  v4 = objc_opt_class();

  return [v4 arrayWithArray:v3];
}

- (id)crl_arrayByRemovingObjectsAtIndexes:(id)a3
{
  if (![a3 count])
  {
    return self;
  }

  v5 = [(NSArray *)self mutableCopy];
  [v5 removeObjectsAtIndexes:a3];
  v6 = [NSArray arrayWithArray:v5];

  return v6;
}

- (void)crl_enumerateSnapshotObjectsUsingBlock:(id)a3
{
  v4 = [(NSArray *)self copy];
  [v4 enumerateObjectsUsingBlock:a3];
}

- (id)crl_firstObjectPassingTest:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSArray *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(self);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ((*(a3 + 2))(a3, v9))
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        goto LABEL_4;
      }

      return v9;
    }
  }
}

- (BOOL)crl_containsObjectPassingTest:(id)a3
{
  if (a3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSArray *)self countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(self);
          }

          if ((*(a3 + 2))(a3, *(*(&v10 + 1) + 8 * i)))
          {
            LOBYTE(v5) = 1;
            return v5;
          }
        }

        v6 = [(NSArray *)self countByEnumeratingWithState:&v10 objects:v14 count:16];
        LOBYTE(v5) = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)crl_isHomogeneousForClass:(Class)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSArray *)self countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(self);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)self countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (BOOL)crl_allObjectsPassTest:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(self);
      }

      v9 = (*(a3 + 2))(a3, *(*(&v11 + 1) + 8 * v8));
      if (!v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (id)crl_arrayOfObjectsPassingTest:(id)a3
{
  if (a3)
  {
    v4 = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10015AE44;
    v9[3] = &unk_101840750;
    v9[4] = a3;
    v5 = [(NSArray *)self indexesOfObjectsPassingTest:v9];
    if (!v5)
    {
      return +[NSArray array];
    }

    v6 = v5;
    if (![(NSIndexSet *)v5 count])
    {
      return +[NSArray array];
    }

    if ([(NSIndexSet *)v6 containsIndexesInRange:0, [(NSArray *)v4 count]])
    {
      return v4;
    }

    return [(NSArray *)v4 objectsAtIndexes:v6];
  }

  return +[NSArray array];
}

- (id)crl_arrayByTransformingWithBlock:(id)a3
{
  v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015AEFC;
  v7[3] = &unk_101840778;
  v7[4] = v5;
  v7[5] = a3;
  [(NSArray *)self enumerateObjectsUsingBlock:v7];
  return v5;
}

- (id)crl_arrayByMappingObjectsUsingBlock:(id)a3
{
  v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(NSArray *)self countByEnumeratingWithState:&v18 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(self);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = (*(a3 + 2))(a3, v10);
        if (v11)
        {
          [(NSMutableArray *)v5 addObject:v11];
        }

        else
        {
          v12 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10131EC50();
          }

          v13 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v23 = v12;
            v24 = 2082;
            v25 = "[NSArray(CRLAdditions) crl_arrayByMappingObjectsUsingBlock:]";
            v26 = 2082;
            v27 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSArray_CRLAdditions.m";
            v28 = 1024;
            v29 = 370;
            v30 = 2112;
            v31 = v10;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Block returned a nil object for %@.", buf, 0x2Cu);
            if (qword_101AD5A10 != -1)
            {
              sub_10131EC78();
            }
          }

          v14 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v15 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v23 = v12;
            v24 = 2114;
            v25 = v15;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[NSArray(CRLAdditions) crl_arrayByMappingObjectsUsingBlock:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSArray_CRLAdditions.m"] lineNumber:370 isFatal:0 description:"Block returned a nil object for %@.", v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v16 = [(NSArray *)self countByEnumeratingWithState:&v18 objects:v32 count:16];
      v7 = v16;
    }

    while (v16);
  }

  return [(NSMutableArray *)v5 copy];
}

- (id)crl_arrayByFlattening
{
  v3 = +[NSMutableArray array];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_10015B398;
  v6[4] = sub_10015B3A8;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10015B3B4;
  v5[3] = &unk_1018407E0;
  v5[4] = v6;
  v6[5] = v5;
  sub_10015B3B4(v5, self, v3);
  _Block_object_dispose(v6, 8);
  return v3;
}

- (id)crl_onlyObject
{
  if ([(NSArray *)self count]>= 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131ECA0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131ECB4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131EBCC();
    }

    [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[NSArray(CRLAdditions) crl_onlyObject]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSArray_CRLAdditions.m"] lineNumber:400 isFatal:0 description:"As this method returns the only object in the array, it only makes sense if the array has at most one object."];
  }

  return [(NSArray *)self firstObject];
}

+ (id)crl_arrayWithNonNilObject:(id)a3
{
  if (!a3)
  {
    return &__NSArray0__struct;
  }

  v4 = a3;
  return [NSArray arrayWithObjects:&v4 count:1];
}

- (id)crl_UTTypes
{
  if ([(NSArray *)self crl_isHomogeneousForClass:objc_opt_class()])
  {
    v3 = [(NSArray *)self crl_arrayByTransformingWithBlock:&stru_1018463B0];
  }

  else
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132DB74();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132DB88(v4, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132DC34();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    v7 = [NSString stringWithUTF8String:"[NSArray(CRLUTIUtilities) crl_UTTypes]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLUTIUtilities.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:139 isFatal:0 description:"Expecting an array of strings."];

    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (BOOL)crl_conformsToAnyUTType:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(NSArray *)self crl_UTTypes];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) crl_conformsToAnyUTType:{v4, v10}])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)crl_enumerateAllBoardItemsNestedRecursivelyUsingBlock:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100231D08;
  v6[3] = &unk_10184B528;
  v8 = &v9;
  v4 = a3;
  v7 = v4;
  [(NSArray *)self enumerateObjectsUsingBlock:v6];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

- (id)crlaxExtractElementsOfType:(Class)a3
{
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v10, v12}];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)crlaxObjectsPassingTest:(id)a3
{
  v4 = [(NSArray *)self indexesOfObjectsPassingTest:a3];
  v5 = [(NSArray *)self objectsAtIndexes:v4];

  return v5;
}

- (id)crlaxObjectAtIndexOrNil:(unint64_t)a3
{
  if ([(NSArray *)self count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)crlaxFirstElementOfType:(Class)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)crlaxPerformBlock:(id)a3 onElementsOfType:(Class)a4
{
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_isKindOfClass())
        {
          v5[2](v5, v11);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end