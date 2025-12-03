@interface CRLiOSScribbleInteractionSetupHelper
+ (void)setupScribbleEditingProvider:(id)provider scribbleObserver:(id)observer scribbleActive:(BOOL)active;
@end

@implementation CRLiOSScribbleInteractionSetupHelper

+ (void)setupScribbleEditingProvider:(id)provider scribbleObserver:(id)observer scribbleActive:(BOOL)active
{
  activeCopy = active;
  providerCopy = provider;
  observerCopy = observer;
  scribbleInteraction = [providerCopy scribbleInteraction];
  v10 = scribbleInteraction;
  if (activeCopy)
  {

    if (v10)
    {
      v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013230AC();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013230C0(v11, v12);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132317C();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v13, v11);
      }

      v14 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLiOSScribbleInteractionSetupHelper setupScribbleEditingProvider:scribbleObserver:scribbleActive:]");
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSScribbleInteractionSetupHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:24 isFatal:0 description:"expected nil value for '%{public}s'", "editingProvider.scribbleInteraction"];
    }

    v16 = [[CRLiOSScribbleInteractionDelegate alloc] initWithEditingProvider:providerCopy scribbleInteractionObserver:observerCopy];
    [providerCopy setScribbleInteractionDelegate:v16];

    v17 = [UIIndirectScribbleInteraction alloc];
    scribbleInteractionDelegate = [providerCopy scribbleInteractionDelegate];
    v19 = [v17 initWithDelegate:scribbleInteractionDelegate];

    view = [providerCopy view];
    [view addInteraction:v19];

    v21 = [UIScribbleInteraction alloc];
    scribbleInteractionDelegate2 = [providerCopy scribbleInteractionDelegate];
    v23 = [v21 initWithDelegate:scribbleInteractionDelegate2];

    view2 = [providerCopy view];
    [view2 addInteraction:v23];

    [providerCopy setScribbleInteraction:v19];
    [providerCopy setDirectScribbleInteraction:v23];
  }

  else
  {

    if (v10)
    {
      view3 = [providerCopy view];
      scribbleInteraction2 = [providerCopy scribbleInteraction];
      [view3 removeInteraction:scribbleInteraction2];

      [providerCopy setScribbleInteraction:0];
    }

    [providerCopy setScribbleInteractionDelegate:0];
    [providerCopy setDirectScribbleInteraction:0];
  }
}

@end