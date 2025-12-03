@interface CRLiOSDocumentMode
+ (id)modeWithBoardViewController:(id)controller;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldSelectAndScrollWithApplePencil;
- (CRLiOSDocumentMode)initWithBoardViewController:(id)controller;
- (NSArray)editorControllersToObserve;
- (_TtC8Freeform25CRLiOSBoardViewController)boardViewController;
- (unint64_t)hash;
- (void)willShowContextMenuInteraction:(id)interaction atPoint:(CGPoint)point;
@end

@implementation CRLiOSDocumentMode

+ (id)modeWithBoardViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [objc_alloc(objc_opt_class()) initWithBoardViewController:controllerCopy];

  return v4;
}

- (CRLiOSDocumentMode)initWithBoardViewController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = CRLiOSDocumentMode;
  v5 = [(CRLiOSDocumentMode *)&v12 init];
  if (v5)
  {
    if ([(CRLiOSDocumentMode *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134FC80();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134FCA8(v6, v7);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134FD54();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v8, v6);
      }

      v9 = [NSString stringWithUTF8String:"[CRLiOSDocumentMode initWithBoardViewController:]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentMode.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:27 isFatal:0 description:"Should not be initializing an abstract instance of CRLiOSDocumentMode."];
    }

    objc_storeWeak(&v5->_boardViewController, controllerCopy);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = CRLiOSDocumentMode;
  return [(CRLiOSDocumentMode *)&v4 isEqual:equal];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = CRLiOSDocumentMode;
  return [(CRLiOSDocumentMode *)&v3 hash];
}

- (NSArray)editorControllersToObserve
{
  boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
  v4 = [boardViewController editorControllersToObserveForMode:self];

  return v4;
}

- (BOOL)shouldSelectAndScrollWithApplePencil
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CRLSelectAndScrollWithApplePencil"];

  return v3;
}

- (void)willShowContextMenuInteraction:(id)interaction atPoint:(CGPoint)point
{
  v5 = [(CRLiOSDocumentMode *)self boardViewController:interaction];
  presentedViewController = [v5 presentedViewController];

  if (presentedViewController)
  {
    boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
    [boardViewController dismissViewControllerAnimated:0 completion:0];
  }
}

- (_TtC8Freeform25CRLiOSBoardViewController)boardViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_boardViewController);

  return WeakRetained;
}

@end