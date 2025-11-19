@interface MDLVertexBufferLayout
- (BOOL)isEqual:(id)a3;
- (MDLVertexBufferLayout)initWithStride:(NSUInteger)stride;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MDLVertexBufferLayout

- (MDLVertexBufferLayout)initWithStride:(NSUInteger)stride
{
  v8.receiver = self;
  v8.super_class = MDLVertexBufferLayout;
  v4 = [(MDLVertexBufferLayout *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_stride = stride;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(MDLVertexBufferLayout, a2, a3);
  stride = self->_stride;

  return MEMORY[0x2821F9670](v4, sel_initWithStride_, stride);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_stride == v4->_stride;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_stride(self, v5, v6);
  return objc_msgSend_stringWithFormat_(v3, v8, @"<%@: %p stride=%lu>", v4, self, v7);
}

@end