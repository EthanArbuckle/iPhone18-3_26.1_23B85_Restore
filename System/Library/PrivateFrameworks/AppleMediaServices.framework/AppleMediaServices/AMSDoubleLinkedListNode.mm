@interface AMSDoubleLinkedListNode
- (AMSDoubleLinkedListNode)initWithObject:(id)object;
- (AMSDoubleLinkedListNode)previous;
@end

@implementation AMSDoubleLinkedListNode

- (AMSDoubleLinkedListNode)previous
{
  WeakRetained = objc_loadWeakRetained(&self->_previous);

  return WeakRetained;
}

- (AMSDoubleLinkedListNode)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = AMSDoubleLinkedListNode;
  v6 = [(AMSDoubleLinkedListNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

@end