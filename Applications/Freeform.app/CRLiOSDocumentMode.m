@interface CRLiOSDocumentMode
+ (id)modeWithBoardViewController:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldSelectAndScrollWithApplePencil;
- (CRLiOSDocumentMode)initWithBoardViewController:(id)a3;
- (NSArray)editorControllersToObserve;
- (_TtC8Freeform25CRLiOSBoardViewController)boardViewController;
- (unint64_t)hash;
- (void)willShowContextMenuInteraction:(id)a3 atPoint:(CGPoint)a4;
@end

@implementation CRLiOSDocumentMode

+ (id)modeWithBoardViewController:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBoardViewController:v3];

  return v4;
}

- (CRLiOSDocumentMode)initWithBoardViewController:(id)a3
{
  v4 = a3;
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

    objc_storeWeak(&v5->_boardViewController, v4);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLiOSDocumentMode;
  return [(CRLiOSDocumentMode *)&v4 isEqual:a3];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = CRLiOSDocumentMode;
  return [(CRLiOSDocumentMode *)&v3 hash];
}

- (NSArray)editorControllersToObserve
{
  v3 = [(CRLiOSDocumentMode *)self boardViewController];
  v4 = [v3 editorControllersToObserveForMode:self];

  return v4;
}

- (BOOL)shouldSelectAndScrollWithApplePencil
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CRLSelectAndScrollWithApplePencil"];

  return v3;
}

- (void)willShowContextMenuInteraction:(id)a3 atPoint:(CGPoint)a4
{
  v5 = [(CRLiOSDocumentMode *)self boardViewController:a3];
  v6 = [v5 presentedViewController];

  if (v6)
  {
    v7 = [(CRLiOSDocumentMode *)self boardViewController];
    [v7 dismissViewControllerAnimated:0 completion:0];
  }
}

- (_TtC8Freeform25CRLiOSBoardViewController)boardViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_boardViewController);

  return WeakRetained;
}

@end