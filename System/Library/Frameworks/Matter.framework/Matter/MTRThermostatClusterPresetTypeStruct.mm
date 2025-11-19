@interface MTRThermostatClusterPresetTypeStruct
- (MTRThermostatClusterPresetTypeStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThermostatClusterPresetTypeStruct

- (MTRThermostatClusterPresetTypeStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRThermostatClusterPresetTypeStruct;
  v2 = [(MTRThermostatClusterPresetTypeStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    presetScenario = v2->_presetScenario;
    v2->_presetScenario = &unk_284C3E588;

    numberOfPresets = v3->_numberOfPresets;
    v3->_numberOfPresets = &unk_284C3E588;

    presetTypeFeatures = v3->_presetTypeFeatures;
    v3->_presetTypeFeatures = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThermostatClusterPresetTypeStruct);
  v5 = [(MTRThermostatClusterPresetTypeStruct *)self presetScenario];
  [(MTRThermostatClusterPresetTypeStruct *)v4 setPresetScenario:v5];

  v6 = [(MTRThermostatClusterPresetTypeStruct *)self numberOfPresets];
  [(MTRThermostatClusterPresetTypeStruct *)v4 setNumberOfPresets:v6];

  v7 = [(MTRThermostatClusterPresetTypeStruct *)self presetTypeFeatures];
  [(MTRThermostatClusterPresetTypeStruct *)v4 setPresetTypeFeatures:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: presetScenario:%@ numberOfPresets:%@; presetTypeFeatures:%@; >", v5, self->_presetScenario, self->_numberOfPresets, self->_presetTypeFeatures];;

  return v6;
}

@end