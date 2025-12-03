@interface CRLPKCompressedStrokePointArray
- (CRLPKCompressedStrokePointArray)initWithStroke:(id)stroke;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
@end

@implementation CRLPKCompressedStrokePointArray

- (CRLPKCompressedStrokePointArray)initWithStroke:(id)stroke
{
  strokeCopy = stroke;
  v7.receiver = self;
  v7.super_class = CRLPKCompressedStrokePointArray;
  v5 = [(CRLPKCompressedStrokePointArray *)&v7 init];
  objc_storeWeak(&v5->_stroke, strokeCopy);

  return v5;
}

- (unint64_t)count
{
  WeakRetained = objc_loadWeakRetained(&self->_stroke);
  _pointsCount = [WeakRetained _pointsCount];

  return _pointsCount;
}

- (id)objectAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_stroke);
  _pointsCount = [WeakRetained _pointsCount];

  if (_pointsCount <= index)
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386C5C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110658;
      v21 = v7;
      v22 = 2082;
      v23 = "[CRLPKCompressedStrokePointArray objectAtIndex:]";
      v24 = 2082;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm";
      v26 = 1024;
      v27 = 553;
      v28 = 2080;
      v29 = "[CRLPKCompressedStrokePointArray objectAtIndex:]";
      v30 = 2048;
      indexCopy = index;
      v32 = 2048;
      v33 = [(CRLPKCompressedStrokePointArray *)self count];
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d *** %s: index %lu beyond bounds [0 .. %lu]", buf, 0x40u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101386C70();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"[CRLPKCompressedStrokePointArray objectAtIndex:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:553 isFatal:0 description:"*** %s: index %lu beyond bounds [0 .. %lu]", "[CRLPKCompressedStrokePointArray objectAtIndex:]", index, [(CRLPKCompressedStrokePointArray *)self count]];
  }

  v12 = objc_loadWeakRetained(&self->_stroke);
  v13 = [v12 _strokePointAtIndex:index];

  v14 = objc_loadWeakRetained(&self->_stroke);
  _inflight = [v14 _inflight];

  v16 = [CRLPKStrokePoint alloc];
  v17 = objc_loadWeakRetained(&self->_stroke);
  v18 = [(CRLPKStrokePoint *)v16 initWithStroke:v17 strokePoint:v13 inflight:_inflight];

  return v18;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  if (([objectCopy isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386C98();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101386CAC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101386D34();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLPKCompressedStrokePointArray insertObject:atIndex:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:561 isFatal:0 description:"Only CRLPKStrokePoint instances can be added to a stroke's point array"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_stroke);
  [WeakRetained _insertStrokePoint:objc_msgSend(objectCopy atIndex:{"_strokePoint"), index}];
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_stroke);
  [WeakRetained _removeStrokePointAtIndex:index];
}

- (void)addObject:(id)object
{
  objectCopy = object;
  if (([objectCopy isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386D5C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101386D70();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101386DF8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLPKCompressedStrokePointArray addObject:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:571 isFatal:0 description:"Only CRLPKStrokePoint instances can be added to a stroke's point array"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_stroke);
  [WeakRetained _addStrokePoint:{objc_msgSend(objectCopy, "_strokePoint")}];
}

- (void)removeLastObject
{
  WeakRetained = objc_loadWeakRetained(&self->_stroke);
  [WeakRetained _removeLastStrokePoint];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  if (([objectCopy isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386E20();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101386E34();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101386EBC();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLPKCompressedStrokePointArray replaceObjectAtIndex:withObject:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:581 isFatal:0 description:"Only CRLPKStrokePoint instances can be added to a stroke's point array"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_stroke);
  [WeakRetained _replaceStrokePointAtIndex:index withStrokePoint:{objc_msgSend(objectCopy, "_strokePoint")}];
}

@end