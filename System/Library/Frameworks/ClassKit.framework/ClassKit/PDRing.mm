@interface PDRing
- (unint64_t)_ringIndexForIndex:(unint64_t)a3;
- (unint64_t)_ringIndexMinusOne:(unint64_t)size;
- (unint64_t)_ringIndexPlusOne:(unint64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation PDRing

- (unint64_t)_ringIndexForIndex:(unint64_t)a3
{
  size = self->_size;
  if (size <= a3)
  {
    __assert_rtn("[PDRing _ringIndexForIndex:]", "PDRing.m", 79, "index < _size");
  }

  return (size + ~a3 + self->_head) % size;
}

- (unint64_t)_ringIndexPlusOne:(unint64_t)a3
{
  if (a3 + 1 == self->_size)
  {
    return 0;
  }

  else
  {
    return a3 + 1;
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

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  if (!a3->var0)
  {
    a3->var2 = &self->_head;
  }

  v10 = 0;
  if (!self)
  {
    goto LABEL_10;
  }

LABEL_4:
  for (i = [(NSMutableArray *)self->_buffer count]; ; i = 0)
  {
    v12 = i >= a5 ? a5 : i;
    if (var0 >= v12)
    {
      break;
    }

    a3->var1 = a4;
    v13 = sub_1000B0834(&self->super.isa, a3->var0);
    a4[v10++] = v13;
    ++a3->var0;

    var0 = a3->var0;
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