@interface CRLPasteboardObjectReadAssistantHelper
+ (id)contentDescriptionFromPasteboard:(id)pasteboard;
@end

@implementation CRLPasteboardObjectReadAssistantHelper

+ (id)contentDescriptionFromPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  if (![pasteboardCopy containsNativePasteboardTypes] || (v20 = @"com.apple.freeform.CRLDescription", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v20, 1), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(pasteboardCopy, "containsPasteboardTypes:", v4), v4, !v5))
  {
    v10 = 0;
    goto LABEL_26;
  }

  v6 = [pasteboardCopy dataForPasteboardType:@"com.apple.freeform.CRLDescription"];
  if (!v6)
  {
    v12 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134A5E4();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134A60C(v12, v13);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134A6C8();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v14, v12);
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPasteboardObjectReadAssistantHelper contentDescriptionFromPasteboard:]");
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardObjectReadAssistantHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v15 lineNumber:18 isFatal:0 description:"invalid nil value for '%{public}s'", "data"];

    goto LABEL_24;
  }

  v19 = 0;
  v7 = objc_opt_class();
  v18 = 0;
  v8 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:&v19 error:&v18];
  v9 = v18;
  v10 = sub_100014370(v7, v8);

  if (!v10)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10134A4C8();
    }

    v16 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10134A4F0(v16, v9);
    }

    goto LABEL_24;
  }

  if (v19 != 200)
  {

    if (qword_101AD5A08 != -1)
    {
      sub_10134A424();
    }

    v11 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10134A44C(&v19, v11);
    }

LABEL_24:
    v10 = 0;
  }

LABEL_26:

  return v10;
}

@end