@interface __NSSingleObjectEnumerator
- (__NSSingleObjectEnumerator)init;
- (__NSSingleObjectEnumerator)initWithObject:(id)a3 collection:(id)a4;
- (id)description;
- (id)nextObject;
- (void)dealloc;
@end

@implementation __NSSingleObjectEnumerator

- (id)nextObject
{
  v3 = self->_theObjectToReturn;
  self->_theObjectToReturn = 0;
  theCollection = self->_theCollection;
  self->_theCollection = 0;

  return v3;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = __NSSingleObjectEnumerator;
  [(__NSSingleObjectEnumerator *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (__NSSingleObjectEnumerator)initWithObject:(id)a3 collection:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10.receiver = self;
    v10.super_class = __NSSingleObjectEnumerator;
    v6 = [(__NSSingleObjectEnumerator *)&v10 init];
    if (v6)
    {
      v6->_theObjectToReturn = a3;
      v6->_theCollection = a4;
    }

    v7 = *MEMORY[0x1E69E9840];
    return v6;
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    return [(__NSSingleObjectEnumerator *)self init];
  }
}

- (__NSSingleObjectEnumerator)init
{
  qword_1EA849A30 = "Attempt to create a single-object enumerator with no object/collection";
  __break(1u);
  return self;
}

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(0, 0);
  if (self->_theObjectToReturn)
  {
    v9.receiver = self;
    v9.super_class = __NSSingleObjectEnumerator;
    v6 = [&v9 description];
    CFStringAppendFormat(Mutable, 0, @"%@ that will yield %@", v6, self->_theObjectToReturn);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = __NSSingleObjectEnumerator;
    v7 = [&v8 description];
    CFStringAppendFormat(Mutable, 0, @"%@ that yielded its object", v7);
  }

  result = CFAutorelease(Mutable);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end