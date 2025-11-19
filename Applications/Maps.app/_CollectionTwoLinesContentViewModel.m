@interface _CollectionTwoLinesContentViewModel
- (void)collectionHandlerInfoUpdated:(id)a3;
- (void)setCollection:(id)a3;
@end

@implementation _CollectionTwoLinesContentViewModel

- (void)collectionHandlerInfoUpdated:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_collection == v4 || [(CollectionHandler *)v4 isEqual:?])
  {
    v5 = [(CollectionHandler *)v7 title];
    [(_BasicTwoLinesContentViewModel *)self setTitleText:v5];

    v6 = [(CollectionHandler *)v7 subtitle];
    [(_BasicTwoLinesContentViewModel *)self setSubtitleText:v6];

    [(_BasicTwoLinesContentViewModel *)self updateObservers];
  }
}

- (void)setCollection:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_collection != v5)
  {
    v8 = v5;
    v7 = [(CollectionHandler *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(CollectionHandler *)self->_collection removeObserver:self];
      objc_storeStrong(&self->_collection, a3);
      [(CollectionHandler *)self->_collection addObserver:self];
      v6 = v8;
    }
  }
}

@end