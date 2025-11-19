@interface QLPreviewItemPrinter
- (QLPreviewItemPrinter)initWithItem:(id)a3;
- (int64_t)numberOfPages;
- (void)_didReceivePrinter:(id)a3;
- (void)_waitForPrinterSynchronously;
- (void)drawPageAtIndex:(int64_t)a3 inRect:(CGRect)a4;
- (void)prepareForDrawingPages:(_NSRange)a3;
@end

@implementation QLPreviewItemPrinter

- (QLPreviewItemPrinter)initWithItem:(id)a3
{
  v4 = a3;
  if (v4 && (v16.receiver = self, v16.super_class = QLPreviewItemPrinter, (self = [(QLPreviewItemPrinter *)&v16 init]) != 0))
  {
    v5 = [[QLItemPresenterViewController alloc] initForPrinting:1];
    [(QLPreviewItemPrinter *)self setPresenter:v5];

    v6 = dispatch_queue_create("com.apple.quicklook.previewprinter.accessprinter", 0);
    accessPrinterQueue = self->_accessPrinterQueue;
    self->_accessPrinterQueue = v6;

    v8 = dispatch_semaphore_create(0);
    waitForPrinterSemaphore = self->_waitForPrinterSemaphore;
    self->_waitForPrinterSemaphore = v8;

    v10 = [(QLPreviewItemPrinter *)self presenter];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__QLPreviewItemPrinter_initWithItem___block_invoke;
    v14[3] = &unk_278B582B0;
    v11 = self;
    v15 = v11;
    [v10 loadPreviewControllerWithContents:v4 context:0 completionHandler:v14];

    self = v11;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __37__QLPreviewItemPrinter_initWithItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 _didReceivePrinter:0];
  }

  else
  {
    v5 = [*(a1 + 32) presenter];
    v4 = [v5 printer];
    [v2 _didReceivePrinter:v4];
  }
}

- (int64_t)numberOfPages
{
  [(QLPreviewItemPrinter *)self _waitForPrinterSynchronously];
  v4.receiver = self;
  v4.super_class = QLPreviewItemPrinter;
  return [(QLPreviewPrinter *)&v4 numberOfPages];
}

- (void)prepareForDrawingPages:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [(QLPreviewItemPrinter *)self _waitForPrinterSynchronously];
  v6.receiver = self;
  v6.super_class = QLPreviewItemPrinter;
  [(QLPreviewPrinter *)&v6 prepareForDrawingPages:location, length];
}

- (void)drawPageAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(QLPreviewItemPrinter *)self _waitForPrinterSynchronously];
  v10.receiver = self;
  v10.super_class = QLPreviewItemPrinter;
  [(QLPreviewPrinter *)&v10 drawPageAtIndex:a3 inRect:x, y, width, height];
}

- (void)_didReceivePrinter:(id)a3
{
  objc_storeStrong(&self->_itemPrinter, a3);
  v5 = a3;
  self->_didReceivePrinter = 1;
  dispatch_semaphore_signal(self->_waitForPrinterSemaphore);
}

- (void)_waitForPrinterSynchronously
{
  accessPrinterQueue = self->_accessPrinterQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__QLPreviewItemPrinter__waitForPrinterSynchronously__block_invoke;
  block[3] = &unk_278B57190;
  block[4] = self;
  dispatch_sync(accessPrinterQueue, block);
}

intptr_t __52__QLPreviewItemPrinter__waitForPrinterSynchronously__block_invoke(intptr_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 152) & 1) == 0)
  {
    return dispatch_semaphore_wait(*(v1 + 144), 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

@end