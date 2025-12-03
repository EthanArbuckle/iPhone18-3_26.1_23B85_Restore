@interface CRLBezierHitTester
- (BOOL)isAnyPathNearPoint:(CGPoint)point withSearchThreshold:(double)threshold;
- (CRLBezierHitTester)initWithBucketSize:(double)size;
- (id).cxx_construct;
- (id)p_bucketPointValueForPoint:(CGPoint)point;
- (id)p_wrapHitInfos:()vector<CRLBezierHitTesterHitInfo;
- (id)pathsCrossingPath:(id)path withSearchThreshold:(double)threshold;
- (id)pathsWithPercentage:(double)percentage approximatelyInsidePath:(id)path requiringPercentForFilledEdges:(BOOL)edges;
- (id)wrappedAllHitsAlongPath:(id)path withSearchThreshold:(double)threshold;
- (id)wrappedClosestHitsTo:(CGPoint)to withSearchThreshold:(double)threshold passingTest:(id)test;
- (vector<CRLBezierHitTesterHitInfo,)allHitsAlongPath:(CRLBezierHitTester *)self withSearchThreshold:(SEL)threshold;
- (vector<CRLBezierHitTesterHitInfo,)closestHitsTo:(CRLBezierHitTester *)self withSearchThreshold:(SEL)threshold passingTest:(CGPoint)test;
- (void)addPath:(id)path filled:(BOOL)filled pathID:(unint64_t)d crawlingDistance:(double)distance clippedToRect:(CGRect)rect;
- (void)p_addFilledPathToGrid:(id)grid withPathId:(unint64_t)id clippedToRect:(CGRect)rect;
- (void)p_addOpenPathToGrid:(id)grid withPathId:(unint64_t)id crawlingDistance:(double)distance clippedToRect:(CGRect)rect;
- (void)p_addPointInfoStruct:(id *)struct;
- (void)p_iterateOverEveryBucketPointInRect:(CGRect)rect usingBlock:(id)block;
- (void)p_iterateOverEveryExistingBucketPointInRect:(CGRect)rect usingBlock:(id)block;
- (void)p_iterateOverEveryNonEmptyBucketInRect:(CGRect)rect usingBlock:(id)block;
- (void)p_iterateOverEveryNonEmptyBucketNear:(CGPoint)near withSearchThreshold:(double)threshold usingBlock:(id)block;
- (void)removePath:(id)path;
@end

@implementation CRLBezierHitTester

- (CRLBezierHitTester)initWithBucketSize:(double)size
{
  v9.receiver = self;
  v9.super_class = CRLBezierHitTester;
  v4 = [(CRLBezierHitTester *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_bucketSize = size;
    v4->_nextPathIdForInsertion = 0;
    v6 = [NSHashTable hashTableWithOptions:512];
    allPathTable = v5->_allPathTable;
    v5->_allPathTable = v6;
  }

  return v5;
}

- (void)addPath:(id)path filled:(BOOL)filled pathID:(unint64_t)d crawlingDistance:(double)distance clippedToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  filledCopy = filled;
  dCopy = d;
  pathCopy = path;
  if (distance > 1.0 && !self->_allowsLargeCrawlingDistances)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013104E4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013104F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101310580();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v15 = [NSString stringWithUTF8String:"[CRLBezierHitTester addPath:filled:pathID:crawlingDistance:clippedToRect:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierHitTester.mm"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:153 isFatal:0 description:"Passing a crawlingDistance greater than the default may cause unexpected problems hit testing with some methods."];
  }

  if (sub_1000D8228(&self->_allPathMap.__table_.__bucket_list_.__ptr_, &dCopy))
  {
    v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013105A8();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013105D0(&dCopy, v17, v18);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101310690();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v20 = [NSString stringWithUTF8String:"[CRLBezierHitTester addPath:filled:pathID:crawlingDistance:clippedToRect:]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierHitTester.mm"];
    [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:178 isFatal:0 description:"Tried to add a path with pathID that already exists (%lu)", dCopy];
  }

  else
  {
    sub_1000D82DC(&self->_allPathMap.__table_.__bucket_list_.__ptr_, &dCopy);
    [(NSHashTable *)self->_allPathTable addObject:pathCopy];
    v25 = 0;
    v26 = 0;
    v24 = &v25;
    sub_1000D8844(&self->_allNonFilledPointInfosForPathMap.__table_.__bucket_list_.__ptr_, &pathCopy);
    sub_1000D87F0(&v24, v25);
    v25 = 0;
    v26 = 0;
    v24 = &v25;
    sub_1000D8844(&self->_allFilledPointInfosForPathMap.__table_.__bucket_list_.__ptr_, &pathCopy);
    sub_1000D87F0(&v24, v25);
    if (filledCopy)
    {
      self->_hasAtLeastOneFilledPath = 1;
      [(CRLBezierHitTester *)self p_addOpenPathToGrid:pathCopy withPathId:dCopy crawlingDistance:distance clippedToRect:x, y, width, height];
      [(CRLBezierHitTester *)self p_addFilledPathToGrid:pathCopy withPathId:dCopy clippedToRect:x, y, width, height];
    }

    else
    {
      self->_hasAtLeastOneOpenPath = 1;
      [(CRLBezierHitTester *)self p_addOpenPathToGrid:pathCopy withPathId:dCopy crawlingDistance:distance clippedToRect:x, y, width, height];
    }

    if (dCopy == self->_nextPathIdForInsertion)
    {
      self->_nextPathIdForInsertion = dCopy + 1;
    }
  }
}

- (void)removePath:(id)path
{
  pathCopy = path;
  v28 = pathCopy;
  p_first_node = &self->_allPathMap.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      goto LABEL_5;
    }
  }

  while (p_first_node[3].__next_ != pathCopy);
  next = p_first_node[2].__next_;
  if (next == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013106B8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013106CC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101310754();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLBezierHitTester removePath:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierHitTester.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:212 isFatal:0 description:"Tried to remove a path that is not in the hit tester."];

    goto LABEL_24;
  }

  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  v23 = &v28;
  v9 = sub_1000D8B70(&self->_allNonFilledPointInfosForPathMap.__table_.__bucket_list_.__ptr_, &v28);
  sub_1000D8DCC(&v25, (v9 + 3));
  v21 = &v28;
  v10 = sub_1000D8B70(&self->_allFilledPointInfosForPathMap.__table_.__bucket_list_.__ptr_, &v28);
  sub_1000D8DCC(&v23, (v10 + 3));
  sub_1000D5E38(&v29, v25, &v26);
  sub_1000D5E38(&v29, v23, &v24);
  v11 = v29;
  if (v29 != v30)
  {
    do
    {
      v12 = v11[4];
      v13 = v11[5];
      v21 = 0;
      v22 = 0.0;
      bucketSize = self->_bucketSize;
      v15 = sub_1004C3204(v12, bucketSize);
      v16 = sub_1004C3204(v13, bucketSize);
      v21 = *&v15;
      v22 = v16;
      v17 = sub_1000D9360(&self->_pointInfoGridMap.__table_.__bucket_list_.__ptr_, &v21);
      if (v17)
      {
        sub_1000D9434(v17 + 4, (v11 + 4));
      }

      v18 = *(v11 + 1);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = *(v11 + 2);
          v20 = *v19 == v11;
          v11 = v19;
        }

        while (!v20);
      }

      v11 = v19;
    }

    while (v19 != v30);
  }

  sub_1000D990C(&self->_allPathMap.__table_.__bucket_list_.__ptr_, &next);
  [(NSHashTable *)self->_allPathTable removeObject:v28];
  sub_1000D9B48(&self->_allNonFilledPointInfosForPathMap.__table_.__bucket_list_.__ptr_, &v28);
  sub_1000D9B48(&self->_allFilledPointInfosForPathMap.__table_.__bucket_list_.__ptr_, &v28);
  sub_1000D87F0(&v23, v24);
  sub_1000D87F0(&v25, v26);
  sub_1000D87F0(&v29, v30[0]);
LABEL_24:
}

- (vector<CRLBezierHitTesterHitInfo,)closestHitsTo:(CRLBezierHitTester *)self withSearchThreshold:(SEL)threshold passingTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  v11 = a6;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x5812000000;
  v38 = sub_1000D61AC;
  v39 = sub_1000D61B8;
  v40 = &unk_1016A8115;
  memset(v41, 0, sizeof(v41));
  v42 = 1065353216;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000D61C0;
  v29[3] = &unk_10183AC20;
  v32 = x;
  v33 = y;
  v34 = a5;
  v27 = v11;
  v30 = v27;
  v31 = &v35;
  [(CRLBezierHitTester *)self p_iterateOverEveryNonEmptyBucketNear:v29 withSearchThreshold:x usingBlock:y, a5];
  v12 = v36[8];
  if (v12)
  {
    v13 = 0;
    do
    {
      *v28 = *(v12 + 1);
      *&v28[16] = *(v12 + 2);
      *&v28[32] = *(v12 + 3);
      *&v28[48] = *(v12 + 4);
      var2 = retstr->var2;
      if (v13 >= var2)
      {
        var0 = retstr->var0;
        v19 = v13 - retstr->var0;
        v20 = 0x6DB6DB6DB6DB6DB7 * (v19 >> 3) + 1;
        if (v20 > 0x492492492492492)
        {
          sub_1000C1D48();
        }

        v21 = 0x6DB6DB6DB6DB6DB7 * ((var2 - var0) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x249249249249249)
        {
          v22 = 0x492492492492492;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          sub_1000DA030(retstr, v22);
        }

        v23 = 8 * (v19 >> 3);
        *v23 = *&v28[8];
        *(v23 + 16) = *&v28[24];
        *(v23 + 32) = *&v28[40];
        *(v23 + 48) = *&v28[56];
        v13 = v23 + 56;
        v24 = (v23 - v19);
        memcpy((v23 - v19), var0, v19);
        v25 = retstr->var0;
        retstr->var0 = v24;
        retstr->var1 = v13;
        retstr->var2 = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        v15 = *(v12 + 3);
        v16 = *(v12 + 5);
        v17 = *(v12 + 7);
        *(v13 + 48) = v12[9];
        *(v13 + 16) = v16;
        *(v13 + 32) = v17;
        *v13 = v15;
        v13 += 56;
      }

      retstr->var1 = v13;
      v12 = *v12;
    }

    while (v12);
  }

  _Block_object_dispose(&v35, 8);
  sub_1000D9C84(v41);

  return result;
}

- (id)wrappedClosestHitsTo:(CGPoint)to withSearchThreshold:(double)threshold passingTest:(id)test
{
  [(CRLBezierHitTester *)self closestHitsTo:test withSearchThreshold:to.x passingTest:to.y, threshold];
  v6 = [(CRLBezierHitTester *)self p_wrapHitInfos:__p];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v6;
}

- (vector<CRLBezierHitTesterHitInfo,)allHitsAlongPath:(CRLBezierHitTester *)self withSearchThreshold:(SEL)threshold
{
  v8 = a4;
  if (self->_hasAtLeastOneFilledPath)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131077C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101310790();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101310818();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"[CRLBezierHitTester allHitsAlongPath:withSearchThreshold:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierHitTester.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:265 isFatal:0 description:"This method was not designed for use with filled paths."];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = sub_1000D679C;
  v27 = sub_1000D67C0;
  v28 = &unk_1016A8115;
  v30 = 0;
  v31 = 0;
  __p = 0;
  [v8 bounds];
  v33 = CGRectInset(v32, -a5, -a5);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000D67D8;
  v19[3] = &unk_10183AC88;
  v16 = v8;
  v22 = a5;
  v20 = v16;
  v21 = &v23;
  [(CRLBezierHitTester *)self p_iterateOverEveryNonEmptyBucketInRect:v19 usingBlock:x, y, width, height];
  v17 = v24;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_1000DA0FC(retstr, v17[6], v17[7], 0x6DB6DB6DB6DB6DB7 * ((v17[7] - v17[6]) >> 3));

  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  return result;
}

- (id)wrappedAllHitsAlongPath:(id)path withSearchThreshold:(double)threshold
{
  [(CRLBezierHitTester *)self allHitsAlongPath:path withSearchThreshold:threshold];
  v5 = [(CRLBezierHitTester *)self p_wrapHitInfos:__p];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v5;
}

- (BOOL)isAnyPathNearPoint:(CGPoint)point withSearchThreshold:(double)threshold
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D6B64;
  v6[3] = &unk_10183ACB0;
  pointCopy = point;
  v8 = threshold * threshold;
  v6[4] = &v9;
  [(CRLBezierHitTester *)self p_iterateOverEveryNonEmptyBucketInRect:v6 usingBlock:sub_10011EC70(point.x, point.y, threshold + threshold)];
  v4 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v4;
}

- (id)pathsCrossingPath:(id)path withSearchThreshold:(double)threshold
{
  pathCopy = path;
  if (self->_allowsLargeCrawlingDistances)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101310840();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101310854();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013108DC();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLBezierHitTester pathsCrossingPath:withSearchThreshold:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierHitTester.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:309 isFatal:0 description:"-pathsCrossingPath:withSearchThreshold: does not support large crawling distances."];
  }

  v10 = [NSHashTable hashTableWithOptions:512];
  v11 = (vcvts_n_f32_u64(self->_bucketSize, 1uLL) * 1.4142);
  if (v11 <= threshold)
  {
    thresholdCopy = threshold;
  }

  else
  {
    thresholdCopy = v11;
  }

  v13 = [[CRLBezierHitTester alloc] initWithBucketSize:self->_bucketSize];
  [(CRLBezierHitTester *)v13 addPath:pathCopy filled:0];
  [pathCopy bounds];
  v30 = CGRectInset(v29, -thresholdCopy, -thresholdCopy);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000D6FE8;
  v23[3] = &unk_10183AD18;
  v23[4] = self;
  v27 = thresholdCopy;
  thresholdCopy2 = threshold;
  v18 = v10;
  v24 = v18;
  v25 = v13;
  v19 = pathCopy;
  v26 = v19;
  [(CRLBezierHitTester *)self p_iterateOverEveryNonEmptyBucketInRect:v23 usingBlock:x, y, width, height];
  v20 = v26;
  v21 = v18;

  return v18;
}

- (id)pathsWithPercentage:(double)percentage approximatelyInsidePath:(id)path requiringPercentForFilledEdges:(BOOL)edges
{
  edgesCopy = edges;
  pathCopy = path;
  v8 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:self->_allPathMap.__table_.__size_];
  v9 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:self->_allPathMap.__table_.__size_];
  for (i = self->_allPathMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v11 = i[3];
    [v8 setObject:&off_1018E2088 forKeyedSubscript:v11];
    [v9 setObject:&off_1018E2088 forKeyedSubscript:v11];
  }

  v42 = edgesCopy;
  [pathCopy bounds];
  next = self->_pointInfoGridMap.__table_.__first_node_.__next_;
  if (next)
  {
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    do
    {
      v21 = next[2];
      v22 = next[3];
      v52.origin.x = v17;
      v52.origin.y = v18;
      v52.size.width = v19;
      v52.size.height = v20;
      v51.x = v21;
      v51.y = v22;
      if (CGRectContainsPoint(v52, v51) && [pathCopy containsPoint:{v21, v22}])
      {
        sub_1000D8DCC(&v47, (next + 4));
        v23 = v47;
        if (v47 != &v48)
        {
          do
          {
            v24 = sub_1000D9958(&self->_allPathMap.__table_.__bucket_list_.__ptr_, v23 + 6);
            if (v24)
            {
              v25 = v24[3];
              if (*(v23 + 64) == 1)
              {
                v26 = [v9 objectForKeyedSubscript:v25];
                v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v26 intValue] + 1);
                [v9 setObject:v27 forKeyedSubscript:v25];
              }

              else
              {
                v26 = [v8 objectForKeyedSubscript:v25];
                v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v26 intValue] + 1);
                [v8 setObject:v27 forKeyedSubscript:v25];
              }
            }

            v28 = v23[1];
            if (v28)
            {
              do
              {
                v29 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v29 = v23[2];
                v30 = *v29 == v23;
                v23 = v29;
              }

              while (!v30);
            }

            v23 = v29;
          }

          while (v29 != &v48);
        }

        sub_1000D87F0(&v47, v48);
      }

      next = *next;
    }

    while (next);
  }

  v31 = [NSHashTable hashTableWithOptions:512];
  for (j = self->_allPathMap.__table_.__first_node_.__next_; j; j = *j)
  {
    v46 = j[3];
    v33 = sub_1000D9B80(&self->_allNonFilledPointInfosForPathMap.__table_.__bucket_list_.__ptr_, &v46);
    sub_1000D8DCC(&v47, (v33 + 3));
    v34 = sub_1000D9B80(&self->_allFilledPointInfosForPathMap.__table_.__bucket_list_.__ptr_, &v46);
    sub_1000D8DCC(v44, (v34 + 3));
    v35 = [v8 objectForKeyedSubscript:v46];
    v36 = [v9 objectForKeyedSubscript:v46];
    v37 = v36;
    if (v49 >= 2)
    {
      if (v45)
      {
        [v36 crl_CGFloatValue];
        if (v38 / v45 < percentage)
        {
          goto LABEL_30;
        }

        if (v42)
        {
          [v35 crl_CGFloatValue];
          if (v39 / v49 < percentage)
          {
            goto LABEL_30;
          }
        }

LABEL_29:
        [v31 addObject:v46];
        goto LABEL_30;
      }

      [v35 crl_CGFloatValue];
      if (v40 / v49 >= percentage)
      {
        goto LABEL_29;
      }
    }

LABEL_30:

    sub_1000D87F0(v44, v44[1]);
    sub_1000D87F0(&v47, v48);
  }

  return v31;
}

- (id)p_bucketPointValueForPoint:(CGPoint)point
{
  y = point.y;
  bucketSize = self->_bucketSize;
  v5 = sub_1004C3204(point.x, bucketSize);
  v6 = sub_1004C3204(y, bucketSize);

  return [NSValue valueWithCGPoint:v5, v6];
}

- (id)p_wrapHitInfos:()vector<CRLBezierHitTesterHitInfo
{
  v5 = +[NSMutableSet set];
  var0 = a3->var0;
  var1 = a3->var1;
  if (a3->var0 != var1)
  {
    do
    {
      v8 = *var0;
      v9 = *(var0 + 1);
      v10 = *(var0 + 2);
      v20 = *(var0 + 6);
      v18 = v9;
      v19 = v10;
      v17 = v8;
      v11 = [CRLBezierHitTesterHitInfoWrapper alloc];
      v15[0] = v17;
      v15[1] = v18;
      v15[2] = v19;
      v16 = v20;
      v12 = sub_1000D9958(&self->_allPathMap.__table_.__bucket_list_.__ptr_, &v19);
      if (!v12)
      {
        sub_1000D9CD0("unordered_map::at: key not found");
      }

      v13 = [(CRLBezierHitTesterHitInfoWrapper *)v11 initWithHitInfo:v15 hitPath:v12[3]];
      [v5 addObject:v13];

      var0 = (var0 + 56);
    }

    while (var0 != var1);
  }

  return v5;
}

- (void)p_addPointInfoStruct:(id *)struct
{
  y = struct->var0.y;
  bucketSize = self->_bucketSize;
  v12.x = sub_1004C3204(struct->var0.x, bucketSize);
  v12.y = sub_1004C3204(y, bucketSize);
  v7 = sub_1000D9360(&self->_pointInfoGridMap.__table_.__bucket_list_.__ptr_, &v12.x);
  if (v7)
  {
    sub_1000DA1C8((v7 + 4), struct);
  }

  else
  {
    v8 = *&struct->var1;
    var0 = struct->var0;
    v14 = v8;
    v15 = *&struct->var3;
    sub_1000DA264(v11, &var0, 1);
    var0 = v12;
    sub_1000D8DCC(&v14, v11);
    sub_1000DA2E8(&self->_pointInfoGridMap.__table_.__bucket_list_.__ptr_, &var0.x);
    sub_1000D87F0(&v14, *(&v14 + 1));
    sub_1000D87F0(v11, v11[1]);
  }

  p_var1 = &struct->var1;
  if (struct->var3)
  {
    *&var0.x = &struct->var1;
    *&var0.x = sub_1000DA634(&self->_allPathMap.__table_.__bucket_list_.__ptr_, p_var1) + 3;
    v10 = sub_1000D8B70(&self->_allFilledPointInfosForPathMap.__table_.__bucket_list_.__ptr_, *&var0.x);
  }

  else
  {
    *&var0.x = &struct->var1;
    *&var0.x = sub_1000DA634(&self->_allPathMap.__table_.__bucket_list_.__ptr_, p_var1) + 3;
    v10 = sub_1000D8B70(&self->_allNonFilledPointInfosForPathMap.__table_.__bucket_list_.__ptr_, *&var0.x);
  }

  sub_1000DA1C8((v10 + 3), struct);
}

- (void)p_addOpenPathToGrid:(id)grid withPathId:(unint64_t)id crawlingDistance:(double)distance clippedToRect:(CGRect)rect
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D7A00;
  v6[3] = &unk_10183AD40;
  rectCopy = rect;
  idCopy = id;
  v6[4] = self;
  [grid iterateOverPathWithPointDistancePerIteration:v6 usingBlock:distance];
}

- (void)p_addFilledPathToGrid:(id)grid withPathId:(unint64_t)id clippedToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  gridCopy = grid;
  [gridCopy bounds];
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v22 = CGRectIntersection(v21, v23);
  v12 = v22.origin.x;
  v13 = v22.origin.y;
  v14 = v22.size.width;
  v15 = v22.size.height;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D7B9C;
  v17[3] = &unk_10183AD68;
  v16 = gridCopy;
  selfCopy = self;
  idCopy = id;
  v18 = v16;
  [(CRLBezierHitTester *)self p_iterateOverEveryBucketPointInRect:v17 usingBlock:v12, v13, v14, v15];
}

- (void)p_iterateOverEveryBucketPointInRect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  if (!CGRectIsNull(v23))
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    MinX = CGRectGetMinX(v24);
    v10 = sub_1004C3204(MinX, self->_bucketSize);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MaxX = CGRectGetMaxX(v25);
    v12 = sub_1004C3204(MaxX, self->_bucketSize);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MinY = CGRectGetMinY(v26);
    v14 = sub_1004C3204(MinY, self->_bucketSize);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MaxY = CGRectGetMaxY(v27);
    v16 = sub_1004C3204(MaxY, self->_bucketSize);
    v17 = v10;
    if (v10 <= v12)
    {
      v18 = v16;
      do
      {
        if (v14 <= v18)
        {
          v20 = v14;
          do
          {
            blockCopy[2](v17, v20);
            bucketSize = self->_bucketSize;
            v20 += bucketSize;
          }

          while (v20 <= v18);
        }

        else
        {
          bucketSize = self->_bucketSize;
        }

        v17 += bucketSize;
      }

      while (v17 <= v12);
    }
  }
}

- (void)p_iterateOverEveryExistingBucketPointInRect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  v29 = 0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MinX = CGRectGetMinX(v30);
  bucketSize = self->_bucketSize;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MaxX = CGRectGetMaxX(v31);
  v27 = self->_bucketSize;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MinY = CGRectGetMinY(v32);
  v13 = self->_bucketSize;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MaxY = CGRectGetMaxY(v33);
  v15 = (floor(MinX / bucketSize) * bucketSize);
  v16 = (ceil(MaxX / v27) * v27);
  v17 = (floor(MinY / v13) * v13);
  v18 = self->_bucketSize;
  v19 = (ceil(MaxY / v18) * v18);
  if ((v19 - v17) / v18 * ((v16 - v15) / v18) <= self->_pointInfoGridMap.__table_.__size_)
  {
    if (v16 >= v15)
    {
      while (v19 < v17)
      {
LABEL_23:
        v15 += self->_bucketSize;
        if (v15 > v16)
        {
          goto LABEL_17;
        }
      }

      v26 = v17;
      while (1)
      {
        blockCopy[2](blockCopy, &v29, v15, v26);
        if (v29)
        {
          break;
        }

        v26 += self->_bucketSize;
        if (v26 > v19)
        {
          if (v29)
          {
            break;
          }

          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    for (i = self->_pointInfoGridMap.__table_.__first_node_.__next_; i; i = *i)
    {
      v21 = i[2];
      v22 = i[3];
      if (v21 >= v15 && v21 <= v16 && v22 >= v17 && v22 <= v19)
      {
        (blockCopy[2])(blockCopy, &v29);
        if (v29)
        {
          break;
        }
      }
    }
  }

LABEL_17:
}

- (void)p_iterateOverEveryNonEmptyBucketInRect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D80E0;
  v9[3] = &unk_10183AD90;
  selfCopy = self;
  blockCopy = block;
  v8 = blockCopy;
  [(CRLBezierHitTester *)selfCopy p_iterateOverEveryExistingBucketPointInRect:v9 usingBlock:x, y, width, height];
}

- (void)p_iterateOverEveryNonEmptyBucketNear:(CGPoint)near withSearchThreshold:(double)threshold usingBlock:(id)block
{
  v7 = sub_10011EC70(near.x, near.y, threshold + threshold);

  [(CRLBezierHitTester *)self p_iterateOverEveryNonEmptyBucketInRect:block usingBlock:v7];
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 42) = 1065353216;
  return self;
}

@end