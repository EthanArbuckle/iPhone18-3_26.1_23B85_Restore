@interface ARTrackedRaycast
- (ARTrackedRaycast)initWithIdentifier:(id)a3 ray:(id)a4 worldTrackingTechnique:(id)a5 updateHandler:(id)a6;
- (ARWorldTrackingTechnique)attachedWorldTrackingTechnique;
- (id)description;
- (void)stopTracking;
@end

@implementation ARTrackedRaycast

- (ARTrackedRaycast)initWithIdentifier:(id)a3 ray:(id)a4 worldTrackingTechnique:(id)a5 updateHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = ARTrackedRaycast;
  v15 = [(ARTrackedRaycast *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_trackedQuery, a4);
    v17 = MEMORY[0x1C691B4C0](v14);
    updateHandler = v16->_updateHandler;
    v16->_updateHandler = v17;

    objc_storeWeak(&v16->_attachedWorldTrackingTechnique, v13);
  }

  return v16;
}

- (void)stopTracking
{
  v3 = [(ARTrackedRaycast *)self attachedWorldTrackingTechnique];

  if (v3)
  {
    v4 = [(ARTrackedRaycast *)self attachedWorldTrackingTechnique];
    [v4 stopRaycast:self];

    [(ARTrackedRaycast *)self setAttachedWorldTrackingTechnique:0];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ARTrackedRaycast *)self query];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"<%@: %p ray=%@>", v5, self, v7];

  return v8;
}

- (ARWorldTrackingTechnique)attachedWorldTrackingTechnique
{
  WeakRetained = objc_loadWeakRetained(&self->_attachedWorldTrackingTechnique);

  return WeakRetained;
}

@end