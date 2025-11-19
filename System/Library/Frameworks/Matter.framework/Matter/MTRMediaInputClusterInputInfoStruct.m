@interface MTRMediaInputClusterInputInfoStruct
- (MTRMediaInputClusterInputInfoStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRMediaInputClusterInputInfoStruct

- (MTRMediaInputClusterInputInfoStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRMediaInputClusterInputInfoStruct;
  v2 = [(MTRMediaInputClusterInputInfoStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    index = v2->_index;
    v2->_index = &unk_284C3E588;

    inputType = v3->_inputType;
    v3->_inputType = &unk_284C3E588;

    name = v3->_name;
    v3->_name = &stru_284BD0DD8;

    descriptionString = v3->_descriptionString;
    v3->_descriptionString = &stru_284BD0DD8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRMediaInputClusterInputInfoStruct);
  v5 = [(MTRMediaInputClusterInputInfoStruct *)self index];
  [(MTRMediaInputClusterInputInfoStruct *)v4 setIndex:v5];

  v6 = [(MTRMediaInputClusterInputInfoStruct *)self inputType];
  [(MTRMediaInputClusterInputInfoStruct *)v4 setInputType:v6];

  v7 = [(MTRMediaInputClusterInputInfoStruct *)self name];
  [(MTRMediaInputClusterInputInfoStruct *)v4 setName:v7];

  v8 = [(MTRMediaInputClusterInputInfoStruct *)self descriptionString];
  [(MTRMediaInputClusterInputInfoStruct *)v4 setDescriptionString:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: index:%@ inputType:%@; name:%@; descriptionString:%@; >", v5, self->_index, self->_inputType, self->_name, self->_descriptionString];;

  return v6;
}

@end