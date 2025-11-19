@interface CRLFreehandDrawingSelectionDecorator
- (CRLFreehandDrawingSelectionDecorator)initWithInteractiveCanvasController:(id)a3;
- (NSArray)decoratorOverlayRenderables;
- (void)dealloc;
- (void)setDecoratorLayer:(id)a3;
- (void)tearDown;
@end

@implementation CRLFreehandDrawingSelectionDecorator

- (CRLFreehandDrawingSelectionDecorator)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRLFreehandDrawingSelectionDecorator;
  v5 = [(CRLFreehandDrawingSelectionDecorator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_icc, v4);
    [v4 addDecorator:v6];
  }

  return v6;
}

- (void)tearDown
{
  if (self->_isTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101380E60();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101380E74();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101380F08();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingSelectionDecorator tearDown]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingSelectionDecorator.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:32 isFatal:0 description:"Should not call -tearDown twice."];
  }

  self->_isTornDown = 1;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained removeDecorator:self];

  objc_storeWeak(&self->_icc, 0);
}

- (void)dealloc
{
  if (!self->_isTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101380F30();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101380F44();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101380FD8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingSelectionDecorator dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingSelectionDecorator.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:40 isFatal:0 description:"You must call -tearDown before deallocation."];
  }

  v6.receiver = self;
  v6.super_class = CRLFreehandDrawingSelectionDecorator;
  [(CRLFreehandDrawingSelectionDecorator *)&v6 dealloc];
}

- (void)setDecoratorLayer:(id)a3
{
  objc_storeStrong(&self->_layer, a3);
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained invalidateLayersForDecorator:self];
}

- (NSArray)decoratorOverlayRenderables
{
  if (self->_layer)
  {
    v2 = [[CRLCanvasRenderable alloc] initWithCALayer:self->_layer];
    v5 = v2;
    v3 = [NSArray arrayWithObjects:&v5 count:1];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

@end