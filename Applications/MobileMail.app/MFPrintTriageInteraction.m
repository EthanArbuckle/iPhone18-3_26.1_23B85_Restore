@interface MFPrintTriageInteraction
+ (id)interactionWithContentRequest:(id)a3 scene:(id)a4 delegate:(id)a5;
- (MFMessagePrinterDelegate)printerDelegate;
- (id)title;
- (void)_performInteraction_Internal;
@end

@implementation MFPrintTriageInteraction

+ (id)interactionWithContentRequest:(id)a3 scene:(id)a4 delegate:(id)a5
{
  v8 = a5;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___MFPrintTriageInteraction;
  v9 = objc_msgSendSuper2(&v11, "interactionWithContentRequest:scene:", a3, a4);
  [v9 setPrinterDelegate:v8];

  return v9;
}

- (void)_performInteraction_Internal
{
  v3 = [(MFMessageCompositionTriageInteraction *)self contentRequest];

  if (v3)
  {
    v4 = [MFMessagePrinter alloc];
    v5 = [(MFMessageCompositionTriageInteraction *)self contentRequest];
    v10 = [(MFMessagePrinter *)v4 initWithContentRequest:v5];
  }

  else
  {
    v10 = 0;
  }

  v6 = [(MFPrintTriageInteraction *)self printerDelegate];
  [(MFMessagePrinter *)v10 setDelegate:v6];

  v7 = [(MFTriageInteraction *)self presentationSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(MFTriageInteraction *)self presentationSource];
    [(MFMessagePrinter *)v10 presentPrintPopoverFromBarButtonItem:v9];
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