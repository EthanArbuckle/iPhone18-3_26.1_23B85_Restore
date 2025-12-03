@interface MTRMicrowaveOvenModeClusterModeOptionStruct
- (MTRMicrowaveOvenModeClusterModeOptionStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRMicrowaveOvenModeClusterModeOptionStruct

- (MTRMicrowaveOvenModeClusterModeOptionStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRMicrowaveOvenModeClusterModeOptionStruct;
  v2 = [(MTRMicrowaveOvenModeClusterModeOptionStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    label = v2->_label;
    v2->_label = &stru_284BD0DD8;

    mode = v3->_mode;
    v3->_mode = &unk_284C3E588;

    array = [MEMORY[0x277CBEA60] array];
    modeTags = v3->_modeTags;
    v3->_modeTags = array;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRMicrowaveOvenModeClusterModeOptionStruct);
  label = [(MTRMicrowaveOvenModeClusterModeOptionStruct *)self label];
  [(MTRMicrowaveOvenModeClusterModeOptionStruct *)v4 setLabel:label];

  mode = [(MTRMicrowaveOvenModeClusterModeOptionStruct *)self mode];
  [(MTRMicrowaveOvenModeClusterModeOptionStruct *)v4 setMode:mode];

  modeTags = [(MTRMicrowaveOvenModeClusterModeOptionStruct *)self modeTags];
  [(MTRMicrowaveOvenModeClusterModeOptionStruct *)v4 setModeTags:modeTags];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: label:%@ mode:%@; modeTags:%@; >", v5, self->_label, self->_mode, self->_modeTags];;

  return v6;
}

@end