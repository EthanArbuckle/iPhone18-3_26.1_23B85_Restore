@interface AEPackageTransport
- (AEPackageTransport)init;
- (AEPackageTransportDelegate)delegate;
- (NSSet)expectedPackageIdentifiers;
- (id)_orderedStagedIdentifiersIncludingPendingIdentifier:(id)identifier;
- (id)orderedStagedIdentifiers;
- (id)packagesWithLivePhotoContent;
- (id)stagedPackageForIdentifier:(id)identifier;
- (id)stagedPackages;
- (int64_t)expectedPackageCount;
- (unint64_t)proposedStagedIndexForPendingIdentifier:(id)identifier;
- (void)_addPackageToStaging:(id)staging;
- (void)_removePackageFromStagingWithIdentifier:(id)identifier;
- (void)addPendingPackageIdentifier:(id)identifier;
- (void)performChanges:(id)changes;
- (void)removePendingPackageIdentifier:(id)identifier;
- (void)reportError:(id)error;
- (void)stagePackage:(id)package;
- (void)stagePackages:(id)packages andNotify:(BOOL)notify;
- (void)unstagePackageWithIdentifier:(id)identifier andNotify:(BOOL)notify;
- (void)unstagePackagesWithIdentifiers:(id)identifiers;
@end

@implementation AEPackageTransport

- (AEPackageTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)removePendingPackageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _allOrderedPackageIdentifiers = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  if ([_allOrderedPackageIdentifiers containsObject:identifierCopy])
  {
    _stagedPackagesByIdentifier = [(AEPackageTransport *)self _stagedPackagesByIdentifier];
    v6 = [_stagedPackagesByIdentifier objectForKey:identifierCopy];

    if (v6)
    {
      goto LABEL_5;
    }

    _allOrderedPackageIdentifiers = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
    [_allOrderedPackageIdentifiers removeObject:identifierCopy];
  }

LABEL_5:
}

- (void)addPendingPackageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _allOrderedPackageIdentifiers = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  [_allOrderedPackageIdentifiers addObject:identifierCopy];
}

- (NSSet)expectedPackageIdentifiers
{
  _allOrderedPackageIdentifiers = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  v3 = [_allOrderedPackageIdentifiers copy];
  v4 = [v3 set];

  return v4;
}

- (int64_t)expectedPackageCount
{
  _allOrderedPackageIdentifiers = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  v3 = [_allOrderedPackageIdentifiers count];

  return v3;
}

- (unint64_t)proposedStagedIndexForPendingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(AEPackageTransport *)self _orderedStagedIdentifiersIncludingPendingIdentifier:identifierCopy];
  v6 = [v5 indexOfObject:identifierCopy];

  return v6;
}

- (id)stagedPackages
{
  v2 = MEMORY[0x277CBEB98];
  _stagedPackagesByIdentifier = [(AEPackageTransport *)self _stagedPackagesByIdentifier];
  allValues = [_stagedPackagesByIdentifier allValues];
  v5 = [v2 setWithArray:allValues];

  return v5;
}

- (id)stagedPackageForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _stagedPackagesByIdentifier = [(AEPackageTransport *)self _stagedPackagesByIdentifier];
  v6 = [_stagedPackagesByIdentifier objectForKey:identifierCopy];

  return v6;
}

- (id)orderedStagedIdentifiers
{
  v2 = [(AEPackageTransport *)self _orderedStagedIdentifiersIncludingPendingIdentifier:0];
  array = [v2 array];

  return array;
}

- (id)_orderedStagedIdentifiersIncludingPendingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = MEMORY[0x277CBEB58];
  _stagedPackagesByIdentifier = [(AEPackageTransport *)self _stagedPackagesByIdentifier];
  allKeys = [_stagedPackagesByIdentifier allKeys];
  v8 = [v5 setWithArray:allKeys];

  if (identifierCopy)
  {
    [v8 addObject:identifierCopy];
  }

  _allOrderedPackageIdentifiers = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  v10 = [_allOrderedPackageIdentifiers mutableCopy];

  [v10 intersectSet:v8];
  v11 = [v10 copy];

  return v11;
}

- (void)unstagePackagesWithIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__AEPackageTransport_unstagePackagesWithIdentifiers___block_invoke;
  v17[3] = &unk_278CC77A8;
  v5 = identifiersCopy;
  v18 = v5;
  selfCopy = self;
  [(AEPackageTransport *)self performChanges:v17];
  delegate = [(AEPackageTransport *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [delegate packageTransport:self didUnstagePackageWithIdentifier:{*(*(&v13 + 1) + 8 * v11++), v13}];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __53__AEPackageTransport_unstagePackagesWithIdentifiers___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _removePackageFromStagingWithIdentifier:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unstagePackageWithIdentifier:(id)identifier andNotify:(BOOL)notify
{
  notifyCopy = notify;
  identifierCopy = identifier;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __61__AEPackageTransport_unstagePackageWithIdentifier_andNotify___block_invoke;
  v12 = &unk_278CC77A8;
  selfCopy = self;
  v7 = identifierCopy;
  v14 = v7;
  [(AEPackageTransport *)self performChanges:&v9];
  if (notifyCopy)
  {
    v8 = [(AEPackageTransport *)self delegate:v9];
    if (objc_opt_respondsToSelector())
    {
      [v8 packageTransport:self didUnstagePackageWithIdentifier:v7];
    }
  }
}

- (void)stagePackages:(id)packages andNotify:(BOOL)notify
{
  notifyCopy = notify;
  packagesCopy = packages;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __46__AEPackageTransport_stagePackages_andNotify___block_invoke;
  v12 = &unk_278CC77A8;
  v7 = packagesCopy;
  v13 = v7;
  selfCopy = self;
  [(AEPackageTransport *)self performChanges:&v9];
  if (notifyCopy)
  {
    v8 = [(AEPackageTransport *)self delegate:v9];
    if (objc_opt_respondsToSelector())
    {
      [v8 packageTransport:self didStagePackages:v7];
    }
  }
}

void __46__AEPackageTransport_stagePackages_andNotify___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _addPackageToStaging:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stagePackage:(id)package
{
  v15[1] = *MEMORY[0x277D85DE8];
  packageCopy = package;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __35__AEPackageTransport_stagePackage___block_invoke;
  v12 = &unk_278CC77A8;
  selfCopy = self;
  v5 = packageCopy;
  v14 = v5;
  [(AEPackageTransport *)self performChanges:&v9];
  v6 = [(AEPackageTransport *)self delegate:v9];
  if (objc_opt_respondsToSelector())
  {
    v15[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v6 packageTransport:self didStagePackages:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)reportError:(id)error
{
  v9 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    localizedDescription = [errorCopy localizedDescription];
    v7 = 138543362;
    v8 = localizedDescription;
    _os_log_impl(&dword_2411DE000, v4, OS_LOG_TYPE_ERROR, "AssetExplorer reported error to transport: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_removePackageFromStagingWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _stagedPackagesByIdentifier = [(AEPackageTransport *)self _stagedPackagesByIdentifier];
  [_stagedPackagesByIdentifier removeObjectForKey:identifierCopy];
  _allOrderedPackageIdentifiers = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  [_allOrderedPackageIdentifiers removeObject:identifierCopy];

  [(AEPackageTransport *)self signalChange:1];
}

- (void)_addPackageToStaging:(id)staging
{
  v21 = *MEMORY[0x277D85DE8];
  stagingCopy = staging;
  _stagedPackagesByIdentifier = [(AEPackageTransport *)self _stagedPackagesByIdentifier];
  _allOrderedPackageIdentifiers = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  identifier = [stagingCopy identifier];
  v8 = [_stagedPackagesByIdentifier objectForKey:identifier];
  if (!v8)
  {
    v9 = [stagingCopy sidecarNumberForKey:@"AEPackageTransportSidecarProposedOrderKey"];
    unsignedIntegerValue = [v9 unsignedIntegerValue];
    if (v9)
    {
      v11 = unsignedIntegerValue;
      if (unsignedIntegerValue != 0x7FFFFFFFFFFFFFFFLL && unsignedIntegerValue <= [_allOrderedPackageIdentifiers count])
      {
        [_allOrderedPackageIdentifiers insertObject:identifier atIndex:v11];

        goto LABEL_9;
      }

      v12 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543874;
        v16 = identifier;
        v17 = 2050;
        v18 = v11;
        v19 = 2050;
        v20 = [_allOrderedPackageIdentifiers count];
        _os_log_impl(&dword_2411DE000, v12, OS_LOG_TYPE_ERROR, "Package staging request index for %{public}@ is out of bounds (index: %{public}lu; package count: %{public}lu)", &v15, 0x20u);
      }
    }

    [_allOrderedPackageIdentifiers addObject:identifier];
  }

LABEL_9:
  v13 = [stagingCopy copy];
  [_stagedPackagesByIdentifier setObject:v13 forKey:identifier];

  [(AEPackageTransport *)self signalChange:1];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = AEPackageTransport;
  [(AEPackageTransport *)&v3 performChanges:changes];
}

- (AEPackageTransport)init
{
  v8.receiver = self;
  v8.super_class = AEPackageTransport;
  v2 = [(AEPackageTransport *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
    allOrderedPackageIdentifiers = v2->__allOrderedPackageIdentifiers;
    v2->__allOrderedPackageIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    stagedPackagesByIdentifier = v2->__stagedPackagesByIdentifier;
    v2->__stagedPackagesByIdentifier = v5;
  }

  return v2;
}

- (id)packagesWithLivePhotoContent
{
  v17 = *MEMORY[0x277D85DE8];
  stagedPackages = [(AEPackageTransport *)self stagedPackages];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = stagedPackages;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 containsLivePhotoContent])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

@end