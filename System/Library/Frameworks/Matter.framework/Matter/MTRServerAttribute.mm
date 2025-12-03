@interface MTRServerAttribute
+ (id)newFeatureMapAttributeWithInitialValue:(id)value;
- (BOOL)addToCluster:(const ConcreteClusterPath *)cluster;
- (BOOL)associateWithController:(id)controller;
- (NSDictionary)value;
- (const)parentCluster;
- (id).cxx_construct;
- (id)description;
- (void)invalidate;
- (void)updateParentCluster:(const ConcreteClusterPath *)cluster;
@end

@implementation MTRServerAttribute

+ (id)newFeatureMapAttributeWithInitialValue:(id)value
{
  v10[2] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v4 = [MTRServerAttribute alloc];
  v9[0] = @"type";
  v9[1] = @"value";
  v10[0] = @"UnsignedInteger";
  v10[1] = valueCopy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [(MTRServerAttribute *)v4 initReadonlyAttributeWithID:&unk_284C3E4B0 initialValue:v5 requiredPrivilege:1];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSDictionary)value
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_value copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)associateWithController:(id)controller
{
  v19 = *MEMORY[0x277D85DE8];
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
      v16 = uniqueIdentifier;
      v17 = 2112;
      v18 = uniqueIdentifier2;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Cannot associate MTRServerAttribute with controller %@; already associated with controller %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      uniqueIdentifier3 = [controllerCopy uniqueIdentifier];
      uniqueIdentifier4 = [WeakRetained uniqueIdentifier];
      sub_2393D5320(0, 1);

LABEL_10:
    }
  }

  else
  {
    objc_storeWeak(&self->_deviceController, controllerCopy);
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_23952BEDC(self);
      sub_23952BF84(v11, buf, v10);
    }

    if (sub_2393D5398(2u))
    {
      uniqueIdentifier3 = sub_23952BEDC(self);
      sub_2393D5320(0, 2);
      goto LABEL_10;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
  return WeakRetained == 0;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_deviceController, 0);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)addToCluster:(const ConcreteClusterPath *)cluster
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  mClusterId = self->_parentCluster.mClusterId;
  if (mClusterId == -1)
  {
    self->_parentCluster = *cluster;
  }

  else
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      mClusterId_high = HIWORD(cluster->mClusterId);
      v8 = cluster->mClusterId;
      *buf = 67109888;
      v14 = mClusterId_high;
      v15 = 1024;
      v16 = v8;
      v17 = 1024;
      v18 = HIWORD(mClusterId);
      v19 = 1024;
      v20 = mClusterId;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Cannot add attribute to cluster 0x%04X_%04X; already added to cluster 0x%04X_%04X", buf, 0x1Au);
    }

    if (sub_2393D5398(1u))
    {
      v12 = HIWORD(self->_parentCluster.mClusterId);
      v11 = HIWORD(cluster->mClusterId);
      sub_2393D5320(0, 1);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
  return mClusterId == -1;
}

- (void)updateParentCluster:(const ConcreteClusterPath *)cluster
{
  os_unfair_lock_lock(&self->_lock);
  self->_parentCluster = *cluster;

  os_unfair_lock_unlock(&self->_lock);
}

- (const)parentCluster
{
  os_unfair_lock_lock(&self->_lock);
  os_unfair_lock_unlock(&self->_lock);
  return &self->_parentCluster;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_23952BEDC(self);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 9) = 0;
  return self;
}

@end