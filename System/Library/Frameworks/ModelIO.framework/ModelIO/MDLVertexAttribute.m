@interface MDLVertexAttribute
- (BOOL)isEqual:(id)a3;
- (MDLVertexAttribute)init;
- (MDLVertexAttribute)initWithName:(NSString *)name format:(MDLVertexFormat)format offset:(NSUInteger)offset bufferIndex:(NSUInteger)bufferIndex;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MDLVertexAttribute

- (MDLVertexAttribute)init
{
  v6.receiver = self;
  v6.super_class = MDLVertexAttribute;
  v2 = [(MDLVertexAttribute *)&v6 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_284D18478;

    v3->_offset = 0;
    v3->_bufferIndex = 0;
    v3->_format = 0;
    *v3->_initializationValue = xmmword_239F9C1B0;
  }

  return v3;
}

- (MDLVertexAttribute)initWithName:(NSString *)name format:(MDLVertexFormat)format offset:(NSUInteger)offset bufferIndex:(NSUInteger)bufferIndex
{
  v10 = name;
  v17.receiver = self;
  v17.super_class = MDLVertexAttribute;
  v11 = [(MDLVertexAttribute *)&v17 init];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = objc_msgSend_initWithString_(v12, v13, v10);
    v15 = v11->_name;
    v11->_name = v14;

    v11->_bufferIndex = bufferIndex;
    v11->_format = format;
    v11->_offset = offset;
    *v11->_initializationValue = xmmword_239F9C1B0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(MDLVertexAttribute, a2, a3);
  name = self->_name;
  offset = self->_offset;
  bufferIndex = self->_bufferIndex;
  format = self->_format;

  return objc_msgSend_initWithName_format_offset_bufferIndex_(v4, v5, name, format, offset, bufferIndex);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v7 = objc_msgSend_isEqualToString_(self->_name, v6, v5[1]) && self->_offset == v5[2] && self->_bufferIndex == v5[3] && self->_format == v5[4];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_name(self, v5, v6);
  v10 = objc_msgSend_format(self, v8, v9);
  v11 = sub_239F1DDD8(v10);
  v14 = objc_msgSend_bufferIndex(self, v12, v13);
  v17 = objc_msgSend_offset(self, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v3, v18, @"<%@: %p name=%@ format=%s bufferIndex=%lu offset=%lu>", v4, self, v7, v11, v14, v17);

  return v19;
}

@end