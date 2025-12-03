@interface CRLDragAndDropCanvasHighlightDecorator
- (CRLCanvasShapeRenderable)dragAndDropHighlightRenderable;
- (CRLDragAndDropCanvasHighlightDecorator)init;
- (CRLDragAndDropCanvasHighlightDecorator)initWithInteractiveCanvasController:(id)controller;
- (CRLDragAndDropCanvasHighlightDecorator)initWithInteractiveCanvasController:(id)controller highlightPath:(CGPath *)path;
- (NSArray)decoratorOverlayRenderables;
- (void)beginHighlightingWithPath:(CGPath *)path;
- (void)endHighlighting;
- (void)setHighlightPath:(CGPath *)path;
@end

@implementation CRLDragAndDropCanvasHighlightDecorator

- (CRLDragAndDropCanvasHighlightDecorator)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CRLDragAndDropCanvasHighlightDecorator;
  v5 = [(CRLDragAndDropCanvasHighlightDecorator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mICC, controllerCopy);
  }

  return v6;
}

- (CRLDragAndDropCanvasHighlightDecorator)initWithInteractiveCanvasController:(id)controller highlightPath:(CGPath *)path
{
  v5 = [(CRLDragAndDropCanvasHighlightDecorator *)self initWithInteractiveCanvasController:controller];
  v6 = v5;
  if (v5)
  {
    [(CRLDragAndDropCanvasHighlightDecorator *)v5 setHighlightPath:path];
  }

  return v6;
}

- (CRLDragAndDropCanvasHighlightDecorator)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183A2E8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLDragAndDropCanvasHighlightDecorator init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropCanvasHighlightDecorator.m";
    v18 = 1024;
    v19 = 42;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183A308);
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

  v7 = [NSString stringWithUTF8String:"[CRLDragAndDropCanvasHighlightDecorator init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropCanvasHighlightDecorator.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:42 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLDragAndDropCanvasHighlightDecorator init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CRLCanvasShapeRenderable)dragAndDropHighlightRenderable
{
  mDragAndDropHighlightRenderable = self->mDragAndDropHighlightRenderable;
  if (!mDragAndDropHighlightRenderable)
  {
    v4 = +[CRLCanvasShapeRenderable renderable];
    [(CRLCanvasShapeRenderable *)v4 setFillColor:0];
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    [(CRLCanvasRenderable *)v4 setDelegate:WeakRetained];

    v6 = [CRLColor colorWithRed:0.00392156886 green:0.647058845 blue:0.98828125 alpha:1.0];
    -[CRLCanvasShapeRenderable setStrokeColor:](v4, "setStrokeColor:", [v6 CGColor]);

    [(CRLCanvasShapeRenderable *)v4 setLineWidth:2.0];
    v7 = self->mDragAndDropHighlightRenderable;
    self->mDragAndDropHighlightRenderable = v4;

    v8 = objc_loadWeakRetained(&self->mICC);
    [v8 invalidateLayersForDecorator:self];

    mDragAndDropHighlightRenderable = self->mDragAndDropHighlightRenderable;
  }

  return mDragAndDropHighlightRenderable;
}

- (void)beginHighlightingWithPath:(CGPath *)path
{
  if (self->mDragAndDropHighlightRenderable)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130EED4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EEE8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130EF98();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLDragAndDropCanvasHighlightDecorator beginHighlightingWithPath:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropCanvasHighlightDecorator.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:78 isFatal:0 description:"expected nil value for '%{public}s'", "mDragAndDropHighlightRenderable"];
  }

  [(CRLDragAndDropCanvasHighlightDecorator *)self setHighlightPath:path];
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  [WeakRetained addDecorator:self];
}

- (void)setHighlightPath:(CGPath *)path
{
  dragAndDropHighlightRenderable = [(CRLDragAndDropCanvasHighlightDecorator *)self dragAndDropHighlightRenderable];
  [dragAndDropHighlightRenderable setPath:path];
}

- (void)endHighlighting
{
  mDragAndDropHighlightRenderable = self->mDragAndDropHighlightRenderable;
  if (!mDragAndDropHighlightRenderable)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130F064();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F078();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130F128();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLDragAndDropCanvasHighlightDecorator endHighlighting]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropCanvasHighlightDecorator.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:95 isFatal:0 description:"invalid nil value for '%{public}s'", "mDragAndDropHighlightRenderable"];

    mDragAndDropHighlightRenderable = self->mDragAndDropHighlightRenderable;
  }

  [(CRLCanvasRenderable *)mDragAndDropHighlightRenderable setDelegate:0];
  v7 = self->mDragAndDropHighlightRenderable;
  self->mDragAndDropHighlightRenderable = 0;

  WeakRetained = objc_loadWeakRetained(&self->mICC);
  [WeakRetained removeDecorator:self];
}

- (NSArray)decoratorOverlayRenderables
{
  if (self->mDragAndDropHighlightRenderable)
  {
    mDragAndDropHighlightRenderable = self->mDragAndDropHighlightRenderable;
    v2 = [NSArray arrayWithObjects:&mDragAndDropHighlightRenderable count:1];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

@end