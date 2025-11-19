@interface CRLImageToolbarButtonItem
+ (id)itemWithImageNamed:(id)a3 target:(id)a4 action:(SEL)a5;
- (CRLImageToolbarButtonItem)init;
- (CRLImageToolbarButtonItem)initWithCoder:(id)a3;
- (CRLImageToolbarButtonItem)initWithImageNamed:(id)a3 target:(id)a4 action:(SEL)a5;
- (void)didTapButton:(id)a3 withEvent:(id)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setLandscapeImagePhone:(id)a3;
@end

@implementation CRLImageToolbarButtonItem

- (CRLImageToolbarButtonItem)initWithImageNamed:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = CRLImageToolbarButtonItem;
  v10 = [(CRLImageToolbarButtonItem *)&v17 init];
  v11 = v10;
  if (v10)
  {
    [(CRLImageToolbarButtonItem *)v10 setStyle:0];
    [(CRLImageToolbarButtonItem *)v11 setTarget:v9];
    [(CRLImageToolbarButtonItem *)v11 setAction:a5];
    v12 = [CRLImageToolbarButton buttonWithType:1];
    button = v11->_button;
    v11->_button = v12;

    [(CRLImageToolbarButton *)v11->_button addTarget:v11 action:"didTapButton:withEvent:" forControlEvents:64];
    [(CRLImageToolbarButton *)v11->_button setImageNamed:v8];
    [(CRLImageToolbarButtonItem *)v11 setCustomView:v11->_button];
    if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
    {
      v14 = +[UIColor labelColor];
      [(CRLImageToolbarButtonItem *)v11 setTintColor:v14];

      v15 = [(CRLImageToolbarButtonItem *)v11 tintColor];
      [(CRLImageToolbarButton *)v11->_button setTintColor:v15];

      [(CRLImageToolbarButton *)v11->_button tintColorDidChange];
    }
  }

  return v11;
}

+ (id)itemWithImageNamed:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithImageNamed:v9 target:v8 action:a5];

  return v10;
}

- (CRLImageToolbarButtonItem)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185DCE8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLImageToolbarButtonItem init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButtonItem.m";
    v18 = 1024;
    v19 = 48;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185DD08);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLImageToolbarButtonItem init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButtonItem.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:48 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLImageToolbarButtonItem init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CRLImageToolbarButtonItem)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185DD28);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v15 = v4;
    v16 = 2082;
    v17 = "[CRLImageToolbarButtonItem initWithCoder:]";
    v18 = 2082;
    v19 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButtonItem.m";
    v20 = 1024;
    v21 = 52;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185DD48);
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v15 = v4;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v9 = [NSString stringWithUTF8String:"[CRLImageToolbarButtonItem initWithCoder:]"];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButtonItem.m"];
  [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:52 isFatal:0 description:"Do not call method"];

  v11 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLImageToolbarButtonItem initWithCoder:]"];
  v12 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (void)setImage:(id)a3
{
  v4 = a3;
  if ([v4 isSymbolImage])
  {
    [(CRLImageToolbarButton *)self->_button setImage:v4];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013670A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013670B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101367148();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageToolbarButtonItem setImage:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButtonItem.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:66 isFatal:0 description:"Only symbol images are supported"];
  }
}

- (void)setLandscapeImagePhone:(id)a3
{
  v4 = a3;
  if ([v4 isSymbolImage])
  {
    [(CRLImageToolbarButton *)self->_button setImage:v4];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101367170();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101367184();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101367218();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageToolbarButtonItem setLandscapeImagePhone:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButtonItem.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:76 isFatal:0 description:"Only symbol images are supported"];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CRLImageToolbarButtonItem;
  [(CRLImageToolbarButtonItem *)&v5 setEnabled:?];
  [(CRLImageToolbarButton *)self->_button setEnabled:v3];
}

- (void)didTapButton:(id)a3 withEvent:(id)a4
{
  v8 = a4;
  if ([(CRLImageToolbarButtonItem *)self action])
  {
    v5 = +[UIApplication sharedApplication];
    v6 = [(CRLImageToolbarButtonItem *)self action];
    v7 = [(CRLImageToolbarButtonItem *)self target];
    [v5 sendAction:v6 to:v7 from:self forEvent:v8];
  }
}

@end