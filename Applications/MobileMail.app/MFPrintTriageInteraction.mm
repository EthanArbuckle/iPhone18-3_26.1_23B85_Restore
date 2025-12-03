@interface MFPrintTriageInteraction
+ (id)interactionWithContentRequest:(id)request scene:(id)scene delegate:(id)delegate;
- (MFMessagePrinterDelegate)printerDelegate;
- (id)title;
- (void)_performInteraction_Internal;
@end

@implementation MFPrintTriageInteraction

+ (id)interactionWithContentRequest:(id)request scene:(id)scene delegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___MFPrintTriageInteraction;
  v9 = objc_msgSendSuper2(&v11, "interactionWithContentRequest:scene:", request, scene);
  [v9 setPrinterDelegate:delegateCopy];

  return v9;
}

- (void)_performInteraction_Internal
{
  contentRequest = [(MFMessageCompositionTriageInteraction *)self contentRequest];

  if (contentRequest)
  {
    v4 = [MFMessagePrinter alloc];
    contentRequest2 = [(MFMessageCompositionTriageInteraction *)self contentRequest];
    v10 = [(MFMessagePrinter *)v4 initWithContentRequest:contentRequest2];
  }

  else
  {
    v10 = 0;
  }

  printerDelegate = [(MFPrintTriageInteraction *)self printerDelegate];
  [(MFMessagePrinter *)v10 setDelegate:printerDelegate];

  presentationSource = [(MFTriageInteraction *)self presentationSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    presentationSource2 = [(MFTriageInteraction *)self presentationSource];
    [(MFMessagePrinter *)v10 presentPrintPopoverFromBarButtonItem:presentationSource2];
  }

  else
  {
    [(MFMessagePrinter *)v10 presentPrintSheet];
  }
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PRINT" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (MFMessagePrinterDelegate)printerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_printerDelegate);

  return WeakRetained;
}

@end