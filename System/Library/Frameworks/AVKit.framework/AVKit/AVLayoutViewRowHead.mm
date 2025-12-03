@interface AVLayoutViewRowHead
- (AVLayoutItemAttributes)firstAttributesInPriorityOrder;
- (AVLayoutViewRowHead)initWithFirstAttributesInLayoutOrder:(id)order firstAttributesInPriorityOrder:(id)priorityOrder;
@end

@implementation AVLayoutViewRowHead

- (AVLayoutItemAttributes)firstAttributesInPriorityOrder
{
  WeakRetained = objc_loadWeakRetained(&self->_firstAttributesInPriorityOrder);

  return WeakRetained;
}

- (AVLayoutViewRowHead)initWithFirstAttributesInLayoutOrder:(id)order firstAttributesInPriorityOrder:(id)priorityOrder
{
  orderCopy = order;
  priorityOrderCopy = priorityOrder;
  v12.receiver = self;
  v12.super_class = AVLayoutViewRowHead;
  v9 = [(AVLayoutViewRowHead *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstAttributesInLayoutOrder, order);
    objc_storeWeak(&v10->_firstAttributesInPriorityOrder, priorityOrderCopy);
  }

  return v10;
}

@end