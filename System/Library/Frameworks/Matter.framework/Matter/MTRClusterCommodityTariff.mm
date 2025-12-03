@interface MTRClusterCommodityTariff
- (id)readAttributeAcceptedCommandListWithParams:(id)params;
- (id)readAttributeAttributeListWithParams:(id)params;
- (id)readAttributeCalendarPeriodsWithParams:(id)params;
- (id)readAttributeClusterRevisionWithParams:(id)params;
- (id)readAttributeCurrentDayEntryDateWithParams:(id)params;
- (id)readAttributeCurrentDayEntryWithParams:(id)params;
- (id)readAttributeCurrentDayWithParams:(id)params;
- (id)readAttributeCurrentTariffComponentsWithParams:(id)params;
- (id)readAttributeDayEntriesWithParams:(id)params;
- (id)readAttributeDayPatternsWithParams:(id)params;
- (id)readAttributeDefaultRandomizationOffsetWithParams:(id)params;
- (id)readAttributeDefaultRandomizationTypeWithParams:(id)params;
- (id)readAttributeFeatureMapWithParams:(id)params;
- (id)readAttributeGeneratedCommandListWithParams:(id)params;
- (id)readAttributeIndividualDaysWithParams:(id)params;
- (id)readAttributeNextDayEntryDateWithParams:(id)params;
- (id)readAttributeNextDayEntryWithParams:(id)params;
- (id)readAttributeNextDayWithParams:(id)params;
- (id)readAttributeNextTariffComponentsWithParams:(id)params;
- (id)readAttributeStartDateWithParams:(id)params;
- (id)readAttributeTariffComponentsWithParams:(id)params;
- (id)readAttributeTariffInfoWithParams:(id)params;
- (id)readAttributeTariffPeriodsWithParams:(id)params;
- (id)readAttributeTariffUnitWithParams:(id)params;
- (void)getDayEntryWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)getTariffComponentWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
@end

@implementation MTRClusterCommodityTariff

- (void)getTariffComponentWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v21 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCommodityTariffClusterGetTariffComponentParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23936B320;
  v23[3] = &unk_278A73118;
  v13 = completionCopy;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTRCommodityTariffClusterGetTariffComponentParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCommodityTariffClusterGetTariffComponentParams *)paramsCopy serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C434C0 commandID:&unk_284C41660 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (void)getDayEntryWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v21 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCommodityTariffClusterGetDayEntryParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23936B554;
  v23[3] = &unk_278A73118;
  v13 = completionCopy;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTRCommodityTariffClusterGetDayEntryParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCommodityTariffClusterGetDayEntryParams *)paramsCopy serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C434C0 commandID:&unk_284C41768 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (id)readAttributeTariffInfoWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C416A8 params:paramsCopy];

  return v7;
}

- (id)readAttributeTariffUnitWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C416C0 params:paramsCopy];

  return v7;
}

- (id)readAttributeStartDateWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41930 params:paramsCopy];

  return v7;
}

- (id)readAttributeDayEntriesWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41690 params:paramsCopy];

  return v7;
}

- (id)readAttributeDayPatternsWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C417E0 params:paramsCopy];

  return v7;
}

- (id)readAttributeCalendarPeriodsWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41948 params:paramsCopy];

  return v7;
}

- (id)readAttributeIndividualDaysWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41840 params:paramsCopy];

  return v7;
}

- (id)readAttributeCurrentDayWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41B10 params:paramsCopy];

  return v7;
}

- (id)readAttributeNextDayWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41918 params:paramsCopy];

  return v7;
}

- (id)readAttributeCurrentDayEntryWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41B28 params:paramsCopy];

  return v7;
}

- (id)readAttributeCurrentDayEntryDateWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41B40 params:paramsCopy];

  return v7;
}

- (id)readAttributeNextDayEntryWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41B58 params:paramsCopy];

  return v7;
}

- (id)readAttributeNextDayEntryDateWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41B70 params:paramsCopy];

  return v7;
}

- (id)readAttributeTariffComponentsWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41B88 params:paramsCopy];

  return v7;
}

- (id)readAttributeTariffPeriodsWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41BA0 params:paramsCopy];

  return v7;
}

- (id)readAttributeCurrentTariffComponentsWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41960 params:paramsCopy];

  return v7;
}

- (id)readAttributeNextTariffComponentsWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41978 params:paramsCopy];

  return v7;
}

- (id)readAttributeDefaultRandomizationOffsetWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41990 params:paramsCopy];

  return v7;
}

- (id)readAttributeDefaultRandomizationTypeWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C419A8 params:paramsCopy];

  return v7;
}

- (id)readAttributeGeneratedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C416D8 params:paramsCopy];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C416F0 params:paramsCopy];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41708 params:paramsCopy];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41720 params:paramsCopy];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C434D8 attributeID:&unk_284C41738 params:paramsCopy];

  return v7;
}

@end