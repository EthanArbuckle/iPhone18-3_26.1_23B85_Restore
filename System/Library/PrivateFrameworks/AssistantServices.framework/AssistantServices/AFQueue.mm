@interface AFQueue
- (AFQueueDelegate)delegate;
- (id)_objects;
- (id)dequeueAllObjects;
- (id)dequeueObject;
- (id)description;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
- (void)enqueueObject:(id)a3;
- (void)enqueueObjects:(id)a3;
@end

@implementation AFQueue

- (void)dealloc
{
  v3 = self->_head;
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = v4;
      v4 = [v5 nextItem];

      [v5 removeFromList];
    }

    while (v4);
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
      v5 = v4;
      do
      {
        v6 = [v5 object];
        [v3 addObject:v6];

        v7 = v5;
        v5 = [v7 nextItem];

        [v7 removeFromList];
      }

      while (v5);
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
    v4 = [(AFLinkedListItem *)v3 object];
    v5 = self->_head;
    tail = self->_tail;
    if (tail == v5)
    {
      self->_tail = 0;
    }

    v7 = [(AFLinkedListItem *)self->_head nextItem];
    head = self->_head;
    self->_head = v7;

    [(AFLinkedListItem *)v5 removeFromList];
    --self->_count;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AFQueue;
  v3 = [(AFQueue *)&v7 description];
  v4 = [(AFQueue *)self _objects];
  v5 = [v3 stringByAppendingFormat:@" %@", v4];

  return v5;
}

- (void)enqueueObjects:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 count];
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
  v8 = v4;
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
  v16 = [(AFQueue *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(AFQueue *)self delegate];
    [v18 queue:self didEnqueueObjects:v8];
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
}

- (void)enqueueObject:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(AFQueue *)self enqueueObjects:v6, v8, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)objectAtIndex:(unint64_t)a3
{
  count = self->_count;
  if (count <= a3)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v4 = a3;
  if (!a3)
  {
    head = self->_head;
    goto LABEL_7;
  }

  if (count - 1 == a3)
  {
    head = self->_tail;
LABEL_7:
    v6 = [(AFLinkedListItem *)head object];
    goto LABEL_11;
  }

  v7 = self->_head;
  do
  {
    v8 = v7;
    v7 = [(AFLinkedListItem *)v7 nextItem];

    --v4;
  }

  while (v4);
  v6 = [(AFLinkedListItem *)v7 object];

LABEL_11:

  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  a3->var1 = a4;
  a3->var2 = &a3->var2;
  if (!self->_count || a3->var3[0] == 1)
  {
    return 0;
  }

  var0 = a3->var0;
  v12 = a3->var0;
  if (!var0)
  {
    v12 = self->_head;
  }

  v13 = v12;
  v6 = 0;
  while (a5 != v6)
  {
    a4[v6++] = [v13 object];
    v14 = [v13 nextItem];

    a3->var0 = v14;
    v13 = v14;
    if (!v14)
    {
      a3->var3[0] = 1;
      return v6;
    }
  }

  return a5;
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
        v6 = [v5 object];
        [v3 addObject:v6];

        v7 = [v5 nextItem];

        v5 = v7;
      }

      while (v7);
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

@end