@interface ARGeoTrackingTechniqueService
- (ARGeoTrackingTechniqueService)initWithConnection:(id)connection;
- (id)processData:(id)data;
- (id)processDeviceOrientationData:(id)data;
- (id)processLocationData:(id)data;
- (void)getLocationFromWorldPosition:(id)position reply:(id)reply;
- (void)posteriorVisualLocalizationCallIntervalWithReply:(id)reply;
- (void)setPosteriorVisualLocalizationCallInterval:(double)interval;
- (void)setSupportEnablementOptions:(unint64_t)options;
- (void)setVisualLocalizationCallInterval:(double)interval;
- (void)setVisualLocalizationCallIntervalTimeThreshold:(double)threshold;
- (void)supportEnablementOptionsWithReply:(id)reply;
- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context;
- (void)visualLocalizationCallIntervalTimeThresholdWithReply:(id)reply;
- (void)visualLocalizationCallIntervalWithReply:(id)reply;
- (void)visualLocalizationUpdatesRequestedWithReply:(id)reply;
@end

@implementation ARGeoTrackingTechniqueService

- (ARGeoTrackingTechniqueService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = ARRemoteGeoTrackingTechniqueServiceInterface();
  v6 = ARRemoteGeoTrackingTechniqueClientInterface();
  v13.receiver = self;
  v13.super_class = ARGeoTrackingTechniqueService;
  v7 = [(ARTechniqueService *)&v13 initWithConnection:connectionCopy exportedInterface:v5 remoteObjectInterface:v6];

  if (v7)
  {
    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    [(ARTechniqueService *)v7 setClientProxy:remoteObjectProxy];

    v9 = [objc_alloc(MEMORY[0x277D0EAC0]) initWithNSXPCConnection:connectionCopy];
    v10 = [objc_alloc(MEMORY[0x277CE52A8]) initWithAuditToken:v9];
    [(ARTechniqueService *)v7 setTechnique:v10];

    technique = [(ARTechniqueService *)v7 technique];
    [technique setDelegate:v7];
  }

  return v7;
}

- (id)processLocationData:(id)data
{
  v41 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (![(ARDaemonService *)self isActive])
  {
    v19 = _ARLogDaemon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543874;
      v32 = v21;
      v33 = 2048;
      selfCopy3 = self;
      v35 = 2112;
      v36 = dataCopy;
      _os_log_impl(&dword_23D391000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Service not active; skipping processing of location data: %@", buf, 0x20u);
    }

    v22 = dataCopy;
    goto LABEL_13;
  }

  if (self->_lastProcessedLocationData)
  {
    [dataCopy timestamp];
    v6 = v5;
    [(ARLocationData *)self->_lastProcessedLocationData timestamp];
    if (v6 <= v7)
    {
      v23 = _ARLogDaemon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        isSecure = [dataCopy isSecure];
        [dataCopy timestamp];
        *buf = 138544386;
        v32 = v25;
        v33 = 2048;
        selfCopy3 = self;
        v35 = 2048;
        v36 = dataCopy;
        v37 = 1024;
        *v38 = isSecure;
        *&v38[4] = 2048;
        *&v38[6] = v27;
        _os_log_impl(&dword_23D391000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: processLocationData - Already processed locationData (%p), isSecure: %d, timestamp: %f", buf, 0x30u);
      }

      v22 = self->_lastProcessedLocationData;
LABEL_13:
      v18 = v22;
      goto LABEL_14;
    }
  }

  v8 = _ARLogDaemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    isSecure2 = [dataCopy isSecure];
    [dataCopy timestamp];
    *buf = 138544642;
    v32 = v10;
    v33 = 2048;
    selfCopy3 = self;
    v35 = 2048;
    v36 = dataCopy;
    v37 = 2112;
    *v38 = dataCopy;
    *&v38[8] = 1024;
    *&v38[10] = isSecure2;
    v39 = 2048;
    v40 = v12;
    _os_log_impl(&dword_23D391000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: processLocationData - Processing locationData (%p): %@, isSecure: %d, timestamp: %f", buf, 0x3Au);
  }

  dataSource = [(ARDaemonService *)self dataSource];
  v14 = [dataSource service:self peerServiceOfType:objc_opt_class()];

  v15 = [v14 updateFromLocationData:dataCopy];
  lastProcessedLocationData = self->_lastProcessedLocationData;
  self->_lastProcessedLocationData = v15;

  v17 = self->_lastProcessedLocationData;
  v30.receiver = self;
  v30.super_class = ARGeoTrackingTechniqueService;
  v18 = [(ARTechniqueService *)&v30 processData:v17];

LABEL_14:
  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)processDeviceOrientationData:(id)data
{
  v39 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (![(ARDaemonService *)self isActive])
  {
    v18 = _ARLogDaemon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543874;
      v30 = v20;
      v31 = 2048;
      selfCopy3 = self;
      v33 = 2112;
      v34 = dataCopy;
      _os_log_impl(&dword_23D391000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Service not active; skipping processing of device orientation data: %@", buf, 0x20u);
    }

    v21 = dataCopy;
    goto LABEL_13;
  }

  if (self->_lastProcessedDeviceOrientationData)
  {
    [dataCopy timestamp];
    v6 = v5;
    [(ARDeviceOrientationData *)self->_lastProcessedDeviceOrientationData timestamp];
    if (v6 <= v7)
    {
      v22 = _ARLogDaemon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        [dataCopy timestamp];
        *buf = 138544130;
        v30 = v24;
        v31 = 2048;
        selfCopy3 = self;
        v33 = 2048;
        v34 = dataCopy;
        v35 = 2048;
        v36 = v25;
        _os_log_impl(&dword_23D391000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: processDeviceOrientationData - Already processed data (%p), timestamp: %f", buf, 0x2Au);
      }

      v21 = self->_lastProcessedDeviceOrientationData;
LABEL_13:
      v17 = v21;
      goto LABEL_14;
    }
  }

  v8 = _ARLogDaemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [dataCopy timestamp];
    *buf = 138544386;
    v30 = v10;
    v31 = 2048;
    selfCopy3 = self;
    v33 = 2048;
    v34 = dataCopy;
    v35 = 2112;
    v36 = dataCopy;
    v37 = 2048;
    v38 = v11;
    _os_log_impl(&dword_23D391000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: processDeviceOrientationData - Processing data (%p): %@, timestamp: %f", buf, 0x34u);
  }

  dataSource = [(ARDaemonService *)self dataSource];
  v13 = [dataSource service:self peerServiceOfType:objc_opt_class()];

  v14 = [v13 updateFromDeviceOrientationData:dataCopy];
  lastProcessedDeviceOrientationData = self->_lastProcessedDeviceOrientationData;
  self->_lastProcessedDeviceOrientationData = v14;

  v16 = self->_lastProcessedDeviceOrientationData;
  v28.receiver = self;
  v28.super_class = ARGeoTrackingTechniqueService;
  v17 = [(ARTechniqueService *)&v28 processData:v16];

LABEL_14:
  v26 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)getLocationFromWorldPosition:(id)position reply:(id)reply
{
  replyCopy = reply;
  ARVector3FromNSData();
  v15 = v6;
  technique = [(ARTechniqueService *)self technique];
  v9 = technique;
  v19 = 0;
  if (technique)
  {
    [technique getLocationFromWorldPosition:&v19 error:v15];
    v10 = v19;
    v16 = v17;
    v8 = vextq_s8(v16, v16, 8uLL);
    v14 = v8.i64[0];
    v8.i64[0] = v18;
  }

  else
  {
    v10 = 0;
    v16.i64[0] = 0;
    v14 = 0;
    v8.i64[0] = 0;
  }

  v13 = v8;

  *&v11 = v16.i64[0];
  *(&v11 + 1) = v14;
  v20[0] = v11;
  v20[1] = v13;
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:32];
  replyCopy[2](replyCopy, v12, v10);
}

- (void)setVisualLocalizationCallInterval:(double)interval
{
  technique = [(ARTechniqueService *)self technique];
  [technique setVisualLocalizationCallInterval:interval];
}

- (void)visualLocalizationCallIntervalWithReply:(id)reply
{
  replyCopy = reply;
  technique = [(ARTechniqueService *)self technique];
  [technique visualLocalizationCallInterval];
  (*(reply + 2))(replyCopy, 0);
}

- (void)setPosteriorVisualLocalizationCallInterval:(double)interval
{
  technique = [(ARTechniqueService *)self technique];
  [technique setPosteriorVisualLocalizationCallInterval:interval];
}

- (void)posteriorVisualLocalizationCallIntervalWithReply:(id)reply
{
  replyCopy = reply;
  technique = [(ARTechniqueService *)self technique];
  [technique posteriorVisualLocalizationCallInterval];
  (*(reply + 2))(replyCopy, 0);
}

- (void)setVisualLocalizationCallIntervalTimeThreshold:(double)threshold
{
  technique = [(ARTechniqueService *)self technique];
  [technique setVisualLocalizationCallIntervalTimeThreshold:threshold];
}

- (void)visualLocalizationCallIntervalTimeThresholdWithReply:(id)reply
{
  replyCopy = reply;
  technique = [(ARTechniqueService *)self technique];
  [technique visualLocalizationCallIntervalTimeThreshold];
  (*(reply + 2))(replyCopy, 0);
}

- (void)visualLocalizationUpdatesRequestedWithReply:(id)reply
{
  replyCopy = reply;
  technique = [(ARTechniqueService *)self technique];
  (*(reply + 2))(replyCopy, [technique visualLocalizationUpdatesRequested], 0);
}

- (void)setSupportEnablementOptions:(unint64_t)options
{
  technique = [(ARTechniqueService *)self technique];
  [technique setSupportEnablementOptions:options];
}

- (void)supportEnablementOptionsWithReply:(id)reply
{
  replyCopy = reply;
  technique = [(ARTechniqueService *)self technique];
  (*(reply + 2))(replyCopy, [technique supportEnablementOptions], 0);
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ARGeoTrackingTechniqueService *)self processLocationData:dataCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ARGeoTrackingTechniqueService *)self processDeviceOrientationData:dataCopy];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = ARGeoTrackingTechniqueService;
      v5 = [(ARTechniqueService *)&v8 processData:dataCopy];
    }
  }

  v6 = v5;

  return v6;
}

- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context
{
  v66 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  dataSource = [(ARDaemonService *)self dataSource];
  v11 = [dataSource service:self peerServiceOfType:objc_opt_class()];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = dataCopy;
  v13 = [v12 countByEnumeratingWithState:&v49 objects:v65 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    v16 = 0x277CE5000uLL;
    v45 = v12;
    v46 = *v50;
    do
    {
      v17 = 0;
      v47 = v14;
      do
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v49 + 1) + 8 * v17);
        v19 = *(v16 + 928);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v18;
          localizationResult = [v20 localizationResult];

          if (localizationResult)
          {
            v22 = _ARLogDaemon();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              [v20 heading];
              *buf = 138543875;
              v54 = v24;
              v55 = 2048;
              selfCopy3 = self;
              v57 = 2049;
              v58 = v25;
              _os_log_impl(&dword_23D391000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: vlHeading,%{private}f", buf, 0x20u);
            }

            v26 = _ARLogDaemon();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              v27 = objc_opt_class();
              v28 = NSStringFromClass(v27);
              [v20 location];
              v30 = v29 = v11;
              [v30 coordinate];
              v32 = v31;
              [v20 location];
              v34 = v33 = v16;
              [v34 coordinate];
              v36 = v35;
              location = [v20 location];
              [location altitude];
              *buf = 138544387;
              v54 = v28;
              v55 = 2048;
              selfCopy3 = self;
              v57 = 2049;
              v58 = v32;
              v59 = 2049;
              v60 = v36;
              v61 = 2049;
              v62 = v38;
              _os_log_impl(&dword_23D391000, v26, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: vlLocation,%{private}lf,%{private}lf,%{private}lf", buf, 0x34u);

              v14 = v47;
              v16 = v33;

              v11 = v29;
              v12 = v45;
              v15 = v46;
            }

            v39 = _ARLogDaemon();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v40 = objc_opt_class();
              v41 = NSStringFromClass(v40);
              *buf = 138544642;
              v54 = v41;
              v55 = 2048;
              selfCopy3 = self;
              v57 = 2048;
              v58 = v11;
              v59 = 2112;
              v60 = v11;
              v61 = 2112;
              v62 = v20;
              v63 = 2048;
              timestampCopy = timestamp;
              _os_log_impl(&dword_23D391000, v39, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: technique:didOutputResultData: - Calling updateFromVisualLocalizationResult on locationSensorService (%p): %@, with visResult: %@, timestamp: %f", buf, 0x3Eu);

              v14 = v47;
            }

            [v11 updateFromVisualLocalizationResult:v20];
          }
        }

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v49 objects:v65 count:16];
    }

    while (v14);
  }

  technique = [(ARTechniqueService *)self technique];
  v48.receiver = self;
  v48.super_class = ARGeoTrackingTechniqueService;
  [(ARTechniqueService *)&v48 technique:technique didOutputResultData:v12 timestamp:contextCopy context:timestamp];

  v43 = *MEMORY[0x277D85DE8];
}

@end