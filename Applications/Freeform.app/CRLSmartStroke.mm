@interface CRLSmartStroke
+ (CRLSmartStroke)strokeWithName:(id)a3 color:(id)a4 width:(double)a5;
+ (Class)classForName:(id)a3;
- (BOOL)canDrawWithOtherStroke:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CRLSmartStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5;
- (CRLSmartStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(unint64_t)a6 join:(unint64_t)a7 pattern:(id)a8 miterLimit:(double)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CRLSmartStroke

+ (Class)classForName:(id)a3
{
  v3 = a3;
  v16[0] = @"Chalk2";
  v16[1] = @"Dry Brush";
  v16[2] = @"Feathered Brush";
  v16[3] = @"Pen";
  v16[4] = @"Pencil";
  v16[5] = @"Crayon";
  v4 = [NSArray arrayWithObjects:v16 count:6];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v15 = @"Calligraphy";
    v6 = [NSArray arrayWithObjects:&v15 count:1];
    v7 = [v6 containsObject:v3];

    if ((v7 & 1) == 0)
    {
      v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134A2A0();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134A2C8(v3, v8, v9);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134A384();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLSmartStroke classForName:]");
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSmartStroke.mm"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:64 isFatal:0 description:"Unable to find Smart Stroke class for name: %@", v3];
    }
  }

  v13 = objc_opt_class();

  return v13;
}

+ (CRLSmartStroke)strokeWithName:(id)a3 color:(id)a4 width:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(objc_opt_class()) initWithName:v7 color:v8 width:a5];

  return v9;
}

- (CRLSmartStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[CRLStrokePattern solidPattern];
  v11 = [(CRLSmartStroke *)self initWithName:v8 color:v9 width:0 cap:0 join:v10 pattern:a5 miterLimit:4.0];

  return v11;
}

- (CRLSmartStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(unint64_t)a6 join:(unint64_t)a7 pattern:(id)a8 miterLimit:(double)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v23.receiver = self;
  v23.super_class = CRLSmartStroke;
  v19 = [(CRLStroke *)&v23 initWithColor:v17 width:a6 cap:a7 join:v18 pattern:a5 miterLimit:a9];
  if (v19)
  {
    v20 = [v16 copy];
    mStrokeName = v19->mStrokeName;
    v19->mStrokeName = v20;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10134A3AC();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    *buf = 67110402;
    v17 = v4;
    v18 = 2082;
    v19 = "[CRLSmartStroke copyWithZone:]";
    v20 = 2082;
    v21 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSmartStroke.mm";
    v22 = 1024;
    v23 = 105;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d %@ is an abstract superclass. Subclasses must inherit %@", buf, 0x36u);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10134A3C0();
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v7 = [NSString stringWithUTF8String:"[CRLSmartStroke copyWithZone:]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSmartStroke.mm"];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = NSStringFromSelector(a2);
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:105 isFatal:0 description:"%@ is an abstract superclass. Subclasses must inherit %@", v10, v11];

  return 0;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10134A3E8();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    *buf = 67110402;
    v17 = v4;
    v18 = 2082;
    v19 = "[CRLSmartStroke mutableCopyWithZone:]";
    v20 = 2082;
    v21 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSmartStroke.mm";
    v22 = 1024;
    v23 = 110;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d %@ is an abstract superclass. Subclasses must inherit %@", buf, 0x36u);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10134A3FC();
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v7 = [NSString stringWithUTF8String:"[CRLSmartStroke mutableCopyWithZone:]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSmartStroke.mm"];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = NSStringFromSelector(a2);
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:110 isFatal:0 description:"%@ is an abstract superclass. Subclasses must inherit %@", v10, v11];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
  v7 = v6;
  if (v6 && ([v6 strokeName], v8 = objc_claimAutoreleasedReturnValue(), -[CRLSmartStroke strokeName](self, "strokeName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, (v10 & 1) != 0))
  {
    v13.receiver = self;
    v13.super_class = CRLSmartStroke;
    v11 = [(CRLStroke *)&v13 isEqual:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)canDrawWithOtherStroke:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
  if (v6)
  {
    v7 = [(CRLSmartStroke *)self isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = CRLSmartStroke;
  v3 = [(CRLStroke *)&v5 hash];
  return [(NSString *)self->mStrokeName hash]^ v3;
}

@end