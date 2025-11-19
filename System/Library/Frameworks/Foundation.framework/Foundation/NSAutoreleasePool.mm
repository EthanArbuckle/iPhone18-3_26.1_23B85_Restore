@interface NSAutoreleasePool
+ (NSAutoreleasePool)allocWithZone:(_NSZone *)a3;
- (NSAutoreleasePool)init;
- (NSAutoreleasePool)initWithCapacity:(unint64_t)a3;
- (void)addObject:(id)anObject;
- (void)drain;
- (void)release;
@end

@implementation NSAutoreleasePool

- (NSAutoreleasePool)init
{
  self->_token = _CFAutoreleasePoolPush();
  self->_reserved3 = 0;
  self->_reserved2 = 0;
  self->_reserved = 0;
  return self;
}

- (void)release
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_reserved2)
  {
    v4 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: This pool has already been released, do not drain it (double release).", v4);
  }

  if (self->_reserved3)
  {
    v5 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: This pool has already been drained, do not release it (double release).", v5);
  }

  token = self->_token;
  self->_reserved2 = -1;
  self->_token = 0;
  if (token)
  {
    _CFAutoreleasePoolPop();
    if (_NSDoAPCache == 1)
    {
      objc_removeAssociatedObjects(self);
      v7 = 0;
      while (1)
      {
        v8 = _NSAPCache[v7];
        if (!v8)
        {
          atomic_compare_exchange_strong(&_NSAPCache[v7], &v8, self);
          if (!v8)
          {
            break;
          }
        }

        if (++v7 == 4)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v9.receiver = self;
      v9.super_class = NSAutoreleasePool;
      [(NSAutoreleasePool *)&v9 dealloc];
    }
  }
}

- (void)drain
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_reserved2)
  {
    v4 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: This pool has already been released, do not drain it (double release).", v4);
  }

  if (self->_reserved3)
  {
    v5 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: This pool has already been drained, do not release it (double release).", v5);
  }

  token = self->_token;
  self->_token = 0;
  self->_reserved3 = -1;
  if (token)
  {
    _CFAutoreleasePoolPop();
    if (_NSDoAPCache == 1)
    {
      objc_removeAssociatedObjects(self);
      v7 = 0;
      while (1)
      {
        v8 = _NSAPCache[v7];
        if (!v8)
        {
          atomic_compare_exchange_strong(&_NSAPCache[v7], &v8, self);
          if (!v8)
          {
            break;
          }
        }

        if (++v7 == 4)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v9.receiver = self;
      v9.super_class = NSAutoreleasePool;
      [(NSAutoreleasePool *)&v9 dealloc];
    }
  }
}

+ (NSAutoreleasePool)allocWithZone:(_NSZone *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (_NSDoAPCache == 1)
  {
    v3 = 0;
    while (1)
    {
      v4 = _NSAPCache[v3];
      if (v4)
      {
        v5 = _NSAPCache[v3];
        atomic_compare_exchange_strong(&_NSAPCache[v3], &v5, 0);
        if (v5 == v4)
        {
          break;
        }
      }

      if (++v3 == 4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___NSAutoreleasePool;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }

  return v4;
}

- (NSAutoreleasePool)initWithCapacity:(unint64_t)a3
{
  v4 = _NSMethodExceptionProem(self, a2);
  NSLog(@"%@: Do not use this init method.", v4);

  return [(NSAutoreleasePool *)self init];
}

- (void)addObject:(id)anObject
{
  if (((atomic_fetch_add(&addObject__logCount, 1u) + 1) & 0xF) == 1)
  {
    v4 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: Do not use this instance method on specific pools -- just use -autorelease instead.", v4);
  }

  if (self->_token)
  {

    _CFAutoreleasePoolAddObject();
  }
}

@end