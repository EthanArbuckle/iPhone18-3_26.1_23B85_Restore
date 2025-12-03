@interface CRLiOSCanvasDraggingContext
- (BOOL)draggingWantsForcedUpdate;
- (CRLiOSCanvasDraggingContext)init;
- (CRLiOSCanvasDraggingContext)initWithSourceObject:(id)object;
- (id)modelContainer;
- (id)sourceObject;
- (void)draggingEnteredWithOperation:(unint64_t)operation targetInteractiveCanvasController:(id)controller;
- (void)draggingExited;
- (void)draggingUpdatedWithOperation:(unint64_t)operation targetInteractiveCanvasController:(id)controller;
@end

@implementation CRLiOSCanvasDraggingContext

- (CRLiOSCanvasDraggingContext)initWithSourceObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = CRLiOSCanvasDraggingContext;
  v5 = [(CRLiOSCanvasDraggingContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sourceObject, objectCopy);
  }

  return v6;
}

- (CRLiOSCanvasDraggingContext)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186FC88);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLiOSCanvasDraggingContext init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDraggingContext.m";
    v18 = 1024;
    v19 = 34;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186FCA8);
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

  v7 = [NSString stringWithUTF8String:"[CRLiOSCanvasDraggingContext init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDraggingContext.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:34 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLiOSCanvasDraggingContext init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)draggingEnteredWithOperation:(unint64_t)operation targetInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_sourceObject);
  v13 = sub_1003035DC(WeakRetained, 1, v7, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLDragOperationCallback);
  [v13 draggingEnteredWithOperation:operation targetInteractiveCanvasController:controllerCopy];
}

- (void)draggingUpdatedWithOperation:(unint64_t)operation targetInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_sourceObject);
  v13 = sub_1003035DC(WeakRetained, 1, v7, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLDragOperationCallback);
  [v13 draggingUpdatedWithOperation:operation targetInteractiveCanvasController:controllerCopy];
}

- (void)draggingExited
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceObject);
  v8 = sub_1003035DC(WeakRetained, 1, v2, v3, v4, v5, v6, v7, &OBJC_PROTOCOL___CRLDragOperationCallback);
  [v8 draggingExited];
}

- (BOOL)draggingWantsForcedUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceObject);
  v9 = sub_1003035DC(WeakRetained, 1, v3, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLDragOperationCallback);
  draggingWantsForcedUpdate = [v9 draggingWantsForcedUpdate];

  return draggingWantsForcedUpdate;
}

- (id)modelContainer
{
  WeakRetained = objc_loadWeakRetained(&self->modelContainer);

  return WeakRetained;
}

- (id)sourceObject
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceObject);

  return WeakRetained;
}

@end