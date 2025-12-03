@interface CustomRoutesTask
- (CustomRoutesTask)init;
- (void)_handleAvailabilityChange;
- (void)dealloc;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group;
- (void)setActiveTileGroupHash:(id)hash;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation CustomRoutesTask

- (CustomRoutesTask)init
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v13.receiver = self;
  v13.super_class = CustomRoutesTask;
  v3 = [(CustomRoutesTask *)&v13 init];
  if (v3)
  {
    v4 = +[GEOResourceManifestManager modernManager];
    [v4 addTileGroupObserver:v3 queue:&_dispatch_main_q];

    activeTileGroup = [v4 activeTileGroup];
    v6 = [activeTileGroup hashForPurpose:0];
    v7 = [v6 copy];

    v8 = GEOConfigGetString();
    activeTileGroupHash = v3->_activeTileGroupHash;
    v3->_activeTileGroupHash = v8;

    BOOL = GEOConfigGetBOOL();
    v11 = GEOConfigGetBOOL();
    _GEOConfigAddDelegateListenerForKey();

    if (BOOL != v11)
    {
      [(CustomRoutesTask *)v3 _handleAvailabilityChange];
    }

    if (v7)
    {
      [(CustomRoutesTask *)v3 setActiveTileGroupHash:v7];
    }
  }

  return v3;
}

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group
{
  activeTileGroup = [group activeTileGroup];
  v4 = [activeTileGroup hashForPurpose:0];
  v5 = [v4 copy];
  [(CustomRoutesTask *)self setActiveTileGroupHash:v5];
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  if (key.var0 == 745 && key.var1 == &unk_101644E90)
  {
    [(CustomRoutesTask *)self _handleAvailabilityChange];
  }
}

- (void)_handleAvailabilityChange
{
  BOOL = GEOConfigGetBOOL();
  v3 = sub_100F75368();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = BOOL;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Availability changed to %d", v5, 8u);
  }

  GEOConfigSetBOOL();
  v4 = +[MURouteSnapshotManager sharedInstance];
  [v4 purgeSnapshotsWithCompletionBlock:0];
}

- (void)setActiveTileGroupHash:(id)hash
{
  hashCopy = hash;
  activeTileGroupHash = self->_activeTileGroupHash;
  p_activeTileGroupHash = &self->_activeTileGroupHash;
  v8 = activeTileGroupHash;
  v9 = hashCopy;
  if (v9 | v8)
  {
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = sub_100F75368();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138543362;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "activeTileGroupHash changed to %{public}@", &v14, 0xCu);
      }

      v12 = *p_activeTileGroupHash;
      objc_storeStrong(p_activeTileGroupHash, hash);
      GEOConfigSetString();
      if (v12)
      {
        v13 = +[MURouteSnapshotManager sharedInstance];
        [v13 purgeSnapshotsWithCompletionBlock:0];
      }
    }
  }
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = CustomRoutesTask;
  [(CustomRoutesTask *)&v3 dealloc];
}

@end