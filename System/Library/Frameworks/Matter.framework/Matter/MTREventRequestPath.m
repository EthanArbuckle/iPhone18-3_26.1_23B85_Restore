@interface MTREventRequestPath
+ (MTREventRequestPath)requestPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID eventID:(NSNumber *)eventID;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEventRequestPath:(id)a3;
- (MTREventRequestPath)initWithCoder:(id)a3;
- (MTREventRequestPath)initWithEndpointID:(id)a3 clusterID:(id)a4 eventID:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)convertToEventPathParams:(EventPathParams *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTREventRequestPath

- (MTREventRequestPath)initWithEndpointID:(id)a3 clusterID:(id)a4 eventID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 copy];
  endpoint = self->_endpoint;
  self->_endpoint = v11;

  v13 = [v9 copy];
  cluster = self->_cluster;
  self->_cluster = v13;

  v15 = [v10 copy];
  event = self->_event;
  self->_event = v15;

  return self;
}

- (id)description
{
  v3 = sub_238EEEF30(self->_endpoint);
  v4 = sub_238EEEFC0(self->_cluster);
  v5 = sub_238EEF098(self->_cluster, self->_event, &unk_284BA9AA0);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"<MTREventRequestPath endpoint %@ cluster %@ event %@>", v3, v4, v5];

  return v6;
}

+ (MTREventRequestPath)requestPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID eventID:(NSNumber *)eventID
{
  v7 = endpointID;
  v8 = clusterID;
  v9 = eventID;
  v10 = [[MTREventRequestPath alloc] initWithEndpointID:v7 clusterID:v8 eventID:v9];

  return v10;
}

- (BOOL)isEqualToEventRequestPath:(id)a3
{
  v4 = a3;
  endpoint = self->_endpoint;
  v6 = [v4 endpoint];
  if (sub_238DB32F8(endpoint, v6))
  {
    cluster = self->_cluster;
    v8 = [v4 cluster];
    if (sub_238DB32F8(cluster, v8))
    {
      event = self->_event;
      v10 = [v4 event];
      v11 = sub_238DB32F8(event, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(MTREventRequestPath *)self isEqualToEventRequestPath:v4];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_endpoint unsignedShortValue];
  v4 = [(NSNumber *)self->_cluster unsignedLongValue];
  return v4 ^ [(NSNumber *)self->_event unsignedLongValue]^ v3;
}

- (void)convertToEventPathParams:(EventPathParams *)a3
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    v6 = [(NSNumber *)endpoint unsignedShortValue];
  }

  else
  {
    v6 = -1;
  }

  a3->var2 = v6;
  cluster = self->_cluster;
  if (cluster)
  {
    v8 = [(NSNumber *)cluster unsignedLongValue];
  }

  else
  {
    v8 = -1;
  }

  a3->var0 = v8;
  event = self->_event;
  if (event)
  {
    v10 = [(NSNumber *)event unsignedLongValue];
  }

  else
  {
    v10 = -1;
  }

  a3->var1 = v10;
}

- (MTREventRequestPath)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MTREventRequestPath;
  v5 = [(MTREventRequestPath *)&v23 init];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpointIDKey"];
  p_endpoint = &v5->_endpoint;
  endpoint = v5->_endpoint;
  v5->_endpoint = v6;

  if (v5->_endpoint)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = sub_2393D9044(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *p_endpoint;
        *buf = 138412290;
        v25 = v15;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "MTREventRequestPath decoded %@ for endpoint, not NSNumber.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_21;
      }

LABEL_20:
      v22 = *p_endpoint;
      sub_2393D5320(0, 1);
LABEL_21:
      v13 = 0;
      goto LABEL_22;
    }
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterIDKey"];
  p_endpoint = &v5->_cluster;
  cluster = v5->_cluster;
  v5->_cluster = v9;

  if (v5->_cluster)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = sub_2393D9044(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *p_endpoint;
        *buf = 138412290;
        v25 = v17;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "MTREventRequestPath decoded %@ for cluster, not NSNumber.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributeIDKey"];
  p_endpoint = &v5->_event;
  event = v5->_event;
  v5->_event = v11;

  if (v5->_event)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *p_endpoint;
        *buf = 138412290;
        v25 = v19;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "MTREventRequestPath decoded %@ for event, not NSNumber.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v13 = v5;
LABEL_22:

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  endpoint = self->_endpoint;
  if (endpoint)
  {
    [v7 encodeObject:endpoint forKey:@"endpointIDKey"];
  }

  cluster = self->_cluster;
  if (cluster)
  {
    [v7 encodeObject:cluster forKey:@"clusterIDKey"];
  }

  event = self->_event;
  if (event)
  {
    [v7 encodeObject:event forKey:@"attributeIDKey"];
  }
}

@end