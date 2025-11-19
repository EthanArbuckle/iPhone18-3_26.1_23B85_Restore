@interface MTRThermostatClusterActivePresetChangeEvent
- (MTRThermostatClusterActivePresetChangeEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThermostatClusterActivePresetChangeEvent

- (MTRThermostatClusterActivePresetChangeEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRThermostatClusterActivePresetChangeEvent;
  v2 = [(MTRThermostatClusterActivePresetChangeEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    previousPresetHandle = v2->_previousPresetHandle;
    v2->_previousPresetHandle = 0;

    currentPresetHandle = v3->_currentPresetHandle;
    v3->_currentPresetHandle = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThermostatClusterActivePresetChangeEvent);
  v5 = [(MTRThermostatClusterActivePresetChangeEvent *)self previousPresetHandle];
  [(MTRThermostatClusterActivePresetChangeEvent *)v4 setPreviousPresetHandle:v5];

  v6 = [(MTRThermostatClusterActivePresetChangeEvent *)self currentPresetHandle];
  [(MTRThermostatClusterActivePresetChangeEvent *)v4 setCurrentPresetHandle:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_previousPresetHandle base64EncodedStringWithOptions:0];
  v7 = [(NSData *)self->_currentPresetHandle base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: previousPresetHandle:%@ currentPresetHandle:%@; >", v5, v6, v7];;

  return v8;
}

@end