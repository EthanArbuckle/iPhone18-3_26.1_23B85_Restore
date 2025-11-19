@interface AMSDoubleLinkedList
- (AMSDoubleLinkedList)init;
- (NSArray)allNodes;
- (id)appendObject:(id)a3;
- (id)description;
- (id)insertObject:(id)a3;
- (void)appendNode:(id)a3;
- (void)insertNode:(id)a3;
- (void)removeAllNodes;
- (void)removeNode:(id)a3;
@end

@implementation AMSDoubleLinkedList

- (AMSDoubleLinkedList)init
{
  v7.receiver = self;
  v7.super_class = AMSDoubleLinkedList;
  v2 = [(AMSDoubleLinkedList *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    listIdentifier = v2->_listIdentifier;
    v2->_listIdentifier = v4;
  }

  return v2;
}

- (NSArray)allNodes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(AMSDoubleLinkedList *)self head];
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 addObject:v5];
      v6 = [v5 next];

      v5 = v6;
    }

    while (v6);
  }

  return v3;
}

- (void)appendNode:(id)a3
{
  v9 = a3;
  v4 = [v9 listIdentifier];

  if (v4)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"AMSDoubleLinkedListInvalidNode" reason:@"Attempting to add a node that has already been added to another list." userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [(AMSDoubleLinkedList *)self tail];
  [(AMSDoubleLinkedList *)self setTail:v9];
  v6 = [(AMSDoubleLinkedList *)self head];

  if (!v6)
  {
    [(AMSDoubleLinkedList *)self setHead:v9];
  }

  [v9 setPrevious:v5];
  [v9 setNext:0];
  [v5 setNext:v9];
  v7 = [(AMSDoubleLinkedList *)self listIdentifier];
  [v9 setListIdentifier:v7];

  ++self->_count;
}

- (id)appendObject:(id)a3
{
  v4 = a3;
  v5 = [[AMSDoubleLinkedListNode alloc] initWithObject:v4];

  [(AMSDoubleLinkedList *)self appendNode:v5];

  return v5;
}

- (void)insertNode:(id)a3
{
  v9 = a3;
  v4 = [v9 listIdentifier];

  if (v4)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"AMSDoubleLinkedListInvalidNode" reason:@"Attempting to add a node that has already been added to another list." userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [(AMSDoubleLinkedList *)self head];
  [(AMSDoubleLinkedList *)self setHead:v9];
  v6 = [(AMSDoubleLinkedList *)self tail];

  if (!v6)
  {
    [(AMSDoubleLinkedList *)self setTail:v9];
  }

  [v9 setPrevious:0];
  [v9 setNext:v5];
  [v5 setPrevious:v9];
  v7 = [(AMSDoubleLinkedList *)self listIdentifier];
  [v9 setListIdentifier:v7];

  ++self->_count;
}

- (id)insertObject:(id)a3
{
  v4 = a3;
  v5 = [[AMSDoubleLinkedListNode alloc] initWithObject:v4];

  [(AMSDoubleLinkedList *)self insertNode:v5];

  return v5;
}

- (void)removeAllNodes
{
  [(AMSDoubleLinkedList *)self setHead:0];
  [(AMSDoubleLinkedList *)self setTail:0];
  self->_count = 0;
}

- (void)removeNode:(id)a3
{
  v16 = a3;
  v4 = [v16 listIdentifier];
  v5 = [(AMSDoubleLinkedList *)self listIdentifier];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:@"AMSDoubleLinkedListInvalidNode" reason:@"Attempting to remove a node from a list it doesn't belong to." userInfo:0];
    objc_exception_throw(v15);
  }

  v7 = [v16 next];
  v8 = [v16 previous];
  [v7 setPrevious:v8];

  v9 = [v16 previous];
  v10 = [v16 next];
  [v9 setNext:v10];

  v11 = [(AMSDoubleLinkedList *)self head];

  if (v11 == v16)
  {
    v12 = [v16 next];
    [(AMSDoubleLinkedList *)self setHead:v12];
  }

  v13 = [(AMSDoubleLinkedList *)self tail];

  if (v13 == v16)
  {
    v14 = [v16 previous];
    [(AMSDoubleLinkedList *)self setTail:v14];
  }

  [v16 setListIdentifier:0];
  --self->_count;
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(AMSDoubleLinkedList *)self allNodes];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 object];
        [v3 appendFormat:@"%@", v10];

        v11 = [(AMSDoubleLinkedList *)self tail];

        if (v9 != v11)
        {
          [v3 appendString:{@", \n"}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

@end