@interface MTRThermostatClusterThermostatSuggestionStruct
- (MTRThermostatClusterThermostatSuggestionStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThermostatClusterThermostatSuggestionStruct

- (MTRThermostatClusterThermostatSuggestionStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRThermostatClusterThermostatSuggestionStruct;
  v2 = [(MTRThermostatClusterThermostatSuggestionStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    uniqueID = v2->_uniqueID;
    v2->_uniqueID = &unk_284C3E588;

    data = [MEMORY[0x277CBEA90] data];
    presetHandle = v3->_presetHandle;
    v3->_presetHandle = data;

    effectiveTime = v3->_effectiveTime;
    v3->_effectiveTime = &unk_284C3E588;

    expirationTime = v3->_expirationTime;
    v3->_expirationTime = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterThermostatSuggestionStruct);
  uniqueID = [(MTRThermostatClusterThermostatSuggestionStruct *)self uniqueID];
  [(MTRThermostatClusterThermostatSuggestionStruct *)v4 setUniqueID:uniqueID];

  presetHandle = [(MTRThermostatClusterThermostatSuggestionStruct *)self presetHandle];
  [(MTRThermostatClusterThermostatSuggestionStruct *)v4 setPresetHandle:presetHandle];

  effectiveTime = [(MTRThermostatClusterThermostatSuggestionStruct *)self effectiveTime];
  [(MTRThermostatClusterThermostatSuggestionStruct *)v4 setEffectiveTime:effectiveTime];

  expirationTime = [(MTRThermostatClusterThermostatSuggestionStruct *)self expirationTime];
  [(MTRThermostatClusterThermostatSuggestionStruct *)v4 setExpirationTime:expirationTime];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uniqueID = self->_uniqueID;
  v7 = [(NSData *)self->_presetHandle base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: uniqueID:%@ presetHandle:%@; effectiveTime:%@; expirationTime:%@; >", v5, uniqueID, v7, self->_effectiveTime, self->_expirationTime];;

  return v8;
}

@end