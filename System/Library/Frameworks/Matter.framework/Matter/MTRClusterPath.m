@interface MTRClusterPath
+ (MTRClusterPath)clusterPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToClusterPath:(id)a3;
- (MTRClusterPath)initWithCoder:(id)a3;
- (MTRClusterPath)initWithPath:(const ConcreteClusterPath *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTRClusterPath

- (MTRClusterPath)initWithPath:(const ConcreteClusterPath *)a3
{
  v10.receiver = self;
  v10.super_class = MTRClusterPath;
  v4 = [(MTRClusterPath *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a3->mEndpointId];
    endpoint = v4->_endpoint;
    v4->_endpoint = v5;

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->mClusterId];
    cluster = v4->_cluster;
    v4->_cluster = v7;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSNumber *)self->_endpoint unsignedShortValue];
  v5 = [(NSNumber *)self->_cluster unsignedLongLongValue];
  v6 = [(NSNumber *)self->_cluster unsignedLongLongValue];
  v7 = MTRClusterNameForID([(NSNumber *)self->_cluster unsignedLongLongValue]);
  v8 = [v3 stringWithFormat:@"<MTRClusterPath endpoint %u cluster 0x%llx (%llu, %@)>", v4, v5, v6, v7];

  return v8;
}

+ (MTRClusterPath)clusterPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID
{
  v5 = endpointID;
  v6 = clusterID;
  v9[0] = [(NSNumber *)v5 unsignedShortValue];
  v10 = [(NSNumber *)v6 unsignedLongValue];
  v7 = [[MTRClusterPath alloc] initWithPath:v9];

  return v7;
}

- (BOOL)isEqualToClusterPath:(id)a3
{
  v4 = a3;
  endpoint = self->_endpoint;
  v6 = [v4 endpoint];
  if (sub_238DB32F8(endpoint, v6))
  {
    cluster = self->_cluster;
    v8 = [v4 cluster];
    v9 = sub_238DB32F8(cluster, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(MTRClusterPath *)self isEqualToClusterPath:v4];

  return v6;
}

- (MTRClusterPath)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MTRClusterPath;
  v5 = [(MTRClusterPath *)&v19 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpointKey"];
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

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterKey"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_endpoint forKey:@"endpointKey"];
  [v4 encodeObject:self->_cluster forKey:@"clusterKey"];
}

@end