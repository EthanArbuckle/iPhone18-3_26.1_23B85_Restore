@interface AFLinkedListItem
- (AFLinkedListItem)initWithObject:(id)a3;
- (void)insertAfterItem:(id)a3;
- (void)insertBeforeItem:(id)a3;
- (void)removeFromList;
@end

@implementation AFLinkedListItem

- (void)removeFromList
{
  v4 = [(AFLinkedListItem *)self previousItem];
  v3 = [(AFLinkedListItem *)self nextItem];
  [v4 setNextItem:v3];
  [(AFLinkedListItem *)self setPreviousItem:0];
  [(AFLinkedListItem *)self setNextItem:0];
  [v3 setPreviousItem:v4];
}

- (void)insertAfterItem:(id)a3
{
  v5 = a3;
  v4 = [(AFLinkedListItem *)v5 nextItem];
  if (v5 != self && v4 != self)
  {
    [(AFLinkedListItem *)v5 setNextItem:self];
    [(AFLinkedListItem *)self setPreviousItem:v5];
    [(AFLinkedListItem *)self setNextItem:v4];
    [(AFLinkedListItem *)v4 setPreviousItem:self];
  }
}

- (void)insertBeforeItem:(id)a3
{
  v5 = a3;
  v4 = [(AFLinkedListItem *)v5 previousItem];
  if (v5 != self && v4 != self)
  {
    [(AFLinkedListItem *)v4 setNextItem:self];
    [(AFLinkedListItem *)self setPreviousItem:v4];
    [(AFLinkedListItem *)self setNextItem:v5];
    [(AFLinkedListItem *)v5 setPreviousItem:self];
  }
}

- (AFLinkedListItem)initWithObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AFLinkedListItem;
  v6 = [(AFLinkedListItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, a3);
  }

  return v7;
}

@end