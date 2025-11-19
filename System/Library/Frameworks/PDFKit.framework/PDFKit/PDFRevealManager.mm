@interface PDFRevealManager
- (PDFRevealManager)initWithPDFView:(id)a3;
- (id)PDFRVPresenter;
- (void)reset;
@end

@implementation PDFRevealManager

- (PDFRevealManager)initWithPDFView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PDFRevealManager;
  v5 = [(PDFRevealManager *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(PDFRevealManagerPrivate);
    v7 = v5->_private;
    v5->_private = v6;

    objc_storeWeak(&v5->_private->pdfView, v4);
  }

  return v5;
}

- (id)PDFRVPresenter
{
  rvPresenter = self->_private->rvPresenter;
  if (!rvPresenter)
  {
    if (loadReveal_onceToken != -1)
    {
      RVItemClass_cold_1();
    }

    v4 = objc_alloc_init(0);
    v5 = self->_private;
    v6 = v5->rvPresenter;
    v5->rvPresenter = v4;

    rvPresenter = self->_private->rvPresenter;
  }

  return rvPresenter;
}

- (void)reset
{
  v2 = self->_private;
  rvPresenter = v2->rvPresenter;
  v2->rvPresenter = 0;
}

@end