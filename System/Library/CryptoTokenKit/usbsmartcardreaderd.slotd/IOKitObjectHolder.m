@interface IOKitObjectHolder
- (IOKitObjectHolder)init;
- (IOKitObjectHolder)initWithObject:(unsigned int)a3;
- (IOKitObjectHolder)initWithRetainedObject:(unsigned int)a3;
- (id)nextObject;
- (void)dealloc;
@end

@implementation IOKitObjectHolder

- (IOKitObjectHolder)init
{
  v3.receiver = self;
  v3.super_class = IOKitObjectHolder;
  result = [(IOKitObjectHolder *)&v3 init];
  if (result)
  {
    result->_holder = 0;
  }

  return result;
}

- (IOKitObjectHolder)initWithObject:(unsigned int)a3
{
  v9.receiver = self;
  v9.super_class = IOKitObjectHolder;
  v4 = [(IOKitObjectHolder *)&v9 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v4->_holder = a3;
  if (a3)
  {
    if (IOObjectRetain(a3))
    {
      v6 = sub_100001170();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100014208();
      }

      goto LABEL_7;
    }

LABEL_8:
    v7 = v5;
    goto LABEL_9;
  }

LABEL_7:
  v7 = 0;
LABEL_9:

  return v7;
}

- (IOKitObjectHolder)initWithRetainedObject:(unsigned int)a3
{
  v8.receiver = self;
  v8.super_class = IOKitObjectHolder;
  v4 = [(IOKitObjectHolder *)&v8 init];
  v5 = v4;
  if (v4 && (v4->_holder = a3) == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)dealloc
{
  IOObjectRelease(self->_holder);
  v3.receiver = self;
  v3.super_class = IOKitObjectHolder;
  [(IOKitObjectHolder *)&v3 dealloc];
}

- (id)nextObject
{
  v2 = [[IOKitObjectHolder alloc] initWithRetainedObject:IOIteratorNext(self->_holder)];

  return v2;
}

@end