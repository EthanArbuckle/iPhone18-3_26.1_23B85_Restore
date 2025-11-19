@interface CRLMaskInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMaskInfo:(id)a3;
- (CRLCanvasElementInfo)parentInfo;
- (CRLMaskInfo)initWithImageItem:(id)a3 geometry:(id)a4 pathSource:(id)a5;
- (_TtC8Freeform12CRLImageItem)parentImageItem;
- (void)setGeometry:(id)a3;
- (void)setPathSource:(id)a3;
@end

@implementation CRLMaskInfo

- (CRLMaskInfo)initWithImageItem:(id)a3 geometry:(id)a4 pathSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = CRLMaskInfo;
  v11 = [(CRLMaskInfo *)&v22 init];
  if (v11)
  {
    if (v10)
    {
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013438F4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134391C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013439B0();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLMaskInfo initWithImageItem:geometry:pathSource:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskInfo.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:31 isFatal:0 description:"invalid nil value for '%{public}s'", "pathSource"];

      if (v9)
      {
LABEL_4:
        if (v8)
        {
LABEL_33:
          [(CRLMaskInfo *)v11 setGeometry:v9];
          [(CRLMaskInfo *)v11 setParentInfo:v8];
          [(CRLMaskInfo *)v11 setPathSource:v10];
          goto LABEL_34;
        }

LABEL_24:
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101343ABC();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101343AE4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101343B78();
        }

        v18 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v18);
        }

        v19 = [NSString stringWithUTF8String:"[CRLMaskInfo initWithImageItem:geometry:pathSource:]"];
        v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskInfo.m"];
        [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:33 isFatal:0 description:"invalid nil value for '%{public}s'", "imageItem"];

        goto LABEL_33;
      }
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013439D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101343A00();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101343A94();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLMaskInfo initWithImageItem:geometry:pathSource:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskInfo.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:32 isFatal:0 description:"invalid nil value for '%{public}s'", "geometry"];

    if (v8)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

LABEL_34:

  return v11;
}

- (_TtC8Freeform12CRLImageItem)parentImageItem
{
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);
  v5 = sub_100013F00(v3, WeakRetained);

  return v5;
}

- (BOOL)isEqualToMaskInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CRLMaskInfo *)self geometry];
    v6 = [v4 geometry];
    if ([v5 isEqual:v6])
    {
      v7 = [(CRLMaskInfo *)self pathSource];
      v8 = [v7 bezierPath];
      v9 = [v4 pathSource];
      v10 = [v9 bezierPath];
      v11 = [v8 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  v7 = [(CRLMaskInfo *)self parentInfo];
  v8 = [v6 parentInfo];
  if (v7 == v8)
  {
    v9 = [(CRLMaskInfo *)self isEqualToMaskInfo:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setGeometry:(id)a3
{
  v4 = a3;
  if (([v4 allValuesValidNumbers] & 1) == 0)
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101343BA0();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v23 = v6;
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 67110402;
      v27 = v5;
      v28 = 2082;
      v29 = "[CRLMaskInfo setGeometry:]";
      v30 = 2082;
      v31 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskInfo.m";
      v32 = 1024;
      v33 = 89;
      v34 = 2114;
      v35 = v25;
      v36 = 2112;
      v37 = v4;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempting to set geometry with invalid properties on %{public}@! %@", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101343BB4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLMaskInfo setGeometry:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskInfo.m"];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:89 isFatal:0 description:"Attempting to set geometry with invalid properties on %{public}@! %@", v11, v4];

    v12 = [v4 geometryWithValidNumbers];

    v4 = v12;
  }

  if (([v4 isEqual:self->_geometry] & 1) == 0)
  {
    v13 = [v4 copy];
    geometry = self->_geometry;
    self->_geometry = v13;

    v15 = [(CRLMaskInfo *)self geometry];
    [v15 size];
    v17 = v16;
    v19 = v18;

    [(CRLPathSource *)self->_pathSource naturalSize];
    if (v21 != v17 || v20 != v19)
    {
      [(CRLPathSource *)self->_pathSource setNaturalSize:v17, v19];
    }
  }
}

- (void)setPathSource:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101343BDC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101343BF0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101343C84();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLMaskInfo setPathSource:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskInfo.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:104 isFatal:0 description:"invalid nil value for '%{public}s'", "newPathSource"];
  }

  if (self->_pathSource != v4)
  {
    v8 = [(CRLPathSource *)v4 copy];
    pathSource = self->_pathSource;
    self->_pathSource = v8;

    [(CRLPathSource *)self->_pathSource naturalSize];
    v11 = v10;
    v13 = v12;
    v14 = [(CRLMaskInfo *)self geometry];
    [v14 size];
    v17 = sub_10011ECC8(v11, v13, v15, v16);

    if (!v17)
    {
      v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101343CAC();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v26 = self->_pathSource;
        v27 = v19;
        [(CRLPathSource *)v26 naturalSize];
        v28 = NSStringFromCGSize(v45);
        v29 = [(CRLMaskInfo *)self geometry];
        [v29 size];
        v30 = NSStringFromCGSize(v46);
        *buf = 67110402;
        v32 = v18;
        v33 = 2082;
        v34 = "[CRLMaskInfo setPathSource:]";
        v35 = 2082;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskInfo.m";
        v37 = 1024;
        v38 = 110;
        v39 = 2114;
        v40 = v28;
        v41 = 2114;
        v42 = v30;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Path source set on mask info that doesn't have a natural size that aligns with the mask's info geometry! Path Source Size: %{public}@ Geometry Size: %{public}@", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101343CD4();
      }

      v20 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v20);
      }

      v21 = [NSString stringWithUTF8String:"[CRLMaskInfo setPathSource:]"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskInfo.m"];
      [(CRLPathSource *)self->_pathSource naturalSize];
      v23 = NSStringFromCGSize(v43);
      v24 = [(CRLMaskInfo *)self geometry];
      [v24 size];
      v25 = NSStringFromCGSize(v44);
      [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:110 isFatal:0 description:"Path source set on mask info that doesn't have a natural size that aligns with the mask's info geometry! Path Source Size: %{public}@ Geometry Size: %{public}@", v23, v25];
    }
  }
}

- (CRLCanvasElementInfo)parentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  return WeakRetained;
}

@end