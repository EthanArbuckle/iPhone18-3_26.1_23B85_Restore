@interface ARRemoteGeoTrackingTechnique
- (ARRemoteGeoTrackingTechnique)init;
- (ARRemoteGeoTrackingTechnique)initWithServerConnection:(id)connection;
- (BOOL)reconfigurableFrom:(id)from;
- (BOOL)visualLocalizationUpdatesRequested;
- (__n128)getLocationFromWorldPosition:(__n128 *)position@<X8> error:(__n128)error@<Q0>;
- (double)posteriorVisualLocalizationCallInterval;
- (double)visualLocalizationCallInterval;
- (double)visualLocalizationCallIntervalTimeThreshold;
- (id)processData:(id)data;
- (unint64_t)supportEnablementOptions;
- (void)reconfigureFrom:(id)from;
- (void)setPosteriorVisualLocalizationCallInterval:(double)interval;
- (void)setSupportEnablementOptions:(unint64_t)options;
- (void)setVisualLocalizationCallInterval:(double)interval;
- (void)setVisualLocalizationCallIntervalTimeThreshold:(double)threshold;
- (void)setVisualLocalizationUpdatesRequested:(BOOL)requested;
@end

@implementation ARRemoteGeoTrackingTechnique

- (ARRemoteGeoTrackingTechnique)init
{
  v3.receiver = self;
  v3.super_class = ARRemoteGeoTrackingTechnique;
  return [(ARRemoteTechnique *)&v3 initWithServiceName:@"com.apple.arkit.service.geoTracking"];
}

- (ARRemoteGeoTrackingTechnique)initWithServerConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = ARRemoteGeoTrackingTechnique;
  v5 = [(ARRemoteTechnique *)&v9 initWithServerConnection:connectionCopy];
  if (v5)
  {
    v6 = ARRemoteTechniqueClientInterfaceWithProtocol(&unk_1F4284678);
    [connectionCopy setExportedInterface:v6];

    v7 = ARRemoteTechniqueServiceInterfaceWithProtocol(&unk_1F42846D8);
    [connectionCopy setRemoteObjectInterface:v7];
  }

  return v5;
}

- (BOOL)reconfigurableFrom:(id)from
{
  fromCopy = from;
  v4 = [fromCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (void)reconfigureFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (_ARLogTechnique_onceToken_21 != -1)
  {
    [ARRemoteGeoTrackingTechnique reconfigureFrom:];
  }

  v5 = _ARLogTechnique_logObj_21;
  if (os_log_type_enabled(_ARLogTechnique_logObj_21, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v11 = 138543618;
    v12 = v8;
    v13 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reconfiguring existing remote geo tracking technique.", &v11, 0x16u);
  }

  v9 = fromCopy;
  [v9 visualLocalizationCallInterval];
  [(ARRemoteGeoTrackingTechnique *)self setVisualLocalizationCallInterval:?];
  [v9 posteriorVisualLocalizationCallInterval];
  [(ARRemoteGeoTrackingTechnique *)self setPosteriorVisualLocalizationCallInterval:?];
  [v9 visualLocalizationCallIntervalTimeThreshold];
  [(ARRemoteGeoTrackingTechnique *)self setVisualLocalizationCallIntervalTimeThreshold:?];
  visualLocalizationUpdatesRequested = [v9 visualLocalizationUpdatesRequested];

  [(ARRemoteGeoTrackingTechnique *)self setVisualLocalizationUpdatesRequested:visualLocalizationUpdatesRequested];
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = dataCopy;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ARRemoteGeoTrackingTechnique;
    v5 = [(ARRemoteTechnique *)&v8 processData:dataCopy];
  }

  v6 = v5;

  return v6;
}

- (__n128)getLocationFromWorldPosition:(__n128 *)position@<X8> error:(__n128)error@<Q0>
{
  v25 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v20 = 0;
  v21 = &v20;
  v22 = 0x4020000000;
  v23 = 0u;
  v24 = 0u;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithBytes:&errorCopy length:16];
  serviceProxy = [self serviceProxy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__ARRemoteGeoTrackingTechnique_getLocationFromWorldPosition_error___block_invoke;
  v12[3] = &unk_1E817E778;
  v12[4] = &v20;
  v12[5] = &v13;
  [serviceProxy getLocationFromWorldPosition:v7 reply:v12];

  if (a2)
  {
    *a2 = v14[5];
  }

  v10 = v21[3];
  v11 = v21[2];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v20, 8);
  result = v11;
  *position = v11;
  position[1] = v10;
  return result;
}

void __67__ARRemoteGeoTrackingTechnique_getLocationFromWorldPosition_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  ARVector3dFromNSData(a2, v10);
  v6 = v10[1];
  v7 = *(*(a1 + 32) + 8);
  *(v7 + 32) = v10[0];
  *(v7 + 48) = v6;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

- (void)setVisualLocalizationCallInterval:(double)interval
{
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  [serviceProxy setVisualLocalizationCallInterval:interval];
}

- (double)visualLocalizationCallInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__ARRemoteGeoTrackingTechnique_visualLocalizationCallInterval__block_invoke;
  v5[3] = &unk_1E817E7A0;
  v5[4] = &v6;
  [serviceProxy visualLocalizationCallIntervalWithReply:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPosteriorVisualLocalizationCallInterval:(double)interval
{
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  [serviceProxy setPosteriorVisualLocalizationCallInterval:interval];
}

- (double)posteriorVisualLocalizationCallInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__ARRemoteGeoTrackingTechnique_posteriorVisualLocalizationCallInterval__block_invoke;
  v5[3] = &unk_1E817E7A0;
  v5[4] = &v6;
  [serviceProxy posteriorVisualLocalizationCallIntervalWithReply:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setVisualLocalizationCallIntervalTimeThreshold:(double)threshold
{
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  [serviceProxy setVisualLocalizationCallIntervalTimeThreshold:threshold];
}

- (double)visualLocalizationCallIntervalTimeThreshold
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__ARRemoteGeoTrackingTechnique_visualLocalizationCallIntervalTimeThreshold__block_invoke;
  v5[3] = &unk_1E817E7A0;
  v5[4] = &v6;
  [serviceProxy visualLocalizationCallIntervalTimeThresholdWithReply:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setVisualLocalizationUpdatesRequested:(BOOL)requested
{
  requestedCopy = requested;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  [serviceProxy setVisualLocalizationUpdatesRequested:requestedCopy];
}

- (BOOL)visualLocalizationUpdatesRequested
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__ARRemoteGeoTrackingTechnique_visualLocalizationUpdatesRequested__block_invoke;
  v4[3] = &unk_1E817E7C8;
  v4[4] = &v5;
  [serviceProxy visualLocalizationUpdatesRequestedWithReply:v4];

  LOBYTE(serviceProxy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return serviceProxy;
}

- (void)setSupportEnablementOptions:(unint64_t)options
{
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  [serviceProxy setSupportEnablementOptions:options];
}

- (unint64_t)supportEnablementOptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceProxy = [(ARRemoteTechnique *)self serviceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__ARRemoteGeoTrackingTechnique_supportEnablementOptions__block_invoke;
  v5[3] = &unk_1E817E7F0;
  v5[4] = &v6;
  [serviceProxy supportEnablementOptionsWithReply:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end