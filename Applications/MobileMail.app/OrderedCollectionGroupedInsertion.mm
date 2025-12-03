@interface OrderedCollectionGroupedInsertion
- (OrderedCollectionGroupedInsertion)initWithType:(int64_t)type insertions:(id)insertions associatedObject:(id)object;
@end

@implementation OrderedCollectionGroupedInsertion

- (OrderedCollectionGroupedInsertion)initWithType:(int64_t)type insertions:(id)insertions associatedObject:(id)object
{
  insertionsCopy = insertions;
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = OrderedCollectionGroupedInsertion;
  v11 = [(OrderedCollectionGroupedInsertion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_insertions, insertions);
    objc_storeStrong(&v12->_associatedObject, object);
  }

  return v12;
}

@end