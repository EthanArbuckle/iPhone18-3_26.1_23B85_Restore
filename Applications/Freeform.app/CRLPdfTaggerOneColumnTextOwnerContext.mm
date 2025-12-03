@interface CRLPdfTaggerOneColumnTextOwnerContext
- (CRLPdfTaggerOneColumnTextOwnerContext)initWithStateOfTagger:(id)tagger textColumn:(id)column limitSelection:(id)selection;
@end

@implementation CRLPdfTaggerOneColumnTextOwnerContext

- (CRLPdfTaggerOneColumnTextOwnerContext)initWithStateOfTagger:(id)tagger textColumn:(id)column limitSelection:(id)selection
{
  taggerCopy = tagger;
  columnCopy = column;
  selectionCopy = selection;
  v16 = columnCopy;
  v11 = [NSArray arrayWithObjects:&v16 count:1];
  storage = [columnCopy storage];
  v15.receiver = self;
  v15.super_class = CRLPdfTaggerOneColumnTextOwnerContext;
  v13 = [(CRLPdfTaggerTextColumnOwnerContext *)&v15 initWithStateOfTagger:taggerCopy columns:v11 storage:storage limitSelection:selectionCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_textColumn, column);
  }

  return v13;
}

@end