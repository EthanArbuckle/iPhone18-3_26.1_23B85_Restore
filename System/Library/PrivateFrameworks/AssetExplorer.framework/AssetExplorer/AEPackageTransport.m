@interface AEPackageTransport
- (AEPackageTransport)init;
- (AEPackageTransportDelegate)delegate;
- (NSSet)expectedPackageIdentifiers;
- (id)_orderedStagedIdentifiersIncludingPendingIdentifier:(id)a3;
- (id)orderedStagedIdentifiers;
- (id)packagesWithLivePhotoContent;
- (id)stagedPackageForIdentifier:(id)a3;
- (id)stagedPackages;
- (int64_t)expectedPackageCount;
- (unint64_t)proposedStagedIndexForPendingIdentifier:(id)a3;
- (void)_addPackageToStaging:(id)a3;
- (void)_removePackageFromStagingWithIdentifier:(id)a3;
- (void)addPendingPackageIdentifier:(id)a3;
- (void)performChanges:(id)a3;
- (void)removePendingPackageIdentifier:(id)a3;
- (void)reportError:(id)a3;
- (void)stagePackage:(id)a3;
- (void)stagePackages:(id)a3 andNotify:(BOOL)a4;
- (void)unstagePackageWithIdentifier:(id)a3 andNotify:(BOOL)a4;
- (void)unstagePackagesWithIdentifiers:(id)a3;
@end

@implementation AEPackageTransport

- (AEPackageTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)removePendingPackageIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  if ([v4 containsObject:v7])
  {
    v5 = [(AEPackageTransport *)self _stagedPackagesByIdentifier];
    v6 = [v5 objectForKey:v7];

    if (v6)
    {
      goto LABEL_5;
    }

    v4 = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
    [v4 removeObject:v7];
  }

LABEL_5:
}

- (void)addPendingPackageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  [v5 addObject:v4];
}

- (NSSet)expectedPackageIdentifiers
{
  v2 = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  v3 = [v2 copy];
  v4 = [v3 set];

  return v4;
}

- (int64_t)expectedPackageCount
{
  v2 = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)proposedStagedIndexForPendingIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AEPackageTransport *)self _orderedStagedIdentifiersIncludingPendingIdentifier:v4];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)stagedPackages
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(AEPackageTransport *)self _stagedPackagesByIdentifier];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)stagedPackageForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AEPackageTransport *)self _stagedPackagesByIdentifier];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)orderedStagedIdentifiers
{
  v2 = [(AEPackageTransport *)self _orderedStagedIdentifiersIncludingPendingIdentifier:0];
  v3 = [v2 array];

  return v3;
}

- (id)_orderedStagedIdentifiersIncludingPendingIdentifier:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB58];
  v6 = [(AEPackageTransport *)self _stagedPackagesByIdentifier];
  v7 = [v6 allKeys];
  v8 = [v5 setWithArray:v7];

  if (v4)
  {
    [v8 addObject:v4];
  }

  v9 = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  v10 = [v9 mutableCopy];

  [v10 intersectSet:v8];
  v11 = [v10 copy];

  return v11;
}

- (void)unstagePackagesWithIdentifiers:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__AEPackageTransport_unstagePackagesWithIdentifiers___block_invoke;
  v17[3] = &unk_278CC77A8;
  v5 = v4;
  v18 = v5;
  v19 = self;
  [(AEPackageTransport *)self performChanges:v17];
  v6 = [(AEPackageTransport *)self delegate];
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

          [v6 packageTransport:self didUnstagePackageWithIdentifier:{*(*(&v13 + 1) + 8 * v11++), v13}];
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

- (void)unstagePackageWithIdentifier:(id)a3 andNotify:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __61__AEPackageTransport_unstagePackageWithIdentifier_andNotify___block_invoke;
  v12 = &unk_278CC77A8;
  v13 = self;
  v7 = v6;
  v14 = v7;
  [(AEPackageTransport *)self performChanges:&v9];
  if (v4)
  {
    v8 = [(AEPackageTransport *)self delegate:v9];
    if (objc_opt_respondsToSelector())
    {
      [v8 packageTransport:self didUnstagePackageWithIdentifier:v7];
    }
  }
}

- (void)stagePackages:(id)a3 andNotify:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __46__AEPackageTransport_stagePackages_andNotify___block_invoke;
  v12 = &unk_278CC77A8;
  v7 = v6;
  v13 = v7;
  v14 = self;
  [(AEPackageTransport *)self performChanges:&v9];
  if (v4)
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

- (void)stagePackage:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __35__AEPackageTransport_stagePackage___block_invoke;
  v12 = &unk_278CC77A8;
  v13 = self;
  v5 = v4;
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

- (void)reportError:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v3 localizedDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2411DE000, v4, OS_LOG_TYPE_ERROR, "AssetExplorer reported error to transport: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_removePackageFromStagingWithIdentifier:(id)a3
{
  v4 = a3;
  v6 = [(AEPackageTransport *)self _stagedPackagesByIdentifier];
  [v6 removeObjectForKey:v4];
  v5 = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  [v5 removeObject:v4];

  [(AEPackageTransport *)self signalChange:1];
}

- (void)_addPackageToStaging:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AEPackageTransport *)self _stagedPackagesByIdentifier];
  v6 = [(AEPackageTransport *)self _allOrderedPackageIdentifiers];
  v7 = [v4 identifier];
  v8 = [v5 objectForKey:v7];
  if (!v8)
  {
    v9 = [v4 sidecarNumberForKey:@"AEPackageTransportSidecarProposedOrderKey"];
    v10 = [v9 unsignedIntegerValue];
    if (v9)
    {
      v11 = v10;
      if (v10 != 0x7FFFFFFFFFFFFFFFLL && v10 <= [v6 count])
      {
        [v6 insertObject:v7 atIndex:v11];

        goto LABEL_9;
      }

      v12 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543874;
        v16 = v7;
        v17 = 2050;
        v18 = v11;
        v19 = 2050;
        v20 = [v6 count];
        _os_log_impl(&dword_2411DE000, v12, OS_LOG_TYPE_ERROR, "Package staging request index for %{public}@ is out of bounds (index: %{public}lu; package count: %{public}lu)", &v15, 0x20u);
      }
    }

    [v6 addObject:v7];
  }

LABEL_9:
  v13 = [v4 copy];
  [v5 setObject:v13 forKey:v7];

  [(AEPackageTransport *)self signalChange:1];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = AEPackageTransport;
  [(AEPackageTransport *)&v3 performChanges:a3];
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
  v2 = [(AEPackageTransport *)self stagedPackages];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
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