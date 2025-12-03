@interface THWKeynoteShowLayout
- (CGSize)showSize;
- (KPFDocumentProtocol)kpfDocument;
- (void)dealloc;
@end

@implementation THWKeynoteShowLayout

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWKeynoteShowLayout;
  [(THWKeynoteShowLayout *)&v3 dealloc];
}

- (KPFDocumentProtocol)kpfDocument
{
  result = self->_kpfDocument;
  if (!result)
  {
    result = +[KPFDocumentFactory createDocumentWithKPFBundle:drmContext:](KPFDocumentFactory, "createDocumentWithKPFBundle:drmContext:", +[NSBundle bundleWithURL:](NSBundle, "bundleWithURL:", [-[THWKeynoteShowLayout info](self "info")]), objc_msgSend(-[THWKeynoteShowLayout info](self, "info"), "drmContext"));
    self->_kpfDocument = result;
  }

  return result;
}

- (CGSize)showSize
{
  kpfDocument = [(THWKeynoteShowLayout *)self kpfDocument];

  [(KPFDocumentProtocol *)kpfDocument showSize];
  result.height = v4;
  result.width = v3;
  return result;
}

@end