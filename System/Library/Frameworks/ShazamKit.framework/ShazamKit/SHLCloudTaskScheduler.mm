@interface SHLCloudTaskScheduler
- (SHLCloudLibraryCache)cache;
- (SHLCloudModifyZoneTransformer)zoneTransformer;
- (SHLCloudTaskScheduler)initWithConfiguration:(id)configuration;
@end

@implementation SHLCloudTaskScheduler

- (SHLCloudTaskScheduler)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SHLCloudTaskScheduler;
  v6 = [(SHLCloudTaskScheduler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = -[SHLCloudContainerTransformer initWithScope:]([SHLCloudContainerTransformer alloc], "initWithScope:", [configurationCopy sessionScope]);
    containerTransformer = v7->_containerTransformer;
    v7->_containerTransformer = v8;
  }

  return v7;
}

- (SHLCloudModifyZoneTransformer)zoneTransformer
{
  zoneTransformer = self->_zoneTransformer;
  if (!zoneTransformer)
  {
    v4 = [SHLCloudModifyZoneTransformer alloc];
    configuration = [(SHLCloudTaskScheduler *)self configuration];
    v6 = [(SHLCloudModifyZoneTransformer *)v4 initWithConfiguration:configuration];
    v7 = self->_zoneTransformer;
    self->_zoneTransformer = v6;

    zoneTransformer = self->_zoneTransformer;
  }

  return zoneTransformer;
}

- (SHLCloudLibraryCache)cache
{
  cache = self->_cache;
  if (!cache)
  {
    containerTransformer = [(SHLCloudTaskScheduler *)self containerTransformer];
    cloudBackedContainer = [containerTransformer cloudBackedContainer];

    v6 = [SHLCloudLibraryCache alloc];
    configuration = [(SHLCloudTaskScheduler *)self configuration];
    callingProcessIdentifier = [configuration callingProcessIdentifier];
    container = [cloudBackedContainer container];
    containerIdentifier = [container containerIdentifier];
    configuration2 = [(SHLCloudTaskScheduler *)self configuration];
    sessionIdentifier = [configuration2 sessionIdentifier];
    v13 = [(SHLCloudLibraryCache *)v6 initWithCallingProcessIdentifier:callingProcessIdentifier containerIdentifier:containerIdentifier transactionIdentifier:sessionIdentifier];
    v14 = self->_cache;
    self->_cache = v13;

    cache = self->_cache;
  }

  return cache;
}

@end