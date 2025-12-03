@interface NSURLQueue
- (BOOL)remove:(id)remove;
- (NSURLQueue)init;
- (id)peek;
- (id)peekAt:(unint64_t)at;
- (id)take;
- (int64_t)indexOf:(id)of;
- (void)clear;
- (void)dealloc;
- (void)put:(id)put;
@end

@implementation NSURLQueue

- (NSURLQueue)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSURLQueue;
  v2 = [(NSURLQueue *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCondition);
    v2->tail = 0;
    v2->monitor = v3;
    v2->count = 0;
    v2->head = 0;
    v2->waitOnTake = 1;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSURLQueue *)self clear];

  v3.receiver = self;
  v3.super_class = NSURLQueue;
  [(NSURLQueue *)&v3 dealloc];
}

- (void)put:(id)put
{
  [self->monitor lock];
  tail = self->tail;
  v6 = +[NSURLQueue newNode];
  self->tail = v6;
  v6->next = 0;
  self->tail->object = put;
  if (tail)
  {
    tail->next = self->tail;
  }

  if (!self->head)
  {
    self->head = self->tail;
  }

  ++self->count;
  [self->monitor signal];
  monitor = self->monitor;

  [monitor unlock];
}

- (id)take
{
  [self->monitor lock];
  while (!self->count && self->waitOnTake)
  {
    [self->monitor wait];
  }

  head = self->head;
  if (head)
  {
    v4 = head->object;
    --self->count;
    next = head->next;
    self->head = next;
    if (!next)
    {
      self->tail = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  [self->monitor unlock];
  return v4;
}

- (id)peek
{
  [self->monitor lock];
  head = self->head;
  if (head)
  {
    object = head->object;
  }

  else
  {
    object = 0;
  }

  [self->monitor unlock];
  return object;
}

- (id)peekAt:(unint64_t)at
{
  [self->monitor lock];
  if (self->count <= at)
  {
    count = 0;
  }

  else
  {
    v5 = at + 1;
    selfCopy = self;
    do
    {
      selfCopy = selfCopy->head;
      --v5;
    }

    while (v5);
    count = selfCopy->count;
  }

  [self->monitor unlock];
  return count;
}

- (BOOL)remove:(id)remove
{
  [self->monitor lock];
  head = self->head;
  if (!head)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_15;
  }

  if (head->object != remove)
  {
    v6 = self->head;
    while (1)
    {
      next = v6->next;
      if (!next)
      {
        goto LABEL_7;
      }

      v8 = v6;
      v6 = v6->next;
      if (next->object == remove)
      {
        goto LABEL_9;
      }
    }
  }

  v8 = 0;
  next = self->head;
LABEL_9:
  if (head == next)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = v8;
  }

  selfCopy->head = next->next;
  if (self->tail == next)
  {
    self->tail = v8;
  }

  --self->count;
  v9 = 1;
LABEL_15:
  [self->monitor unlock];
  return v9;
}

- (void)clear
{
  [self->monitor lock];
  head = self->head;
  if (head)
  {
    do
    {
      next = head->next;

      head = next;
    }

    while (next);
  }

  self->count = 0;
  self->head = 0;
  self->tail = 0;
  monitor = self->monitor;

  [monitor unlock];
}

- (int64_t)indexOf:(id)of
{
  [self->monitor lock];
  head = self->head;
  if (head)
  {
    v6 = 0;
    while (head->object != of)
    {
      ++v6;
      head = head->next;
      if (!head)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = -1;
  }

  [self->monitor unlock];
  return v6;
}

@end