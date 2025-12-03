@interface MTRModeSelectClusterModeOptionStruct
- (MTRModeSelectClusterModeOptionStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRModeSelectClusterModeOptionStruct

- (MTRModeSelectClusterModeOptionStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRModeSelectClusterModeOptionStruct;
  v2 = [(MTRModeSelectClusterModeOptionStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    label = v2->_label;
    v2->_label = &stru_284BD0DD8;

    mode = v3->_mode;
    v3->_mode = &unk_284C3E588;

    array = [MEMORY[0x277CBEA60] array];
    semanticTags = v3->_semanticTags;
    v3->_semanticTags = array;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRModeSelectClusterModeOptionStruct);
  label = [(MTRModeSelectClusterModeOptionStruct *)self label];
  [(MTRModeSelectClusterModeOptionStruct *)v4 setLabel:label];

  mode = [(MTRModeSelectClusterModeOptionStruct *)self mode];
  [(MTRModeSelectClusterModeOptionStruct *)v4 setMode:mode];

  semanticTags = [(MTRModeSelectClusterModeOptionStruct *)self semanticTags];
  [(MTRModeSelectClusterModeOptionStruct *)v4 setSemanticTags:semanticTags];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: label:%@ mode:%@; semanticTags:%@; >", v5, self->_label, self->_mode, self->_semanticTags];;

  return v6;
}

@end