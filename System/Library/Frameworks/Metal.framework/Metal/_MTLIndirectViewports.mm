@interface _MTLIndirectViewports
- (_MTLIndirectViewports)initWithCount:(unint64_t)count;
- (void)dealloc;
@end

@implementation _MTLIndirectViewports

- (_MTLIndirectViewports)initWithCount:(unint64_t)count
{
  v7.receiver = self;
  v7.super_class = _MTLIndirectViewports;
  v4 = [(_MTLIndirectViewports *)&v7 init];
  if (v4)
  {
    v5 = malloc_type_calloc(0x30uLL, count, 0x12839BBEuLL);
    v4->_viewports = v5;
    if (v5)
    {
      v4->_count = count;
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
  free(self->_viewports);
  self->_viewports = 0;
  v3.receiver = self;
  v3.super_class = _MTLIndirectViewports;
  [(_MTLIndirectViewports *)&v3 dealloc];
}

@end