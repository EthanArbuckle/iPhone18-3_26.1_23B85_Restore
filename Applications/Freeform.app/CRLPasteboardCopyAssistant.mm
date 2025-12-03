@interface CRLPasteboardCopyAssistant
- (CRLPasteboardCopyAssistant)initWithPasteboard:(id)pasteboard sourceContext:(id)context;
- (void)copyToPasteboardIsSmartCopy:(BOOL)copy;
- (void)loadData;
@end

@implementation CRLPasteboardCopyAssistant

- (CRLPasteboardCopyAssistant)initWithPasteboard:(id)pasteboard sourceContext:(id)context
{
  pasteboardCopy = pasteboard;
  contextCopy = context;
  if (!pasteboardCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101353E6C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101353E80();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101353F30();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"[CRLPasteboardCopyAssistant initWithPasteboard:sourceContext:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardCopyAssistant.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:19 isFatal:0 description:"invalid nil value for '%{public}s'", "pasteboard"];
  }

  v15.receiver = self;
  v15.super_class = CRLPasteboardCopyAssistant;
  v12 = [(CRLPasteboardWriteAssistant *)&v15 initWithContext:contextCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pasteboard, pasteboard);
  }

  return v13;
}

- (void)loadData
{
  if (self->_didAttemptToCopy)
  {
    v5.receiver = self;
    v5.super_class = CRLPasteboardCopyAssistant;
    [(CRLPasteboardWriteAssistant *)&v5 loadData];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101353F58();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101353F6C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101354000();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v3 = [NSString stringWithUTF8String:"[CRLPasteboardCopyAssistant loadData]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardCopyAssistant.mm"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:32 isFatal:0 description:"Didn't attempt to copy before trying to load native data."];
  }
}

- (void)copyToPasteboardIsSmartCopy:(BOOL)copy
{
  copyCopy = copy;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101354028();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135403C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013540D0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLPasteboardCopyAssistant copyToPasteboardIsSmartCopy:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardCopyAssistant.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:41 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  [(CRLPasteboard *)self->_pasteboard clearContents];
  pasteboard = self->_pasteboard;
  selfCopy = self;
  v9 = [NSArray arrayWithObjects:&selfCopy count:1];
  [(CRLPasteboard *)pasteboard addItems:v9 isSmartCopy:copyCopy];

  self->_didAttemptToCopy = 1;
}

@end