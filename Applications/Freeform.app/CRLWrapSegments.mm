@interface CRLWrapSegments
- (CGRect)bounds;
- (CRLWrapSegments)init;
- (CRLWrapSegments)initWithPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)wrapSegmentsByApplyingAffineTransform:(CGAffineTransform *)a3;
- (void)dealloc;
- (void)p_buildSegmentsForPath:(id)a3;
- (void)transformUsingAffineTransform:(CGAffineTransform *)a3;
@end

@implementation CRLWrapSegments

- (CRLWrapSegments)init
{
  v4.receiver = self;
  v4.super_class = CRLWrapSegments;
  result = [(CRLWrapSegments *)&v4 init];
  if (result)
  {
    size = CGRectZero.size;
    result->mBounds.origin = CGRectZero.origin;
    result->mBounds.size = size;
  }

  return result;
}

- (CRLWrapSegments)initWithPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRLWrapSegments;
  v5 = [(CRLWrapSegments *)&v9 init];
  if (v5)
  {
    if ([v4 isFlat])
    {
      v6 = v4;
    }

    else
    {
      v6 = [v4 bezierPathByFlatteningPath];
    }

    v7 = v6;
    [(CRLWrapSegments *)v5 p_buildSegmentsForPath:v6];
  }

  return v5;
}

- (void)dealloc
{
  mSegments = self->mSegments;
  if (mSegments)
  {
    free(mSegments);
  }

  v4.receiver = self;
  v4.super_class = CRLWrapSegments;
  [(CRLWrapSegments *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CRLWrapSegments allocWithZone:?]];
  v5 = malloc_type_calloc(self->mSegmentCount, 0x20uLL, 0x1000040E0EAB150uLL);
  v4->mSegments = v5;
  memcpy(v5, self->mSegments, 32 * self->mSegmentCount);
  v4->mSegmentCount = self->mSegmentCount;
  origin = self->mBounds.origin;
  v4->mBounds.size = self->mBounds.size;
  v4->mBounds.origin = origin;
  return v4;
}

- (CGRect)bounds
{
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)wrapSegmentsByApplyingAffineTransform:(CGAffineTransform *)a3
{
  v4 = [(CRLWrapSegments *)self copy];
  v5 = *&a3->c;
  v7[0] = *&a3->a;
  v7[1] = v5;
  v7[2] = *&a3->tx;
  [v4 transformUsingAffineTransform:v7];

  return v4;
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)a3
{
  v5 = *&a3->c;
  *&v21.a = *&a3->a;
  *&v21.c = v5;
  *&v21.tx = *&a3->tx;
  if (!CGAffineTransformIsIdentity(&v21))
  {
    mSegmentCount = self->mSegmentCount;
    if (mSegmentCount >= 1)
    {
      p_var1 = &self->mSegments->var1;
      v8 = 2.22507386e-308;
      v9 = 1.79769313e308;
      v10 = 1.79769313e308;
      v11 = 2.22507386e-308;
      do
      {
        v12 = *&a3->c;
        v13 = *&a3->tx;
        v14 = vaddq_f64(v13, vmlaq_n_f64(vmulq_n_f64(v12, p_var1[-1].y), *&a3->a, p_var1[-1].x));
        v15 = vaddq_f64(v13, vmlaq_n_f64(vmulq_n_f64(v12, p_var1->y), *&a3->a, p_var1->x));
        v16 = vdup_n_s32(*&v14.i64[1] < *&v15.i64[1]);
        v17.i64[0] = v16.u32[0];
        v17.i64[1] = v16.u32[1];
        v18 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v17, 0x3FuLL)), v14, v15);
        if (*&v14.i64[1] >= *&v15.i64[1])
        {
          v19 = *&v14.i64[1];
        }

        else
        {
          v14.i64[0] = v15.i64[0];
          v19 = *&v15.i64[1];
        }

        p_var1[-1] = v18;
        *&p_var1->x = v14.i64[0];
        p_var1->y = v19;
        p_var1 += 2;
        if (*v18.i64 >= *v14.i64)
        {
          v20 = *v14.i64;
        }

        else
        {
          v20 = *v18.i64;
        }

        if (*v18.i64 >= *v14.i64)
        {
          v14.i64[0] = v18.i64[0];
        }

        if (v10 >= v20)
        {
          v10 = v20;
        }

        if (v11 < *v14.i64)
        {
          v11 = *v14.i64;
        }

        if (v9 >= *&v18.i64[1])
        {
          v9 = *&v18.i64[1];
        }

        if (v8 < v19)
        {
          v8 = v19;
        }

        --mSegmentCount;
      }

      while (mSegmentCount);
      self->mBounds.origin.x = v10;
      self->mBounds.origin.y = v9;
      self->mBounds.size.width = v11 - v10;
      self->mBounds.size.height = v8 - v9;
    }
  }
}

- (void)p_buildSegmentsForPath:(id)a3
{
  v4 = a3;
  if (([v4 isFlat] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101364688();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136469C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101364730();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLWrapSegments p_buildSegmentsForPath:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLWrapSegments.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:100 isFatal:0 description:"cannot enumerate flattened segments for a non-flat path"];
  }

  p_mSegments = &self->mSegments;
  if (self->mSegments)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101364758();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101364780();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101364814();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLWrapSegments p_buildSegmentsForPath:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLWrapSegments.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:101 isFatal:0 description:"mSegments must be NULL when initializing"];
  }

  size = CGRectNull.size;
  self->mBounds.origin = CGRectNull.origin;
  self->mBounds.size = size;
  *p_mSegments = 0;
  self->mSegmentCount = 0;
  if ([v4 elementCount] >= 1)
  {
    *p_mSegments = malloc_type_calloc([v4 elementCount], 0x20uLL, 0x1000040E0EAB150uLL);
    if ([v4 elementCount] >= 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 2.22507386e-308;
      x = CGPointZero.x;
      y = CGPointZero.y;
      v19 = 1.79769313e308;
      v20 = 1.79769313e308;
      v48 = CGPointZero.x;
      v50 = 2.22507386e-308;
      v21 = y;
      v22 = CGPointZero.x;
      v23 = y;
      while (1)
      {
        v24 = [v4 elementAtIndex:v15 associatedPoints:{&v59, *&v48}];
        if (v24 == 3)
        {
          if (x == v49 && y == v21)
          {
            if ((v13 & 1) == 0)
            {
              goto LABEL_85;
            }

LABEL_71:
            if (v14)
            {
              goto LABEL_72;
            }

            v14 = 0;
            v13 = 1;
            goto LABEL_88;
          }

          if (v13)
          {
            v23 = y;
            v22 = x;
LABEL_72:
            v14 = 0;
            if (v21 >= v23)
            {
              v38 = v23;
            }

            else
            {
              v38 = v21;
            }

            v39 = v49;
            if (v21 >= v23)
            {
              v40 = v22;
            }

            else
            {
              v40 = v49;
            }

            if (v21 >= v23)
            {
              v41 = v21;
            }

            else
            {
              v41 = v23;
            }

            if (v21 < v23)
            {
              v39 = v22;
            }

            mSegmentCount = self->mSegmentCount;
            v43 = &self->mSegments[mSegmentCount];
            v43->var0.x = v40;
            v43->var0.y = v38;
            v43->var1.x = v39;
            v43->var1.y = v41;
            self->mSegmentCount = mSegmentCount + 1;
            v13 = 1;
            v21 = v23;
            v49 = v22;
            goto LABEL_88;
          }

          v13 = 0;
          v14 = 1;
          v22 = x;
          v23 = y;
        }

        else
        {
          if (v24 != 1)
          {
            if (!v24)
            {
              v14 = 0;
              x = v59;
              y = v60;
              if (v20 >= v59)
              {
                v20 = v59;
              }

              if (v19 >= v60)
              {
                v19 = v60;
              }

              if (v16 < v59)
              {
                v16 = v59;
              }

              v25 = v50;
              if (v50 < v60)
              {
                v25 = v60;
              }

              v49 = v59;
              v50 = v25;
              v13 = 1;
              v21 = v60;
              goto LABEL_88;
            }

            v33 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10136488C();
            }

            v34 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v52 = v33;
              v53 = 2082;
              v54 = "[CRLWrapSegments p_buildSegmentsForPath:]";
              v55 = 2082;
              v56 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLWrapSegments.m";
              v57 = 1024;
              v58 = 153;
              _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unexpected element type (path may not be flat)", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013648B4();
            }

            v35 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v44 = v35;
              v45 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v52 = v33;
              v53 = 2114;
              v54 = v45;
              _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v36 = [NSString stringWithUTF8String:"[CRLWrapSegments p_buildSegmentsForPath:]"];
            v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLWrapSegments.m"];
            [CRLAssertionHandler handleFailureInFunction:v36 file:v37 lineNumber:153 isFatal:0 description:"unexpected element type (path may not be flat)"];

            if ((v13 & 1) == 0)
            {
LABEL_85:
              v13 = 0;
              goto LABEL_88;
            }

            goto LABEL_71;
          }

          if ((v13 & 1) == 0)
          {
            v26 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10136483C();
            }

            v27 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v52 = v26;
              v53 = 2082;
              v54 = "[CRLWrapSegments p_buildSegmentsForPath:]";
              v55 = 2082;
              v56 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLWrapSegments.m";
              v57 = 1024;
              v58 = 135;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d must have previous point before lineTo", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101364864();
            }

            v28 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v46 = v28;
              v47 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v52 = v26;
              v53 = 2114;
              v54 = v47;
              _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v29 = [NSString stringWithUTF8String:"[CRLWrapSegments p_buildSegmentsForPath:]"];
            v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLWrapSegments.m"];
            [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:135 isFatal:0 description:"must have previous point before lineTo"];
          }

          v22 = v59;
          v23 = v60;
          if (v20 >= v59)
          {
            v20 = v59;
          }

          if (v19 >= v60)
          {
            v19 = v60;
          }

          if (v16 < v59)
          {
            v16 = v59;
          }

          v31 = v50;
          if (v50 < v60)
          {
            v31 = v60;
          }

          v50 = v31;
          if (v13)
          {
            goto LABEL_72;
          }

          v13 = 0;
          v14 = 1;
        }

LABEL_88:
        if (++v15 >= [v4 elementCount])
        {
          goto LABEL_91;
        }
      }
    }

    v20 = 1.79769313e308;
    v16 = 2.22507386e-308;
    v50 = 2.22507386e-308;
    v19 = 1.79769313e308;
LABEL_91:
    self->mBounds.origin.x = v20;
    self->mBounds.origin.y = v19;
    self->mBounds.size.width = v16 - v20;
    self->mBounds.size.height = v50 - v19;
  }
}

@end