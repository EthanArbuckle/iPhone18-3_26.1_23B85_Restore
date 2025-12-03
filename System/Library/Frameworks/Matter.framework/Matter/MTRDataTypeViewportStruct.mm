@interface MTRDataTypeViewportStruct
- (MTRDataTypeViewportStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDataTypeViewportStruct

- (MTRDataTypeViewportStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRDataTypeViewportStruct;
  v2 = [(MTRDataTypeViewportStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    x1 = v2->_x1;
    v2->_x1 = &unk_284C3E588;

    y1 = v3->_y1;
    v3->_y1 = &unk_284C3E588;

    x2 = v3->_x2;
    v3->_x2 = &unk_284C3E588;

    y2 = v3->_y2;
    v3->_y2 = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDataTypeViewportStruct);
  v5 = [(MTRDataTypeViewportStruct *)self x1];
  [(MTRDataTypeViewportStruct *)v4 setX1:v5];

  v6 = [(MTRDataTypeViewportStruct *)self y1];
  [(MTRDataTypeViewportStruct *)v4 setY1:v6];

  v7 = [(MTRDataTypeViewportStruct *)self x2];
  [(MTRDataTypeViewportStruct *)v4 setX2:v7];

  v8 = [(MTRDataTypeViewportStruct *)self y2];
  [(MTRDataTypeViewportStruct *)v4 setY2:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: x1:%@ y1:%@; x2:%@; y2:%@; >", v5, self->_x1, self->_y1, self->_x2, self->_y2];;

  return v6;
}

@end