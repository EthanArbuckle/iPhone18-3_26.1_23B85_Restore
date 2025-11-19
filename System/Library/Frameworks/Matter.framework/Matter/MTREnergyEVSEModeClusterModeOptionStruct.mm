@interface MTREnergyEVSEModeClusterModeOptionStruct
- (MTREnergyEVSEModeClusterModeOptionStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTREnergyEVSEModeClusterModeOptionStruct

- (MTREnergyEVSEModeClusterModeOptionStruct)init
{
  v9.receiver = self;
  v9.super_class = MTREnergyEVSEModeClusterModeOptionStruct;
  v2 = [(MTREnergyEVSEModeClusterModeOptionStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    label = v2->_label;
    v2->_label = &stru_284BD0DD8;

    mode = v3->_mode;
    v3->_mode = &unk_284C3E588;

    v6 = [MEMORY[0x277CBEA60] array];
    modeTags = v3->_modeTags;
    v3->_modeTags = v6;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTREnergyEVSEModeClusterModeOptionStruct);
  v5 = [(MTREnergyEVSEModeClusterModeOptionStruct *)self label];
  [(MTREnergyEVSEModeClusterModeOptionStruct *)v4 setLabel:v5];

  v6 = [(MTREnergyEVSEModeClusterModeOptionStruct *)self mode];
  [(MTREnergyEVSEModeClusterModeOptionStruct *)v4 setMode:v6];

  v7 = [(MTREnergyEVSEModeClusterModeOptionStruct *)self modeTags];
  [(MTREnergyEVSEModeClusterModeOptionStruct *)v4 setModeTags:v7];

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