@interface MTRAudioOutputClusterOutputInfoStruct
- (MTRAudioOutputClusterOutputInfoStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRAudioOutputClusterOutputInfoStruct

- (MTRAudioOutputClusterOutputInfoStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRAudioOutputClusterOutputInfoStruct;
  v2 = [(MTRAudioOutputClusterOutputInfoStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    index = v2->_index;
    v2->_index = &unk_284C3E588;

    outputType = v3->_outputType;
    v3->_outputType = &unk_284C3E588;

    name = v3->_name;
    v3->_name = &stru_284BD0DD8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRAudioOutputClusterOutputInfoStruct);
  v5 = [(MTRAudioOutputClusterOutputInfoStruct *)self index];
  [(MTRAudioOutputClusterOutputInfoStruct *)v4 setIndex:v5];

  v6 = [(MTRAudioOutputClusterOutputInfoStruct *)self outputType];
  [(MTRAudioOutputClusterOutputInfoStruct *)v4 setOutputType:v6];

  v7 = [(MTRAudioOutputClusterOutputInfoStruct *)self name];
  [(MTRAudioOutputClusterOutputInfoStruct *)v4 setName:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: index:%@ outputType:%@; name:%@; >", v5, self->_index, self->_outputType, self->_name];;

  return v6;
}

@end