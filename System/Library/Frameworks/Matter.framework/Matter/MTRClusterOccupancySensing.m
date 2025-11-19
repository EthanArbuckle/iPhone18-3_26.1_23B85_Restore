@interface MTRClusterOccupancySensing
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOccupancySensorTypeBitmapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOccupancySensorTypeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOccupancyWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePIROccupiedToUnoccupiedDelayWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePIRUnoccupiedToOccupiedDelayWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePIRUnoccupiedToOccupiedThresholdWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePhysicalContactOccupiedToUnoccupiedDelayWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePhysicalContactUnoccupiedToOccupiedDelayWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePhysicalContactUnoccupiedToOccupiedThresholdWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePirOccupiedToUnoccupiedDelayWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePirUnoccupiedToOccupiedDelayWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePirUnoccupiedToOccupiedThresholdWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeUltrasonicOccupiedToUnoccupiedDelayWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeUltrasonicUnoccupiedToOccupiedDelayWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeUltrasonicUnoccupiedToOccupiedThresholdWithParams:(MTRReadParams *)params;
- (id)readAttributeHoldTimeLimitsWithParams:(id)a3;
- (id)readAttributeHoldTimeWithParams:(id)a3;
- (void)writeAttributeHoldTimeWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributePIROccupiedToUnoccupiedDelayWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributePIRUnoccupiedToOccupiedDelayWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributePIRUnoccupiedToOccupiedThresholdWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
@end

@implementation MTRClusterOccupancySensing

- (NSDictionary)readAttributeOccupancyWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOccupancySensorTypeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOccupancySensorTypeBitmapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (id)readAttributeHoldTimeWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (void)writeAttributeHoldTimeWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42F50 attributeID:&unk_284C41690 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeHoldTimeLimitsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (NSDictionary)readAttributePIROccupiedToUnoccupiedDelayWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41978 params:v4];

  return v7;
}

- (void)writeAttributePIROccupiedToUnoccupiedDelayWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42F50 attributeID:&unk_284C41978 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributePIRUnoccupiedToOccupiedDelayWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41990 params:v4];

  return v7;
}

- (void)writeAttributePIRUnoccupiedToOccupiedDelayWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42F50 attributeID:&unk_284C41990 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributePIRUnoccupiedToOccupiedThresholdWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C419A8 params:v4];

  return v7;
}

- (void)writeAttributePIRUnoccupiedToOccupiedThresholdWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42F50 attributeID:&unk_284C419A8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeUltrasonicOccupiedToUnoccupiedDelayWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41E58 params:v4];

  return v7;
}

- (void)writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42F50 attributeID:&unk_284C41E58 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeUltrasonicUnoccupiedToOccupiedDelayWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41E70 params:v4];

  return v7;
}

- (void)writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42F50 attributeID:&unk_284C41E70 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeUltrasonicUnoccupiedToOccupiedThresholdWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41E88 params:v4];

  return v7;
}

- (void)writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42F50 attributeID:&unk_284C41E88 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributePhysicalContactOccupiedToUnoccupiedDelayWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41D50 params:v4];

  return v7;
}

- (void)writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42F50 attributeID:&unk_284C41D50 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributePhysicalContactUnoccupiedToOccupiedDelayWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41D80 params:v4];

  return v7;
}

- (void)writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42F50 attributeID:&unk_284C41D80 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributePhysicalContactUnoccupiedToOccupiedThresholdWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41DB0 params:v4];

  return v7;
}

- (void)writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42F50 attributeID:&unk_284C41DB0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F50 attributeID:&unk_284C41738 params:v4];

  return v7;
}

- (NSDictionary)readAttributePirOccupiedToUnoccupiedDelayWithParams:(MTRReadParams *)params
{
  v3 = [(MTRClusterOccupancySensing *)self readAttributePIROccupiedToUnoccupiedDelayWithParams:params];

  return v3;
}

- (NSDictionary)readAttributePirUnoccupiedToOccupiedDelayWithParams:(MTRReadParams *)params
{
  v3 = [(MTRClusterOccupancySensing *)self readAttributePIRUnoccupiedToOccupiedDelayWithParams:params];

  return v3;
}

- (NSDictionary)readAttributePirUnoccupiedToOccupiedThresholdWithParams:(MTRReadParams *)params
{
  v3 = [(MTRClusterOccupancySensing *)self readAttributePIRUnoccupiedToOccupiedThresholdWithParams:params];

  return v3;
}

@end