@interface CRLPdfTaggerTextColumnOwnerContext
- (CRLPdfTaggerTextColumnOwnerContext)initWithStateOfTagger:(id)tagger columns:(id)columns storage:(id)storage limitSelection:(id)selection;
- (CRLWPSelection)limitSelection;
- (_TtC8Freeform12CRLWPStorage)storage;
@end

@implementation CRLPdfTaggerTextColumnOwnerContext

- (CRLPdfTaggerTextColumnOwnerContext)initWithStateOfTagger:(id)tagger columns:(id)columns storage:(id)storage limitSelection:(id)selection
{
  columnsCopy = columns;
  storageCopy = storage;
  selectionCopy = selection;
  v17.receiver = self;
  v17.super_class = CRLPdfTaggerTextColumnOwnerContext;
  v14 = [(CRLPdfTaggerContext *)&v17 initWithStateOfTagger:tagger];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_columns, columns);
    objc_storeWeak(&v15->_storage, storageCopy);
    objc_storeWeak(&v15->_limitSelection, selectionCopy);
  }

  return v15;
}

- (_TtC8Freeform12CRLWPStorage)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  return WeakRetained;
}

- (CRLWPSelection)limitSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_limitSelection);

  return WeakRetained;
}

@end