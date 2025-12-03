@interface TSUSparseArray
+ (id)array;
- (BOOL)hasObjectForKey:(unint64_t)key;
- (NSIndexSet)populatedKeys;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)objectForKey:(unint64_t)key;
- (unint64_t)maxIndexForCurrentDepth;
- (unint64_t)maxKey;
- (unint64_t)minKey;
- (void)addObjectsFromArray:(id)array;
- (void)clear;
- (void)dealloc;
- (void)foreach:(id)foreach;
- (void)increaseDepth;
- (void)setObject:(id)object forKey:(unint64_t)key;
@end

@implementation TSUSparseArray

+ (id)array
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (void)dealloc
{
  topPage = self->_topPage;
  if (topPage)
  {
    (*(topPage->var0 + 1))(topPage, a2);
    self->_topPage = 0;
  }

  v4.receiver = self;
  v4.super_class = TSUSparseArray;
  [(TSUSparseArray *)&v4 dealloc];
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10028C1D4;
  v10 = sub_10028C1E4;
  v11 = [NSString stringWithFormat:@"<%@: %p>:", objc_opt_class(), self];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10028C1EC;
  v5[3] = &unk_10184F928;
  v5[4] = &v6;
  [(TSUSparseArray *)self foreach:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)maxIndexForCurrentDepth
{
  depth = self->_depth;
  if (!depth)
  {
    return 0;
  }

  v3 = 8 * depth;
  if (8 * depth >= 0x21)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134355C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101343570();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101343604();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = +[CRLAssertionHandler packedBacktraceString];
      sub_101314064(v6, &v10, v4);
    }

    v7 = [NSString stringWithUTF8String:"[TSUSparseArray maxIndexForCurrentDepth]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLSparseArray.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:301 isFatal:0 description:"Not expecting a shiftedDepth larger than 32"];
  }

  return ~(-1 << v3);
}

- (id)objectForKey:(unint64_t)key
{
  depth = self->_depth;
  if (depth && (v6 = [(TSUSparseArray *)self maxIndexForCurrentDepth], v6 >= key))
  {
    __chkstk_darwin(v6);
    v9 = &v18 - v8;
    topPage = self->_topPage;
    v11 = depth - 1;
    v12 = depth;
    do
    {
      *&v9[8 * v11] = key;
      key >>= 8;
      --v11;
      --v12;
    }

    while (v12);
    v13 = (depth - 1);
    if (depth == 1)
    {
      v13 = 0;
LABEL_12:
      v7 = topPage[*&v9[8 * v13] + 1].var0;
    }

    else
    {
      v14 = (depth - 1);
      v15 = v9;
      while (1)
      {
        v16 = *v15++;
        topPage = topPage[v16 + 1].var0;
        if (!topPage)
        {
          break;
        }

        if (!--v14)
        {
          goto LABEL_12;
        }
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)increaseDepth
{
  depth = self->_depth;
  if (depth)
  {
    if (depth >= 4)
    {
      v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134362C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101343640();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013436D4();
      }

      v4 = off_1019EDA68;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = +[CRLAssertionHandler packedBacktraceString];
        sub_101314064(v5, &v8, v3);
      }

      v6 = [NSString stringWithUTF8String:"[TSUSparseArray increaseDepth]"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLSparseArray.mm"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:339 isFatal:0 description:"TSUSparseArray - getting too deep"];
    }

    operator new();
  }

  operator new();
}

- (void)setObject:(id)object forKey:(unint64_t)key
{
  objectCopy = object;
  while (1)
  {
    maxIndexForCurrentDepth = [(TSUSparseArray *)self maxIndexForCurrentDepth];
    if (maxIndexForCurrentDepth >= key)
    {
      if (self->_depth)
      {
        break;
      }
    }

    [(TSUSparseArray *)self increaseDepth];
  }

  __chkstk_darwin(maxIndexForCurrentDepth);
  v8 = &objectCopy - v7;
  depth = self->_depth;
  if (depth)
  {
    v10 = depth - 1;
    v11 = self->_depth;
    do
    {
      *&v8[8 * v10] = key;
      key >>= 8;
      --v10;
      --v11;
    }

    while (v11);
    topPage = self->_topPage;
    if (depth == 1)
    {
      v13 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    topPage = self->_topPage;
  }

  v14 = 0;
  do
  {
    topPage = topPage[*&v8[8 * v14] + 1].var0;
    if (!topPage)
    {
      if (v14 == depth - 2)
      {
        operator new();
      }

      operator new();
    }

    ++v14;
    v13 = depth - 1;
  }

  while (v14 < v13);
LABEL_17:
  self->_nonNilCount += sub_10028CAD4(topPage, objectCopy, *&v8[8 * v13]);
  v15 = objectCopy;
}

- (BOOL)hasObjectForKey:(unint64_t)key
{
  v3 = [(TSUSparseArray *)self objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (void)foreach:(id)foreach
{
  foreachCopy = foreach;
  topPage = self->_topPage;
  if (topPage)
  {
    v6 = 0;
    (*(topPage->var0 + 5))(topPage, foreachCopy, 0, &v6);
  }
}

- (void)addObjectsFromArray:(id)array
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10028CC58;
  v3[3] = &unk_10184F9D0;
  v3[4] = self;
  [array foreach:v3];
}

- (void)clear
{
  topPage = self->_topPage;
  if (topPage)
  {
    (*(topPage->var0 + 1))(topPage, a2);
    self->_topPage = 0;
    self->_depth = 0;
  }
}

- (unint64_t)minKey
{
  topPage = self->_topPage;
  if (topPage)
  {
    return (*(topPage->var0 + 2))(topPage, 0);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)maxKey
{
  topPage = self->_topPage;
  if (topPage)
  {
    return (*(topPage->var0 + 3))(topPage, 0);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (NSIndexSet)populatedKeys
{
  topPage = self->_topPage;
  if (topPage)
  {
    (*(topPage->var0 + 4))(topPage, 0);
  }

  else
  {
    +[NSIndexSet indexSet];
  }
  v3 = ;

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  *(v4 + 24) = self->_depth;
  topPage = self->_topPage;
  *(v4 + 16) = self->_nonNilCount;
  if (topPage)
  {
    topPage = (*(topPage->var0 + 6))(topPage);
  }

  *(v4 + 8) = topPage;
  return v4;
}

@end