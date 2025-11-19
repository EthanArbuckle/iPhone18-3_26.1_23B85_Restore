@interface AVLayoutViewRowHead
- (AVLayoutItemAttributes)firstAttributesInPriorityOrder;
- (AVLayoutViewRowHead)initWithFirstAttributesInLayoutOrder:(id)a3 firstAttributesInPriorityOrder:(id)a4;
@end

@implementation AVLayoutViewRowHead

- (AVLayoutItemAttributes)firstAttributesInPriorityOrder
{
  WeakRetained = objc_loadWeakRetained(&self->_firstAttributesInPriorityOrder);

  return WeakRetained;
}

- (AVLayoutViewRowHead)initWithFirstAttributesInLayoutOrder:(id)a3 firstAttributesInPriorityOrder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVLayoutViewRowHead;
  v9 = [(AVLayoutViewRowHead *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstAttributesInLayoutOrder, a3);
    objc_storeWeak(&v10->_firstAttributesInPriorityOrder, v8);
  }

  return v10;
}

@end