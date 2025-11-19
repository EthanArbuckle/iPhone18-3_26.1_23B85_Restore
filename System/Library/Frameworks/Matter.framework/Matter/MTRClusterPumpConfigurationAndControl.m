@interface MTRClusterPumpConfigurationAndControl
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCapacityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeControlModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeEffectiveControlModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeEffectiveOperationModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLifetimeEnergyConsumedWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLifetimeRunningHoursWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxCompPressureWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxConstFlowWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxConstPressureWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxConstSpeedWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxConstTempWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxFlowWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxPressureWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxSpeedWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMinCompPressureWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMinConstFlowWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMinConstPressureWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMinConstSpeedWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMinConstTempWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOperationModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePowerWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePumpStatusWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSpeedWithParams:(MTRReadParams *)params;
- (void)writeAttributeControlModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeLifetimeEnergyConsumedWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeLifetimeRunningHoursWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeOperationModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
@end

@implementation MTRClusterPumpConfigurationAndControl

- (NSDictionary)readAttributeMaxPressureWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMaxSpeedWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMaxFlowWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMinConstPressureWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMaxConstPressureWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMinCompPressureWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMaxCompPressureWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMinConstSpeedWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMaxConstSpeedWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMinConstFlowWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMaxConstFlowWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41B40 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMinConstTempWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41B58 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMaxConstTempWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41B70 params:v4];

  return v7;
}

- (NSDictionary)readAttributePumpStatusWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41978 params:v4];

  return v7;
}

- (NSDictionary)readAttributeEffectiveOperationModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41990 params:v4];

  return v7;
}

- (NSDictionary)readAttributeEffectiveControlModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C419A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCapacityWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C419C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSpeedWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C419D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeLifetimeRunningHoursWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41BB8 params:v4];

  return v7;
}

- (void)writeAttributeLifetimeRunningHoursWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C20 attributeID:&unk_284C41BB8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributePowerWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41BD0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeLifetimeEnergyConsumedWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41CD8 params:v4];

  return v7;
}

- (void)writeAttributeLifetimeEnergyConsumedWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C20 attributeID:&unk_284C41CD8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeOperationModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41E58 params:v4];

  return v7;
}

- (void)writeAttributeOperationModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C20 attributeID:&unk_284C41E58 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeControlModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41E70 params:v4];

  return v7;
}

- (void)writeAttributeControlModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C20 attributeID:&unk_284C41E70 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C20 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end