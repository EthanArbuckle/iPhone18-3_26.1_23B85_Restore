@interface MTLLogicalToPhysicalColorAttachmentMap
- (BOOL)isEqual:(id)a3;
- (MTLLogicalToPhysicalColorAttachmentMap)init;
- (const)map:(unint64_t *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)reset;
- (void)setPhysicalIndex:(unint64_t)a3 forLogicalIndex:(unint64_t)a4;
@end

@implementation MTLLogicalToPhysicalColorAttachmentMap

- (MTLLogicalToPhysicalColorAttachmentMap)init
{
  v4.receiver = self;
  v4.super_class = MTLLogicalToPhysicalColorAttachmentMap;
  v2 = [(MTLLogicalToPhysicalColorAttachmentMap *)&v4 init];
  [(MTLLogicalToPhysicalColorAttachmentMap *)v2 reset];
  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  for (i = 8; i != 72; i += 8)
  {
    *(result + i) = *(&self->super.isa + i);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  ClassName = object_getClassName(self);
  if (ClassName != object_getClassName(a3))
  {
    return 0;
  }

  v7 = 8;
  do
  {
    v8 = *(&self->super.isa + v7);
    v9 = *(a3 + v7);
    result = v8 == v9;
    if (v8 != v9)
    {
      break;
    }

    v10 = v7 == 64;
    v7 += 8;
  }

  while (!v10);
  return result;
}

- (unint64_t)hash
{
  v2 = *&self->_logicalToPhysicalMap[2];
  v5[0] = *self->_logicalToPhysicalMap;
  v5[1] = v2;
  v3 = *&self->_logicalToPhysicalMap[6];
  v5[2] = *&self->_logicalToPhysicalMap[4];
  v5[3] = v3;
  return _MTLHashState(v5, 0x40uLL);
}

- (void)reset
{
  *self->_logicalToPhysicalMap = xmmword_185DB7AF0;
  *&self->_logicalToPhysicalMap[2] = xmmword_185DE3740;
  *&self->_logicalToPhysicalMap[4] = xmmword_185DE3750;
  *&self->_logicalToPhysicalMap[6] = xmmword_185DE1A80;
}

- (void)setPhysicalIndex:(unint64_t)a3 forLogicalIndex:(unint64_t)a4
{
  if (a3 >= 8)
  {
    [MTLLogicalToPhysicalColorAttachmentMap setPhysicalIndex:forLogicalIndex:];
  }

  if (a4 >= 8)
  {
    [MTLLogicalToPhysicalColorAttachmentMap setPhysicalIndex:forLogicalIndex:];
  }

  self->_logicalToPhysicalMap[a4] = a3;
}

- (const)map:(unint64_t *)a3
{
  if (!a3)
  {
    return 0;
  }

  *a3 = 8;
  return self->_logicalToPhysicalMap;
}

@end