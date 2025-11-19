@interface CPNavigationManager
- (BOOL)ownsNavigation;
- (BOOL)supportsRouteSharing;
- (CAFCarManager)carManager;
- (CPElectricVehicleWaypoint)chargePrecondition;
- (CPNavigationManager)initWithIdentifier:(id)a3 delegate:(id)a4;
- (CPNavigationManagerDelegate)delegate;
- (CRAccNavInfoProviding)routeGuidanceProviding;
- (CRNavigationService)navigationService;
- (NSArray)laneGuidances;
- (NSArray)maneuvers;
- (double)_connectionRetryDelay;
- (id)_createRouteGuidanceObject;
- (id)_updateRouteGuidance:(id)a3;
- (unsigned)guidanceState;
- (void)_enumerateNavControllersWithBlock:(id)a3;
- (void)_handleConnectionReset;
- (void)_resendInfo;
- (void)_resetRouteGuidanceIsRequired:(BOOL)a3;
- (void)_sendRouteLine;
- (void)_setupConnection;
- (void)activeNavigationIdentifiersChangedTo:(id)a3;
- (void)addLaneGuidances:(id)a3;
- (void)addManeuvers:(id)a3;
- (void)cancelRerouting;
- (void)dealloc;
- (void)didUpdateActiveComponents:(id)a3;
- (void)invalidate;
- (void)modifyRouteGuidance:(id)a3;
- (void)mutateRouteGuidance:(id)a3;
- (void)navigationOwnershipChangedTo:(unint64_t)a3;
- (void)releaseNavigationOwnership;
- (void)requestNavigationOwnership;
- (void)routeChangedWithReason:(unsigned __int8)a3 routeInfo:(id)a4;
- (void)sendInfo:(id)a3 toComponentUID:(id)a4;
- (void)setChargePrecondition:(id)a3;
- (void)setControlsAccNav:(BOOL)a3;
- (void)setLaneGuidances:(id)a3;
- (void)setLastNavigatingBundleIdentifier:(id)a3;
- (void)setManeuvers:(id)a3;
- (void)setOwner:(unint64_t)a3;
- (void)setRouteGuidance:(id)a3;
- (void)setRouteLine:(id)a3;
- (void)setSupportsAccNav:(BOOL)a3;
- (void)startNavigationWithRouteInfo:(id)a3;
- (void)startRerouting;
- (void)willSendGuidanceStateLoading;
@end

@implementation CPNavigationManager

- (CRAccNavInfoProviding)routeGuidanceProviding
{
  v2 = [(CPNavigationManager *)self routeGuidance];
  if ([v2 conformsToProtocol:&unk_284A1B490])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)ownsNavigation
{
  if ([(CPNavigationManager *)self owner]!= 1)
  {
    return 0;
  }

  v3 = [(CPNavigationManager *)self lastNavigatingBundleIdentifier];
  v4 = [(CPNavigationManager *)self identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (CRNavigationService)navigationService
{
  v2 = [(CPNavigationManager *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)_setupConnection
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.carkit.navigation.service" options:4096];
  v4 = CRNavigationClientInterface();
  [v3 setExportedInterface:v4];

  [v3 setExportedObject:self];
  v5 = CRNavigationServiceInterface();
  [v3 setRemoteObjectInterface:v5];

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__CPNavigationManager__setupConnection__block_invoke;
  v17[3] = &unk_278A106E0;
  objc_copyWeak(&v18, &location);
  [v3 setInterruptionHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__CPNavigationManager__setupConnection__block_invoke_2;
  v15[3] = &unk_278A106E0;
  objc_copyWeak(&v16, &location);
  [v3 setInvalidationHandler:v15];
  v6 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v3;
    _os_log_impl(&dword_236ED4000, v6, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit navigation service %{public}@.", buf, 0xCu);
  }

  [v3 resume];
  [(CPNavigationManager *)self setConnection:v3];
  v7 = [(CPNavigationManager *)self navigationService];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__CPNavigationManager__setupConnection__block_invoke_231;
  v13[3] = &unk_278A10708;
  objc_copyWeak(&v14, &location);
  [v7 fetchNavigationOwnerWithReply:v13];

  v8 = [(CPNavigationManager *)self navigationService];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__CPNavigationManager__setupConnection__block_invoke_233;
  v11[3] = &unk_278A10730;
  objc_copyWeak(&v12, &location);
  [v8 fetchNavigationIdentifiersWithReply:v11];

  v9 = [(CPNavigationManager *)self navigationService];
  [v9 beginObserving];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v10 = *MEMORY[0x277D85DE8];
}

- (CPNavigationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CPNavigationManager)initWithIdentifier:(id)a3 delegate:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v58.receiver = self;
  v58.super_class = CPNavigationManager;
  v8 = [(CPNavigationManager *)&v58 init];
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v61 = v6;
    v62 = 2112;
    v63 = v7;
    _os_log_impl(&dword_236ED4000, v9, OS_LOG_TYPE_DEFAULT, "init! identifier=%{public}@ delegate=%@", buf, 0x16u);
  }

  v10 = [v6 copy];
  identifier = v8->_identifier;
  v8->_identifier = v10;

  objc_storeWeak(&v8->_delegate, v7);
  v8->_ownershipRequested = 0;
  if (![v6 isEqualToString:@"com.apple.Maps"])
  {
    if ([v6 isEqualToString:@"CPNavTool"])
    {
      bundleName = v8->_bundleName;
      v8->_bundleName = @"CPNavTool";
      goto LABEL_21;
    }

    if (!v6 || ![v6 length])
    {
      goto LABEL_22;
    }

    v55 = 0;
    v15 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:v6 error:&v55];
    bundleName = v55;
    objc_opt_class();
    v16 = v15;
    if (objc_opt_isKindOfClass())
    {
      if (v16)
      {
        v17 = [v16 localizedNameWithContext:@"Car"];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = [v16 localizedName];
        }

        v23 = v8->_bundleName;
        v8->_bundleName = v19;

        v21 = v16;
        goto LABEL_20;
      }
    }

    else
    {

      if (v16)
      {
        v20 = [v16 localizedName];
        v21 = v8->_bundleName;
        v8->_bundleName = v20;
LABEL_20:

        goto LABEL_21;
      }
    }

    v21 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(NSString *)bundleName description];
      *buf = 138412290;
      v61 = v22;
      _os_log_impl(&dword_236ED4000, v21, OS_LOG_TYPE_DEFAULT, "Unable to retrieve app record: %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v12 = CPLocalizedStringForKey(@"APPLE_MAPS");
  v13 = v8->_bundleName;
  v8->_bundleName = v12;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke;
  block[3] = &unk_278A105A0;
  v57 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
  bundleName = &v57->super.isa;
LABEL_21:

LABEL_22:
  v24 = objc_opt_new();
  accNavControllersIndexed = v8->_accNavControllersIndexed;
  v8->_accNavControllersIndexed = v24;

  v26 = objc_opt_new();
  maneuversIndexed = v8->_maneuversIndexed;
  v8->_maneuversIndexed = v26;

  v28 = objc_opt_new();
  laneGuidanceIndexed = v8->_laneGuidanceIndexed;
  v8->_laneGuidanceIndexed = v28;

  v30 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v31 = dispatch_queue_create("com.apple.carkit.navigation.xpcConnection", v30);
  connectionQueue = v8->_connectionQueue;
  v8->_connectionQueue = v31;

  v33 = [(CPNavigationManager *)v8 connectionQueue];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_174;
  v53[3] = &unk_278A105A0;
  v34 = v8;
  v54 = v34;
  dispatch_sync(v33, v53);

  v35 = [[CPVehicleStateManager alloc] initWithDelegate:v34];
  vehicleStateManager = v34->_vehicleStateManager;
  v34->_vehicleStateManager = v35;

  v37 = CarPlayFrameworkACCNavLogging();
  v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);

  v39 = CarPlayFrameworkACCNavLogging();
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
  if (v38)
  {
    if (v40)
    {
      *buf = 0;
      _os_log_impl(&dword_236ED4000, v39, OS_LOG_TYPE_DEFAULT, "[StateCapture] enabled", buf, 2u);
    }

    objc_initWeak(buf, v34);
    v41 = [CYStateCapture alloc];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_180;
    v51[3] = &unk_278A105C8;
    objc_copyWeak(&v52, buf);
    v42 = [(CYStateCapture *)v41 initWithIdentifier:@"Maneuvers" capture:v51];
    v59[0] = v42;
    v43 = [CYStateCapture alloc];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_187;
    v49[3] = &unk_278A105C8;
    objc_copyWeak(&v50, buf);
    v44 = [(CYStateCapture *)v43 initWithIdentifier:@"LaneGuidances" capture:v49];
    v59[1] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    stateCaptures = v34->_stateCaptures;
    v34->_stateCaptures = v45;

    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v40)
    {
      *buf = 0;
      _os_log_impl(&dword_236ED4000, v39, OS_LOG_TYPE_DEFAULT, "[StateCapture] disabled", buf, 2u);
    }
  }

LABEL_30:
  v47 = *MEMORY[0x277D85DE8];
  return v8;
}

id __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_180(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [WeakRetained maneuvers];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [CPAccNavUpdate dictionaryStringFormat:*(*(&v12 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_180_cold_1(v2);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

id __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_187(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [WeakRetained laneGuidances];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [CPAccNavUpdate dictionaryStringFormat:*(*(&v12 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_187_cold_1(v2);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v7 = self;
    v8 = 2080;
    v9 = "[CPNavigationManager dealloc]";
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = CPNavigationManager;
  [(CPNavigationManager *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setSupportsAccNav:(BOOL)a3
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    if ([(CPNavigationManager *)self accNavRole]!= 1)
    {
      return;
    }

    v4 = 0;
  }

  [(CPNavigationManager *)self setAccNavRole:v4];
}

- (void)setControlsAccNav:(BOOL)a3
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    if ([(CPNavigationManager *)self accNavRole]!= 2)
    {
      return;
    }

    v4 = 0;
  }

  [(CPNavigationManager *)self setAccNavRole:v4];
}

- (BOOL)supportsRouteSharing
{
  v2 = [(CPNavigationManager *)self vehicleStateManager];
  v3 = [v2 supportsRouteSharing];

  return v3;
}

- (void)_resendInfo
{
  v21 = *MEMORY[0x277D85DE8];
  [(CPNavigationManager *)self _sendRouteLine];
  if ([(CPNavigationManager *)self ownsNavigation]&& [(CPNavigationManager *)self controlsAccNav])
  {
    v3 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "skip resending info: AccNav is controlled by owner", &v13, 2u);
    }
  }

  else if ([(CPNavigationManager *)self ownsNavigation]&& [(CPNavigationManager *)self supportsAccNav])
  {
    v4 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "resending Info", &v13, 2u);
    }

    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_3];
  }

  else
  {
    v5 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if ([(CPNavigationManager *)self ownsNavigation])
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      [(CPNavigationManager *)self accNavRole];
      v7 = NSStringFromCRAccNavRole();
      v8 = [(CPNavigationManager *)self owner];
      v9 = @"None";
      if (v8 == 1)
      {
        v9 = @"iOS";
      }

      if (v8 == 2)
      {
        v9 = @"Car";
      }

      v10 = v9;
      v11 = [(CPNavigationManager *)self lastNavigatingBundleIdentifier];
      v13 = 138413058;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "resending Info failed ownsNavigation=%@ accNavRole=%@ owner=%@ lastNavigatingBundleIdentifier=%@", &v13, 0x2Au);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2080;
    v9 = "[CPNavigationManager invalidate]";
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", &v6, 0x16u);
  }

  v4 = [(CPNavigationManager *)self connection];
  [v4 invalidate];

  [(CPNavigationManager *)self setConnection:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestNavigationOwnership
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CPNavigationManager *)self identifier];
    [(CPNavigationManager *)self accNavRole];
    v5 = NSStringFromCRAccNavRole();
    *buf = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "requestNavigationOwnership for %{public}@ accNavRole=%{public}@", buf, 0x16u);
  }

  v6 = [(CPNavigationManager *)self navigationService];
  v7 = [(CPNavigationManager *)self identifier];
  [v6 addNavigationOwnerWithIdentifier:v7 accNavRole:{-[CPNavigationManager accNavRole](self, "accNavRole")}];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CPNavigationManager_requestNavigationOwnership__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)releaseNavigationOwnership
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CPNavigationManager *)self identifier];
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "releaseNavigationOwnership for %{public}@", buf, 0xCu);
  }

  v5 = [(CPNavigationManager *)self vehicleStateManager];
  [v5 willReleaseNavigationOwnership];

  v6 = [(CPNavigationManager *)self navigationService];
  v7 = [(CPNavigationManager *)self identifier];
  [v6 removeNavigationOwnerWithIdentifier:v7];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CPNavigationManager_releaseNavigationOwnership__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__CPNavigationManager_releaseNavigationOwnership__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOwnershipRequested:0];
  v2 = [*(a1 + 32) accNavControllersIndexed];
  [v2 removeAllObjects];
}

- (void)setOwner:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_owner != a3)
  {
    v5 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      owner = self->_owner;
      if (owner == 1)
      {
        v7 = @"iOS";
      }

      else
      {
        v7 = @"None";
      }

      if (owner == 2)
      {
        v8 = @"Car";
      }

      else
      {
        v8 = v7;
      }

      v9 = v8;
      if (a3 == 1)
      {
        v10 = @"iOS";
      }

      else
      {
        v10 = @"None";
      }

      if (a3 == 2)
      {
        v10 = @"Car";
      }

      v11 = v10;
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Navigation owner changed from %{public}@ to %{public}@", &v14, 0x16u);
    }

    self->_owner = a3;
    v12 = [(CPNavigationManager *)self delegate];
    [v12 navigationOwnershipChangedToOwner:a3];

    [(CPNavigationManager *)self _resendInfo];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setLastNavigatingBundleIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSString *)self->_lastNavigatingBundleIdentifier isEqualToString:v5])
  {
    v6 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      lastNavigatingBundleIdentifier = self->_lastNavigatingBundleIdentifier;
      v13 = 138543618;
      v14 = lastNavigatingBundleIdentifier;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_236ED4000, v6, OS_LOG_TYPE_DEFAULT, "updating lastNavigatingBundleIdentifier from %{public}@ to %{public}@", &v13, 0x16u);
    }

    objc_storeStrong(&self->_lastNavigatingBundleIdentifier, a3);
    v8 = [(CPNavigationManager *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(CPNavigationManager *)self delegate];
      [v10 didUpdateLastNavigatingBundleIdentifier:v5];
    }

    v11 = [(CPNavigationManager *)self vehicleStateManager];
    [v11 didUpdateNavigationOwnership];

    [(CPNavigationManager *)self _resendInfo];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_createRouteGuidanceObject
{
  v3 = objc_alloc_init(CPRouteGuidance);
  v4 = [(CPNavigationManager *)self bundleName];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(CPNavigationManager *)self bundleName];
    [(CPRouteGuidance *)v3 setSourceName:v6];
  }

  [(CPRouteGuidance *)v3 setBeingShownInApp:1];
  [(CPRouteGuidance *)v3 setSourceSupportsRouteGuidance:[(CPNavigationManager *)self supportsAccNav]];
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    [(CPRouteGuidance *)v3 setDestinationTimeZoneOffsetMinutes:[(CPNavigationManager *)self destinationTimeZoneOffsetMinutes]];
  }

  return v3;
}

- (void)_resetRouteGuidanceIsRequired:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v5 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = [(CPNavigationManager *)self routeGuidance];
    v8 = NSStringFromCPGuidanceState([v7 guidanceState]);
    v15 = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Resetting RouteGuidance. required=%{public}@ guidanceState=%{public}@", &v15, 0x16u);
  }

  v9 = [(CPNavigationManager *)self routeGuidance];
  v10 = [v9 guidanceState];

  if (v10 || v3)
  {
    v11 = [(CPNavigationManager *)self _createRouteGuidanceObject];
    [(CPNavigationManager *)self setRouteGuidance:v11];

    v12 = [(CPNavigationManager *)self maneuversIndexed];
    [v12 removeAllObjects];

    v13 = [(CPNavigationManager *)self laneGuidanceIndexed];
    [v13 removeAllObjects];

    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_202];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateNavControllersWithBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CPNavigationManager *)self accNavControllersIndexed];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (unsigned)guidanceState
{
  v2 = [(CPNavigationManager *)self routeGuidance];
  v3 = [v2 guidanceState];

  return v3;
}

- (void)mutateRouteGuidance:(id)a3
{
  v6 = a3;
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    v4 = [(CPNavigationManager *)self _updateRouteGuidance:v6];
    routeGuidance = self->_routeGuidance;
    self->_routeGuidance = v4;
  }
}

- (void)modifyRouteGuidance:(id)a3
{
  v5 = a3;
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    v4 = [(CPNavigationManager *)self _updateRouteGuidance:v5];
    [(CPNavigationManager *)self setRouteGuidance:v4];
  }
}

- (id)_updateRouteGuidance:(id)a3
{
  v4 = a3;
  v5 = [(CPNavigationManager *)self routeGuidance];
  v6 = [v5 copy];

  if (!v6)
  {
    v6 = [(CPNavigationManager *)self _createRouteGuidanceObject];
  }

  v4[2](v4, v6);

  return v6;
}

- (void)startNavigationWithRouteInfo:(id)a3
{
  v4 = a3;
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    v5 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "startNavigationWithRouteInfo", v9, 2u);
    }

    v6 = [v4 routeGuidance];
    v7 = [v6 guidanceState];

    if (v7 != 1 && v7 != 6)
    {
      v8 = CarPlayFrameworkACCNavLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(CPNavigationManager *)v7 startNavigationWithRouteInfo:v8];
      }

      v7 = 1;
    }

    [(CPNavigationManager *)self _startNavigationWithRouteInfo:v4 originalState:v7];
  }
}

- (void)startRerouting
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    v3 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CPNavigationManager *)self routeGuidance];
      v5 = NSStringFromCPGuidanceState([v4 guidanceState]);
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "startRerouting: current state: %{public}@", &v12, 0xCu);
    }

    v6 = [(CPNavigationManager *)self routeGuidance];
    if (v6)
    {
      v7 = v6;
      v8 = [(CPNavigationManager *)self routeGuidance];
      v9 = [v8 guidanceState];

      if (v9)
      {
        [(CPNavigationManager *)self modifyRouteGuidance:&__block_literal_global_206];
        v10 = CarPlayFrameworkACCNavLogging();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_236ED4000, v10, OS_LOG_TYPE_DEFAULT, "startRerouting: set rerouting routeguidance", &v12, 2u);
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)routeChangedWithReason:(unsigned __int8)a3 routeInfo:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    v7 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromCPRerouteReason(a3);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_DEFAULT, "routeChangedWithReason: %{public}@", &v11, 0xCu);
    }

    v9 = [v6 routeGuidance];
    -[CPNavigationManager _startNavigationWithRouteInfo:originalState:](self, "_startNavigationWithRouteInfo:originalState:", v6, [v9 guidanceState]);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelRerouting
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    v3 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CPNavigationManager *)self routeGuidance];
      v5 = NSStringFromCPGuidanceState([v4 guidanceState]);
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "cancelRerouting guidanceState: %{public}@", &v10, 0xCu);
    }

    v6 = [(CPNavigationManager *)self routeGuidance];
    v7 = [v6 guidanceState];

    if (v7 == 5)
    {
      v8 = CarPlayFrameworkACCNavLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_236ED4000, v8, OS_LOG_TYPE_DEFAULT, "cancelRerouting: state was rerouting, setting to active", &v10, 2u);
      }

      [(CPNavigationManager *)self modifyRouteGuidance:&__block_literal_global_208];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __38__CPNavigationManager_cancelRerouting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "cancelRerouting: setting guidance state to active", v4, 2u);
  }

  [v2 setGuidanceState:1];
}

- (void)setRouteGuidance:(id)a3
{
  v5 = a3;
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    routeGuidance = self->_routeGuidance;
    if (routeGuidance)
    {
      if ([(CPRouteGuidance *)routeGuidance isEqual:v5])
      {
        goto LABEL_9;
      }

      routeGuidance = self->_routeGuidance;
    }

    v7 = [(CPRouteGuidance *)routeGuidance guidanceState];
    v8 = [v5 guidanceState];
    objc_storeStrong(&self->_routeGuidance, a3);
    v9 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CPNavigationManager setRouteGuidance:v5];
    }

    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_210];
    if (v7 != v8)
    {
      v10 = [(CPNavigationManager *)self vehicleStateManager];
      [v10 sendGuidanceState:{-[CPRouteGuidance guidanceState](self->_routeGuidance, "guidanceState")}];
    }
  }

LABEL_9:
}

- (CPElectricVehicleWaypoint)chargePrecondition
{
  v2 = [(CPNavigationManager *)self routeGuidance];
  v3 = [v2 electricVehicleDestination];

  return v3;
}

- (void)setChargePrecondition:(id)a3
{
  v4 = a3;
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    v5 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CPNavigationManager setChargePrecondition:];
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__CPNavigationManager_setChargePrecondition___block_invoke;
    v6[3] = &unk_278A10650;
    v7 = v4;
    [(CPNavigationManager *)self modifyRouteGuidance:v6];
  }
}

- (NSArray)maneuvers
{
  v2 = [(CPNavigationManager *)self maneuversIndexed];
  v3 = [v2 allValues];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_213];

  return v4;
}

uint64_t __32__CPNavigationManager_maneuvers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedShort:{objc_msgSend(a2, "index")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 index];

  v9 = [v7 numberWithUnsignedShort:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)setManeuvers:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    v5 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CPNavigationManager setManeuvers:v4];
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        v10 = 0;
        do
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v28 + 1) + 8 * v10);
          v12 = CarPlayFrameworkACCNavLogging();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [CPNavigationManager setManeuvers:];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }

    v13 = [(CPNavigationManager *)self maneuversIndexed];
    [v13 removeAllObjects];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = [(CPNavigationManager *)self maneuversIndexed];
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v19, "index")}];
          [v20 setObject:v19 forKeyedSubscript:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v16);
    }

    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_216];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __36__CPNavigationManager_setManeuvers___block_invoke_2;
    v23[3] = &unk_278A10650;
    v23[4] = self;
    [(CPNavigationManager *)self modifyRouteGuidance:v23];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __36__CPNavigationManager_setManeuvers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 maneuversIndexed];
  [v3 setTotalManeuverCount:{objc_msgSend(v4, "count")}];
}

- (void)addManeuvers:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(CPNavigationManager *)self supportsAccNav])
  {
    goto LABEL_29;
  }

  v5 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CPNavigationManager addManeuvers:v4];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = v4;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = CarPlayFrameworkACCNavLogging();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [CPNavigationManager addManeuvers:];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v13 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_26;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v30;
  do
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v30 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v29 + 1) + 8 * j);
      v19 = [(CPNavigationManager *)self maneuversIndexed];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v18, "index")}];
      v21 = [v19 objectForKeyedSubscript:v20];

      if (v21)
      {
        if ([v21 isEqual:v18])
        {
          goto LABEL_22;
        }

        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __36__CPNavigationManager_addManeuvers___block_invoke;
        v28[3] = &unk_278A10698;
        v28[4] = v18;
        [(CPNavigationManager *)self _enumerateNavControllersWithBlock:v28];
      }

      v22 = [(CPNavigationManager *)self maneuversIndexed];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v18, "index")}];
      [v22 setObject:v18 forKeyedSubscript:v23];

      v15 = 1;
LABEL_22:
    }

    v14 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  }

  while (v14);
LABEL_26:

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __36__CPNavigationManager_addManeuvers___block_invoke_2;
  v27[3] = &unk_278A10650;
  v27[4] = self;
  [(CPNavigationManager *)self modifyRouteGuidance:v27];
  if (v15)
  {
    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_218];
  }

  v4 = v25;
LABEL_29:

  v24 = *MEMORY[0x277D85DE8];
}

void __36__CPNavigationManager_addManeuvers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 maneuversIndexed];
  [v3 setTotalManeuverCount:{objc_msgSend(v4, "count")}];
}

- (NSArray)laneGuidances
{
  v2 = [(CPNavigationManager *)self laneGuidanceIndexed];
  v3 = [v2 allValues];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_221];

  return v4;
}

uint64_t __36__CPNavigationManager_laneGuidances__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedShort:{objc_msgSend(a2, "index")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 index];

  v9 = [v7 numberWithUnsignedShort:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)setLaneGuidances:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(CPNavigationManager *)self supportsAccNav])
  {
    v5 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CPNavigationManager setLaneGuidances:v4];
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        v10 = 0;
        do
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v28 + 1) + 8 * v10);
          v12 = CarPlayFrameworkACCNavLogging();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [CPNavigationManager setLaneGuidances:];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }

    v13 = [(CPNavigationManager *)self laneGuidanceIndexed];
    [v13 removeAllObjects];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = [(CPNavigationManager *)self laneGuidanceIndexed];
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v19, "index")}];
          [v20 setObject:v19 forKeyedSubscript:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v16);
    }

    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_223];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __40__CPNavigationManager_setLaneGuidances___block_invoke_2;
    v23[3] = &unk_278A10650;
    v23[4] = self;
    [(CPNavigationManager *)self modifyRouteGuidance:v23];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __40__CPNavigationManager_setLaneGuidances___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 laneGuidanceIndexed];
  [v3 setTotalLaneGuidanceCount:{objc_msgSend(v4, "count")}];
}

- (void)addLaneGuidances:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(CPNavigationManager *)self supportsAccNav])
  {
    goto LABEL_29;
  }

  v5 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CPNavigationManager addLaneGuidances:v4];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = v4;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = CarPlayFrameworkACCNavLogging();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [CPNavigationManager addLaneGuidances:];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v13 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_26;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v30;
  do
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v30 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v29 + 1) + 8 * j);
      v19 = [(CPNavigationManager *)self laneGuidanceIndexed];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v18, "index")}];
      v21 = [v19 objectForKeyedSubscript:v20];

      if (v21)
      {
        if ([v21 isEqual:v18])
        {
          goto LABEL_22;
        }

        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __40__CPNavigationManager_addLaneGuidances___block_invoke;
        v28[3] = &unk_278A10698;
        v28[4] = v18;
        [(CPNavigationManager *)self _enumerateNavControllersWithBlock:v28];
      }

      v22 = [(CPNavigationManager *)self laneGuidanceIndexed];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v18, "index")}];
      [v22 setObject:v18 forKeyedSubscript:v23];

      v15 = 1;
LABEL_22:
    }

    v14 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  }

  while (v14);
LABEL_26:

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __40__CPNavigationManager_addLaneGuidances___block_invoke_2;
  v27[3] = &unk_278A10650;
  v27[4] = self;
  [(CPNavigationManager *)self modifyRouteGuidance:v27];
  if (v15)
  {
    [(CPNavigationManager *)self _enumerateNavControllersWithBlock:&__block_literal_global_225];
  }

  v4 = v25;
LABEL_29:

  v24 = *MEMORY[0x277D85DE8];
}

void __40__CPNavigationManager_addLaneGuidances___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 laneGuidanceIndexed];
  [v3 setTotalLaneGuidanceCount:{objc_msgSend(v4, "count")}];
}

- (CAFCarManager)carManager
{
  v2 = [(CPNavigationManager *)self vehicleStateManager];
  v3 = [v2 carManager];

  return v3;
}

- (void)setRouteLine:(id)a3
{
  v4 = a3;
  v5 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CPNavigationManager *)v4 setRouteLine:v5, v6, v7, v8, v9, v10, v11];
  }

  routeLine = self->_routeLine;
  self->_routeLine = v4;

  [(CPNavigationManager *)self _sendRouteLine];
}

- (void)_sendRouteLine
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 ownsNavigation];
  v2 = [a1 routeLine];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __39__CPNavigationManager__setupConnection__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionRetryDelay];
  v4 = v3;
  v5 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained connection];
    *buf = 138543874;
    v14 = WeakRetained;
    v15 = 2114;
    v16 = v6;
    v17 = 2048;
    v18 = v4;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "connection interrupted %{public}@ %{public}@. Reconnect in %.2f seconds", buf, 0x20u);
  }

  v7 = [WeakRetained connection];
  [v7 invalidate];

  [WeakRetained setConnection:0];
  v8 = dispatch_time(0, (v4 * 1000000000.0));
  v9 = [WeakRetained connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CPNavigationManager__setupConnection__block_invoke_230;
  block[3] = &unk_278A106E0;
  objc_copyWeak(&v12, (a1 + 32));
  dispatch_after(v8, v9, block);

  objc_destroyWeak(&v12);
  v10 = *MEMORY[0x277D85DE8];
}

void __39__CPNavigationManager__setupConnection__block_invoke_230(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupConnection];
  [WeakRetained _handleConnectionReset];
}

void __39__CPNavigationManager__setupConnection__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained connection];
    v6 = 138543618;
    v7 = WeakRetained;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "connection invalidated %{public}@ %{public}@", &v6, 0x16u);
  }

  v4 = [WeakRetained connection];
  [v4 invalidate];

  [WeakRetained setConnection:0];
  v5 = *MEMORY[0x277D85DE8];
}

void __39__CPNavigationManager__setupConnection__block_invoke_231(uint64_t a1, uint64_t a2)
{
  v4 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "inital fetch of owner", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained navigationOwnershipChangedTo:a2];
}

void __39__CPNavigationManager__setupConnection__block_invoke_233(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "inital fetch of navigationIdentifiers", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activeNavigationIdentifiersChangedTo:v3];
}

- (double)_connectionRetryDelay
{
  if (_connectionRetryDelay_onceToken != -1)
  {
    [CPNavigationManager _connectionRetryDelay];
  }

  return *&_connectionRetryDelay_xpcRetryDelay;
}

void __44__CPNavigationManager__connectionRetryDelay__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v0 valueForKey:@"CPXPCRetryDelay"];

  v1 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v1 = v3;
  }

  else
  {
    v2 = 15.0;
  }

  _connectionRetryDelay_xpcRetryDelay = *&v2;
}

- (void)_handleConnectionReset
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CPNavigationManager__handleConnectionReset__block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __45__CPNavigationManager__handleConnectionReset__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) ownershipRequested])
  {
    v2 = [*(a1 + 32) navigationService];
    v3 = [*(a1 + 32) identifier];
    [v2 addNavigationOwnerWithIdentifier:v3 accNavRole:{objc_msgSend(*(a1 + 32), "accNavRole")}];

    v4 = [*(a1 + 32) navigationService];
    [v4 beginObserving];
  }
}

- (void)navigationOwnershipChangedTo:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"None";
    if (a3 == 1)
    {
      v6 = @"iOS";
    }

    if (a3 == 2)
    {
      v6 = @"Car";
    }

    v7 = v6;
    v8 = [(CPNavigationManager *)self delegate];
    *buf = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Dispatching navigationOwnershipChangedTo: %{public}@ delegate=%@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__CPNavigationManager_navigationOwnershipChangedTo___block_invoke;
  v10[3] = &unk_278A10758;
  v10[4] = self;
  v10[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v10);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __52__CPNavigationManager_navigationOwnershipChangedTo___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = @"None";
    if (v3 == 1)
    {
      v4 = @"iOS";
    }

    if (v3 == 2)
    {
      v5 = @"Car";
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
    v7 = [*(a1 + 32) delegate];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "Updating navigationOwnershipChangedTo: %{public}@ delegate=%@", &v10, 0x16u);
  }

  result = [*(a1 + 32) setOwner:*(a1 + 40)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)activeNavigationIdentifiersChangedTo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__CPNavigationManager_activeNavigationIdentifiersChangedTo___block_invoke;
  v6[3] = &unk_278A10780;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __60__CPNavigationManager_activeNavigationIdentifiersChangedTo___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "activeNavigationIdentifiers=%{public}@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) lastObject];
  [*(a1 + 40) setLastNavigatingBundleIdentifier:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateActiveComponents:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CPNavigationManager_didUpdateActiveComponents___block_invoke;
  v6[3] = &unk_278A10780;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __49__CPNavigationManager_didUpdateActiveComponents___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = CarPlayFrameworkACCNavLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v39 = v3;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "activeComponents=%{public}@", buf, 0xCu);
  }

  v4 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [*(a1 + 40) accNavControllersIndexed];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    v10 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v4 setObject:v10 forKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v12 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    v15 = MEMORY[0x277CBEC38];
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v28 + 1) + 8 * j);
        v18 = [v17 uuid];
        [v4 setObject:v15 forKeyedSubscript:v18];

        v19 = [*(a1 + 40) accNavControllersIndexed];
        v20 = [v17 uuid];
        v21 = [v19 objectForKeyedSubscript:v20];

        if (!v21)
        {
          v22 = [objc_alloc(MEMORY[0x277CF8A88]) initWithComponent:v17 delegate:*(a1 + 40)];
          v23 = [*(a1 + 40) accNavControllersIndexed];
          v24 = [v17 uuid];
          [v23 setObject:v22 forKeyedSubscript:v24];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v13);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __49__CPNavigationManager_didUpdateActiveComponents___block_invoke_242;
  v27[3] = &unk_278A107A8;
  v27[4] = *(a1 + 40);
  [v4 enumerateKeysAndObjectsUsingBlock:v27];

  v25 = *MEMORY[0x277D85DE8];
}

void __49__CPNavigationManager_didUpdateActiveComponents___block_invoke_242(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (([a3 BOOLValue] & 1) == 0)
  {
    v5 = [*(a1 + 32) accNavControllersIndexed];
    [v5 removeObjectForKey:v6];
  }
}

- (void)willSendGuidanceStateLoading
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 routeGuidance];
  v2 = NSStringFromCPGuidanceState([v1 guidanceState]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendInfo:(id)a3 toComponentUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if ([(CPNavigationManager *)self accNavRole])
    {
      if ([(CPNavigationManager *)self accNavRole]== 2)
      {
        v8 = CarPlayFrameworkACCNavLogging();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [CPNavigationManager sendInfo:v7 toComponentUID:self];
        }
      }

      else
      {
        v9 = [(CPNavigationManager *)self ownsNavigation];
        v8 = CarPlayFrameworkACCNavLogging();
        v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
        if (v9)
        {
          if (v10)
          {
            [CPNavigationManager sendInfo:toComponentUID:];
          }

          v8 = [(CPNavigationManager *)self navigationService];
          [v8 sendInfo:v6 toComponentUID:v7];
        }

        else if (v10)
        {
          [(CPNavigationManager *)v7 sendInfo:v8 toComponentUID:?];
        }
      }
    }

    else
    {
      v8 = CarPlayFrameworkACCNavLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CPNavigationManager sendInfo:v7 toComponentUID:self];
      }
    }
  }

  else
  {
    v8 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CPNavigationManager sendInfo:toComponentUID:];
    }
  }
}

void __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_180_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__CPNavigationManager_initWithIdentifier_delegate___block_invoke_187_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startNavigationWithRouteInfo:(unsigned __int8)a1 .cold.1(unsigned __int8 a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromCPGuidanceState(a1);
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_236ED4000, a2, OS_LOG_TYPE_FAULT, "unexpected state in startNavigation: %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setRouteGuidance:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [CPAccNavUpdate description:a1];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setChargePrecondition:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_236ED4000, v0, OS_LOG_TYPE_DEBUG, "Setting ChargePrecondition: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setManeuvers:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setManeuvers:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v1 = [CPAccNavUpdate description:v0];
  OUTLINED_FUNCTION_6(v1, 5.8381e-34);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5);
}

- (void)addManeuvers:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addManeuvers:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v1 = [CPAccNavUpdate description:v0];
  OUTLINED_FUNCTION_6(v1, 5.8381e-34);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5);
}

- (void)setLaneGuidances:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setLaneGuidances:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v1 = [CPAccNavUpdate description:v0];
  OUTLINED_FUNCTION_6(v1, 5.8381e-34);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5);
}

- (void)addLaneGuidances:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addLaneGuidances:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v1 = [CPAccNavUpdate description:v0];
  OUTLINED_FUNCTION_6(v1, 5.8381e-34);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5);
}

- (void)setRouteLine:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(&dword_236ED4000, a2, a3, "%s: routeLine=%{public}p", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendInfo:(NSObject *)a3 toComponentUID:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [a2 identifier];
  v7 = [a2 owner];
  v8 = @"None";
  if (v7 == 1)
  {
    v8 = @"iOS";
  }

  if (v7 == 2)
  {
    v8 = @"Car";
  }

  v9 = v8;
  v10 = [a2 lastNavigatingBundleIdentifier];
  v14[0] = 136316162;
  OUTLINED_FUNCTION_1_0();
  v15 = a1;
  v16 = v11;
  v17 = v6;
  v18 = v11;
  v19 = v9;
  v20 = v11;
  v21 = v12;
  _os_log_debug_impl(&dword_236ED4000, a3, OS_LOG_TYPE_DEBUG, "%s: componentUID=%{public}@ %{public}@ does not own navigation (owner=%{public}@ lastNavigatingBundleIdentifier=%{public}@)", v14, 0x34u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendInfo:toComponentUID:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = 136315650;
  OUTLINED_FUNCTION_1_0();
  v6 = v0;
  v7 = v1;
  v8 = v2;
  _os_log_debug_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEBUG, "%s: componentUID=%{public}@ info=%{public}@", v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)sendInfo:(uint64_t)a1 toComponentUID:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendInfo:(uint64_t)a1 toComponentUID:(void *)a2 .cold.4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendInfo:toComponentUID:.cold.5()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_236ED4000, v0, v1, "%s: componentUID=%{public}@ nothing to send", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)vehicleStateManager:(uint64_t)a3 didUpdateRouteSharingEnabled:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(&dword_236ED4000, a2, a3, "%s: enabled=%{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end