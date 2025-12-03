@interface MTRClusterPath
+ (MTRClusterPath)clusterPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClusterPath:(id)path;
- (MTRClusterPath)initWithCoder:(id)coder;
- (MTRClusterPath)initWithPath:(const ConcreteClusterPath *)path;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTRClusterPath

- (MTRClusterPath)initWithPath:(const ConcreteClusterPath *)path
{
  v10.receiver = self;
  v10.super_class = MTRClusterPath;
  v4 = [(MTRClusterPath *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:path->mEndpointId];
    endpoint = v4->_endpoint;
    v4->_endpoint = v5;

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:path->mClusterId];
    cluster = v4->_cluster;
    v4->_cluster = v7;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  unsignedShortValue = [(NSNumber *)self->_endpoint unsignedShortValue];
  unsignedLongLongValue = [(NSNumber *)self->_cluster unsignedLongLongValue];
  unsignedLongLongValue2 = [(NSNumber *)self->_cluster unsignedLongLongValue];
  v7 = MTRClusterNameForID([(NSNumber *)self->_cluster unsignedLongLongValue]);
  v8 = [v3 stringWithFormat:@"<MTRClusterPath endpoint %u cluster 0x%llx (%llu, %@)>", unsignedShortValue, unsignedLongLongValue, unsignedLongLongValue2, v7];

  return v8;
}

+ (MTRClusterPath)clusterPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID
{
  v5 = endpointID;
  v6 = clusterID;
  v9[0] = [(NSNumber *)v5 unsignedShortValue];
  unsignedLongValue = [(NSNumber *)v6 unsignedLongValue];
  v7 = [[MTRClusterPath alloc] initWithPath:v9];

  return v7;
}

- (BOOL)isEqualToClusterPath:(id)path
{
  pathCopy = path;
  endpoint = self->_endpoint;
  endpoint = [pathCopy endpoint];
  if (sub_238DB32F8(endpoint, endpoint))
  {
    cluster = self->_cluster;
    cluster = [pathCopy cluster];
    v9 = sub_238DB32F8(cluster, cluster);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(MTRClusterPath *)self isEqualToClusterPath:equalCopy];

  return v6;
}

- (MTRClusterPath)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MTRClusterPath;
  v5 = [(MTRClusterPath *)&v19 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpointKey"];
  p_endpoint = &v5->_endpoint;
  endpoint = v5->_endpoint;
  v5->_endpoint = v6;

  if (v5->_endpoint)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = sub_2393D9044(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *p_endpoint;
        *buf = 138412290;
        v21 = v13;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "MTRClusterPath decoded %@ for endpoint, not NSNumber.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_15;
      }

LABEL_14:
      v18 = *p_endpoint;
      sub_2393D5320(0, 1);
LABEL_15:
      v11 = 0;
      goto LABEL_16;
    }
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterKey"];
  p_endpoint = &v5->_cluster;
  cluster = v5->_cluster;
  v5->_cluster = v9;

  if (v5->_cluster)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = sub_2393D9044(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *p_endpoint;
        *buf = 138412290;
        v21 = v15;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "MTRClusterPath decoded %@ for cluster, not NSNumber.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v11 = v5;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_endpoint forKey:@"endpointKey"];
  [coderCopy encodeObject:self->_cluster forKey:@"clusterKey"];
}

@end