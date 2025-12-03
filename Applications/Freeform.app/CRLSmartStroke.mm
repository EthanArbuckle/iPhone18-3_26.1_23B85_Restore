@interface CRLSmartStroke
+ (CRLSmartStroke)strokeWithName:(id)name color:(id)color width:(double)width;
+ (Class)classForName:(id)name;
- (BOOL)canDrawWithOtherStroke:(id)stroke;
- (BOOL)isEqual:(id)equal;
- (CRLSmartStroke)initWithName:(id)name color:(id)color width:(double)width;
- (CRLSmartStroke)initWithName:(id)name color:(id)color width:(double)width cap:(unint64_t)cap join:(unint64_t)join pattern:(id)pattern miterLimit:(double)limit;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CRLSmartStroke

+ (Class)classForName:(id)name
{
  nameCopy = name;
  v16[0] = @"Chalk2";
  v16[1] = @"Dry Brush";
  v16[2] = @"Feathered Brush";
  v16[3] = @"Pen";
  v16[4] = @"Pencil";
  v16[5] = @"Crayon";
  v4 = [NSArray arrayWithObjects:v16 count:6];
  v5 = [v4 containsObject:nameCopy];

  if ((v5 & 1) == 0)
  {
    v15 = @"Calligraphy";
    v6 = [NSArray arrayWithObjects:&v15 count:1];
    v7 = [v6 containsObject:nameCopy];

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
        sub_10134A2C8(nameCopy, v8, v9);
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
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:64 isFatal:0 description:"Unable to find Smart Stroke class for name: %@", nameCopy];
    }
  }

  v13 = objc_opt_class();

  return v13;
}

+ (CRLSmartStroke)strokeWithName:(id)name color:(id)color width:(double)width
{
  nameCopy = name;
  colorCopy = color;
  v9 = [objc_alloc(objc_opt_class()) initWithName:nameCopy color:colorCopy width:width];

  return v9;
}

- (CRLSmartStroke)initWithName:(id)name color:(id)color width:(double)width
{
  nameCopy = name;
  colorCopy = color;
  v10 = +[CRLStrokePattern solidPattern];
  v11 = [(CRLSmartStroke *)self initWithName:nameCopy color:colorCopy width:0 cap:0 join:v10 pattern:width miterLimit:4.0];

  return v11;
}

- (CRLSmartStroke)initWithName:(id)name color:(id)color width:(double)width cap:(unint64_t)cap join:(unint64_t)join pattern:(id)pattern miterLimit:(double)limit
{
  nameCopy = name;
  colorCopy = color;
  patternCopy = pattern;
  v23.receiver = self;
  v23.super_class = CRLSmartStroke;
  v19 = [(CRLStroke *)&v23 initWithColor:colorCopy width:cap cap:join join:patternCopy pattern:width miterLimit:limit];
  if (v19)
  {
    v20 = [nameCopy copy];
    mStrokeName = v19->mStrokeName;
    v19->mStrokeName = v20;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (id)mutableCopyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);
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

- (BOOL)canDrawWithOtherStroke:(id)stroke
{
  strokeCopy = stroke;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, strokeCopy);
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