@interface MTRServerEndpoint
+ (id)rootNodeEndpoint;
- (BOOL)addServerCluster:(id)cluster;
- (BOOL)associateWithController:(id)controller;
- (MTRServerEndpoint)initWithEndpointID:(id)d deviceTypes:(id)types;
- (NSArray)accessGrants;
- (NSArray)matterAccessGrants;
- (NSArray)serverClusters;
- (id).cxx_construct;
- (id)description;
- (id)matterAccessGrantsForCluster:(id)cluster;
- (void)addAccessGrant:(id)grant;
- (void)invalidate;
- (void)registerMatterEndpoint;
- (void)removeAccessGrant:(id)grant;
- (void)unregisterMatterEndpoint;
@end

@implementation MTRServerEndpoint

- (MTRServerEndpoint)initWithEndpointID:(id)d deviceTypes:(id)types
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  typesCopy = types;
  unsignedLongLongValue = [dCopy unsignedLongLongValue];
  v9 = unsignedLongLongValue;
  if (unsignedLongLongValue >= 0x10000)
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v19 = v9;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRServerEndpoint provided too-large endpoint ID: 0x%llx", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!unsignedLongLongValue)
  {
    v12 = sub_2393D9044(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v19) = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "MTRServerEndpoint provided invalid endpoint ID: 0x%x", buf, 8u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (unsignedLongLongValue == 0xFFFF)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v19) = 0xFFFF;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "MTRServerEndpoint provided invalid endpoint ID: 0x%x", buf, 8u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ([typesCopy count])
  {
    v16 = [MEMORY[0x277CBEB98] set];
    self = sub_2393AE1F0(self, dCopy, typesCopy, v16, MEMORY[0x277CBEBF8]);

    selfCopy = self;
    goto LABEL_17;
  }

  v17 = sub_2393D9044(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "MTRServerEndpoint needs a non-empty list of device types", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
LABEL_15:
    sub_2393D5320(0, 1);
  }

LABEL_16:
  selfCopy = 0;
LABEL_17:

  v14 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

+ (id)rootNodeEndpoint
{
  v2 = [MTRServerEndpoint alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = sub_2393AE1F0(v2, &unk_284C43BC8, MEMORY[0x277CBEBF8], v3, MEMORY[0x277CBEBF8]);

  return v4;
}

- (void)addAccessGrant:(id)grant
{
  grantCopy = grant;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_accessGrants addObject:grantCopy];
  sub_2393AE58C(self);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAccessGrant:(id)grant
{
  grantCopy = grant;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_accessGrants removeObject:grantCopy];
  sub_2393AE58C(self);
  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)matterAccessGrants
{
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSSet *)self->_matterAccessGrants allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (BOOL)addServerCluster:(id)cluster
{
  v35 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_deviceController);
  if (WeakRetained)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      unsignedLongLongValue = [(NSNumber *)self->_endpointID unsignedLongLongValue];
      *buf = 134217984;
      *v31 = unsignedLongLongValue;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Cannot add cluster on endpoint %llu which is already in use", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      [(NSNumber *)self->_endpointID unsignedLongLongValue];
      sub_2393D5320(0, 1);
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_serverClusters;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v9)
  {
    v10 = *v27;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v8);
        }

        clusterID = [*(*(&v26 + 1) + 8 * i) clusterID];
        clusterID2 = [clusterCopy clusterID];
        v14 = [clusterID isEqual:clusterID2];

        if (v14)
        {
          v16 = sub_2393D9044(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            clusterID3 = [clusterCopy clusterID];
            v18 = [clusterID3 unsignedLongLongValue] >> 16;
            clusterID4 = [clusterCopy clusterID];
            unsignedLongLongValue2 = [clusterID4 unsignedLongLongValue];
            unsignedLongLongValue3 = [(NSNumber *)self->_endpointID unsignedLongLongValue];
            *buf = 67109632;
            *v31 = v18;
            *&v31[4] = 1024;
            *&v31[6] = unsignedLongLongValue2;
            v32 = 2048;
            v33 = unsignedLongLongValue3;
            _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Cannot add second cluster with ID 0x%04X_%04X on endpoint %llu", buf, 0x18u);
          }

          if (sub_2393D5398(1u))
          {
            clusterID5 = [clusterCopy clusterID];
            [clusterID5 unsignedLongLongValue];
            clusterID6 = [clusterCopy clusterID];
            [clusterID6 unsignedLongLongValue];
            [(NSNumber *)self->_endpointID unsignedLongLongValue];
            sub_2393D5320(0, 1);
          }

          goto LABEL_21;
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (([clusterCopy addToEndpoint:{-[NSNumber unsignedLongLongValue](self->_endpointID, "unsignedLongLongValue")}] & 1) == 0)
  {
    goto LABEL_21;
  }

  [(NSMutableArray *)self->_serverClusters addObject:clusterCopy];
  v15 = 1;
LABEL_22:

  os_unfair_lock_unlock(&self->_lock);
  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)associateWithController:(id)controller
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_deviceController);
  if (WeakRetained)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = [controllerCopy uniqueIdentifier];
      uniqueIdentifier2 = [WeakRetained uniqueIdentifier];
      *buf = 138412546;
      v15 = uniqueIdentifier;
      v16 = 2112;
      v17 = uniqueIdentifier2;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Cannot associate MTRServerEndpoint with controller %@; already associated with controller %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      uniqueIdentifier3 = [controllerCopy uniqueIdentifier];
      uniqueIdentifier4 = [WeakRetained uniqueIdentifier];
      sub_2393D5320(0, 1);
    }

    goto LABEL_9;
  }

  if ((sub_2393AED8C(self, controllerCopy) & 1) == 0)
  {
    sub_2393AF400(self);
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = 1;
LABEL_10:

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)registerMatterEndpoint
{
  v22 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/ServerEndpoint/MTRServerEndpoint.mm", 355);
  v3 = 0;
  while (1)
  {
    v4 = v3;
    if (sub_238F40978(v3) == 0xFFFF)
    {
      break;
    }

    ++v3;
    if (v4 >= 0xFD)
    {
      v5 = sub_2393D9044(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "We somehow ran out of endpoint slots.", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      goto LABEL_21;
    }
  }

  unsignedLongLongValue = [(NSNumber *)self->_endpointID unsignedLongLongValue];
  sub_2393AFD64(buf, self->_matterDataVersions.__ptr_, self->_matterEndpointMetadata.clusterCount);
  sub_2393AFD64(v18, self->_matterDeviceTypes.__ptr_, [(NSArray *)self->_deviceTypes count]);
  sub_238DB9BD8(v19, v18[0], v18[1]);
  if (sub_238F3FA54(v3, unsignedLongLongValue, &self->_matterEndpointMetadata, buf, v19[0], v19[1], 0xFFFFLL, v7))
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Unexpected failure to define our Matter endpoint", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  self->_endpointIndex.var0.__val_ = v3;
  self->_endpointIndex.__engaged_ = 1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_serverClusters;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * i) registerMatterCluster];
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v10);
  }

LABEL_21:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)unregisterMatterEndpoint
{
  v13 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/ServerEndpoint/MTRServerEndpoint.mm", 393);
  if (self->_endpointIndex.__engaged_)
  {
    sub_238F3FFE4(self->_endpointIndex.var0.__val_);
    if (self->_endpointIndex.__engaged_)
    {
      self->_endpointIndex.__engaged_ = 0;
    }
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_serverClusters;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) unregisterMatterCluster];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  sub_2393AF400(self);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)matterAccessGrantsForCluster:(id)cluster
{
  v23 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/ServerEndpoint/MTRServerEndpoint.mm", 435);
  allObjects = [(NSSet *)self->_matterAccessGrants allObjects];
  v6 = [allObjects mutableCopy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_serverClusters;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        clusterID = [v11 clusterID];
        v13 = [clusterID isEqual:clusterCopy];

        if (v13)
        {
          matterAccessGrants = [v11 matterAccessGrants];
          [v6 addObjectsFromArray:matterAccessGrants];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v6 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSArray)accessGrants
{
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSMutableSet *)self->_accessGrants allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (NSArray)serverClusters
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_serverClusters copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_23952E0C8(self);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 80) = 0;
  *(self + 82) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

@end