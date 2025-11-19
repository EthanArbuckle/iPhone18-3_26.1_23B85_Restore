@interface MTRThermostatClusterPresetStruct
- (MTRThermostatClusterPresetStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThermostatClusterPresetStruct);
  v5 = [(MTRThermostatClusterPresetStruct *)self presetHandle];
  [(MTRThermostatClusterPresetStruct *)v4 setPresetHandle:v5];

  v6 = [(MTRThermostatClusterPresetStruct *)self presetScenario];
  [(MTRThermostatClusterPresetStruct *)v4 setPresetScenario:v6];

  v7 = [(MTRThermostatClusterPresetStruct *)self name];
  [(MTRThermostatClusterPresetStruct *)v4 setName:v7];

  v8 = [(MTRThermostatClusterPresetStruct *)self coolingSetpoint];
  [(MTRThermostatClusterPresetStruct *)v4 setCoolingSetpoint:v8];

  v9 = [(MTRThermostatClusterPresetStruct *)self heatingSetpoint];
  [(MTRThermostatClusterPresetStruct *)v4 setHeatingSetpoint:v9];

  v10 = [(MTRThermostatClusterPresetStruct *)self builtIn];
  [(MTRThermostatClusterPresetStruct *)v4 setBuiltIn:v10];

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