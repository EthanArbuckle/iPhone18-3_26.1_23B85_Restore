@interface ARTrackedRaycast
- (ARTrackedRaycast)initWithIdentifier:(id)identifier ray:(id)ray worldTrackingTechnique:(id)technique updateHandler:(id)handler;
- (ARWorldTrackingTechnique)attachedWorldTrackingTechnique;
- (id)description;
- (void)stopTracking;
@end

@implementation ARTrackedRaycast

- (ARTrackedRaycast)initWithIdentifier:(id)identifier ray:(id)ray worldTrackingTechnique:(id)technique updateHandler:(id)handler
{
  identifierCopy = identifier;
  rayCopy = ray;
  techniqueCopy = technique;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = ARTrackedRaycast;
  v15 = [(ARTrackedRaycast *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_trackedQuery, ray);
    v17 = MEMORY[0x1C691B4C0](handlerCopy);
    updateHandler = v16->_updateHandler;
    v16->_updateHandler = v17;

    objc_storeWeak(&v16->_attachedWorldTrackingTechnique, techniqueCopy);
  }

  return v16;
}

- (void)stopTracking
{
  attachedWorldTrackingTechnique = [(ARTrackedRaycast *)self attachedWorldTrackingTechnique];

  if (attachedWorldTrackingTechnique)
  {
    attachedWorldTrackingTechnique2 = [(ARTrackedRaycast *)self attachedWorldTrackingTechnique];
    [attachedWorldTrackingTechnique2 stopRaycast:self];

    [(ARTrackedRaycast *)self setAttachedWorldTrackingTechnique:0];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  query = [(ARTrackedRaycast *)self query];
  v7 = [query description];
  v8 = [v3 stringWithFormat:@"<%@: %p ray=%@>", v5, self, v7];

  return v8;
}

- (ARWorldTrackingTechnique)attachedWorldTrackingTechnique
{
  WeakRetained = objc_loadWeakRetained(&self->_attachedWorldTrackingTechnique);

  return WeakRetained;
}

@end