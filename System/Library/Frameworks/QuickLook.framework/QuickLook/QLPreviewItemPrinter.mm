@interface QLPreviewItemPrinter
- (QLPreviewItemPrinter)initWithItem:(id)item;
- (int64_t)numberOfPages;
- (void)_didReceivePrinter:(id)printer;
- (void)_waitForPrinterSynchronously;
- (void)drawPageAtIndex:(int64_t)index inRect:(CGRect)rect;
- (void)prepareForDrawingPages:(_NSRange)pages;
@end

@implementation QLPreviewItemPrinter

- (QLPreviewItemPrinter)initWithItem:(id)item
{
  itemCopy = item;
  if (itemCopy && (v16.receiver = self, v16.super_class = QLPreviewItemPrinter, (self = [(QLPreviewItemPrinter *)&v16 init]) != 0))
  {
    v5 = [[QLItemPresenterViewController alloc] initForPrinting:1];
    [(QLPreviewItemPrinter *)self setPresenter:v5];

    v6 = dispatch_queue_create("com.apple.quicklook.previewprinter.accessprinter", 0);
    accessPrinterQueue = self->_accessPrinterQueue;
    self->_accessPrinterQueue = v6;

    v8 = dispatch_semaphore_create(0);
    waitForPrinterSemaphore = self->_waitForPrinterSemaphore;
    self->_waitForPrinterSemaphore = v8;

    presenter = [(QLPreviewItemPrinter *)self presenter];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__QLPreviewItemPrinter_initWithItem___block_invoke;
    v14[3] = &unk_278B582B0;
    selfCopy = self;
    v15 = selfCopy;
    [presenter loadPreviewControllerWithContents:itemCopy context:0 completionHandler:v14];

    self = selfCopy;
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
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

- (void)prepareForDrawingPages:(_NSRange)pages
{
  length = pages.length;
  location = pages.location;
  [(QLPreviewItemPrinter *)self _waitForPrinterSynchronously];
  v6.receiver = self;
  v6.super_class = QLPreviewItemPrinter;
  [(QLPreviewPrinter *)&v6 prepareForDrawingPages:location, length];
}

- (void)drawPageAtIndex:(int64_t)index inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(QLPreviewItemPrinter *)self _waitForPrinterSynchronously];
  v10.receiver = self;
  v10.super_class = QLPreviewItemPrinter;
  [(QLPreviewPrinter *)&v10 drawPageAtIndex:index inRect:x, y, width, height];
}

- (void)_didReceivePrinter:(id)printer
{
  objc_storeStrong(&self->_itemPrinter, printer);
  printerCopy = printer;
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