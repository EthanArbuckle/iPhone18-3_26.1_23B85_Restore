@interface MFMessagePrinter
- (CGRect)_printingRectForImageableRect:(CGRect)rect;
- (MFMessagePrinter)initWithContentRequest:(id)request;
- (MFMessagePrinterDelegate)delegate;
- (id)printInteractionControllerParentViewController:(id)controller;
- (int64_t)numberOfPages;
- (void)_setupPrintableContent;
- (void)dealloc;
- (void)drawContentForPageAtIndex:(int64_t)index inRect:(CGRect)rect;
- (void)drawPageAtIndex:(int64_t)index inRect:(CGRect)rect;
- (void)loadWithCompletion:(id)completion;
- (void)messageViewController:(id)controller didFinishRenderingWithHeight:(double)height;
- (void)presentPrintPopoverFromBarButtonItem:(id)item;
- (void)presentPrintSheet;
@end

@implementation MFMessagePrinter

- (void)dealloc
{
  v3 = +[UIPrintInteractionController sharedPrintController];
  printPageRenderer = [v3 printPageRenderer];

  if (printPageRenderer == self)
  {
    [v3 setPrintPageRenderer:0];
  }

  v5.receiver = self;
  v5.super_class = MFMessagePrinter;
  [(MFMessagePrinter *)&v5 dealloc];
}

- (MFMessagePrinter)initWithContentRequest:(id)request
{
  requestCopy = request;
  v28.receiver = self;
  v28.super_class = MFMessagePrinter;
  v5 = [(MFMessagePrinter *)&v28 init];
  if (v5)
  {
    message = [requestCopy message];
    message = v5->_message;
    v5->_message = message;

    v8 = objc_alloc_init(EFPromise);
    webLoadPromise = v5->_webLoadPromise;
    v5->_webLoadPromise = v8;

    v10 = [MFMessageViewController alloc];
    v11 = +[UIApplication sharedApplication];
    accountsController = [v11 accountsController];
    v13 = [(MFMessageViewController *)v10 initWithScene:0 accountsController:accountsController];
    messageViewController = v5->_messageViewController;
    v5->_messageViewController = v13;

    [(MFMessageViewController *)v5->_messageViewController setDelegate:v5];
    [(MFMessageViewController *)v5->_messageViewController setContentRequest:requestCopy];
    v15 = +[UIPrintInfo printInfo];
    subject = [(EMMessage *)v5->_message subject];
    v17 = [subject length];
    if (v17)
    {
      subjectString = [subject subjectString];
      v19 = subjectString;
    }

    else
    {
      v19 = +[NSBundle mainBundle];
      subjectString = [v19 localizedStringForKey:@"NO_SUBJECT" value:&stru_100662A88 table:@"Main"];
    }

    [v15 setJobName:subjectString];
    if (!v17)
    {
    }

    v20 = +[UIPrintInteractionController sharedPrintController];
    [v20 setPrintPageRenderer:v5];
    [v20 setPrintInfo:v15];
    [v20 setDelegate:v5];
    v21 = [UIWindow alloc];
    v22 = +[UIScreen mainScreen];
    [v22 bounds];
    v23 = [v21 initWithFrame:?];
    window = v5->_window;
    v5->_window = v23;

    [(UIWindow *)v5->_window setAlpha:0.01];
    [(UIWindow *)v5->_window setHidden:0];
    v25 = v5->_window;
    view = [(MFMessageViewController *)v5->_messageViewController view];
    [(UIWindow *)v25 addSubview:view];
  }

  return v5;
}

- (void)presentPrintPopoverFromBarButtonItem:(id)item
{
  itemCopy = item;
  future = [(EFPromise *)self->_webLoadPromise future];
  v6 = +[EFScheduler mainThreadScheduler];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F1A88;
  v8[3] = &unk_10064EFC0;
  v8[4] = self;
  v7 = itemCopy;
  v9 = v7;
  [future onScheduler:v6 addSuccessBlock:v8];
}

- (void)presentPrintSheet
{
  future = [(EFPromise *)self->_webLoadPromise future];
  v4 = +[EFScheduler mainThreadScheduler];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001F1B6C;
  v5[3] = &unk_100654EB8;
  v5[4] = self;
  [future onScheduler:v4 addSuccessBlock:v5];
}

- (void)loadWithCompletion:(id)completion
{
  completionCopy = completion;
  future = [(EFPromise *)self->_webLoadPromise future];
  v6 = +[EFScheduler mainThreadScheduler];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F1C80;
  v8[3] = &unk_100654EE0;
  v7 = completionCopy;
  v9 = v7;
  [future onScheduler:v6 addSuccessBlock:v8];
}

- (id)printInteractionControllerParentViewController:(id)controller
{
  delegate = [(MFMessagePrinter *)self delegate];
  v5 = [delegate parentViewControllerForMessagePrinter:self];

  return v5;
}

- (int64_t)numberOfPages
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001F1DBC;
  v6[3] = &unk_10064C7E8;
  v6[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performSyncBlock:v6];

  v5.receiver = self;
  v5.super_class = MFMessagePrinter;
  return [(MFMessagePrinter *)&v5 numberOfPages];
}

- (CGRect)_printingRectForImageableRect:(CGRect)rect
{
  rect_24 = rect.origin.y;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  UIEdgeInsetsMakeWithEdges();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(MFMessagePrinter *)self paperRect];
  v16 = v10 + v15;
  v36 = v8 + v17;
  v19 = v18 - (v10 + v14);
  v21 = v20 - (v8 + v12);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MinY = CGRectGetMinY(v41);
  rect_8 = v19;
  v42.origin.x = v16;
  v42.origin.y = v36;
  v42.size.width = v19;
  v42.size.height = v21;
  v23 = fmax(MinY - CGRectGetMinY(v42), 0.0);
  v43.origin.x = v16;
  v43.origin.y = v36;
  v43.size.width = v19;
  v43.size.height = v21;
  MaxY = CGRectGetMaxY(v43);
  v44.origin.x = x;
  rect = x;
  v44.origin.y = rect_24;
  v44.size.width = width;
  v44.size.height = height;
  v25 = MaxY - CGRectGetMaxY(v44);
  if (v23 >= v25)
  {
    v26 = v23;
  }

  else
  {
    v26 = v25;
  }

  v45.origin.x = x;
  v45.origin.y = rect_24;
  v45.size.width = width;
  v45.size.height = height;
  MinX = CGRectGetMinX(v45);
  v46.origin.x = v16;
  v46.origin.y = v36;
  v46.size.width = rect_8;
  v46.size.height = v21;
  v28 = fmax(MinX - CGRectGetMinX(v46), 0.0);
  v47.origin.x = v16;
  v47.origin.y = v36;
  v47.size.width = rect_8;
  v47.size.height = v21;
  MaxX = CGRectGetMaxX(v47);
  v48.origin.x = rect;
  v48.origin.y = rect_24;
  v48.size.height = height;
  v48.size.width = width;
  v30 = MaxX - CGRectGetMaxX(v48);
  if (v28 >= v30)
  {
    v31 = v28;
  }

  else
  {
    v31 = v30;
  }

  v32 = v16 + v31;
  v33 = v36 + v26;
  v34 = rect_8 - (v31 + v31);
  v35 = v21 - (v26 + v26);
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)_setupPrintableContent
{
  if (!self->_isPrintableContentInitialized)
  {
    self->_isPrintableContentInitialized = 1;
    [(MFMessagePrinter *)self printableRect];
    [(MFMessagePrinter *)self _printingRectForImageableRect:?];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    messageContentView = [(MFMessageViewController *)self->_messageViewController messageContentView];
    [messageContentView setFrame:{0.0, 0.0, v8, v10}];
    v11 = +[UIApplication sharedApplication];
    mailboxProvider = [v11 mailboxProvider];
    [messageContentView setMailboxProvider:mailboxProvider];

    [messageContentView layoutSubviews];
    [(MFMessagePrinter *)self printableRect];
    [(MFMessagePrinter *)self setHeaderHeight:v6 - v13];
    [(MFMessagePrinter *)self printableRect];
    [(MFMessagePrinter *)self setFooterHeight:v14 + v15 - (v6 + v10)];
    [(MFMessagePrinter *)self printableRect];
    v17 = v16;
    [(MFMessagePrinter *)self printableRect];
    v19 = v18;
    v21 = v20;
    headerFormatter = self->_headerFormatter;
    if (!headerFormatter)
    {
      headerView = [messageContentView headerView];
      [headerView removeAllHeaderBlocksAnimated:0];

      v24 = [[MFPrintMessageHeaderViewBlock alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      headerView2 = [messageContentView headerView];
      [headerView2 addHeaderBlock:v24 animated:1];

      headerView3 = [messageContentView headerView];
      viewPrintFormatter = [headerView3 viewPrintFormatter];
      v28 = self->_headerFormatter;
      self->_headerFormatter = viewPrintFormatter;

      [(MFMessagePrinter *)self addPrintFormatter:self->_headerFormatter startingAtPageAtIndex:0];
      headerFormatter = self->_headerFormatter;
    }

    v29 = v4 - v17;
    v30 = v19 + v21 - (v4 + v8);
    [(UIViewPrintFormatter *)headerFormatter setPerPageContentInsets:0.0, v29, 0.0, v30];
    pageCount = [(UIViewPrintFormatter *)self->_headerFormatter pageCount];
    if (pageCount <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = pageCount;
    }

    v33 = v32 - 1;
    [(UIViewPrintFormatter *)self->_headerFormatter rectForPageAtIndex:v32 - 1];
    self->_headerLastPageHeight = headerLastPageHeight;
    bodyFormatter = self->_bodyFormatter;
    if (!bodyFormatter)
    {
      viewPrintFormatter2 = [messageContentView viewPrintFormatter];
      v37 = self->_bodyFormatter;
      self->_bodyFormatter = viewPrintFormatter2;

      [(MFMessagePrinter *)self addPrintFormatter:self->_bodyFormatter startingAtPageAtIndex:v33];
      headerLastPageHeight = self->_headerLastPageHeight;
      bodyFormatter = self->_bodyFormatter;
    }

    [(UIViewPrintFormatter *)bodyFormatter setContentInsets:headerLastPageHeight, v29, 0.0, v30];
  }
}

- (void)messageViewController:(id)controller didFinishRenderingWithHeight:(double)height
{
  webLoadPromise = self->_webLoadPromise;
  v5 = [NSNull null:controller];
  [(EFPromise *)webLoadPromise finishWithResult:?];
}

- (void)drawContentForPageAtIndex:(int64_t)index inRect:(CGRect)rect
{
  [(MFMessagePrinter *)self _printingRectForImageableRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextTranslateCTM(CurrentContext, v7, v9);
  if (!index && self->_contactPhoto)
  {
    v13 = UIGraphicsGetCurrentContext();
    CGContextSaveGState(v13);
    v14 = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(v14, v11 + -27.0, 0.0);
    [(UIImage *)self->_contactPhoto drawInRect:0.0, 0.0, 27.0, 27.0];
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = 27.0;
    v20.size.height = 27.0;
    v21 = CGRectInset(v20, -0.125, -0.125);
    v15 = [UIBezierPath bezierPathWithRoundedRect:v21.origin.x cornerRadius:v21.origin.y, v21.size.width, v21.size.height, 1.0];
    [v15 setLineWidth:0.75];
    v16 = +[UIColor whiteColor];
    [v16 set];

    [v15 stroke];
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = 27.0;
    v22.size.height = 27.0;
    v23 = CGRectInset(v22, 0.125, 0.125);
    v17 = [UIBezierPath bezierPathWithRoundedRect:v23.origin.x cornerRadius:v23.origin.y, v23.size.width, v23.size.height, 1.0];
    [v17 setLineWidth:0.25];
    v18 = [UIColor colorWithWhite:0.75 alpha:1.0];
    [v18 set];

    [v17 stroke];
    CGContextRestoreGState(v13);
  }

  CGContextRestoreGState(CurrentContext);
}

- (void)drawPageAtIndex:(int64_t)index inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10.width = NAN;
  v10.height = NAN;
  slice.origin = v10;
  slice.size = v10;
  remainder.origin = v10;
  remainder.size = v10;
  v24.origin = v10;
  v24.size = v10;
  [(MFMessagePrinter *)self headerHeight];
  v12 = v11;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  CGRectDivide(v28, &slice, &remainder, v12, CGRectMinYEdge);
  [(MFMessagePrinter *)self footerHeight];
  CGRectDivide(remainder, &v24, &remainder, v13, CGRectMaxYEdge);
  if (!CGRectIsEmpty(slice))
  {
    [(MFMessagePrinter *)self drawHeaderForPageAtIndex:index inRect:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  printFormatters = [(MFMessagePrinter *)self printFormatters];
  v15 = [printFormatters countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v15)
  {
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(printFormatters);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        if ([v18 startPage] <= index)
        {
          startPage = [v18 startPage];
          if (startPage + [v18 pageCount] > index)
          {
            [(MFMessagePrinter *)self drawPrintFormatter:v18 forPageAtIndex:index];
          }
        }
      }

      v15 = [printFormatters countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v15);
  }

  if (!CGRectIsEmpty(remainder))
  {
    [(MFMessagePrinter *)self drawContentForPageAtIndex:index inRect:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
  }

  if (!CGRectIsEmpty(v24))
  {
    [(MFMessagePrinter *)self drawFooterForPageAtIndex:index inRect:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
  }
}

- (MFMessagePrinterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end