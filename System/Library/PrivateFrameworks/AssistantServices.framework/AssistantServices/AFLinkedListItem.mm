@interface AFLinkedListItem
- (AFLinkedListItem)initWithObject:(id)object;
- (void)insertAfterItem:(id)item;
- (void)insertBeforeItem:(id)item;
- (void)removeFromList;
@end

@implementation AFLinkedListItem

- (void)removeFromList
{
  previousItem = [(AFLinkedListItem *)self previousItem];
  nextItem = [(AFLinkedListItem *)self nextItem];
  [previousItem setNextItem:nextItem];
  [(AFLinkedListItem *)self setPreviousItem:0];
  [(AFLinkedListItem *)self setNextItem:0];
  [nextItem setPreviousItem:previousItem];
}

- (void)insertAfterItem:(id)item
{
  itemCopy = item;
  nextItem = [(AFLinkedListItem *)itemCopy nextItem];
  if (itemCopy != self && nextItem != self)
  {
    [(AFLinkedListItem *)itemCopy setNextItem:self];
    [(AFLinkedListItem *)self setPreviousItem:itemCopy];
    [(AFLinkedListItem *)self setNextItem:nextItem];
    [(AFLinkedListItem *)nextItem setPreviousItem:self];
  }
}

- (void)insertBeforeItem:(id)item
{
  itemCopy = item;
  previousItem = [(AFLinkedListItem *)itemCopy previousItem];
  if (itemCopy != self && previousItem != self)
  {
    [(AFLinkedListItem *)previousItem setNextItem:self];
    [(AFLinkedListItem *)self setPreviousItem:previousItem];
    [(AFLinkedListItem *)self setNextItem:itemCopy];
    [(AFLinkedListItem *)itemCopy setPreviousItem:self];
  }
}

- (AFLinkedListItem)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = AFLinkedListItem;
  v6 = [(AFLinkedListItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

@end