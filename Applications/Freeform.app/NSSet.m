@interface NSSet
+ (BOOL)crl_set:(id)a3 isEqualToSet:(id)a4;
+ (id)crl_intersectionOfSets:(id)a3;
+ (id)crl_setWithSelectors:(SEL)a3;
- (BOOL)crl_containsKindOfClass:(Class)a3;
- (BOOL)crl_containsObjectIdenticalTo:(id)a3;
- (BOOL)crl_isHomogeneousForClass:(Class)a3;
- (id)crl_onlyObject;
- (id)crl_setByIntersectingSet:(id)a3;
- (id)crl_setByMappingObjectsUsingBlock:(id)a3;
- (id)crl_setBySubtractingSet:(id)a3;
- (id)crl_sortedArray;
@end

@implementation NSSet

+ (id)crl_setWithSelectors:(SEL)a3
{
  v4 = objc_alloc_init(NSMutableSet);
  v9 = &v11;
  if (a3)
  {
    do
    {
      v5 = NSStringFromSelector(a3);
      [v4 addObject:v5];

      v6 = v9++;
      a3 = *v6;
    }

    while (*v6);
  }

  v7 = [v4 copy];

  return v7;
}

+ (BOOL)crl_set:(id)a3 isEqualToSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
    goto LABEL_6;
  }

  if (!v5)
  {
    v5 = +[NSSet set];
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = +[NSSet set];
    goto LABEL_4;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = [v5 isEqualToSet:v7];
LABEL_6:

  return v8;
}

+ (id)crl_intersectionOfSets:(id)a3
{
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v12;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v11 + 1) + 8 * i);
      if (v6)
      {
        [v6 intersectSet:v9];
      }

      else
      {
        v6 = [NSMutableSet setWithSet:v9];
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v5);
  if (!v6)
  {
LABEL_12:
    v6 = +[NSMutableSet set];
  }

  return v6;
}

- (BOOL)crl_containsObjectIdenticalTo:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        if (*(*(&v10 + 1) + 8 * i) == v4)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)crl_containsKindOfClass:(Class)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_opt_isKindOfClass())
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)crl_sortedArray
{
  v2 = [(NSSet *)self allObjects];
  v3 = [v2 sortedArrayUsingSelector:"compare:"];

  return v3;
}

- (id)crl_setByMappingObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = &qword_101AD5A10;
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101363264();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101363278();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363328();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    v7 = [NSString stringWithUTF8String:"[NSSet(CRLAdditions) crl_setByMappingObjectsUsingBlock:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSSet_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:95 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "block != nil"];
  }

  v25 = [NSMutableSet setWithCapacity:[(NSSet *)self count]];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self;
  v9 = [(NSSet *)obj countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = v4[2](v4, *(*(&v26 + 1) + 8 * v12));
        if (v13)
        {
          [v25 addObject:v13];
        }

        else
        {
          v14 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (*v5 != -1)
          {
            sub_101363350();
          }

          v15 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v31 = v14;
            v32 = 2082;
            v33 = "[NSSet(CRLAdditions) crl_setByMappingObjectsUsingBlock:]";
            v34 = 2082;
            v35 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSSet_CRLAdditions.m";
            v36 = 1024;
            v37 = 105;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Block returned a nil object.", buf, 0x22u);
          }

          if (*v5 != -1)
          {
            sub_101363378();
          }

          v16 = v5;
          v17 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v20 = v17;
            v21 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v31 = v14;
            v32 = 2114;
            v33 = v21;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v18 = [NSString stringWithUTF8String:"[NSSet(CRLAdditions) crl_setByMappingObjectsUsingBlock:]"];
          v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSSet_CRLAdditions.m"];
          [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:105 isFatal:0 description:"Block returned a nil object."];

          v5 = v16;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSSet *)obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v10);
  }

  v22 = [v25 copy];

  return v22;
}

- (BOOL)crl_isHomogeneousForClass:(Class)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (id)crl_onlyObject
{
  if ([(NSSet *)self count]>= 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013633A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013633B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363454();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[NSSet(CRLAdditions) crl_onlyObject]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSSet_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:126 isFatal:0 description:"As this method returns the only object in the set, it only makes sense if the set has at most one object."];
  }

  v6 = [(NSSet *)self anyObject];

  return v6;
}

- (id)crl_setByIntersectingSet:(id)a3
{
  v4 = a3;
  v5 = [NSMutableSet setWithSet:self];
  [v5 intersectSet:v4];

  v6 = [NSSet setWithSet:v5];

  return v6;
}

- (id)crl_setBySubtractingSet:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [NSMutableSet setWithSet:self];
    [v5 minusSet:v4];
    v6 = [NSSet setWithSet:v5];
  }

  else
  {
    v6 = self;
  }

  return v6;
}

@end