@interface _CollectionTwoLinesContentViewModel
- (void)collectionHandlerInfoUpdated:(id)updated;
- (void)setCollection:(id)collection;
@end

@implementation _CollectionTwoLinesContentViewModel

- (void)collectionHandlerInfoUpdated:(id)updated
{
  updatedCopy = updated;
  v7 = updatedCopy;
  if (self->_collection == updatedCopy || [(CollectionHandler *)updatedCopy isEqual:?])
  {
    title = [(CollectionHandler *)v7 title];
    [(_BasicTwoLinesContentViewModel *)self setTitleText:title];

    subtitle = [(CollectionHandler *)v7 subtitle];
    [(_BasicTwoLinesContentViewModel *)self setSubtitleText:subtitle];

    [(_BasicTwoLinesContentViewModel *)self updateObservers];
  }
}

- (void)setCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if (self->_collection != collectionCopy)
  {
    v8 = collectionCopy;
    v7 = [(CollectionHandler *)collectionCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(CollectionHandler *)self->_collection removeObserver:self];
      objc_storeStrong(&self->_collection, collection);
      [(CollectionHandler *)self->_collection addObserver:self];
      v6 = v8;
    }
  }
}

@end