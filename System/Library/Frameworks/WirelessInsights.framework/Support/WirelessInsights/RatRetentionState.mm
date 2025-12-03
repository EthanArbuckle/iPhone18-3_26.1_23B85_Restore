@interface RatRetentionState
- (id)description;
- (id)init:(unint64_t)init displayStatus:(id)status rat:(id)rat dataBearerTechnology:(id)technology band:(id)band arfcn:(id)arfcn nrnsaArfcn:(id)nrnsaArfcn bandwidth:(id)self0 nrnsaBandwidth:(id)self1 frequencyRange:(id)self2 nrnsaFrequencyRange:(id)self3 subsId:(id)self4 dataPreferred:(BOOL)self5 lastKnownGci:(id)self6 isSatelliteSystem:(BOOL)self7 isSatelliteProvisioned:(BOOL)self8 dataConnectionType:(unint64_t)self9;
@end

@implementation RatRetentionState

- (id)init:(unint64_t)init displayStatus:(id)status rat:(id)rat dataBearerTechnology:(id)technology band:(id)band arfcn:(id)arfcn nrnsaArfcn:(id)nrnsaArfcn bandwidth:(id)self0 nrnsaBandwidth:(id)self1 frequencyRange:(id)self2 nrnsaFrequencyRange:(id)self3 subsId:(id)self4 dataPreferred:(BOOL)self5 lastKnownGci:(id)self6 isSatelliteSystem:(BOOL)self7 isSatelliteProvisioned:(BOOL)self8 dataConnectionType:(unint64_t)self9
{
  statusCopy = status;
  ratCopy = rat;
  technologyCopy = technology;
  bandCopy = band;
  arfcnCopy = arfcn;
  v26 = ratCopy;
  nrnsaArfcnCopy = nrnsaArfcn;
  bandwidthCopy = bandwidth;
  nrnsaBandwidthCopy = nrnsaBandwidth;
  rangeCopy = range;
  frequencyRangeCopy = frequencyRange;
  idCopy = id;
  gciCopy = gci;
  v41.receiver = self;
  v41.super_class = RatRetentionState;
  v32 = [(RatRetentionState *)&v41 init];
  v33 = v32;
  if (v32)
  {
    [(RatRetentionState *)v32 setStartTime:init];
    [(RatRetentionState *)v33 setDisplayStatus:statusCopy];
    [(RatRetentionState *)v33 setRat:v26];
    [(RatRetentionState *)v33 setDataBearerTechnology:technologyCopy];
    [(RatRetentionState *)v33 setBand:bandCopy];
    [(RatRetentionState *)v33 setArfcn:arfcnCopy];
    [(RatRetentionState *)v33 setNrnsaArfcn:nrnsaArfcnCopy];
    [(RatRetentionState *)v33 setBandwidth:bandwidthCopy];
    [(RatRetentionState *)v33 setNrnsaBandwidth:nrnsaBandwidthCopy];
    [(RatRetentionState *)v33 setFrequencyRange:rangeCopy];
    [(RatRetentionState *)v33 setNrnsaFrequencyRange:frequencyRangeCopy];
    [(RatRetentionState *)v33 setDataPreferred:preferred];
    [(RatRetentionState *)v33 setSubsId:idCopy];
    [(RatRetentionState *)v33 setLastKnownGci:gciCopy];
    [(RatRetentionState *)v33 setIsSatelliteSystem:system];
    [(RatRetentionState *)v33 setIsSatelliteProvisioned:provisioned];
    [(RatRetentionState *)v33 setDataConnectionType:type];
  }

  return v33;
}

- (id)description
{
  startTime = [(RatRetentionState *)self startTime];
  displayStatus = [(RatRetentionState *)self displayStatus];
  v18 = [(RatRetentionState *)self rat];
  dataBearerTechnology = [(RatRetentionState *)self dataBearerTechnology];
  band = [(RatRetentionState *)self band];
  arfcn = [(RatRetentionState *)self arfcn];
  nrnsaArfcn = [(RatRetentionState *)self nrnsaArfcn];
  bandwidth = [(RatRetentionState *)self bandwidth];
  nrnsaBandwidth = [(RatRetentionState *)self nrnsaBandwidth];
  frequencyRange = [(RatRetentionState *)self frequencyRange];
  nrnsaFrequencyRange = [(RatRetentionState *)self nrnsaFrequencyRange];
  v6 = @"yes";
  if ([(RatRetentionState *)self dataPreferred])
  {
    v7 = @"yes";
  }

  else
  {
    v7 = @"no";
  }

  subsId = [(RatRetentionState *)self subsId];
  if ([(RatRetentionState *)self isSatelliteSystem])
  {
    v9 = @"yes";
  }

  else
  {
    v9 = @"no";
  }

  if (![(RatRetentionState *)self isSatelliteProvisioned])
  {
    v6 = @"no";
  }

  v10 = [WISSystemStatusSimulacrum WISSSDataConnectionTypeToString:[(RatRetentionState *)self dataConnectionType]];
  v14 = [NSString stringWithFormat:@"startTime %llu, displayStatus %@, rat %@, dataBearerTechnology %@, band %@, arfcn %@, nrnsaArfcn %@, bandwidth %@, nrnsaBandwidth %@, frequencyRange %@, nrnsaFrequencyRange %@, dataPreferred %@, subsId %@, isSatelliteSystem %@, isSatelliteProvisioned %@, dataConnectionType %@", startTime, displayStatus, v18, dataBearerTechnology, band, arfcn, nrnsaArfcn, bandwidth, nrnsaBandwidth, frequencyRange, nrnsaFrequencyRange, v7, subsId, v9, v6, v10];

  return v14;
}

@end