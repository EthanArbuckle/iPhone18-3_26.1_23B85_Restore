@interface MXMetricPayload
- (MXMetricPayload)initWithAppVersion:(id)a3 withMutipleAppVersions:(BOOL)a4 withTimeStampBegin:(id)a5 withTimeStampEnd:(id)a6;
- (MXMetricPayload)initWithCoder:(id)a3;
- (MXMetricPayload)initWithPayloadData:(id)a3 withMutipleAppVersions:(BOOL)a4 withTimeStampBegin:(id)a5 withTimeStampEnd:(id)a6 withMetaData:(id)a7 withMetrics:(id)a8;
- (NSData)JSONRepresentation;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXMetricPayload

- (MXMetricPayload)initWithPayloadData:(id)a3 withMutipleAppVersions:(BOOL)a4 withTimeStampBegin:(id)a5 withTimeStampEnd:(id)a6 withMetaData:(id)a7 withMetrics:(id)a8
{
  v15 = a3;
  v16 = a5;
  v53 = a6;
  v52 = a7;
  v17 = a8;
  v54.receiver = self;
  v54.super_class = MXMetricPayload;
  v18 = [(MXMetricPayload *)&v54 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_6;
  }

  v20 = 0;
  if (v15 && v16 && v53)
  {
    objc_storeStrong(&v18->_latestApplicationVersion, a3);
    v19->_includesMultipleApplicationVersions = a4;
    objc_storeStrong(&v19->_timeStampBegin, a5);
    objc_storeStrong(&v19->_timeStampEnd, a6);
    objc_storeStrong(&v19->_metaData, a7);
    v21 = [v17 objectForKeyedSubscript:{@"cpuMetrics", v52}];
    cpuMetrics = v19->_cpuMetrics;
    v19->_cpuMetrics = v21;

    v23 = [v17 objectForKeyedSubscript:@"gpuMetrics"];
    gpuMetrics = v19->_gpuMetrics;
    v19->_gpuMetrics = v23;

    v25 = [v17 objectForKeyedSubscript:@"cellularConditionMetrics"];
    cellularConditionMetrics = v19->_cellularConditionMetrics;
    v19->_cellularConditionMetrics = v25;

    v27 = [v17 objectForKeyedSubscript:@"applicationTimeMetrics"];
    applicationTimeMetrics = v19->_applicationTimeMetrics;
    v19->_applicationTimeMetrics = v27;

    v29 = [v17 objectForKeyedSubscript:@"locationActivityMetrics"];
    locationActivityMetrics = v19->_locationActivityMetrics;
    v19->_locationActivityMetrics = v29;

    v31 = [v17 objectForKeyedSubscript:@"networkTransferMetrics"];
    networkTransferMetrics = v19->_networkTransferMetrics;
    v19->_networkTransferMetrics = v31;

    v33 = [v17 objectForKeyedSubscript:@"applicationLaunchMetrics"];
    applicationLaunchMetrics = v19->_applicationLaunchMetrics;
    v19->_applicationLaunchMetrics = v33;

    v35 = [v17 objectForKeyedSubscript:@"applicationResponsivenessMetrics"];
    applicationResponsivenessMetrics = v19->_applicationResponsivenessMetrics;
    v19->_applicationResponsivenessMetrics = v35;

    v37 = [v17 objectForKeyedSubscript:@"diskIOMetrics"];
    diskIOMetrics = v19->_diskIOMetrics;
    v19->_diskIOMetrics = v37;

    v39 = [v17 objectForKeyedSubscript:@"memoryMetrics"];
    memoryMetrics = v19->_memoryMetrics;
    v19->_memoryMetrics = v39;

    v41 = [v17 objectForKeyedSubscript:@"displayMetrics"];
    displayMetrics = v19->_displayMetrics;
    v19->_displayMetrics = v41;

    v43 = [v17 objectForKeyedSubscript:@"animationMetrics"];
    animationMetrics = v19->_animationMetrics;
    v19->_animationMetrics = v43;

    v45 = [v17 objectForKeyedSubscript:@"applicationExitMetrics"];
    applicationExitMetrics = v19->_applicationExitMetrics;
    v19->_applicationExitMetrics = v45;

    v47 = [v17 objectForKeyedSubscript:@"diskSpaceUsageMetrics"];
    diskSpaceUsageMetrics = v19->_diskSpaceUsageMetrics;
    v19->_diskSpaceUsageMetrics = v47;

    v49 = [v17 objectForKeyedSubscript:@"signpostMetrics"];
    signpostMetrics = v19->_signpostMetrics;
    v19->_signpostMetrics = v49;

LABEL_6:
    v20 = v19;
  }

  return v20;
}

- (MXMetricPayload)initWithAppVersion:(id)a3 withMutipleAppVersions:(BOOL)a4 withTimeStampBegin:(id)a5 withTimeStampEnd:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = MXMetricPayload;
  v14 = [(MXMetricPayload *)&v18 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_6;
  }

  v16 = 0;
  if (v11 && v12 && v13)
  {
    objc_storeStrong(&v14->_latestApplicationVersion, a3);
    v15->_includesMultipleApplicationVersions = a4;
    objc_storeStrong(&v15->_timeStampBegin, a5);
    objc_storeStrong(&v15->_timeStampEnd, a6);
LABEL_6:
    v16 = v15;
  }

  return v16;
}

- (NSData)JSONRepresentation
{
  v2 = [(MXMetricPayload *)self toDictionary];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v2])
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:1 error:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  latestApplicationVersion = self->_latestApplicationVersion;
  v6 = a3;
  [v6 encodeObject:latestApplicationVersion forKey:@"appVersion"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_includesMultipleApplicationVersions];
  [v6 encodeObject:v5 forKey:@"multipleAppVersions"];

  [v6 encodeObject:self->_timeStampBegin forKey:@"timeStampBegin"];
  [v6 encodeObject:self->_timeStampEnd forKey:@"timeStampEnd"];
  [v6 encodeObject:self->_metaData forKey:@"metaData"];
  [v6 encodeObject:self->_cpuMetrics forKey:@"cpuMetrics"];
  [v6 encodeObject:self->_gpuMetrics forKey:@"gpuMetrics"];
  [v6 encodeObject:self->_cellularConditionMetrics forKey:@"cellularConditionMetrics"];
  [v6 encodeObject:self->_applicationTimeMetrics forKey:@"applicationTimeMetrics"];
  [v6 encodeObject:self->_locationActivityMetrics forKey:@"locationActivityMetrics"];
  [v6 encodeObject:self->_networkTransferMetrics forKey:@"networkTransferMetrics"];
  [v6 encodeObject:self->_applicationLaunchMetrics forKey:@"applicationLaunchMetrics"];
  [v6 encodeObject:self->_applicationResponsivenessMetrics forKey:@"applicationResponsivenessMetrics"];
  [v6 encodeObject:self->_diskIOMetrics forKey:@"diskIOMetrics"];
  [v6 encodeObject:self->_memoryMetrics forKey:@"memoryMetrics"];
  [v6 encodeObject:self->_displayMetrics forKey:@"displayMetrics"];
  [v6 encodeObject:self->_animationMetrics forKey:@"animationMetrics"];
  [v6 encodeObject:self->_applicationExitMetrics forKey:@"applicationExitMetrics"];
  [v6 encodeObject:self->_diskSpaceUsageMetrics forKey:@"diskSpaceUsageMetrics"];
  [v6 encodeObject:self->_signpostMetrics forKey:@"signpostMetrics"];
}

- (MXMetricPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = MXMetricPayload;
  v5 = [(MXMetricPayload *)&v53 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appVersion"];
    latestApplicationVersion = v5->_latestApplicationVersion;
    v5->_latestApplicationVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multipleAppVersions"];
    v5->_includesMultipleApplicationVersions = [v8 BOOLValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeStampBegin"];
    timeStampBegin = v5->_timeStampBegin;
    v5->_timeStampBegin = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeStampEnd"];
    timeStampEnd = v5->_timeStampEnd;
    v5->_timeStampEnd = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metaData"];
    metaData = v5->_metaData;
    v5->_metaData = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cpuMetrics"];
    cpuMetrics = v5->_cpuMetrics;
    v5->_cpuMetrics = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gpuMetrics"];
    gpuMetrics = v5->_gpuMetrics;
    v5->_gpuMetrics = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cellularConditionMetrics"];
    cellularConditionMetrics = v5->_cellularConditionMetrics;
    v5->_cellularConditionMetrics = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationTimeMetrics"];
    applicationTimeMetrics = v5->_applicationTimeMetrics;
    v5->_applicationTimeMetrics = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationActivityMetrics"];
    locationActivityMetrics = v5->_locationActivityMetrics;
    v5->_locationActivityMetrics = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkTransferMetrics"];
    networkTransferMetrics = v5->_networkTransferMetrics;
    v5->_networkTransferMetrics = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationLaunchMetrics"];
    applicationLaunchMetrics = v5->_applicationLaunchMetrics;
    v5->_applicationLaunchMetrics = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationResponsivenessMetrics"];
    applicationResponsivenessMetrics = v5->_applicationResponsivenessMetrics;
    v5->_applicationResponsivenessMetrics = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diskIOMetrics"];
    diskIOMetrics = v5->_diskIOMetrics;
    v5->_diskIOMetrics = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"memoryMetrics"];
    memoryMetrics = v5->_memoryMetrics;
    v5->_memoryMetrics = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayMetrics"];
    displayMetrics = v5->_displayMetrics;
    v5->_displayMetrics = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"animationMetrics"];
    animationMetrics = v5->_animationMetrics;
    v5->_animationMetrics = v37;

    v39 = MEMORY[0x277CBEB98];
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    v42 = [v39 setWithObjects:{v40, v41, objc_opt_class(), 0}];
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"applicationExitMetrics"];
    applicationExitMetrics = v5->_applicationExitMetrics;
    v5->_applicationExitMetrics = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diskSpaceUsageMetrics"];
    diskSpaceUsageMetrics = v5->_diskSpaceUsageMetrics;
    v5->_diskSpaceUsageMetrics = v45;

    v47 = MEMORY[0x277CBEB98];
    v48 = objc_opt_class();
    v49 = [v47 setWithObjects:{v48, objc_opt_class(), 0}];
    v50 = [v4 decodeObjectOfClasses:v49 forKey:@"signpostMetrics"];
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
    v13 = [(MXMetaData *)metaData toDictionary];
    [v3 setObject:v13 forKey:@"metaData"];
  }

  cpuMetrics = self->_cpuMetrics;
  if (cpuMetrics)
  {
    v15 = [(MXCPUMetric *)cpuMetrics toDictionary];
    [v3 setObject:v15 forKey:@"cpuMetrics"];
  }

  gpuMetrics = self->_gpuMetrics;
  if (gpuMetrics)
  {
    v17 = [(MXGPUMetric *)gpuMetrics toDictionary];
    [v3 setObject:v17 forKey:@"gpuMetrics"];
  }

  cellularConditionMetrics = self->_cellularConditionMetrics;
  if (cellularConditionMetrics)
  {
    v19 = [(MXCellularConditionMetric *)cellularConditionMetrics toDictionary];
    [v3 setObject:v19 forKey:@"cellularConditionMetrics"];
  }

  applicationTimeMetrics = self->_applicationTimeMetrics;
  if (applicationTimeMetrics)
  {
    v21 = [(MXAppRunTimeMetric *)applicationTimeMetrics toDictionary];
    [v3 setObject:v21 forKey:@"applicationTimeMetrics"];
  }

  locationActivityMetrics = self->_locationActivityMetrics;
  if (locationActivityMetrics)
  {
    v23 = [(MXLocationActivityMetric *)locationActivityMetrics toDictionary];
    [v3 setObject:v23 forKey:@"locationActivityMetrics"];
  }

  networkTransferMetrics = self->_networkTransferMetrics;
  if (networkTransferMetrics)
  {
    v25 = [(MXNetworkTransferMetric *)networkTransferMetrics toDictionary];
    [v3 setObject:v25 forKey:@"networkTransferMetrics"];
  }

  applicationLaunchMetrics = self->_applicationLaunchMetrics;
  if (applicationLaunchMetrics)
  {
    v27 = [(MXAppLaunchMetric *)applicationLaunchMetrics toDictionary];
    [v3 setObject:v27 forKey:@"applicationLaunchMetrics"];
  }

  applicationResponsivenessMetrics = self->_applicationResponsivenessMetrics;
  if (applicationResponsivenessMetrics)
  {
    v29 = [(MXAppResponsivenessMetric *)applicationResponsivenessMetrics toDictionary];
    [v3 setObject:v29 forKey:@"applicationResponsivenessMetrics"];
  }

  diskIOMetrics = self->_diskIOMetrics;
  if (diskIOMetrics)
  {
    v31 = [(MXDiskIOMetric *)diskIOMetrics toDictionary];
    [v3 setObject:v31 forKey:@"diskIOMetrics"];
  }

  memoryMetrics = self->_memoryMetrics;
  if (memoryMetrics)
  {
    v33 = [(MXMemoryMetric *)memoryMetrics toDictionary];
    [v3 setObject:v33 forKey:@"memoryMetrics"];
  }

  displayMetrics = self->_displayMetrics;
  if (displayMetrics)
  {
    v35 = [(MXDisplayMetric *)displayMetrics toDictionary];
    [v3 setObject:v35 forKey:@"displayMetrics"];
  }

  animationMetrics = self->_animationMetrics;
  if (animationMetrics)
  {
    v37 = [(MXAnimationMetric *)animationMetrics toDictionary];
    [v3 setObject:v37 forKey:@"animationMetrics"];
  }

  applicationExitMetrics = self->_applicationExitMetrics;
  if (applicationExitMetrics)
  {
    v39 = [(MXAppExitMetric *)applicationExitMetrics toDictionary];
    [v3 setObject:v39 forKey:@"applicationExitMetrics"];
  }

  diskSpaceUsageMetrics = self->_diskSpaceUsageMetrics;
  if (diskSpaceUsageMetrics)
  {
    v41 = [(MXDiskSpaceUsageMetric *)diskSpaceUsageMetrics toDictionary];
    [v3 setObject:v41 forKey:@"diskSpaceUsageMetrics"];
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

          v48 = [*(*(&v51 + 1) + 8 * i) toDictionary];
          [v42 addObject:v48];
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