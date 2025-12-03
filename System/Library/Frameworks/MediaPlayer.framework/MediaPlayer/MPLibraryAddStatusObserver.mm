@interface MPLibraryAddStatusObserver
- (MPLibraryAddStatusObserver)init;
- (MPLibraryAddStatusObserver)initWithUserIdentity:(id)identity;
- (int64_t)_calculateCurrentStatus;
- (void)_allowsExplicitContentDidChangeNotification:(id)notification;
- (void)_cloudLibraryEnabledDidChangeNotification:(id)notification;
- (void)_subscriptionStatusDidChangeNotification:(id)notification;
- (void)_transientStateDidChangeNotification:(id)notification;
- (void)_updateCurrentStatus;
- (void)_updateInProgressDidChangeNotification:(id)notification;
- (void)configureWithModelObject:(id)object;
- (void)dealloc;
- (void)setConfiguration:(MPLibraryAddStatusObserverConfiguration)configuration identifyingModelObject:(id)object;
- (void)setStatusBlock:(id)block;
@end

@implementation MPLibraryAddStatusObserver

- (MPLibraryAddStatusObserver)init
{
  activeAccount = [MEMORY[0x1E69E4680] activeAccount];
  v4 = [(MPLibraryAddStatusObserver *)self initWithUserIdentity:activeAccount];

  return v4;
}

- (int64_t)_calculateCurrentStatus
{
  if (!self->_identifyingModelObject)
  {
LABEL_4:
    if (self->_configuration.isLibraryAdded)
    {
      return 1;
    }

LABEL_6:
    if (!self->_configuration.isValidContentType)
    {
      return 8;
    }

    if (!self->_configuration.isLibraryAddEligible)
    {
      return 7;
    }

    v5 = +[MPRestrictionsMonitor sharedRestrictionsMonitor];
    allowsExplicitContent = [v5 allowsExplicitContent];

    if ((allowsExplicitContent & 1) == 0 && !self->_configuration.hasCleanContent && self->_configuration.hasExplicitContent)
    {
      return 4;
    }

    v7 = self->_cloudServiceStatusController;
    musicSubscriptionStatus = [(MPCloudServiceStatusController *)v7 musicSubscriptionStatus];
    capabilities = [musicSubscriptionStatus capabilities];

    if ((capabilities & 0x101) != 0)
    {
      if ((capabilities & 0x101) == 1)
      {
        v4 = 9;
LABEL_30:

        return v4;
      }

      if ((capabilities & 0x200) != 0)
      {
        v10 = self->_cloudController;
        if ([(MPCloudController *)v10 isUpdateInProgress]&& [(MPCloudController *)v10 isInitialImport])
        {
          v4 = 6;
        }

        else if ([(MPCloudServiceStatusController *)v7 isCloudLibraryEnabled])
        {
          if ((allowsExplicitContent & 1) == 0 && self->_configuration.hasExplicitContent && self->_configuration.hasCleanContent)
          {
            v4 = 3;
          }

          else
          {
            v4 = 2;
          }
        }

        else
        {
          v4 = 5;
        }

        goto LABEL_30;
      }
    }

    v4 = 10;
    goto LABEL_30;
  }

  v3 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
  v4 = [v3 transientAddStateForModelObject:self->_identifyingModelObject];

  if (v4 != 1)
  {
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  return v4;
}

- (void)_updateCurrentStatus
{
  _calculateCurrentStatus = [(MPLibraryAddStatusObserver *)self _calculateCurrentStatus];
  if (self->_currentStatus != _calculateCurrentStatus)
  {
    self->_currentStatus = _calculateCurrentStatus;
    statusBlock = self->_statusBlock;
    if (statusBlock)
    {
      v5 = *(statusBlock + 2);

      v5();
    }
  }
}

- (void)_updateInProgressDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MPLibraryAddStatusObserver__updateInProgressDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_transientStateDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MPLibraryAddStatusObserver__transientStateDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_subscriptionStatusDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MPLibraryAddStatusObserver__subscriptionStatusDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_cloudLibraryEnabledDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MPLibraryAddStatusObserver__cloudLibraryEnabledDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_allowsExplicitContentDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MPLibraryAddStatusObserver__allowsExplicitContentDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)setStatusBlock:(id)block
{
  if (self->_statusBlock != block)
  {
    v4 = [block copy];
    statusBlock = self->_statusBlock;
    self->_statusBlock = v4;

    self->_needsStatusUpdate = 1;
  }
}

- (void)setConfiguration:(MPLibraryAddStatusObserverConfiguration)configuration identifyingModelObject:(id)object
{
  v5 = *&configuration.isValidContentType;
  objectCopy = object;
  v8 = ((*&self->_configuration.isValidContentType | (self->_configuration.isLibraryAddEligible << 32)) ^ v5) & 0x101010101;
  if (v8)
  {
    *&self->_configuration.isValidContentType = v5;
    self->_configuration.isLibraryAddEligible = BYTE4(v5);
  }

  identifyingModelObject = self->_identifyingModelObject;
  v11 = objectCopy;
  if (identifyingModelObject != objectCopy && ![(MPModelObject *)identifyingModelObject isEqual:objectCopy])
  {
    objc_storeStrong(&self->_identifyingModelObject, object);
    p_needsStatusUpdate = &self->_needsStatusUpdate;
    if (!self->_needsStatusUpdate)
    {
      goto LABEL_10;
    }

LABEL_9:
    *p_needsStatusUpdate = 0;
    goto LABEL_10;
  }

  p_needsStatusUpdate = &self->_needsStatusUpdate;
  if (self->_needsStatusUpdate)
  {
    goto LABEL_9;
  }

  if (v8)
  {
LABEL_10:
    [(MPLibraryAddStatusObserver *)self _updateCurrentStatus];
  }
}

- (void)configureWithModelObject:(id)object
{
  objectCopy = object;
  -[MPLibraryAddStatusObserver setConfiguration:identifyingModelObject:](self, "setConfiguration:identifyingModelObject:", [objectCopy libraryAddStatusObserverConfiguration] & 0xFFFFFFFFFFLL, objectCopy);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPLibraryAddStatusObserver;
  [(MPLibraryAddStatusObserver *)&v2 dealloc];
}

- (MPLibraryAddStatusObserver)initWithUserIdentity:(id)identity
{
  identityCopy = identity;
  v16.receiver = self;
  v16.super_class = MPLibraryAddStatusObserver;
  v5 = [(MPLibraryAddStatusObserver *)&v16 init];
  if (v5)
  {
    v6 = [identityCopy copy];
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v6;

    v8 = [MPCloudController controllerWithUserIdentity:v5->_userIdentity];
    cloudController = v5->_cloudController;
    v5->_cloudController = v8;

    v10 = [MPCloudServiceStatusController cloudServiceStatusControllerWithUserIdentity:v5->_userIdentity];
    cloudServiceStatusController = v5->_cloudServiceStatusController;
    v5->_cloudServiceStatusController = v10;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = +[MPRestrictionsMonitor sharedRestrictionsMonitor];
    [defaultCenter addObserver:v5 selector:sel__allowsExplicitContentDidChangeNotification_ name:@"MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification" object:v13];

    [defaultCenter addObserver:v5 selector:sel__cloudLibraryEnabledDidChangeNotification_ name:@"MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification" object:v5->_cloudServiceStatusController];
    [defaultCenter addObserver:v5 selector:sel__subscriptionStatusDidChangeNotification_ name:@"MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification" object:v5->_cloudServiceStatusController];
    [defaultCenter addObserver:v5 selector:sel__updateInProgressDidChangeNotification_ name:@"MPCloudControllerIsUpdateInProgressDidChangeNotification" object:v5->_cloudController];
    v14 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
    [defaultCenter addObserver:v5 selector:sel__transientStateDidChangeNotification_ name:@"MPModelLibraryTransientStateControllerDidChangeNotification" object:v14];
  }

  return v5;
}

@end