@interface MTRUserLabelClusterLabelStruct
- (MTRUserLabelClusterLabelStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUserLabelClusterLabelStruct

- (MTRUserLabelClusterLabelStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRUserLabelClusterLabelStruct;
  v2 = [(MTRUserLabelClusterLabelStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    label = v2->_label;
    v2->_label = &stru_284BD0DD8;

    value = v3->_value;
    v3->_value = &stru_284BD0DD8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUserLabelClusterLabelStruct);
  v5 = [(MTRUserLabelClusterLabelStruct *)self label];
  [(MTRUserLabelClusterLabelStruct *)v4 setLabel:v5];

  v6 = [(MTRUserLabelClusterLabelStruct *)self value];
  [(MTRUserLabelClusterLabelStruct *)v4 setValue:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: label:%@ value:%@; >", v5, self->_label, self->_value];;

  return v6;
}

@end