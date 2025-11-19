@interface RatRetentionState
- (id)description;
- (id)init:(unint64_t)a3 displayStatus:(id)a4 rat:(id)a5 dataBearerTechnology:(id)a6 band:(id)a7 arfcn:(id)a8 nrnsaArfcn:(id)a9 bandwidth:(id)a10 nrnsaBandwidth:(id)a11 frequencyRange:(id)a12 nrnsaFrequencyRange:(id)a13 subsId:(id)a14 dataPreferred:(BOOL)a15 lastKnownGci:(id)a16 isSatelliteSystem:(BOOL)a17 isSatelliteProvisioned:(BOOL)a18 dataConnectionType:(unint64_t)a19;
@end

@implementation RatRetentionState

- (id)init:(unint64_t)a3 displayStatus:(id)a4 rat:(id)a5 dataBearerTechnology:(id)a6 band:(id)a7 arfcn:(id)a8 nrnsaArfcn:(id)a9 bandwidth:(id)a10 nrnsaBandwidth:(id)a11 frequencyRange:(id)a12 nrnsaFrequencyRange:(id)a13 subsId:(id)a14 dataPreferred:(BOOL)a15 lastKnownGci:(id)a16 isSatelliteSystem:(BOOL)a17 isSatelliteProvisioned:(BOOL)a18 dataConnectionType:(unint64_t)a19
{
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v40 = a7;
  v39 = a8;
  v26 = v24;
  v38 = a9;
  v37 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  v30 = a14;
  v31 = a16;
  v41.receiver = self;
  v41.super_class = RatRetentionState;
  v32 = [(RatRetentionState *)&v41 init];
  v33 = v32;
  if (v32)
  {
    [(RatRetentionState *)v32 setStartTime:a3];
    [(RatRetentionState *)v33 setDisplayStatus:v23];
    [(RatRetentionState *)v33 setRat:v26];
    [(RatRetentionState *)v33 setDataBearerTechnology:v25];
    [(RatRetentionState *)v33 setBand:v40];
    [(RatRetentionState *)v33 setArfcn:v39];
    [(RatRetentionState *)v33 setNrnsaArfcn:v38];
    [(RatRetentionState *)v33 setBandwidth:v37];
    [(RatRetentionState *)v33 setNrnsaBandwidth:v27];
    [(RatRetentionState *)v33 setFrequencyRange:v28];
    [(RatRetentionState *)v33 setNrnsaFrequencyRange:v29];
    [(RatRetentionState *)v33 setDataPreferred:a15];
    [(RatRetentionState *)v33 setSubsId:v30];
    [(RatRetentionState *)v33 setLastKnownGci:v31];
    [(RatRetentionState *)v33 setIsSatelliteSystem:a17];
    [(RatRetentionState *)v33 setIsSatelliteProvisioned:a18];
    [(RatRetentionState *)v33 setDataConnectionType:a19];
  }

  return v33;
}

- (id)description
{
  v13 = [(RatRetentionState *)self startTime];
  v19 = [(RatRetentionState *)self displayStatus];
  v18 = [(RatRetentionState *)self rat];
  v17 = [(RatRetentionState *)self dataBearerTechnology];
  v16 = [(RatRetentionState *)self band];
  v3 = [(RatRetentionState *)self arfcn];
  v20 = [(RatRetentionState *)self nrnsaArfcn];
  v4 = [(RatRetentionState *)self bandwidth];
  v5 = [(RatRetentionState *)self nrnsaBandwidth];
  v15 = [(RatRetentionState *)self frequencyRange];
  v12 = [(RatRetentionState *)self nrnsaFrequencyRange];
  v6 = @"yes";
  if ([(RatRetentionState *)self dataPreferred])
  {
    v7 = @"yes";
  }

  else
  {
    v7 = @"no";
  }

  v8 = [(RatRetentionState *)self subsId];
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
  v14 = [NSString stringWithFormat:@"startTime %llu, displayStatus %@, rat %@, dataBearerTechnology %@, band %@, arfcn %@, nrnsaArfcn %@, bandwidth %@, nrnsaBandwidth %@, frequencyRange %@, nrnsaFrequencyRange %@, dataPreferred %@, subsId %@, isSatelliteSystem %@, isSatelliteProvisioned %@, dataConnectionType %@", v13, v19, v18, v17, v16, v3, v20, v4, v5, v15, v12, v7, v8, v9, v6, v10];

  return v14;
}

@end