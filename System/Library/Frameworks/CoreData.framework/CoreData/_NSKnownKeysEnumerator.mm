@interface _NSKnownKeysEnumerator
- (id)nextObject;
- (void)_invalidate;
- (void)dealloc;
- (void)initWithArray:(void *)a3 forTarget:(uint64_t)a4 withReferenceValues:(uint64_t)a5 andRange:(uint64_t)a6 andCopyItems:;
@end

@implementation _NSKnownKeysEnumerator

- (void)initWithArray:(void *)a3 forTarget:(uint64_t)a4 withReferenceValues:(uint64_t)a5 andRange:(uint64_t)a6 andCopyItems:
{
  if (!a1)
  {
    return 0;
  }

  v14.receiver = a1;
  v14.super_class = _NSKnownKeysEnumerator;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = v11;
  if (v11)
  {
    v11[4] = a5;
    v11[5] = a6;
    if (a6 < 1)
    {
      v11[1] = 0;
      v11[2] = 0;
      v11[3] = 0;
    }

    else
    {
      v11[1] = a3;
      v12[2] = a2;
      v12[3] = a4;
    }

    v12[6] = a5;
    v12[7] = 0;
  }

  return v12;
}

- (void)_invalidate
{
  if (a1)
  {
    if (*(a1 + 56))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        PF_FREE_OBJECT_ARRAY(v2);
      }

      v3 = *(a1 + 24);
      if (v3)
      {
        PF_FREE_OBJECT_ARRAY(v3);
      }
    }

    *(a1 + 16) = 0;
    *(a1 + 24) = 0;

    *(a1 + 8) = 0;
  }
}

- (void)dealloc
{
  [(_NSKnownKeysEnumerator *)self _invalidate];
  v3.receiver = self;
  v3.super_class = _NSKnownKeysEnumerator;
  [(_NSKnownKeysEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  list = self->_list;
  if (!list)
  {
    return 0;
  }

  p_range = &self->_range;
  do
  {
    index = self->_index;
    if (self->_referenceItems[index])
    {
      v6 = list[index];
    }

    else
    {
      v6 = 0;
    }

    v7 = index + 1;
    self->_index = v7;
    if (self->_flags)
    {
      location = p_range->location;
    }

    else
    {
      location = 0;
    }

    if (location + v7 == p_range->length + p_range->location)
    {
      if (v6)
      {
        v9 = v6;
      }

      [(_NSKnownKeysEnumerator *)self _invalidate];
      list = self->_list;
    }
  }

  while (list && !v6);
  return v6;
}

@end