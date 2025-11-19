@interface CRLiOSScribbleInteractionSetupHelper
+ (void)setupScribbleEditingProvider:(id)a3 scribbleObserver:(id)a4 scribbleActive:(BOOL)a5;
@end

@implementation CRLiOSScribbleInteractionSetupHelper

+ (void)setupScribbleEditingProvider:(id)a3 scribbleObserver:(id)a4 scribbleActive:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 scribbleInteraction];
  v10 = v9;
  if (v5)
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

    v16 = [[CRLiOSScribbleInteractionDelegate alloc] initWithEditingProvider:v7 scribbleInteractionObserver:v8];
    [v7 setScribbleInteractionDelegate:v16];

    v17 = [UIIndirectScribbleInteraction alloc];
    v18 = [v7 scribbleInteractionDelegate];
    v19 = [v17 initWithDelegate:v18];

    v20 = [v7 view];
    [v20 addInteraction:v19];

    v21 = [UIScribbleInteraction alloc];
    v22 = [v7 scribbleInteractionDelegate];
    v23 = [v21 initWithDelegate:v22];

    v24 = [v7 view];
    [v24 addInteraction:v23];

    [v7 setScribbleInteraction:v19];
    [v7 setDirectScribbleInteraction:v23];
  }

  else
  {

    if (v10)
    {
      v25 = [v7 view];
      v26 = [v7 scribbleInteraction];
      [v25 removeInteraction:v26];

      [v7 setScribbleInteraction:0];
    }

    [v7 setScribbleInteractionDelegate:0];
    [v7 setDirectScribbleInteraction:0];
  }
}

@end