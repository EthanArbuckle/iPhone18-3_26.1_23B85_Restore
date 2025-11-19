@interface OrderedCollectionGroupedInsertion
- (OrderedCollectionGroupedInsertion)initWithType:(int64_t)a3 insertions:(id)a4 associatedObject:(id)a5;
@end

@implementation OrderedCollectionGroupedInsertion

- (OrderedCollectionGroupedInsertion)initWithType:(int64_t)a3 insertions:(id)a4 associatedObject:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = OrderedCollectionGroupedInsertion;
  v11 = [(OrderedCollectionGroupedInsertion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_insertions, a4);
    objc_storeStrong(&v12->_associatedObject, a5);
  }

  return v12;
}

@end