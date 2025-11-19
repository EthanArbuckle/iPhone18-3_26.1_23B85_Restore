@interface MTRServerCluster
+ (id)newDescriptorCluster;
- (BOOL)addAttribute:(id)a3;
- (BOOL)addToEndpoint:(unsigned __int16)a3;
- (BOOL)associateWithController:(id)a3;
- (MTRServerCluster)initWithClusterID:(id)a3 revision:(id)a4;
- (NSArray)acceptedCommands;
- (NSArray)accessGrants;
- (NSArray)attributes;
- (NSArray)generatedCommands;
- (NSArray)matterAccessGrants;
- (Span<const)matterAttributeMetadata;
- (id).cxx_construct;
- (id)description;
- (unsigned)matterAcceptedCommands;
- (unsigned)matterGeneratedCommands;
- (unsigned)parentEndpoint;
- (void)addAccessGrant:(id)a3;
- (void)invalidate;
- (void)registerMatterCluster;
- (void)removeAccessGrant:(id)a3;
- (void)setAcceptedCommands:(id)a3;
- (void)setGeneratedCommands:(id)a3;
- (void)unregisterMatterCluster;
@end

@implementation MTRServerCluster

- (MTRServerCluster)initWithClusterID:(id)a3 revision:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 unsignedLongLongValue];
  v9 = v8;
  if (HIDWORD(v8))
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v20 = v9;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRServerCluster provided too-large cluster ID: 0x%llx", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v8 > 0xFFF4FFFF)
  {
    goto LABEL_20;
  }

  if (v8 >= 0x8000)
  {
    if (v8 >= 0x10000 && (v8 + 1024) < 0x3FFu)
    {
      goto LABEL_15;
    }

LABEL_20:
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v20) = v9;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "MTRServerCluster provided invalid cluster ID: 0x%x", buf, 8u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v8 == 29)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Should be using newDescriptorCluster to initialize an MTRServerCluster for Descriptor", buf, 2u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_15:
  v12 = [v7 unsignedLongLongValue];
  if ((v12 - 0x10000) > 0xFFFFFFFFFFFF0000)
  {
    v18 = [MEMORY[0x277CBEB98] set];
    self = sub_238DC4C2C(self, v6, v7, v18, MEMORY[0x277CBEBF8]);

    v15 = self;
    goto LABEL_25;
  }

  v13 = sub_2393D9044(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v20 = v12;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "MTRServerCluster provided invalid cluster revision: 0x%llx", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
LABEL_23:
    sub_2393D5320(0, 1);
  }

LABEL_24:
  v15 = 0;
LABEL_25:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)newDescriptorCluster
{
  v2 = [MTRServerCluster alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = sub_238DC4C2C(v2, &unk_284C3E3C0, &unk_284C3E3D8, v3, MEMORY[0x277CBEBF8]);

  return v4;
}

- (void)addAccessGrant:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_accessGrants addObject:v4];
  sub_238DC4F8C(self);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAccessGrant:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_accessGrants removeObject:v4];
  sub_238DC4F8C(self);
  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)matterAccessGrants
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_matterAccessGrants allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)addAttribute:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_deviceController);
  if (WeakRetained)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(NSNumber *)self->_clusterID unsignedLongLongValue];
      *buf = 134217984;
      v34 = v7;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Cannot add attribute on cluster %llx which is already in use", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = [v4 attributeID];
  v9 = [v8 unsignedLongLongValue];

  if (v9 - 65528 <= 5 && ((1 << (v9 + 8)) & 0x2B) != 0)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(NSNumber *)self->_clusterID unsignedLongLongValue];
      *buf = 134218240;
      v34 = v9;
      v35 = 2048;
      v36 = v11;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Cannot add global attribute %llx on cluster %llx", buf, 0x16u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_12;
    }

LABEL_11:
    [(NSNumber *)self->_clusterID unsignedLongLongValue];
    sub_2393D5320(0, 1);
    goto LABEL_12;
  }

  v15 = [(NSNumber *)self->_clusterID isEqual:&unk_284C3E3C0];
  if (v9 < 4)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 == 1)
  {
    v17 = sub_2393D9044(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v34 = v9;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Cannot add attribute with id %llx on descriptor cluster", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_attributes;
    v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = *v29;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = [*(*(&v28 + 1) + 8 * i) attributeID];
          v22 = [v21 unsignedLongLongValue] == v9;

          if (v22)
          {
            v25 = sub_2393D9044(0);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = [(NSNumber *)self->_clusterID unsignedLongLongValue];
              *buf = 134218240;
              v34 = v9;
              v35 = 2048;
              v36 = v26;
              _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "Cannot add second attribute with ID %llx on cluster %llx", buf, 0x16u);
            }

            if (sub_2393D5398(1u))
            {
              [(NSNumber *)self->_clusterID unsignedLongLongValue];
              sub_2393D5320(0, 1);
            }

            goto LABEL_12;
          }
        }

        v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    parentEndpoint = self->_parentEndpoint;
    v24 = [(NSNumber *)self->_clusterID unsignedLongLongValue];
    *buf = parentEndpoint;
    LODWORD(v34) = v24;
    if ([v4 addToCluster:buf])
    {
      [(NSMutableArray *)self->_attributes addObject:v4];
      v12 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v12 = 0;
LABEL_13:

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)associateWithController:(id)a3
{
  v100 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_deviceController);
  if (!WeakRetained)
  {
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v8 = self->_attributes;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v91 objects:v99 count:16];
    if (v9)
    {
      v10 = *v92;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v92 != v10)
          {
            objc_enumerationMutation(v8);
          }

          if (([*(*(&v91 + 1) + 8 * i) associateWithController:v4] & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v91 objects:v99 count:16];
      }

      while (v9);
    }

    v12 = [(NSMutableSet *)self->_accessGrants copy];
    matterAccessGrants = self->_matterAccessGrants;
    self->_matterAccessGrants = v12;

    v14 = [(NSMutableArray *)self->_attributes count];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v15 = self->_attributes;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v87 objects:v98 count:16];
    if (v16)
    {
      v17 = *v88;
      while (2)
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v88 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [*(*(&v87 + 1) + 8 * j) attributeID];
          v20 = [v19 isEqual:&unk_284C3E3F0];

          if (v20)
          {
            v85 = 0;
            goto LABEL_25;
          }
        }

        v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v87 objects:v98 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v85 = 1;
LABEL_25:

    v21 = [(NSNumber *)self->_clusterID isEqual:&unk_284C3E3C0];
    v22 = v14 + v85;
    if (v21)
    {
      v22 += 4;
    }

    v23 = v22 + 1;
    if ((v22 + 1) > 0xFFFE)
    {
      v41 = sub_2393D9044(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = [(NSNumber *)self->_clusterID unsignedLongLongValue]>> 16;
        v43 = [(NSNumber *)self->_clusterID unsignedLongLongValue];
        buf[0] = 134218496;
        *&buf[1] = v23;
        v96 = 1024;
        *v97 = v42;
        *&v97[4] = 1024;
        *&v97[6] = v43;
        _os_log_impl(&dword_238DAE000, v41, OS_LOG_TYPE_ERROR, "Unable to have %llu attributes in a single cluster (clusterID: 0x%04X_%04X)", buf, 0x18u);
      }

      if (sub_2393D5398(1u))
      {
        v83 = [(NSNumber *)self->_clusterID unsignedLongLongValue]>> 16;
        [(NSNumber *)self->_clusterID unsignedLongLongValue];
        sub_2393D5320(0, 1);
      }

      goto LABEL_47;
    }

    v84 = v21;
    for (k = 0; k < [(NSMutableArray *)self->_attributes count]; ++k)
    {
      v25 = [(NSMutableArray *)self->_attributes objectAtIndexedSubscript:k];
      v26 = [v25 attributeID];
      v27 = [v26 unsignedLongLongValue];
      end = self->_matterAttributeMetadata.__end_;
      cap = self->_matterAttributeMetadata.__cap_;
      if (end >= cap)
      {
        begin = self->_matterAttributeMetadata.__begin_;
        v32 = (end - begin) >> 4;
        v33 = v32 + 1;
        if ((v32 + 1) >> 60)
        {
          sub_238DBAEA8();
        }

        v34 = cap - begin;
        if (v34 >> 3 > v33)
        {
          v33 = v34 >> 3;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF0)
        {
          v35 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v33;
        }

        if (v35)
        {
          sub_238DC72DC(&self->_matterAttributeMetadata, v35);
        }

        v36 = (16 * v32);
        *v36 = 0;
        *(v36 + 2) = v27;
        *(v36 + 3) = 810024960;
        v30 = (16 * v32 + 16);
        v37 = self->_matterAttributeMetadata.__begin_;
        v38 = (self->_matterAttributeMetadata.__end_ - v37);
        v39 = (v36 - v38);
        memcpy((v36 - v38), v37, v38);
        v40 = self->_matterAttributeMetadata.__begin_;
        self->_matterAttributeMetadata.__begin_ = v39;
        self->_matterAttributeMetadata.__end_ = v30;
        self->_matterAttributeMetadata.__cap_ = 0;
        if (v40)
        {
          operator delete(v40);
        }
      }

      else
      {
        *end = 0;
        v30 = (end + 16);
        *(end + 2) = v27;
        *(end + 3) = 810024960;
      }

      self->_matterAttributeMetadata.__end_ = v30;
    }

    v46 = self->_matterAttributeMetadata.__end_;
    if (v85)
    {
      v47 = self->_matterAttributeMetadata.__cap_;
      if (v46 >= v47)
      {
        v48 = self->_matterAttributeMetadata.__begin_;
        v49 = (v46 - v48) >> 4;
        if ((v49 + 1) >> 60)
        {
          sub_238DBAEA8();
        }

        v50 = v47 - v48;
        v51 = v50 >> 3;
        if (v50 >> 3 <= (v49 + 1))
        {
          v51 = v49 + 1;
        }

        if (v50 >= 0x7FFFFFFFFFFFFFF0)
        {
          v52 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v51;
        }

        if (v52)
        {
          sub_238DC72DC(&self->_matterAttributeMetadata, v52);
        }

        v53 = 16 * v49;
        *v53 = 0;
        *(v53 + 8) = 0x301B00040000FFFCLL;
        v46 = (16 * v49 + 16);
        v54 = self->_matterAttributeMetadata.__begin_;
        v55 = (self->_matterAttributeMetadata.__end_ - v54);
        v56 = (16 * v49 - v55);
        memcpy(v56, v54, v55);
        v57 = self->_matterAttributeMetadata.__begin_;
        self->_matterAttributeMetadata.__begin_ = v56;
        self->_matterAttributeMetadata.__end_ = v46;
        self->_matterAttributeMetadata.__cap_ = 0;
        if (v57)
        {
          operator delete(v57);
        }
      }

      else
      {
        *v46 = 0;
        *(v46 + 1) = 0x301B00040000FFFCLL;
        v46 = (v46 + 16);
      }

      self->_matterAttributeMetadata.__end_ = v46;
      if (!v84)
      {
LABEL_78:
        v70 = self->_matterAttributeMetadata.__cap_;
        if (v46 >= v70)
        {
          v72 = self->_matterAttributeMetadata.__begin_;
          v73 = (v46 - v72) >> 4;
          if ((v73 + 1) >> 60)
          {
            sub_238DBAEA8();
          }

          v74 = v70 - v72;
          v75 = v74 >> 3;
          if (v74 >> 3 <= (v73 + 1))
          {
            v75 = v73 + 1;
          }

          if (v74 >= 0x7FFFFFFFFFFFFFF0)
          {
            v76 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v76 = v75;
          }

          if (v76)
          {
            sub_238DC72DC(&self->_matterAttributeMetadata, v76);
          }

          v77 = 16 * v73;
          *v77 = 0;
          *(v77 + 8) = 0x302100020000FFFDLL;
          v71 = (16 * v73 + 16);
          v78 = self->_matterAttributeMetadata.__begin_;
          v79 = (self->_matterAttributeMetadata.__end_ - v78);
          v80 = (16 * v73 - v79);
          memcpy((v77 - v79), v78, v79);
          v81 = self->_matterAttributeMetadata.__begin_;
          self->_matterAttributeMetadata.__begin_ = v80;
          self->_matterAttributeMetadata.__end_ = v71;
          self->_matterAttributeMetadata.__cap_ = 0;
          if (v81)
          {
            operator delete(v81);
          }
        }

        else
        {
          *v46 = 0;
          *(v46 + 1) = 0x302100020000FFFDLL;
          v71 = (v46 + 16);
        }

        self->_matterAttributeMetadata.__end_ = v71;
        [(NSNumber *)self->_clusterID unsignedLongLongValue];
        operator new();
      }
    }

    else if (!v84)
    {
      goto LABEL_78;
    }

    for (m = 0; m != 4; ++m)
    {
      v59 = self->_matterAttributeMetadata.__cap_;
      if (v46 >= v59)
      {
        v60 = self->_matterAttributeMetadata.__begin_;
        v61 = (v46 - v60) >> 4;
        if ((v61 + 1) >> 60)
        {
          sub_238DBAEA8();
        }

        v62 = v59 - v60;
        v63 = v62 >> 3;
        if (v62 >> 3 <= (v61 + 1))
        {
          v63 = v61 + 1;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFF0)
        {
          v64 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v64 = v63;
        }

        if (v64)
        {
          sub_238DC72DC(&self->_matterAttributeMetadata, v64);
        }

        v65 = (16 * v61);
        *v65 = xmmword_23958D868[m];
        v46 = (16 * v61 + 16);
        v66 = self->_matterAttributeMetadata.__begin_;
        v67 = (self->_matterAttributeMetadata.__end_ - v66);
        v68 = (16 * v61 - v67);
        memcpy((v65 - v67), v66, v67);
        v69 = self->_matterAttributeMetadata.__begin_;
        self->_matterAttributeMetadata.__begin_ = v68;
        self->_matterAttributeMetadata.__end_ = v46;
        self->_matterAttributeMetadata.__cap_ = 0;
        if (v69)
        {
          operator delete(v69);
        }
      }

      else
      {
        *v46 = xmmword_23958D868[m];
        v46 = (v46 + 16);
      }

      self->_matterAttributeMetadata.__end_ = v46;
    }

    goto LABEL_78;
  }

  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v4 uniqueIdentifier];
    v7 = [WeakRetained uniqueIdentifier];
    buf[0] = 138412546;
    *&buf[1] = v6;
    v96 = 2112;
    *v97 = v7;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Cannot associate MTRServerCluster with controller %@; already associated with controller %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v8 = [v4 uniqueIdentifier];
    v82 = [WeakRetained uniqueIdentifier];
    sub_2393D5320(0, 1);

LABEL_6:
  }

LABEL_47:

  os_unfair_lock_unlock(&self->_lock);
  v44 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)invalidate
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_attributes;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v7 = [MEMORY[0x277CBEB98] set];
  matterAccessGrants = self->_matterAccessGrants;
  self->_matterAccessGrants = v7;

  ptr = self->_attributeAccessInterface.__ptr_;
  self->_matterAttributeMetadata.__end_ = self->_matterAttributeMetadata.__begin_;
  self->_attributeAccessInterface.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  v10 = self->_matterAcceptedCommandList.__ptr_;
  self->_matterAcceptedCommandList.__ptr_ = 0;
  if (v10)
  {
    MEMORY[0x23EE77B40](v10, 0x1000C8052888210);
  }

  v11 = self->_matterGeneratedCommandList.__ptr_;
  self->_matterGeneratedCommandList.__ptr_ = 0;
  if (v11)
  {
    MEMORY[0x23EE77B40](v11, 0x1000C8052888210);
  }

  objc_storeWeak(&self->_deviceController, 0);
  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)registerMatterCluster
{
  v13 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/ServerEndpoint/MTRServerCluster.mm", 378);
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_2393C4890();
  if (!sub_2393C49D4(v3, self->_attributeAccessInterface.__ptr_))
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      parentEndpoint = self->_parentEndpoint;
      v6 = [(NSNumber *)self->_clusterID unsignedLongLongValue];
      *buf = 67109376;
      v10 = parentEndpoint;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Could not register AttributeAccessInterface for endpoint %u, cluster 0x%llx", buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      v8 = self->_parentEndpoint;
      [(NSNumber *)self->_clusterID unsignedLongLongValue];
      sub_2393D5320(0, 1);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)unregisterMatterCluster
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/ServerEndpoint/MTRServerCluster.mm", 392);
  os_unfair_lock_lock(&self->_lock);
  if (self->_attributeAccessInterface.__ptr_)
  {
    v3 = sub_2393C4890();
    sub_2393C48C8(v3, self->_attributeAccessInterface.__ptr_);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)accessGrants
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_accessGrants allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)attributes
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_attributes copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)addToEndpoint:(unsigned __int16)a3
{
  v3 = a3;
  v33 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  parentEndpoint = self->_parentEndpoint;
  if (parentEndpoint == 0xFFFF)
  {
    self->_parentEndpoint = v3;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = self->_attributes;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [(NSNumber *)self->_clusterID unsignedLongLongValue];
          *buf = v3;
          v26 = v16;
          [v15 updateParentCluster:buf];
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(NSNumber *)self->_clusterID unsignedLongLongValue]>> 16;
      v8 = [(NSNumber *)self->_clusterID unsignedLongLongValue];
      v9 = self->_parentEndpoint;
      *buf = 67109888;
      v26 = v7;
      v27 = 1024;
      v28 = v8;
      v29 = 1024;
      v30 = v3;
      v31 = 1024;
      v32 = v9;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Cannot add cluster 0x%04X_%04X to endpoint %u; already added to endpoint %u", buf, 0x1Au);
    }

    if (sub_2393D5398(1u))
    {
      v10 = [(NSNumber *)self->_clusterID unsignedLongLongValue]>> 16;
      [(NSNumber *)self->_clusterID unsignedLongLongValue];
      v19 = self->_parentEndpoint;
      sub_2393D5320(0, 1);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v17 = *MEMORY[0x277D85DE8];
  return parentEndpoint == 0xFFFF;
}

- (unsigned)parentEndpoint
{
  os_unfair_lock_lock(&self->_lock);
  parentEndpoint = self->_parentEndpoint;
  os_unfair_lock_unlock(&self->_lock);
  return parentEndpoint;
}

- (Span<const)matterAttributeMetadata
{
  os_unfair_lock_lock(&self->_lock);
  sub_238DB9BD8(v5, self->_matterAttributeMetadata.__begin_, (self->_matterAttributeMetadata.__end_ - self->_matterAttributeMetadata.__begin_) >> 4);
  os_unfair_lock_unlock(&self->_lock);
  v3 = v5[0];
  v4 = v5[1];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (void)setAcceptedCommands:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [v6 copy];
  acceptedCommands = self->_acceptedCommands;
  self->_acceptedCommands = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)acceptedCommands
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_acceptedCommands copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setGeneratedCommands:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [v6 copy];
  generatedCommands = self->_generatedCommands;
  self->_generatedCommands = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)generatedCommands
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_generatedCommands copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unsigned)matterAcceptedCommands
{
  os_unfair_lock_lock(&self->_lock);
  ptr = self->_matterAcceptedCommandList.__ptr_;
  os_unfair_lock_unlock(&self->_lock);
  return ptr;
}

- (unsigned)matterGeneratedCommands
{
  os_unfair_lock_lock(&self->_lock);
  ptr = self->_matterGeneratedCommandList.__ptr_;
  os_unfair_lock_unlock(&self->_lock);
  return ptr;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_23952B10C(self);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 2) = 0u;
  return self;
}

@end