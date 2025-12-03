@interface MTRThermostatClusterPresetStruct
- (MTRThermostatClusterPresetStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThermostatClusterPresetStruct

- (MTRThermostatClusterPresetStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRThermostatClusterPresetStruct;
  v2 = [(MTRThermostatClusterPresetStruct *)&v11 init];
  v3 = v2;
  if (v2)
  {
    presetHandle = v2->_presetHandle;
    v2->_presetHandle = 0;

    presetScenario = v3->_presetScenario;
    v3->_presetScenario = &unk_284C3E588;

    name = v3->_name;
    v3->_name = 0;

    coolingSetpoint = v3->_coolingSetpoint;
    v3->_coolingSetpoint = 0;

    heatingSetpoint = v3->_heatingSetpoint;
    v3->_heatingSetpoint = 0;

    builtIn = v3->_builtIn;
    v3->_builtIn = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterPresetStruct);
  presetHandle = [(MTRThermostatClusterPresetStruct *)self presetHandle];
  [(MTRThermostatClusterPresetStruct *)v4 setPresetHandle:presetHandle];

  presetScenario = [(MTRThermostatClusterPresetStruct *)self presetScenario];
  [(MTRThermostatClusterPresetStruct *)v4 setPresetScenario:presetScenario];

  name = [(MTRThermostatClusterPresetStruct *)self name];
  [(MTRThermostatClusterPresetStruct *)v4 setName:name];

  coolingSetpoint = [(MTRThermostatClusterPresetStruct *)self coolingSetpoint];
  [(MTRThermostatClusterPresetStruct *)v4 setCoolingSetpoint:coolingSetpoint];

  heatingSetpoint = [(MTRThermostatClusterPresetStruct *)self heatingSetpoint];
  [(MTRThermostatClusterPresetStruct *)v4 setHeatingSetpoint:heatingSetpoint];

  builtIn = [(MTRThermostatClusterPresetStruct *)self builtIn];
  [(MTRThermostatClusterPresetStruct *)v4 setBuiltIn:builtIn];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_presetHandle base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: presetHandle:%@ presetScenario:%@; name:%@; coolingSetpoint:%@; heatingSetpoint:%@; builtIn:%@; >", v5, v6, self->_presetScenario, self->_name, self->_coolingSetpoint, self->_heatingSetpoint, self->_builtIn];;

  return v7;
}

@end