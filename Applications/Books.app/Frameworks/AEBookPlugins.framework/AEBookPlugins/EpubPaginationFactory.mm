@interface EpubPaginationFactory
- (EpubPaginationFactory)initWithPaginationController:(id)controller;
- (id)lookupKeyForStyle:(id)style geometry:(id)geometry;
- (void)addPrepareJob:(id)job;
- (void)dealloc;
- (void)quit;
@end

@implementation EpubPaginationFactory

- (EpubPaginationFactory)initWithPaginationController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = EpubPaginationFactory;
  v5 = [(BKPaginationFactory *)&v13 initWithPaginationController:controllerCopy];
  if (v5)
  {
    book = [controllerCopy book];
    v5->_isFixedLayout = [book isFixedLayout];

    book2 = [controllerCopy book];
    v5->_respectsPageBreaks = [book2 obeyPageBreaks];

    book3 = [controllerCopy book];
    respectImageSizeClass = [book3 respectImageSizeClass];
    respectImageSizeClass = v5->_respectImageSizeClass;
    v5->_respectImageSizeClass = respectImageSizeClass;

    book4 = [controllerCopy book];
    v5->_respectImageSizeClassIsPrefix = [book4 respectImageSizeClassIsPrefix];
  }

  return v5;
}

- (id)lookupKeyForStyle:(id)style geometry:(id)geometry
{
  if (self->_isFixedLayout)
  {
    v5 = [(BKPaginationFactory *)self paginationController:style];
    bookDatabaseKey = [v5 bookDatabaseKey];
    paginationController = [(BKPaginationFactory *)self paginationController];
    paginationRevision = [paginationController paginationRevision];
    v9 = [NSString stringWithFormat:@"%@-%@", bookDatabaseKey, paginationRevision];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = EpubPaginationFactory;
    v9 = [(BKPaginationFactory *)&v11 lookupKeyForStyle:style geometry:geometry];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = EpubPaginationFactory;
  [(EpubPaginationFactory *)&v4 dealloc];
}

- (void)quit
{
  v2.receiver = self;
  v2.super_class = EpubPaginationFactory;
  [(BKPaginationFactory *)&v2 quit];
}

- (void)addPrepareJob:(id)job
{
  jobCopy = job;
  if (!self->_isFixedLayout)
  {
    v5 = _BookEPUBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = [NSString stringWithUTF8String:"[EpubPaginationFactory addPrepareJob:]"];
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_FAULT, "Only Pagination Jobs for fixed layout content should go through %@", &v14, 0xCu);
    }
  }

  v7 = [BKPictureBookPaginationOperation alloc];
  paginationController = [(BKPaginationFactory *)self paginationController];
  paginationController2 = [(BKPaginationFactory *)self paginationController];
  bookAnnotationProvider = [paginationController2 bookAnnotationProvider];
  v11 = [(BKPaginationOperation *)v7 init:jobCopy paginationOperationController:paginationController annotationProvider:bookAnnotationProvider];

  paginationController3 = [(BKPaginationFactory *)self paginationController];
  prepareQueue = [paginationController3 prepareQueue];
  [prepareQueue addOperation:v11];
}

@end