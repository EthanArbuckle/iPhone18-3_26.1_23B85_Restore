@interface MPLibraryAddStatusObserver
- (MPLibraryAddStatusObserver)init;
- (MPLibraryAddStatusObserver)initWithUserIdentity:(id)a3;
- (int64_t)_calculateCurrentStatus;
- (void)_allowsExplicitContentDidChangeNotification:(id)a3;
- (void)_cloudLibraryEnabledDidChangeNotification:(id)a3;
- (void)_subscriptionStatusDidChangeNotification:(id)a3;
- (void)_transientStateDidChangeNotification:(id)a3;
- (void)_updateCurrentStatus;
- (void)_updateInProgressDidChangeNotification:(id)a3;
- (void)configureWithModelObject:(id)a3;
- (void)dealloc;
- (void)setConfiguration:(MPLibraryAddStatusObserverConfiguration)a3 identifyingModelObject:(id)a4;
- (void)setStatusBlock:(id)a3;
@end

@implementation MPLibraryAddStatusObserver

- (MPLibraryAddStatusObserver)init
{
  v3 = [MEMORY[0x1E69E4680] activeAccount];
  v4 = [(MPLibraryAddStatusObserver *)self initWithUserIdentity:v3];

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
    v6 = [v5 allowsExplicitContent];

    if ((v6 & 1) == 0 && !self->_configuration.hasCleanContent && self->_configuration.hasExplicitContent)
    {
      return 4;
    }

    v7 = self->_cloudServiceStatusController;
    v8 = [(MPCloudServiceStatusController *)v7 musicSubscriptionStatus];
    v9 = [v8 capabilities];

    if ((v9 & 0x101) != 0)
    {
      if ((v9 & 0x101) == 1)
      {
        v4 = 9;
LABEL_30:

        return v4;
      }

      if ((v9 & 0x200) != 0)
      {
        v10 = self->_cloudController;
        if ([(MPCloudController *)v10 isUpdateInProgress]&& [(MPCloudController *)v10 isInitialImport])
        {
          v4 = 6;
        }

        else if ([(MPCloudServiceStatusController *)v7 isCloudLibraryEnabled])
        {
          if ((v6 & 1) == 0 && self->_configuration.hasExplicitContent && self->_configuration.hasCleanContent)
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
  v3 = [(MPLibraryAddStatusObserver *)self _calculateCurrentStatus];
  if (self->_currentStatus != v3)
  {
    self->_currentStatus = v3;
    statusBlock = self->_statusBlock;
    if (statusBlock)
    {
      v5 = *(statusBlock + 2);

      v5();
    }
  }
}

- (void)_updateInProgressDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MPLibraryAddStatusObserver__updateInProgressDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_transientStateDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MPLibraryAddStatusObserver__transientStateDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_subscriptionStatusDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MPLibraryAddStatusObserver__subscriptionStatusDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_cloudLibraryEnabledDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MPLibraryAddStatusObserver__cloudLibraryEnabledDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_allowsExplicitContentDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MPLibraryAddStatusObserver__allowsExplicitContentDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)setStatusBlock:(id)a3
{
  if (self->_statusBlock != a3)
  {
    v4 = [a3 copy];
    statusBlock = self->_statusBlock;
    self->_statusBlock = v4;

    self->_needsStatusUpdate = 1;
  }
}

- (void)setConfiguration:(MPLibraryAddStatusObserverConfiguration)a3 identifyingModelObject:(id)a4
{
  v5 = *&a3.isValidContentType;
  v7 = a4;
  v8 = ((*&self->_configuration.isValidContentType | (self->_configuration.isLibraryAddEligible << 32)) ^ v5) & 0x101010101;
  if (v8)
  {
    *&self->_configuration.isValidContentType = v5;
    self->_configuration.isLibraryAddEligible = BYTE4(v5);
  }

  identifyingModelObject = self->_identifyingModelObject;
  v11 = v7;
  if (identifyingModelObject != v7 && ![(MPModelObject *)identifyingModelObject isEqual:v7])
  {
    objc_storeStrong(&self->_identifyingModelObject, a4);
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

- (void)configureWithModelObject:(id)a3
{
  v4 = a3;
  -[MPLibraryAddStatusObserver setConfiguration:identifyingModelObject:](self, "setConfiguration:identifyingModelObject:", [v4 libraryAddStatusObserverConfiguration] & 0xFFFFFFFFFFLL, v4);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPLibraryAddStatusObserver;
  [(MPLibraryAddStatusObserver *)&v2 dealloc];
}

- (MPLibraryAddStatusObserver)initWithUserIdentity:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MPLibraryAddStatusObserver;
  v5 = [(MPLibraryAddStatusObserver *)&v16 init];
  if (v5)
  {
    v6 = [v4 copy];
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v6;

    v8 = [MPCloudController controllerWithUserIdentity:v5->_userIdentity];
    cloudController = v5->_cloudController;
    v5->_cloudController = v8;

    v10 = [MPCloudServiceStatusController cloudServiceStatusControllerWithUserIdentity:v5->_userIdentity];
    cloudServiceStatusController = v5->_cloudServiceStatusController;
    v5->_cloudServiceStatusController = v10;

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = +[MPRestrictionsMonitor sharedRestrictionsMonitor];
    [v12 addObserver:v5 selector:sel__allowsExplicitContentDidChangeNotification_ name:@"MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification" object:v13];

    [v12 addObserver:v5 selector:sel__cloudLibraryEnabledDidChangeNotification_ name:@"MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification" object:v5->_cloudServiceStatusController];
    [v12 addObserver:v5 selector:sel__subscriptionStatusDidChangeNotification_ name:@"MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification" object:v5->_cloudServiceStatusController];
    [v12 addObserver:v5 selector:sel__updateInProgressDidChangeNotification_ name:@"MPCloudControllerIsUpdateInProgressDidChangeNotification" object:v5->_cloudController];
    v14 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
    [v12 addObserver:v5 selector:sel__transientStateDidChangeNotification_ name:@"MPModelLibraryTransientStateControllerDidChangeNotification" object:v14];
  }

  return v5;
}

@end