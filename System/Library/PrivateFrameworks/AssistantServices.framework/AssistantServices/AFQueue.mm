@interface AFQueue
- (AFQueueDelegate)delegate;
- (id)_objects;
- (id)dequeueAllObjects;
- (id)dequeueObject;
- (id)description;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)enqueueObject:(id)object;
- (void)enqueueObjects:(id)objects;
@end

@implementation AFQueue

- (void)dealloc
{
  v3 = self->_head;
  if (v3)
  {
    nextItem = v3;
    do
    {
      v5 = nextItem;
      nextItem = [v5 nextItem];

      [v5 removeFromList];
    }

    while (nextItem);
  }

  v6.receiver = self;
  v6.super_class = AFQueue;
  [(AFQueue *)&v6 dealloc];
}

- (id)dequeueAllObjects
{
  if (self->_count)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_count];
    v4 = self->_head;
    if (v4)
    {
      nextItem = v4;
      do
      {
        object = [nextItem object];
        [v3 addObject:object];

        v7 = nextItem;
        nextItem = [v7 nextItem];

        [v7 removeFromList];
      }

      while (nextItem);
    }

    head = self->_head;
    self->_head = 0;

    tail = self->_tail;
    self->_tail = 0;

    self->_count = 0;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (AFQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dequeueObject
{
  if (self->_count && (v3 = self->_head) != 0)
  {
    object = [(AFLinkedListItem *)v3 object];
    v5 = self->_head;
    tail = self->_tail;
    if (tail == v5)
    {
      self->_tail = 0;
    }

    nextItem = [(AFLinkedListItem *)self->_head nextItem];
    head = self->_head;
    self->_head = nextItem;

    [(AFLinkedListItem *)v5 removeFromList];
    --self->_count;
  }

  else
  {
    object = 0;
  }

  return object;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AFQueue;
  v3 = [(AFQueue *)&v7 description];
  _objects = [(AFQueue *)self _objects];
  v5 = [v3 stringByAppendingFormat:@" %@", _objects];

  return v5;
}

- (void)enqueueObjects:(id)objects
{
  v26 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v5 = [objectsCopy count];
  if (!v5)
  {
    goto LABEL_18;
  }

  v20 = v5;
  v6 = self->_head;
  v7 = self->_tail;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = objectsCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = *v22;
  do
  {
    v12 = 0;
    v13 = v7;
    do
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v14 = [[AFLinkedListItem alloc] initWithObject:*(*(&v21 + 1) + 8 * v12)];
      v7 = v14;
      if (v6)
      {
        if (!v13)
        {
          goto LABEL_10;
        }

LABEL_9:
        [(AFLinkedListItem *)v7 insertAfterItem:v13];
        goto LABEL_10;
      }

      v6 = v14;
      if (v13)
      {
        goto LABEL_9;
      }

LABEL_10:

      ++v12;
      v13 = v7;
    }

    while (v10 != v12);
    v15 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v10 = v15;
  }

  while (v15);
LABEL_15:

  objc_storeStrong(&self->_head, v6);
  objc_storeStrong(&self->_tail, v7);
  self->_count += v20;
  delegate = [(AFQueue *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate2 = [(AFQueue *)self delegate];
    [delegate2 queue:self didEnqueueObjects:v8];
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
}

- (void)enqueueObject:(id)object
{
  v9 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v4 = MEMORY[0x1E695DEC8];
  objectCopy2 = object;
  v6 = [v4 arrayWithObjects:&objectCopy count:1];

  [(AFQueue *)self enqueueObjects:v6, objectCopy, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)objectAtIndex:(unint64_t)index
{
  count = self->_count;
  if (count <= index)
  {
    object = 0;
    goto LABEL_11;
  }

  indexCopy = index;
  if (!index)
  {
    head = self->_head;
    goto LABEL_7;
  }

  if (count - 1 == index)
  {
    head = self->_tail;
LABEL_7:
    object = [(AFLinkedListItem *)head object];
    goto LABEL_11;
  }

  nextItem = self->_head;
  do
  {
    v8 = nextItem;
    nextItem = [(AFLinkedListItem *)nextItem nextItem];

    --indexCopy;
  }

  while (indexCopy);
  object = [(AFLinkedListItem *)nextItem object];

LABEL_11:

  return object;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  state->var1 = objects;
  state->var2 = &state->var2;
  if (!self->_count || state->var3[0] == 1)
  {
    return 0;
  }

  var0 = state->var0;
  v12 = state->var0;
  if (!var0)
  {
    v12 = self->_head;
  }

  v13 = v12;
  v6 = 0;
  while (count != v6)
  {
    objects[v6++] = [v13 object];
    nextItem = [v13 nextItem];

    state->var0 = nextItem;
    v13 = nextItem;
    if (!nextItem)
    {
      state->var3[0] = 1;
      return v6;
    }
  }

  return count;
}

- (id)_objects
{
  if (self->_count)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_count];
    v4 = self->_head;
    if (v4)
    {
      v5 = v4;
      do
      {
        object = [v5 object];
        [v3 addObject:object];

        nextItem = [v5 nextItem];

        v5 = nextItem;
      }

      while (nextItem);
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

@end