@interface MXMetricPayload
- (MXMetricPayload)initWithAppVersion:(id)version withMutipleAppVersions:(BOOL)versions withTimeStampBegin:(id)begin withTimeStampEnd:(id)end;
- (MXMetricPayload)initWithCoder:(id)coder;
- (MXMetricPayload)initWithPayloadData:(id)data withMutipleAppVersions:(BOOL)versions withTimeStampBegin:(id)begin withTimeStampEnd:(id)end withMetaData:(id)metaData withMetrics:(id)metrics;
- (NSData)JSONRepresentation;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXMetricPayload

- (MXMetricPayload)initWithPayloadData:(id)data withMutipleAppVersions:(BOOL)versions withTimeStampBegin:(id)begin withTimeStampEnd:(id)end withMetaData:(id)metaData withMetrics:(id)metrics
{
  dataCopy = data;
  beginCopy = begin;
  endCopy = end;
  metaDataCopy = metaData;
  metricsCopy = metrics;
  v54.receiver = self;
  v54.super_class = MXMetricPayload;
  v18 = [(MXMetricPayload *)&v54 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_6;
  }

  v20 = 0;
  if (dataCopy && beginCopy && endCopy)
  {
    objc_storeStrong(&v18->_latestApplicationVersion, data);
    v19->_includesMultipleApplicationVersions = versions;
    objc_storeStrong(&v19->_timeStampBegin, begin);
    objc_storeStrong(&v19->_timeStampEnd, end);
    objc_storeStrong(&v19->_metaData, metaData);
    v21 = [metricsCopy objectForKeyedSubscript:{@"cpuMetrics", metaDataCopy}];
    cpuMetrics = v19->_cpuMetrics;
    v19->_cpuMetrics = v21;

    v23 = [metricsCopy objectForKeyedSubscript:@"gpuMetrics"];
    gpuMetrics = v19->_gpuMetrics;
    v19->_gpuMetrics = v23;

    v25 = [metricsCopy objectForKeyedSubscript:@"cellularConditionMetrics"];
    cellularConditionMetrics = v19->_cellularConditionMetrics;
    v19->_cellularConditionMetrics = v25;

    v27 = [metricsCopy objectForKeyedSubscript:@"applicationTimeMetrics"];
    applicationTimeMetrics = v19->_applicationTimeMetrics;
    v19->_applicationTimeMetrics = v27;

    v29 = [metricsCopy objectForKeyedSubscript:@"locationActivityMetrics"];
    locationActivityMetrics = v19->_locationActivityMetrics;
    v19->_locationActivityMetrics = v29;

    v31 = [metricsCopy objectForKeyedSubscript:@"networkTransferMetrics"];
    networkTransferMetrics = v19->_networkTransferMetrics;
    v19->_networkTransferMetrics = v31;

    v33 = [metricsCopy objectForKeyedSubscript:@"applicationLaunchMetrics"];
    applicationLaunchMetrics = v19->_applicationLaunchMetrics;
    v19->_applicationLaunchMetrics = v33;

    v35 = [metricsCopy objectForKeyedSubscript:@"applicationResponsivenessMetrics"];
    applicationResponsivenessMetrics = v19->_applicationResponsivenessMetrics;
    v19->_applicationResponsivenessMetrics = v35;

    v37 = [metricsCopy objectForKeyedSubscript:@"diskIOMetrics"];
    diskIOMetrics = v19->_diskIOMetrics;
    v19->_diskIOMetrics = v37;

    v39 = [metricsCopy objectForKeyedSubscript:@"memoryMetrics"];
    memoryMetrics = v19->_memoryMetrics;
    v19->_memoryMetrics = v39;

    v41 = [metricsCopy objectForKeyedSubscript:@"displayMetrics"];
    displayMetrics = v19->_displayMetrics;
    v19->_displayMetrics = v41;

    v43 = [metricsCopy objectForKeyedSubscript:@"animationMetrics"];
    animationMetrics = v19->_animationMetrics;
    v19->_animationMetrics = v43;

    v45 = [metricsCopy objectForKeyedSubscript:@"applicationExitMetrics"];
    applicationExitMetrics = v19->_applicationExitMetrics;
    v19->_applicationExitMetrics = v45;

    v47 = [metricsCopy objectForKeyedSubscript:@"diskSpaceUsageMetrics"];
    diskSpaceUsageMetrics = v19->_diskSpaceUsageMetrics;
    v19->_diskSpaceUsageMetrics = v47;

    v49 = [metricsCopy objectForKeyedSubscript:@"signpostMetrics"];
    signpostMetrics = v19->_signpostMetrics;
    v19->_signpostMetrics = v49;

LABEL_6:
    v20 = v19;
  }

  return v20;
}

- (MXMetricPayload)initWithAppVersion:(id)version withMutipleAppVersions:(BOOL)versions withTimeStampBegin:(id)begin withTimeStampEnd:(id)end
{
  versionCopy = version;
  beginCopy = begin;
  endCopy = end;
  v18.receiver = self;
  v18.super_class = MXMetricPayload;
  v14 = [(MXMetricPayload *)&v18 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_6;
  }

  v16 = 0;
  if (versionCopy && beginCopy && endCopy)
  {
    objc_storeStrong(&v14->_latestApplicationVersion, version);
    v15->_includesMultipleApplicationVersions = versions;
    objc_storeStrong(&v15->_timeStampBegin, begin);
    objc_storeStrong(&v15->_timeStampEnd, end);
LABEL_6:
    v16 = v15;
  }

  return v16;
}

- (NSData)JSONRepresentation
{
  toDictionary = [(MXMetricPayload *)self toDictionary];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:toDictionary])
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:toDictionary options:1 error:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  latestApplicationVersion = self->_latestApplicationVersion;
  coderCopy = coder;
  [coderCopy encodeObject:latestApplicationVersion forKey:@"appVersion"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_includesMultipleApplicationVersions];
  [coderCopy encodeObject:v5 forKey:@"multipleAppVersions"];

  [coderCopy encodeObject:self->_timeStampBegin forKey:@"timeStampBegin"];
  [coderCopy encodeObject:self->_timeStampEnd forKey:@"timeStampEnd"];
  [coderCopy encodeObject:self->_metaData forKey:@"metaData"];
  [coderCopy encodeObject:self->_cpuMetrics forKey:@"cpuMetrics"];
  [coderCopy encodeObject:self->_gpuMetrics forKey:@"gpuMetrics"];
  [coderCopy encodeObject:self->_cellularConditionMetrics forKey:@"cellularConditionMetrics"];
  [coderCopy encodeObject:self->_applicationTimeMetrics forKey:@"applicationTimeMetrics"];
  [coderCopy encodeObject:self->_locationActivityMetrics forKey:@"locationActivityMetrics"];
  [coderCopy encodeObject:self->_networkTransferMetrics forKey:@"networkTransferMetrics"];
  [coderCopy encodeObject:self->_applicationLaunchMetrics forKey:@"applicationLaunchMetrics"];
  [coderCopy encodeObject:self->_applicationResponsivenessMetrics forKey:@"applicationResponsivenessMetrics"];
  [coderCopy encodeObject:self->_diskIOMetrics forKey:@"diskIOMetrics"];
  [coderCopy encodeObject:self->_memoryMetrics forKey:@"memoryMetrics"];
  [coderCopy encodeObject:self->_displayMetrics forKey:@"displayMetrics"];
  [coderCopy encodeObject:self->_animationMetrics forKey:@"animationMetrics"];
  [coderCopy encodeObject:self->_applicationExitMetrics forKey:@"applicationExitMetrics"];
  [coderCopy encodeObject:self->_diskSpaceUsageMetrics forKey:@"diskSpaceUsageMetrics"];
  [coderCopy encodeObject:self->_signpostMetrics forKey:@"signpostMetrics"];
}

- (MXMetricPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = MXMetricPayload;
  v5 = [(MXMetricPayload *)&v53 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appVersion"];
    latestApplicationVersion = v5->_latestApplicationVersion;
    v5->_latestApplicationVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multipleAppVersions"];
    v5->_includesMultipleApplicationVersions = [v8 BOOLValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeStampBegin"];
    timeStampBegin = v5->_timeStampBegin;
    v5->_timeStampBegin = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeStampEnd"];
    timeStampEnd = v5->_timeStampEnd;
    v5->_timeStampEnd = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metaData"];
    metaData = v5->_metaData;
    v5->_metaData = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cpuMetrics"];
    cpuMetrics = v5->_cpuMetrics;
    v5->_cpuMetrics = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gpuMetrics"];
    gpuMetrics = v5->_gpuMetrics;
    v5->_gpuMetrics = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cellularConditionMetrics"];
    cellularConditionMetrics = v5->_cellularConditionMetrics;
    v5->_cellularConditionMetrics = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationTimeMetrics"];
    applicationTimeMetrics = v5->_applicationTimeMetrics;
    v5->_applicationTimeMetrics = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationActivityMetrics"];
    locationActivityMetrics = v5->_locationActivityMetrics;
    v5->_locationActivityMetrics = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkTransferMetrics"];
    networkTransferMetrics = v5->_networkTransferMetrics;
    v5->_networkTransferMetrics = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationLaunchMetrics"];
    applicationLaunchMetrics = v5->_applicationLaunchMetrics;
    v5->_applicationLaunchMetrics = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationResponsivenessMetrics"];
    applicationResponsivenessMetrics = v5->_applicationResponsivenessMetrics;
    v5->_applicationResponsivenessMetrics = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diskIOMetrics"];
    diskIOMetrics = v5->_diskIOMetrics;
    v5->_diskIOMetrics = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"memoryMetrics"];
    memoryMetrics = v5->_memoryMetrics;
    v5->_memoryMetrics = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayMetrics"];
    displayMetrics = v5->_displayMetrics;
    v5->_displayMetrics = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"animationMetrics"];
    animationMetrics = v5->_animationMetrics;
    v5->_animationMetrics = v37;

    v39 = MEMORY[0x277CBEB98];
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    v42 = [v39 setWithObjects:{v40, v41, objc_opt_class(), 0}];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"applicationExitMetrics"];
    applicationExitMetrics = v5->_applicationExitMetrics;
    v5->_applicationExitMetrics = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diskSpaceUsageMetrics"];
    diskSpaceUsageMetrics = v5->_diskSpaceUsageMetrics;
    v5->_diskSpaceUsageMetrics = v45;

    v47 = MEMORY[0x277CBEB98];
    v48 = objc_opt_class();
    v49 = [v47 setWithObjects:{v48, objc_opt_class(), 0}];
    v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"signpostMetrics"];
    signpostMetrics = v5->_signpostMetrics;
    v5->_signpostMetrics = v50;
  }

  return v5;
}

- (id)toDictionary
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  v6 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v5 setLocale:v6];
  [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  latestApplicationVersion = self->_latestApplicationVersion;
  if (latestApplicationVersion)
  {
    [v3 setObject:latestApplicationVersion forKey:@"appVersion"];
  }

  if (self->_includesMultipleApplicationVersions)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v9 = [v8 descriptionWithLocale:@"en_US_POSIX"];
    [v3 setObject:v9 forKey:@"multipleAppVersions"];
  }

  if (self->_timeStampBegin)
  {
    v10 = [v5 stringFromDate:?];
    [v3 setObject:v10 forKey:@"timeStampBegin"];
  }

  if (self->_timeStampEnd)
  {
    v11 = [v5 stringFromDate:?];
    [v3 setObject:v11 forKey:@"timeStampEnd"];
  }

  metaData = self->_metaData;
  if (metaData)
  {
    toDictionary = [(MXMetaData *)metaData toDictionary];
    [v3 setObject:toDictionary forKey:@"metaData"];
  }

  cpuMetrics = self->_cpuMetrics;
  if (cpuMetrics)
  {
    toDictionary2 = [(MXCPUMetric *)cpuMetrics toDictionary];
    [v3 setObject:toDictionary2 forKey:@"cpuMetrics"];
  }

  gpuMetrics = self->_gpuMetrics;
  if (gpuMetrics)
  {
    toDictionary3 = [(MXGPUMetric *)gpuMetrics toDictionary];
    [v3 setObject:toDictionary3 forKey:@"gpuMetrics"];
  }

  cellularConditionMetrics = self->_cellularConditionMetrics;
  if (cellularConditionMetrics)
  {
    toDictionary4 = [(MXCellularConditionMetric *)cellularConditionMetrics toDictionary];
    [v3 setObject:toDictionary4 forKey:@"cellularConditionMetrics"];
  }

  applicationTimeMetrics = self->_applicationTimeMetrics;
  if (applicationTimeMetrics)
  {
    toDictionary5 = [(MXAppRunTimeMetric *)applicationTimeMetrics toDictionary];
    [v3 setObject:toDictionary5 forKey:@"applicationTimeMetrics"];
  }

  locationActivityMetrics = self->_locationActivityMetrics;
  if (locationActivityMetrics)
  {
    toDictionary6 = [(MXLocationActivityMetric *)locationActivityMetrics toDictionary];
    [v3 setObject:toDictionary6 forKey:@"locationActivityMetrics"];
  }

  networkTransferMetrics = self->_networkTransferMetrics;
  if (networkTransferMetrics)
  {
    toDictionary7 = [(MXNetworkTransferMetric *)networkTransferMetrics toDictionary];
    [v3 setObject:toDictionary7 forKey:@"networkTransferMetrics"];
  }

  applicationLaunchMetrics = self->_applicationLaunchMetrics;
  if (applicationLaunchMetrics)
  {
    toDictionary8 = [(MXAppLaunchMetric *)applicationLaunchMetrics toDictionary];
    [v3 setObject:toDictionary8 forKey:@"applicationLaunchMetrics"];
  }

  applicationResponsivenessMetrics = self->_applicationResponsivenessMetrics;
  if (applicationResponsivenessMetrics)
  {
    toDictionary9 = [(MXAppResponsivenessMetric *)applicationResponsivenessMetrics toDictionary];
    [v3 setObject:toDictionary9 forKey:@"applicationResponsivenessMetrics"];
  }

  diskIOMetrics = self->_diskIOMetrics;
  if (diskIOMetrics)
  {
    toDictionary10 = [(MXDiskIOMetric *)diskIOMetrics toDictionary];
    [v3 setObject:toDictionary10 forKey:@"diskIOMetrics"];
  }

  memoryMetrics = self->_memoryMetrics;
  if (memoryMetrics)
  {
    toDictionary11 = [(MXMemoryMetric *)memoryMetrics toDictionary];
    [v3 setObject:toDictionary11 forKey:@"memoryMetrics"];
  }

  displayMetrics = self->_displayMetrics;
  if (displayMetrics)
  {
    toDictionary12 = [(MXDisplayMetric *)displayMetrics toDictionary];
    [v3 setObject:toDictionary12 forKey:@"displayMetrics"];
  }

  animationMetrics = self->_animationMetrics;
  if (animationMetrics)
  {
    toDictionary13 = [(MXAnimationMetric *)animationMetrics toDictionary];
    [v3 setObject:toDictionary13 forKey:@"animationMetrics"];
  }

  applicationExitMetrics = self->_applicationExitMetrics;
  if (applicationExitMetrics)
  {
    toDictionary14 = [(MXAppExitMetric *)applicationExitMetrics toDictionary];
    [v3 setObject:toDictionary14 forKey:@"applicationExitMetrics"];
  }

  diskSpaceUsageMetrics = self->_diskSpaceUsageMetrics;
  if (diskSpaceUsageMetrics)
  {
    toDictionary15 = [(MXDiskSpaceUsageMetric *)diskSpaceUsageMetrics toDictionary];
    [v3 setObject:toDictionary15 forKey:@"diskSpaceUsageMetrics"];
  }

  if (self->_signpostMetrics)
  {
    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v43 = self->_signpostMetrics;
    v44 = [(NSArray *)v43 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v52;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v52 != v46)
          {
            objc_enumerationMutation(v43);
          }

          toDictionary16 = [*(*(&v51 + 1) + 8 * i) toDictionary];
          [v42 addObject:toDictionary16];
        }

        v45 = [(NSArray *)v43 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v45);
    }

    [v3 setObject:v42 forKey:@"signpostMetrics"];
  }

  v49 = *MEMORY[0x277D85DE8];

  return v3;
}

@end