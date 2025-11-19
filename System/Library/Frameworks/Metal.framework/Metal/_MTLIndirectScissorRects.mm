@interface _MTLIndirectScissorRects
- (_MTLIndirectScissorRects)initWithCount:(unint64_t)a3;
- (void)dealloc;
@end

@implementation _MTLIndirectScissorRects

- (_MTLIndirectScissorRects)initWithCount:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = _MTLIndirectScissorRects;
  v4 = [(_MTLIndirectScissorRects *)&v7 init];
  if (v4)
  {
    v5 = malloc_type_calloc(0x20uLL, a3, 0x962CE4C0uLL);
    v4->_scissorRects = v5;
    if (v5)
    {
      v4->_count = a3;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  free(self->_scissorRects);
  self->_scissorRects = 0;
  v3.receiver = self;
  v3.super_class = _MTLIndirectScissorRects;
  [(_MTLIndirectScissorRects *)&v3 dealloc];
}

@end