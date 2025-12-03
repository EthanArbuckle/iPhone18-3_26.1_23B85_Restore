@interface PDRing
- (unint64_t)_ringIndexForIndex:(unint64_t)index;
- (unint64_t)_ringIndexMinusOne:(unint64_t)size;
- (unint64_t)_ringIndexPlusOne:(unint64_t)one;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation PDRing

- (unint64_t)_ringIndexForIndex:(unint64_t)index
{
  size = self->_size;
  if (size <= index)
  {
    __assert_rtn("[PDRing _ringIndexForIndex:]", "PDRing.m", 79, "index < _size");
  }

  return (size + ~index + self->_head) % size;
}

- (unint64_t)_ringIndexPlusOne:(unint64_t)one
{
  if (one + 1 == self->_size)
  {
    return 0;
  }

  else
  {
    return one + 1;
  }
}

- (unint64_t)_ringIndexMinusOne:(unint64_t)size
{
  if (!size)
  {
    size = self->_size;
  }

  return size - 1;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &self->_head;
  }

  v10 = 0;
  if (!self)
  {
    goto LABEL_10;
  }

LABEL_4:
  for (i = [(NSMutableArray *)self->_buffer count]; ; i = 0)
  {
    v12 = i >= count ? count : i;
    if (var0 >= v12)
    {
      break;
    }

    state->var1 = objects;
    v13 = sub_1000B0834(&self->super.isa, state->var0);
    objects[v10++] = v13;
    ++state->var0;

    var0 = state->var0;
    if (self)
    {
      goto LABEL_4;
    }

LABEL_10:
    ;
  }

  return v10;
}

@end